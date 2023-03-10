Network console
===============

In U-Boot, we implemented the networked console via the standard
"devices" mechanism, which means that you can switch between the
serial and network input/output devices by adjusting the 'stdin' and
'stdout' environment variables. To switch to the networked console,
set either of these variables to "nc". Input and output can be
switched independently.

The default buffer size can be overridden by setting
CFG_NETCONSOLE_BUFFER_SIZE.

We use an environment variable 'ncip' to set the IP address and the
port of the destination. The format is <ip_addr>:<port>. If <port> is
omitted, the value of 6666 is used. If the env var doesn't exist, the
broadcast address and port 6666 are used. If it is set to an IP
address of 0 (or 0.0.0.0) then no messages are sent to the network.
The source / listening port can be configured separately by setting
the 'ncinport' environment variable and the destination port can be
configured by setting the 'ncoutport' environment variable.

For example, if your server IP is 192.168.1.1, you could use::

	=> setenv nc 'setenv stdout nc;setenv stdin nc'
	=> setenv ncip 192.168.1.1
	=> saveenv
	=> run nc

On the host side, please use this script to access the console

.. code-block:: bash

	tools/netconsole <ip> [port]

The script uses netcat to talk to the board over UDP.  It requires you to
specify the target IP address (or host name, assuming DNS is working). The
script can be interrupted by pressing ^T (CTRL-T).

Be aware that in some distributives (Fedora Core 5 at least)
usage of nc has been changed and -l and -p options are considered
as mutually exclusive. If nc complains about options provided,
you can just remove the -p option from the script.

It turns out that 'netcat' cannot be used to listen to broadcast
packets. We developed our own tool 'ncb' (see tools directory) that
listens to broadcast packets on a given port and dumps them to the
standard output.  It will be built when compiling for a board which
has CONFIG_NETCONSOLE defined.  If the netconsole script can find it
in PATH or in the same directory, it will be used instead.

For Linux, the network-based console needs special configuration.
Minimally, the host IP address needs to be specified. This can be
done either via the kernel command line, or by passing parameters
while loading the netconsole.o module (when used in a loadable module
configuration). Please refer to Documentation/networking/logging.txt
file for the original Ingo Molnar's documentation on how to pass
parameters to the loadable module.

The format of the kernel command line parameter (for the static
configuration) is as follows

.. code-block:: bash

    netconsole=[src-port]@[src-ip]/[<dev>],[tgt-port]@<tgt-ip>/[tgt-macaddr]

where

src-port
    source for UDP packets (defaults to 6665)

src-ip
    source IP to use (defaults to the interface's address)

dev
    network interface (defaults to eth0)

tgt-port
  port for logging agent (defaults to 6666)

tgt-ip
  IP address for logging agent (this is the required parameter)

tgt-macaddr
    ethernet MAC address for logging agent (defaults to broadcast)

Examples

.. code-block:: bash

  netconsole=4444@10.0.0.1/eth1,9353@10.0.0.2/12:34:56:78:9a:bc
  netconsole=@/,@192.168.3.1/

Please note that for the Linux networked console to work, the
ethernet interface has to be up by the time the netconsole driver is
initialized. This means that in case of static kernel configuration,
the respective Ethernet interface has to be brought up using the "IP
Autoconfiguration" kernel feature, which is usually done by defaults
in the ELDK-NFS-based environment.

To browse the Linux network console output, use the 'netcat' tool invoked
as follows:

.. code-block:: bash

	nc -u -l -p 6666

Note that unlike the U-Boot implementation the Linux netconsole is
unidirectional, i. e. you have console output only in Linux.
