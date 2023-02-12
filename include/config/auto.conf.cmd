deps_config := \
	tools/Kconfig \
	test/overlay/Kconfig \
	test/optee/Kconfig \
	test/lib/Kconfig \
	test/env/Kconfig \
	test/dm/Kconfig \
	test/Kconfig \
	lib/fwu_updates/Kconfig \
	lib/optee/Kconfig \
	lib/efi_loader/Kconfig \
	lib/efi/Kconfig \
	lib/crypt/Kconfig \
	lib/crypto/Kconfig \
	lib/rsa/Kconfig \
	lib/ecdsa/Kconfig \
	lib/dhry/Kconfig \
	lib/Kconfig \
	fs/erofs/Kconfig \
	fs/squashfs/Kconfig \
	fs/yaffs2/Kconfig \
	fs/cramfs/Kconfig \
	fs/ubifs/Kconfig \
	fs/sandbox/Kconfig \
	fs/jffs2/Kconfig \
	fs/fat/Kconfig \
	fs/reiserfs/Kconfig \
	fs/ext4/Kconfig \
	fs/cbfs/Kconfig \
	fs/btrfs/Kconfig \
	fs/Kconfig \
	drivers/xen/Kconfig \
	drivers/watchdog/Kconfig \
	drivers/w1-eeprom/Kconfig \
	drivers/w1/Kconfig \
	drivers/virtio/Kconfig \
	drivers/video/nexell/Kconfig \
	drivers/video/imx/Kconfig \
	drivers/video/tegra20/Kconfig \
	drivers/video/bridge/Kconfig \
	drivers/video/stm32/Kconfig \
	drivers/video/rockchip/Kconfig \
	drivers/video/exynos/Kconfig \
	drivers/video/meson/Kconfig \
	drivers/video/fonts/Kconfig \
	drivers/video/Kconfig \
	drivers/ufs/Kconfig \
	drivers/usb/gadget/Kconfig \
	drivers/usb/eth/Kconfig \
	drivers/usb/ulpi/Kconfig \
	drivers/usb/phy/Kconfig \
	drivers/usb/emul/Kconfig \
	drivers/usb/musb-new/Kconfig \
	drivers/usb/musb/Kconfig \
	drivers/usb/mtu3/Kconfig \
	drivers/usb/dwc3/Kconfig \
	drivers/usb/cdns3/Kconfig \
	drivers/usb/isp1760/Kconfig \
	drivers/usb/host/Kconfig \
	drivers/usb/Kconfig \
	drivers/tpm/Kconfig \
	drivers/timer/Kconfig \
	drivers/thermal/Kconfig \
	drivers/tee/broadcom/Kconfig \
	drivers/tee/optee/Kconfig \
	drivers/tee/Kconfig \
	drivers/sysreset/Kconfig \
	drivers/sysinfo/Kconfig \
	drivers/spmi/Kconfig \
	drivers/spi/Kconfig \
	drivers/soc/ti/Kconfig \
	drivers/soc/Kconfig \
	drivers/sound/Kconfig \
	drivers/smem/Kconfig \
	drivers/serial/Kconfig \
	drivers/scsi/Kconfig \
	drivers/rtc/Kconfig \
	drivers/rng/Kconfig \
	drivers/reset/Kconfig \
	drivers/remoteproc/Kconfig \
	drivers/reboot-mode/Kconfig \
	drivers/ram/octeon/Kconfig \
	drivers/ram/stm32mp1/Kconfig \
	drivers/ram/sifive/Kconfig \
	drivers/ram/rockchip/Kconfig \
	drivers/ram/aspeed/Kconfig \
	drivers/ram/Kconfig \
	drivers/qe/Kconfig \
	drivers/pwm/Kconfig \
	drivers/power/regulator/Kconfig \
	drivers/power/pmic/Kconfig \
	drivers/power/domain/Kconfig \
	drivers/power/acpi_pmc/Kconfig \
	drivers/power/Kconfig \
	drivers/pinctrl/uniphier/Kconfig \
	drivers/pinctrl/sunxi/Kconfig \
	drivers/pinctrl/rockchip/Kconfig \
	drivers/pinctrl/renesas/Kconfig \
	drivers/pinctrl/nxp/Kconfig \
	drivers/pinctrl/nuvoton/Kconfig \
	drivers/pinctrl/nexell/Kconfig \
	drivers/pinctrl/mvebu/Kconfig \
	drivers/pinctrl/mtmips/Kconfig \
	drivers/pinctrl/mscc/Kconfig \
	drivers/pinctrl/meson/Kconfig \
	drivers/pinctrl/mediatek/Kconfig \
	drivers/pinctrl/intel/Kconfig \
	drivers/pinctrl/exynos/Kconfig \
	drivers/pinctrl/broadcom/Kconfig \
	drivers/pinctrl/Kconfig \
	drivers/phy/socionext/Kconfig \
	drivers/phy/marvell/Kconfig \
	drivers/phy/allwinner/Kconfig \
	drivers/phy/qcom/Kconfig \
	drivers/phy/ti/Kconfig \
	drivers/phy/cadence/Kconfig \
	drivers/phy/rockchip/Kconfig \
	drivers/phy/Kconfig \
	drivers/pch/Kconfig \
	drivers/pci_endpoint/Kconfig \
	drivers/pci/Kconfig \
	drivers/nvme/Kconfig \
	drivers/net/mscc_eswitch/Kconfig \
	drivers/net/ti/Kconfig \
	drivers/net/qe/Kconfig \
	drivers/net/bnxt/Kconfig \
	drivers/net/fsl-mc/Kconfig \
	drivers/net/pfe_eth/Kconfig \
	drivers/net/phy/Kconfig \
	drivers/net/Kconfig \
	drivers/mux/Kconfig \
	drivers/mtd/ubi/Kconfig \
	drivers/mtd/spi/Kconfig \
	drivers/mtd/nand/spi/Kconfig \
	drivers/mtd/nand/raw/Kconfig \
	drivers/mtd/nand/Kconfig \
	drivers/mtd/Kconfig \
	drivers/mmc/Kconfig \
	drivers/misc/extcon/Kconfig \
	drivers/misc/Kconfig \
	drivers/mfd/Kconfig \
	drivers/memory/Kconfig \
	drivers/mailbox/Kconfig \
	drivers/led/Kconfig \
	drivers/iommu/Kconfig \
	drivers/input/Kconfig \
	drivers/i2c/muxes/Kconfig \
	drivers/i2c/Kconfig \
	drivers/hwspinlock/Kconfig \
	drivers/gpio/Kconfig \
	drivers/fwu-mdata/Kconfig \
	drivers/fpga/Kconfig \
	drivers/fuzz/Kconfig \
	drivers/firmware/scmi/Kconfig \
	drivers/firmware/Kconfig \
	drivers/fastboot/Kconfig \
	drivers/dma/ti/Kconfig \
	drivers/dma/Kconfig \
	drivers/dfu/Kconfig \
	drivers/ddr/fsl/Kconfig \
	drivers/demo/Kconfig \
	drivers/ddr/imx/phy/Kconfig \
	drivers/ddr/imx/imx9/Kconfig \
	drivers/ddr/imx/imx8ulp/Kconfig \
	drivers/ddr/imx/imx8m/Kconfig \
	drivers/ddr/imx/Kconfig \
	drivers/ddr/altera/Kconfig \
	drivers/ddr/Kconfig \
	drivers/crypto/nuvoton/Kconfig \
	drivers/crypto/aspeed/Kconfig \
	drivers/crypto/fsl/Kconfig \
	drivers/crypto/hash/Kconfig \
	drivers/crypto/Kconfig \
	drivers/cpu/Kconfig \
	drivers/clk/uniphier/Kconfig \
	drivers/clk/ti/Kconfig \
	drivers/clk/tegra/Kconfig \
	drivers/clk/stm32/Kconfig \
	drivers/clk/sifive/Kconfig \
	drivers/clk/sunxi/Kconfig \
	drivers/clk/renesas/Kconfig \
	drivers/clk/owl/Kconfig \
	drivers/clk/mvebu/Kconfig \
	drivers/clk/microchip/Kconfig \
	drivers/clk/meson/Kconfig \
	drivers/clk/imx/Kconfig \
	drivers/clk/exynos/Kconfig \
	drivers/clk/at91/Kconfig \
	drivers/clk/analogbits/Kconfig \
	drivers/clk/Kconfig \
	drivers/cache/Kconfig \
	drivers/button/Kconfig \
	drivers/bootcount/Kconfig \
	drivers/block/Kconfig \
	drivers/bus/Kconfig \
	drivers/axi/Kconfig \
	drivers/ata/Kconfig \
	drivers/adc/Kconfig \
	drivers/core/Kconfig \
	drivers/Kconfig \
	net/Kconfig \
	env/Kconfig \
	dts/Kconfig \
	disk/Kconfig \
	cmd/ti/Kconfig \
	cmd/mvebu/Kconfig \
	lib/efi_selftest/Kconfig \
	cmd/Kconfig \
	common/spl/Kconfig.vpl \
	common/spl/Kconfig.tpl \
	common/spl/Kconfig.nxp \
	common/spl/Kconfig \
	common/Kconfig \
	boot/Kconfig \
	api/Kconfig \
	board/keymile/pg-wcom-ls102xa/Kconfig \
	board/keymile/kmcent2/Kconfig \
	board/keymile/km83xx/Kconfig \
	board/keymile/Kconfig \
	arch/Kconfig.nxp \
	arch/riscv/cpu/generic/Kconfig \
	arch/riscv/cpu/fu740/Kconfig \
	arch/riscv/cpu/fu540/Kconfig \
	arch/riscv/cpu/ax25/Kconfig \
	board/sipeed/maix/Kconfig \
	board/openpiton/riscv64/Kconfig \
	board/sifive/unmatched/Kconfig \
	board/sifive/unleashed/Kconfig \
	board/microchip/mpfs_icicle/Kconfig \
	board/emulation/qemu-riscv/Kconfig \
	board/AndesTech/ax25-ae350/Kconfig \
	arch/riscv/Kconfig \
	board/cadence/xtfpga/Kconfig \
	arch/xtensa/Kconfig \
	arch/x86/cpu/tangier/Kconfig \
	arch/x86/cpu/slimbootloader/Kconfig \
	arch/x86/cpu/queensbay/Kconfig \
	arch/x86/cpu/quark/Kconfig \
	arch/x86/cpu/qemu/Kconfig \
	arch/x86/cpu/efi/Kconfig \
	arch/x86/cpu/ivybridge/Kconfig \
	arch/x86/cpu/coreboot/Kconfig \
	arch/x86/cpu/broadwell/Kconfig \
	arch/x86/cpu/braswell/Kconfig \
	arch/x86/cpu/baytrail/Kconfig \
	arch/x86/cpu/apollolake/Kconfig \
	board/intel/slimbootloader/Kconfig \
	board/intel/minnowmax/Kconfig \
	board/intel/galileo/Kconfig \
	board/intel/edison/Kconfig \
	board/intel/crownbay/Kconfig \
	board/intel/cougarcanyon2/Kconfig \
	board/intel/cherryhill/Kconfig \
	board/intel/bayleybay/Kconfig \
	board/intel/Kconfig \
	board/google/chromebook_samus/Kconfig \
	board/google/chromebox_panther/Kconfig \
	board/google/chromebook_link/Kconfig \
	board/google/chromebook_coral/Kconfig \
	board/google/Kconfig \
	board/emulation/qemu-x86/Kconfig \
	board/emulation/Kconfig \
	board/efi/efi-x86_payload/Kconfig \
	board/efi/efi-x86_app/Kconfig \
	board/efi/Kconfig \
	board/dfi/dfi-bt700/Kconfig \
	board/dfi/Kconfig \
	board/coreboot/coreboot/Kconfig \
	board/coreboot/Kconfig \
	board/congatec/conga-qeval20-qa3-e3845/Kconfig \
	board/congatec/Kconfig \
	board/advantech/som-db5800-som-6867/Kconfig \
	board/advantech/Kconfig \
	arch/x86/Kconfig \
	board/renesas/r2dplus/Kconfig \
	arch/sh/lib/Kconfig \
	arch/sh/Kconfig \
	arch/sandbox/Kconfig \
	arch/powerpc/lib/Kconfig \
	board/cssi/MCR3000/Kconfig \
	arch/powerpc/cpu/mpc8xx/Kconfig \
	board/socrates/Kconfig \
	board/freescale/t4rdb/Kconfig \
	board/freescale/t208xrdb/Kconfig \
	board/freescale/t208xqds/Kconfig \
	board/freescale/t104xrdb/Kconfig \
	board/freescale/t102xrdb/Kconfig \
	board/freescale/p2041rdb/Kconfig \
	board/freescale/p1_p2_rdb_pc/Kconfig \
	board/freescale/p1010rdb/Kconfig \
	board/freescale/mpc8548cds/Kconfig \
	board/emulation/qemu-ppce500/Kconfig \
	arch/powerpc/cpu/mpc85xx/Kconfig \
	board/gdsys/mpc8308/Kconfig \
	board/freescale/mpc837xerdb/Kconfig \
	arch/powerpc/cpu/mpc83xx/initreg/Kconfig.lcrr \
	arch/powerpc/cpu/mpc83xx/initreg/Kconfig.spcr \
	arch/powerpc/cpu/mpc83xx/initreg/Kconfig \
	arch/powerpc/cpu/mpc83xx/arbiter/Kconfig \
	arch/powerpc/cpu/mpc83xx/sysio/Kconfig.mpc8308 \
	arch/powerpc/cpu/mpc83xx/sysio/Kconfig \
	arch/powerpc/cpu/mpc83xx/hid/Kconfig \
	arch/powerpc/cpu/mpc83xx/elbc/Kconfig.elbc4 \
	arch/powerpc/cpu/mpc83xx/elbc/Kconfig.elbc3 \
	arch/powerpc/cpu/mpc83xx/elbc/Kconfig.elbc2 \
	arch/powerpc/cpu/mpc83xx/elbc/Kconfig.elbc1 \
	arch/powerpc/cpu/mpc83xx/elbc/Kconfig.elbc0 \
	arch/powerpc/cpu/mpc83xx/elbc/Kconfig \
	arch/powerpc/cpu/mpc83xx/lblaw/Kconfig \
	arch/powerpc/cpu/mpc83xx/bats/Kconfig \
	arch/powerpc/cpu/mpc83xx/hrcw/Kconfig \
	arch/powerpc/cpu/mpc83xx/Kconfig \
	arch/powerpc/Kconfig \
	arch/nios2/Kconfig \
	board/Marvell/octeon_nic23/Kconfig \
	board/Marvell/octeon_ebb7304/Kconfig \
	arch/mips/mach-octeon/Kconfig \
	board/vocore/vocore2/Kconfig \
	board/seeed/linkit-smart-7688/Kconfig \
	board/gardena/smart-gateway-mt7688/Kconfig \
	arch/mips/mach-mtmips/mt7628/Kconfig \
	arch/mips/mach-mtmips/mt7621/Kconfig \
	arch/mips/mach-mtmips/mt7620/Kconfig \
	arch/mips/mach-mtmips/Kconfig \
	board/microchip/pic32mzda/Kconfig \
	arch/mips/mach-pic32/Kconfig \
	board/imgtec/ci20/Kconfig \
	arch/mips/mach-jz47xx/Kconfig \
	board/sfr/nb4_ser/Kconfig \
	board/sagem/f@st1704/Kconfig \
	board/netgear/dgnd3700v2/Kconfig \
	board/netgear/cg3100d/Kconfig \
	board/huawei/hg556a/Kconfig \
	board/comtrend/wap5813n/Kconfig \
	board/comtrend/vr3032u/Kconfig \
	board/comtrend/ct5361/Kconfig \
	board/comtrend/ar5387un/Kconfig \
	board/comtrend/ar5315u/Kconfig \
	board/broadcom/bcm968380gerg/Kconfig \
	arch/mips/mach-bmips/Kconfig \
	board/mscc/serval/Kconfig \
	board/mscc/servalt/Kconfig \
	board/mscc/jr2/Kconfig \
	board/mscc/luton/Kconfig \
	board/mscc/ocelot/Kconfig \
	arch/mips/mach-mscc/Kconfig \
	board/tplink/wdr4300/Kconfig \
	board/qca/ap152/Kconfig \
	board/qca/ap143/Kconfig \
	board/qca/ap121/Kconfig \
	arch/mips/mach-ath79/Kconfig \
	board/imgtec/xilfpga/Kconfig \
	board/imgtec/malta/Kconfig \
	board/imgtec/boston/Kconfig \
	arch/mips/Kconfig \
	board/xilinx/microblaze-generic/Kconfig \
	arch/microblaze/Kconfig \
	board/sysam/stmark2/Kconfig \
	board/sysam/amcore/Kconfig \
	board/freescale/m5373evb/Kconfig \
	board/freescale/m5329evb/Kconfig \
	board/freescale/m53017evb/Kconfig \
	board/freescale/m5282evb/Kconfig \
	board/freescale/m5275evb/Kconfig \
	board/freescale/m5272c3/Kconfig \
	board/freescale/m5253demo/Kconfig \
	board/freescale/m5249evb/Kconfig \
	board/freescale/m5235evb/Kconfig \
	board/freescale/m5208evbe/Kconfig \
	board/cobra5272/Kconfig \
	board/astro/mcf5373l/Kconfig \
	board/BuS/eb_cpu5282/Kconfig \
	arch/m68k/Kconfig \
	arch/arm/Kconfig.debug \
	board/xen/xenguest_arm64/Kconfig \
	board/phytium/pomelo/Kconfig \
	board/phytium/durian/Kconfig \
	board/vscom/baltos/Kconfig \
	board/variscite/dart_6ul/Kconfig \
	board/traverse/common/Kconfig \
	board/traverse/ten64/Kconfig \
	board/tcl/sl50/Kconfig \
	board/st/stv0991/Kconfig \
	board/socionext/developerbox/Kconfig \
	board/seeed/npi_imx6ull/Kconfig \
	board/siemens/common/Kconfig \
	board/samsung/common/Kconfig \
	board/myir/mys_6ulx/Kconfig \
	board/kontron/sl28/Kconfig \
	board/isee/igep003x/Kconfig \
	board/hisilicon/poplar/Kconfig \
	board/hisilicon/hikey960/Kconfig \
	board/hisilicon/hikey/Kconfig \
	board/grinn/chiliboard/Kconfig \
	board/freescale/lx2160a/Kconfig \
	board/freescale/ls1012afrdm/Kconfig \
	board/freescale/ls1012ardb/Kconfig \
	board/freescale/ls1012aqds/Kconfig \
	board/freescale/ls1046afrwy/Kconfig \
	board/freescale/ls1046ardb/Kconfig \
	board/freescale/ls1043ardb/Kconfig \
	board/freescale/ls1046aqds/Kconfig \
	board/freescale/ls1021aiot/Kconfig \
	board/freescale/ls1021atsn/Kconfig \
	board/freescale/ls1021atwr/Kconfig \
	board/freescale/ls1043aqds/Kconfig \
	board/freescale/ls1021aqds/Kconfig \
	board/freescale/ls1028a/Kconfig \
	board/freescale/ls1088a/Kconfig \
	board/freescale/ls2080ardb/Kconfig \
	board/freescale/ls2080aqds/Kconfig \
	board/emulation/common/Kconfig \
	board/emulation/qemu-arm/Kconfig \
	board/eets/pdu001/Kconfig \
	board/cavium/thunderx/Kconfig \
	board/broadcom/bcmns3/Kconfig \
	board/cortina/common/Kconfig \
	board/cortina/presidio-asic/Kconfig \
	board/armltd/vexpress64/Kconfig \
	board/armltd/vexpress/Kconfig \
	board/Marvell/octeontx2/Kconfig \
	board/Marvell/octeontx/Kconfig \
	board/bosch/guardian/Kconfig \
	board/bosch/shc/Kconfig \
	board/armltd/corstone1000/Kconfig \
	board/armltd/total_compute/Kconfig \
	board/nuvoton/arbel_evb/Kconfig \
	arch/arm/mach-npcm/npcm8xx/Kconfig \
	board/nuvoton/poleg_evb/Kconfig \
	arch/arm/mach-npcm/npcm7xx/Kconfig \
	arch/arm/mach-npcm/Kconfig \
	board/friendlyarm/nanopi2/Kconfig \
	board/friendlyarm/Kconfig \
	arch/arm/mach-nexell/Kconfig \
	arch/arm/mach-imx/Kconfig \
	arch/arm/cpu/armv8/Kconfig \
	arch/arm/cpu/armv7/Kconfig \
	arch/arm/mach-zynqmp-r5/Kconfig \
	board/xilinx/versal-net/Kconfig \
	arch/arm/mach-versal-net/Kconfig \
	board/xilinx/versal/Kconfig \
	arch/arm/mach-versal/Kconfig \
	board/xilinx/zynqmp/Kconfig \
	arch/arm/mach-zynqmp/Kconfig \
	board/xilinx/zynq/Kconfig \
	board/xilinx/Kconfig \
	arch/arm/mach-zynq/Kconfig \
	board/toradex/colibri_vf/Kconfig \
	board/phytec/pcm052/Kconfig \
	board/freescale/vf610twr/Kconfig \
	arch/arm/cpu/armv7/vf610/Kconfig \
	arch/arm/mach-uniphier/Kconfig \
	board/ste/stemmy/Kconfig \
	arch/arm/mach-u8500/Kconfig \
	board/nvidia/p2771-0000/Kconfig \
	arch/arm/mach-tegra/tegra186/Kconfig \
	board/nvidia/p3450-0000/Kconfig \
	board/nvidia/p2571/Kconfig \
	board/nvidia/p2371-2180/Kconfig \
	board/nvidia/p2371-0000/Kconfig \
	arch/arm/mach-tegra/tegra210/Kconfig \
	board/toradex/apalis-tk1/Kconfig \
	board/nvidia/venice2/Kconfig \
	board/nvidia/nyan-big/Kconfig \
	board/nvidia/jetson-tk1/Kconfig \
	board/cei/cei-tk1-som/Kconfig \
	arch/arm/mach-tegra/tegra124/Kconfig \
	board/nvidia/dalmore/Kconfig \
	arch/arm/mach-tegra/tegra114/Kconfig \
	board/lg/x3-t30/Kconfig \
	board/avionic-design/tec-ng/Kconfig \
	board/toradex/colibri_t30/Kconfig \
	board/nvidia/cardhu/Kconfig \
	board/nvidia/beaver/Kconfig \
	board/toradex/apalis_t30/Kconfig \
	board/asus/transformer-t30/Kconfig \
	board/microsoft/surface-rt/Kconfig \
	arch/arm/mach-tegra/tegra30/Kconfig \
	board/toradex/colibri_t20/Kconfig \
	board/nvidia/ventana/Kconfig \
	board/compulab/trimslice/Kconfig \
	board/avionic-design/tec/Kconfig \
	board/nvidia/seaboard/Kconfig \
	board/avionic-design/plutux/Kconfig \
	board/compal/paz00/Kconfig \
	board/avionic-design/medcom-wide/Kconfig \
	board/nvidia/harmony/Kconfig \
	board/asus/transformer-t20/Kconfig \
	arch/arm/mach-tegra/tegra20/Kconfig \
	arch/arm/mach-tegra/Kconfig \
	board/sunxi/Kconfig \
	arch/arm/mach-sunxi/Kconfig \
	arch/arm/mach-stm32mp/cmd_stm32prog/Kconfig \
	board/engicam/stm32mp1/Kconfig \
	board/dhelectronics/dh_stm32mp1/Kconfig \
	arch/arm/mach-stm32mp/Kconfig.15x \
	board/st/common/Kconfig \
	board/st/stm32mp1/Kconfig \
	arch/arm/mach-stm32mp/Kconfig.13x \
	arch/arm/mach-stm32mp/Kconfig \
	board/st/stm32h750-art-pi/Kconfig \
	board/st/stm32h743-disco/Kconfig \
	board/st/stm32h743-eval/Kconfig \
	arch/arm/mach-stm32/stm32h7/Kconfig \
	board/st/stm32f746-disco/Kconfig \
	arch/arm/mach-stm32/stm32f7/Kconfig \
	board/st/stm32f469-discovery/Kconfig \
	board/st/stm32f429-evaluation/Kconfig \
	board/st/stm32f429-discovery/Kconfig \
	arch/arm/mach-stm32/stm32f4/Kconfig \
	arch/arm/mach-stm32/Kconfig \
	board/st/stih410-b2260/Kconfig \
	arch/arm/mach-sti/Kconfig \
	arch/arm/mach-socfpga/Kconfig \
	board/qualcomm/qcs404-evb/Kconfig \
	board/samsung/starqltechn/Kconfig \
	board/qualcomm/dragonboard845c/Kconfig \
	board/qualcomm/dragonboard820c/Kconfig \
	board/qualcomm/dragonboard410c/Kconfig \
	arch/arm/mach-snapdragon/Kconfig \
	board/samsung/smdkc100/Kconfig \
	board/samsung/goni/Kconfig \
	arch/arm/mach-s5pc1xx/Kconfig \
	board/edgeble/neural-compute-module-2/Kconfig \
	arch/arm/mach-rockchip/rv1126/Kconfig \
	board/elgin/elgin_rv1108/Kconfig \
	board/rockchip/evb_rv1108/Kconfig \
	arch/arm/mach-rockchip/rv1108/Kconfig \
	board/rockchip/evb_rk3568/Kconfig \
	arch/arm/mach-rockchip/rk3568/Kconfig \
	board/vamrs/rock960_rk3399/Kconfig \
	board/theobroma-systems/puma_rk3399/Kconfig \
	board/rockchip/evb_rk3399/Kconfig \
	board/pine64/rockpro64_rk3399/Kconfig \
	board/pine64/pinephone-pro-rk3399/Kconfig \
	board/pine64/pinebook-pro-rk3399/Kconfig \
	board/google/gru/Kconfig \
	board/firefly/roc-pc-rk3399/Kconfig \
	arch/arm/mach-rockchip/rk3399/Kconfig \
	board/rockchip/evb_px5/Kconfig \
	board/geekbuying/geekbox/Kconfig \
	board/rockchip/sheep_rk3368/Kconfig \
	board/theobroma-systems/lion_rk3368/Kconfig \
	arch/arm/mach-rockchip/rk3368/Kconfig \
	board/rockchip/evb_rk3328/Kconfig \
	arch/arm/mach-rockchip/rk3328/Kconfig \
	board/firefly/firefly-rk3308/Kconfig \
	board/rockchip/evb_rk3308/Kconfig \
	arch/arm/mach-rockchip/rk3308/Kconfig \
	board/rockchip/tinker_rk3288/Kconfig \
	board/rockchip/evb_rk3288/Kconfig \
	board/radxa/rock2/Kconfig \
	board/phytec/phycore_rk3288/Kconfig \
	board/mqmaker/miqi_rk3288/Kconfig \
	board/google/veyron/Kconfig \
	board/firefly/firefly-rk3288/Kconfig \
	board/chipspark/popmetal_rk3288/Kconfig \
	board/amarula/vyasa-rk3288/Kconfig \
	arch/arm/mach-rockchip/rk3288/Kconfig \
	board/rockchip/evb_rk3229/Kconfig \
	arch/arm/mach-rockchip/rk322x/Kconfig \
	board/radxa/rock/Kconfig \
	arch/arm/mach-rockchip/rk3188/Kconfig \
	board/rockchip/evb_rk3128/Kconfig \
	arch/arm/mach-rockchip/rk3128/Kconfig \
	board/rikomagic/mk808/Kconfig \
	arch/arm/mach-rockchip/rk3066/Kconfig \
	board/rockchip/kylin_rk3036/Kconfig \
	board/rockchip/evb_rk3036/Kconfig \
	arch/arm/mach-rockchip/rk3036/Kconfig \
	board/theobroma-systems/ringneck_px30/Kconfig \
	board/rockchip/evb_px30/Kconfig \
	board/hardkernel/odroid_go2/Kconfig \
	board/engicam/px30_core/Kconfig \
	arch/arm/mach-rockchip/px30/Kconfig \
	arch/arm/mach-rockchip/Kconfig \
	arch/arm/mach-qemu/Kconfig \
	arch/arm/mach-mediatek/Kconfig \
	arch/arm/mach-meson/Kconfig \
	board/renesas/grpeach/Kconfig \
	arch/arm/mach-rmobile/Kconfig.rza1 \
	board/silinux/ek874/Kconfig \
	board/hoperun/hihope-rzg2/Kconfig \
	board/beacon/beacon-rzg2m/Kconfig \
	board/renesas/ulcb/Kconfig \
	board/renesas/salvator-x/Kconfig \
	board/renesas/falcon/Kconfig \
	board/renesas/ebisu/Kconfig \
	board/renesas/eagle/Kconfig \
	board/renesas/draak/Kconfig \
	board/renesas/condor/Kconfig \
	arch/arm/mach-rmobile/Kconfig.64 \
	board/renesas/stout/Kconfig \
	board/renesas/porter/Kconfig \
	board/renesas/silk/Kconfig \
	board/renesas/alt/Kconfig \
	board/renesas/lager/Kconfig \
	board/renesas/koelsch/Kconfig \
	board/renesas/gose/Kconfig \
	board/renesas/blanche/Kconfig \
	arch/arm/mach-rmobile/Kconfig.32 \
	arch/arm/mach-rmobile/Kconfig \
	arch/arm/mach-owl/Kconfig \
	arch/arm/mach-orion5x/Kconfig \
	arch/arm/cpu/armv8/fsl-layerscape/Kconfig \
	board/phytec/phycore_am335x_r2/Kconfig \
	board/compulab/cm_t43/Kconfig \
	board/ti/am335x/Kconfig \
	board/ti/am43xx/Kconfig \
	board/ti/ti816x/Kconfig \
	board/siemens/rut/Kconfig \
	board/siemens/pxm2/Kconfig \
	board/siemens/draco/Kconfig \
	board/BuR/brppt1/Kconfig \
	board/BuR/brsmarc1/Kconfig \
	board/BuR/brxre1/Kconfig \
	arch/arm/mach-omap2/am33xx/Kconfig \
	board/ti/am57xx/Kconfig \
	board/ti/dra7xx/Kconfig \
	board/ti/omap5_uevm/Kconfig \
	arch/arm/mach-omap2/omap5/Kconfig \
	board/ti/sdp4430/Kconfig \
	board/ti/panda/Kconfig \
	arch/arm/mach-omap2/omap4/Kconfig \
	board/lg/sniper/Kconfig \
	board/nokia/rx51/Kconfig \
	board/logicpd/omap3som/Kconfig \
	board/isee/igep00x0/Kconfig \
	board/ti/omap3evm/Kconfig \
	board/timll/devkit8000/Kconfig \
	board/ti/beagle/Kconfig \
	board/logicpd/am3517evm/Kconfig \
	arch/arm/mach-omap2/omap3/Kconfig \
	arch/arm/mach-omap2/Kconfig \
	board/liebherr/xea/Kconfig \
	board/freescale/mx28evk/Kconfig \
	board/freescale/mx23evk/Kconfig \
	board/olimex/mx23_olinuxino/Kconfig \
	arch/arm/mach-imx/mxs/Kconfig \
	board/freescale/imxrt1170-evk/Kconfig \
	board/freescale/imxrt1050-evk/Kconfig \
	board/freescale/imxrt1020-evk/Kconfig \
	arch/arm/mach-imx/imxrt/Kconfig \
	board/freescale/imx93_evk/Kconfig \
	arch/arm/mach-imx/imx9/Kconfig \
	board/freescale/imx8ulp_evk/Kconfig \
	arch/arm/mach-imx/imx8ulp/Kconfig \
	board/toradex/verdin-imx8mp/Kconfig \
	board/toradex/verdin-imx8mm/Kconfig \
	board/variscite/imx8mn_var_som/Kconfig \
	board/technexion/pico-imx8mq/Kconfig \
	board/ronetix/imx8mq-cm/Kconfig \
	board/purism/librem5/Kconfig \
	board/phytec/phycore_imx8mp/Kconfig \
	board/phytec/phycore_imx8mm/Kconfig \
	board/msc/sm2s_imx8mp/Kconfig \
	board/menlo/mx8menlo/Kconfig \
	board/kontron/sl-mx8mm/Kconfig \
	board/kontron/pitx_imx8m/Kconfig \
	board/google/imx8mq_phanbell/Kconfig \
	board/gateworks/venice/Kconfig \
	board/freescale/imx8mp_evk/Kconfig \
	board/freescale/imx8mn_evk/Kconfig \
	board/freescale/imx8mm_evk/Kconfig \
	board/freescale/imx8mq_evk/Kconfig \
	board/engicam/imx8mp/Kconfig \
	board/engicam/imx8mm/Kconfig \
	board/dhelectronics/dh_imx8mp/Kconfig \
	board/data_modul/imx8mm_edm_sbc/Kconfig \
	board/compulab/imx8mm-cl-iot-gate/Kconfig \
	board/bsh/imx8mn_smm_s2/Kconfig \
	board/beacon/imx8mn/Kconfig \
	board/beacon/imx8mm/Kconfig \
	board/advantech/imx8mp_rsb3720a1/Kconfig \
	arch/arm/mach-imx/imx8m/Kconfig \
	board/siemens/capricorn/Kconfig \
	board/toradex/colibri-imx8x/Kconfig \
	board/toradex/apalis-imx8/Kconfig \
	board/advantech/imx8qm_rom7720_a1/Kconfig \
	board/congatec/common/Kconfig \
	board/congatec/cgtqmx8/Kconfig \
	board/freescale/imx8qxp_mek/Kconfig \
	board/freescale/imx8qm_mek/Kconfig \
	arch/arm/mach-imx/imx8/Kconfig \
	board/freescale/mx7ulp_evk/Kconfig \
	board/ea/mx7ulp_com/Kconfig \
	arch/arm/mach-imx/mx7ulp/Kconfig \
	board/warp7/Kconfig \
	board/toradex/colibri_imx7/Kconfig \
	board/technexion/pico-imx7d/Kconfig \
	board/storopack/smegw01/Kconfig \
	board/novtech/meerkat96/Kconfig \
	board/freescale/mx7dsabresd/Kconfig \
	board/ronetix/imx7-cm/Kconfig \
	board/compulab/cl-som-imx7/Kconfig \
	arch/arm/mach-imx/mx7/Kconfig \
	board/out4/o4-imx6ull-nano/Kconfig \
	board/BuR/brppt2/Kconfig \
	board/wandboard/Kconfig \
	board/udoo/neo/Kconfig \
	board/udoo/Kconfig \
	board/k+p/kp_imx6q_tpc/Kconfig \
	board/toradex/colibri-imx6ull/Kconfig \
	board/toradex/colibri_imx6/Kconfig \
	board/toradex/common/Kconfig \
	board/toradex/apalis_imx6/Kconfig \
	board/tq/tqma6/Kconfig \
	board/tbs/tbs2910/Kconfig \
	board/technexion/pico-imx6ul/Kconfig \
	board/technexion/pico-imx6/Kconfig \
	board/somlabs/visionsom-6ull/Kconfig \
	board/solidrun/mx6cuboxi/Kconfig \
	board/logicpd/imx6/Kconfig \
	board/liebherr/mccmon6/Kconfig \
	board/liebherr/display5/Kconfig \
	board/softing/vining_2000/Kconfig \
	board/kosagi/novena/Kconfig \
	board/kontron/sl-mx6ul/Kconfig \
	board/gateworks/gw_ventana/Kconfig \
	board/phytec/pcl063/Kconfig \
	board/phytec/pcm058/Kconfig \
	board/grinn/liteboard/Kconfig \
	board/bosch/acc/Kconfig \
	board/freescale/mx6ullevk/Kconfig \
	board/freescale/mx6ul_14x14_evk/Kconfig \
	board/freescale/mx6sxsabreauto/Kconfig \
	board/freescale/mx6sxsabresd/Kconfig \
	board/freescale/mx6sllevk/Kconfig \
	board/freescale/mx6slevk/Kconfig \
	board/freescale/mx6sabresd/Kconfig \
	board/freescale/mx6sabreauto/Kconfig \
	board/freescale/mx6memcal/Kconfig \
	board/engicam/imx6ul/Kconfig \
	board/engicam/common/Kconfig \
	board/engicam/imx6q/Kconfig \
	board/embest/mx6boards/Kconfig \
	board/dhelectronics/dh_imx6/Kconfig \
	board/compulab/cm_fx6/Kconfig \
	board/bticino/mamoj/Kconfig \
	board/bsh/imx6ulz_smm_m2/Kconfig \
	board/boundary/nitrogen6x/Kconfig \
	board/armadeus/opos6uldev/Kconfig \
	board/aristainetos/common/Kconfig \
	board/aristainetos/Kconfig \
	board/ge/b1x5v2/Kconfig \
	board/ge/bx50v3/Kconfig \
	arch/arm/mach-imx/mx6/Kconfig \
	board/menlo/m53menlo/Kconfig \
	board/k+p/kp_imx53/Kconfig \
	board/inversepath/usbarmory/Kconfig \
	board/ge/common/Kconfig \
	board/ge/mx53ppd/Kconfig \
	board/freescale/mx53loco/Kconfig \
	board/freescale/mx51evk/Kconfig \
	board/beckhoff/mx53cx9020/Kconfig \
	arch/arm/mach-imx/mx5/Kconfig \
	arch/arm/mach-imx/mx3/Kconfig \
	arch/arm/cpu/armv7/ls102xa/Kconfig \
	arch/arm/mach-octeontx2/Kconfig \
	arch/arm/mach-octeontx/Kconfig \
	board/kobol/helios4/Kconfig \
	board/solidrun/clearfog/Kconfig \
	arch/arm/mach-mvebu/Kconfig \
	board/ea/ea-lpc3250devkitv2/Kconfig \
	board/work-microwave/work_92105/Kconfig \
	board/timll/devkit3250/Kconfig \
	arch/arm/mach-lpc32xx/Kconfig \
	board/alliedtelesis/SBx81LIFXCAT/Kconfig \
	board/alliedtelesis/SBx81LIFKW/Kconfig \
	board/zyxel/nsa310s/Kconfig \
	board/Seagate/nas220/Kconfig \
	board/Seagate/goflexhome/Kconfig \
	board/Seagate/dockstar/Kconfig \
	board/raidsonic/ib62x0/Kconfig \
	board/LaCie/netspace_v2/Kconfig \
	board/LaCie/net2big_v2/Kconfig \
	board/iomega/iconnect/Kconfig \
	board/d-link/dns325/Kconfig \
	board/cloudengines/pogo_v4/Kconfig \
	board/cloudengines/pogo_e02/Kconfig \
	board/buffalo/lsxl/Kconfig \
	board/Marvell/sheevaplug/Kconfig \
	board/Marvell/guruplug/Kconfig \
	board/Synology/ds109/Kconfig \
	board/Marvell/dreamplug/Kconfig \
	board/Marvell/openrd/Kconfig \
	arch/arm/mach-kirkwood/Kconfig \
	board/ti/ks2_evm/Kconfig \
	arch/arm/mach-keystone/Kconfig \
	board/ti/j721s2/Kconfig \
	board/siemens/iot2050/Kconfig \
	board/ti/j721e/Kconfig \
	board/ti/am62ax/Kconfig \
	board/ti/am62x/Kconfig \
	board/ti/am64x/Kconfig \
	board/ti/am65x/Kconfig \
	arch/arm/mach-k3/Kconfig \
	arch/arm/mach-ipq40xx/Kconfig \
	arch/arm/mach-integrator/Kconfig \
	arch/arm/mach-highbank/Kconfig \
	board/hpe/gxp/Kconfig \
	arch/arm/mach-hpe/gxp/Kconfig \
	board/samsung/axy17lte/Kconfig \
	board/samsung/espresso7420/Kconfig \
	board/samsung/smdk5420/Kconfig \
	board/samsung/smdk5250/Kconfig \
	board/samsung/arndale/Kconfig \
	board/samsung/odroid/Kconfig \
	board/samsung/trats2/Kconfig \
	board/samsung/origen/Kconfig \
	board/samsung/universal_c210/Kconfig \
	board/samsung/trats/Kconfig \
	board/samsung/smdkv310/Kconfig \
	arch/arm/mach-exynos/Kconfig \
	board/lego/ev3/Kconfig \
	board/ti/common/Kconfig \
	board/davinci/da8xxevm/Kconfig \
	arch/arm/mach-davinci/Kconfig \
	arch/arm/mach-bcmstb/Kconfig \
	arch/arm/mach-bcmbca/bcm6878/Kconfig \
	arch/arm/mach-bcmbca/bcm6858/Kconfig \
	arch/arm/mach-bcmbca/bcm6856/Kconfig \
	arch/arm/mach-bcmbca/bcm6855/Kconfig \
	arch/arm/mach-bcmbca/bcm6846/Kconfig \
	arch/arm/mach-bcmbca/bcm6813/Kconfig \
	arch/arm/mach-bcmbca/bcm6756/Kconfig \
	arch/arm/mach-bcmbca/bcm63178/Kconfig \
	arch/arm/mach-bcmbca/bcm63158/Kconfig \
	arch/arm/mach-bcmbca/bcm63148/Kconfig \
	arch/arm/mach-bcmbca/bcm63146/Kconfig \
	arch/arm/mach-bcmbca/bcm63138/Kconfig \
	arch/arm/mach-bcmbca/bcm4912/Kconfig \
	arch/arm/mach-bcmbca/bcm4908/Kconfig \
	board/broadcom/bcmbca/Kconfig \
	arch/arm/mach-bcmbca/bcm47622/Kconfig \
	arch/arm/mach-bcmbca/Kconfig \
	board/raspberrypi/rpi/Kconfig \
	arch/arm/mach-bcm283x/Kconfig \
	board/siemens/smartweb/Kconfig \
	board/siemens/taurus/Kconfig \
	board/siemens/corvus/Kconfig \
	board/ronetix/pm9g45/Kconfig \
	board/ronetix/pm9263/Kconfig \
	board/ronetix/pm9261/Kconfig \
	board/l+g/vinco/Kconfig \
	board/gardena/smart-gateway-at91sam/Kconfig \
	board/esd/meesc/Kconfig \
	board/egnite/ethernut5/Kconfig \
	board/calao/usb_a9263/Kconfig \
	board/bluewater/gurnard/Kconfig \
	board/atmel/sama5d4ek/Kconfig \
	board/atmel/sama5d4_xplained/Kconfig \
	board/atmel/sama5d3xek/Kconfig \
	board/atmel/sama5d3_xplained/Kconfig \
	board/atmel/sama5d2_icp/Kconfig \
	board/atmel/sama5d27_wlsom1_ek/Kconfig \
	board/atmel/sama5d27_som1_ek/Kconfig \
	board/atmel/sama5d2_xplained/Kconfig \
	board/atmel/sama5d2_ptc_ek/Kconfig \
	board/atmel/sama7g5ek/Kconfig \
	board/atmel/sam9x60_curiosity/Kconfig \
	board/atmel/sam9x60ek/Kconfig \
	board/atmel/at91sam9x5ek/Kconfig \
	board/atmel/at91sam9rlek/Kconfig \
	board/atmel/at91sam9n12ek/Kconfig \
	board/atmel/at91sam9m10g45ek/Kconfig \
	board/atmel/at91sam9263ek/Kconfig \
	board/atmel/at91sam9261ek/Kconfig \
	board/atmel/at91sam9260ek/Kconfig \
	arch/arm/mach-at91/Kconfig \
	board/aspeed/evb_ast2600/Kconfig \
	arch/arm/mach-aspeed/ast2600/Kconfig \
	board/aspeed/evb_ast2500/Kconfig \
	arch/arm/mach-aspeed/ast2500/Kconfig \
	arch/arm/mach-aspeed/Kconfig \
	arch/arm/mach-apple/Kconfig \
	arch/arm/Kconfig \
	board/synopsys/nsim/Kconfig \
	board/synopsys/iot_devkit/Kconfig \
	board/synopsys/hsdk/Kconfig \
	board/synopsys/emsdp/Kconfig \
	board/synopsys/axs10x/Kconfig \
	board/abilis/tb100/Kconfig \
	arch/arc/Kconfig \
	arch/Kconfig \
	scripts/Kconfig.include \
	Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(UBOOTVERSION)" "2023.04-rc1"
include/config/auto.conf: FORCE
endif
ifneq "$(CC_VERSION_TEXT)" "arm-linux-gnueabihf-gcc (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
include/config/auto.conf: FORCE
endif
ifneq "$(srctree)" "."
include/config/auto.conf: FORCE
endif
ifneq "$(CC)" "arm-linux-gnueabihf-gcc"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
