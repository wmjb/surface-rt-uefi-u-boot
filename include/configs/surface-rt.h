/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (c) 2010-2012, NVIDIA CORPORATION.  All rights reserved.
 */

#ifndef __CONFIG_H
#define __CONFIG_H

#include <linux/sizes.h>

#include "tegra30-common.h"

/* VDD core PMIC */
#define CONFIG_TEGRA_VDD_CORE_TPS62361B_SET3

/* High-level configuration options */
#define CFG_TEGRA_BOARD_STRING	"Microsoft Surface RT"

/* Stolen from 'test/dm/video.c' */
#define ANSI_ESC "\x1b"

#define SURFACE_RT_ENV_COMMON \
	"loaded_dtb=0;" \
	"loaded_initramfs=0;" \
	"if test -n ${dtb_file}; then " \
		"if test -e ${dev_type} ${load_dev}:${load_part} ${dtb_file}; then " \
			"if load ${dev_type} ${load_dev}:${load_part} ${fdt_addr_r} ${dtb_file}; then " \
				"echo Loaded DTB;" \
				"loaded_dtb=1;" \
			"fi;" \
		"else " \
			"echo <error> DTB not found;" \
		"fi;" \
	"else " \
		"echo <warn> DTB not specified;" \
	"fi;" \
	"if test -n ${ramdisk_file}; then " \
		"if test -e ${dev_type} ${load_dev}:${load_part} ${ramdisk_file}; then " \
			"if load ${dev_type} ${load_dev}:${load_part} ${ramdisk_addr_r} ${ramdisk_file}; then " \
				"echo Loaded Initramfs;" \
				"loaded_initramfs=1;" \
			"fi;" \
		"else " \
			"echo <error> Initramfs not found;" \
		"fi;" \
	"else " \
		"echo <warn> Initramfs not specified;" \
	"fi;" \
	"if test -n ${kernel_file}; then " \
		"if test -e ${dev_type} ${load_dev}:${load_part} ${kernel_file}; then " \
			"if load ${dev_type} ${load_dev}:${load_part} ${kernel_addr_r} ${kernel_file}; then " \
				"echo Loaded Kernel;" \
				"if test $loaded_dtb -eq 1 && test $loaded_initramfs -eq 1; then " \
					"echo kernel / dt / init;" \
					"bootz ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r};" \
				"elif test $loaded_dtb -eq 1; then " \
					"echo kernel / dt;" \
					"bootz ${kernel_addr_r} - ${fdt_addr_r};" \
				"elif test $loaded_initramfs -eq 1; then " \
					"echo kernel / init;" \
					"bootz ${kernel_addr_r} ${ramdisk_addr_r};" \
				"else " \
					"echo kernel;" \
					"bootz ${kernel_addr_r};" \
				"fi;" \
			"fi;" \
		"else " \
			"echo <error> Kernel not found;" \
		"fi;" \
	"else " \
		"echo <error> Kernel not specified;" \
	"fi;" \
	"\0"

#define SURFACE_RT_BOOT_SCRIPT_SD \
       "boot_scr_sd=echo 'Run bootscript from SD ...';" \
               "load mmc 1 ${loadaddr} /boot.scr;" \
               "source\0"

#define SURFACE_RT_BOOT_SCRIPT_MMC \
       "boot_scr_mmc=echo 'Run bootscript from MMC ...';" \
               "load mmc 0 ${loadaddr} /boot.scr;" \
               "source\0"

#define SURFACE_RT_ENV_MMC \
	"boot_env_mmc=echo Loading boot env from MMC;" \
		"if load mmc 0:1 ${loadaddr} uboot.env; then " \
			"env import -t -r ${loadaddr} ${filesize};" \
		"else " \
			"echo Boot env NOT FOUND on eMMC!;" \
			"echo continues in 5s;" \
			"sleep 5;" \
			"bootmenu;" \
		"fi;" \
		SURFACE_RT_ENV_COMMON

#define SURFACE_RT_ENV_ANDROID \
	"boot_env_android=echo Looking for android env on SDCard;" \
		"if load mmc 1:1 ${loadaddr} uboot.env.android; then " \
                        "echo Found android env found on SDCard;" \
			"env import -t -r ${loadaddr} ${filesize};" \
		"else " \
			"echo No android env found on SDCard;" \
			"echo Looking for android env on eMMC;" \
			"if load mmc 0:1 ${loadaddr} uboot.env.android; then " \
                        "echo Found android env found on eMMC;" \
                        "env import -t -r ${loadaddr} ${filesize};" \
	                "else " \
			"echo Android Boot env NOT FOUND on eMMC or SDCard!;" \
			"sleep 2;" \
			"bootmenu;" \
	                "fi;" \
		"fi;" \
		SURFACE_RT_ENV_COMMON

#define SURFACE_RT_ENV_ANDROID_RECOVERY \
        "boot_env_recovery=echo Looking for android recovery env on SDCard;" \
                "if load mmc 1:1 ${loadaddr} uboot.env.android.recovery; then " \
                        "echo Found android recovery env found on SDCard;" \
                        "env import -t -r ${loadaddr} ${filesize};" \
                "else " \
                        "echo No android recovery env found on SDCard;" \
                        "echo Looking for android recovery env on eMMC;" \
                        "if load mmc 0:1 ${loadaddr} uboot.env.android.recovery; then " \
                        "echo Found android env recovery found on eMMC;" \
                        "env import -t -r ${loadaddr} ${filesize};" \
                        "else " \
                        "echo Android recovery Boot env NOT FOUND on eMMC or SDCard!;" \
                        "sleep 2;" \
                        "bootmenu;" \
	                "fi;" \
                "fi;" \
		SURFACE_RT_ENV_COMMON

#define SURFACE_RT_ENV_SD \
	"boot_env_sd=echo Loading boot env from SD;" \
		"if load mmc 1:1 ${loadaddr} uboot.env; then " \
			"env import -t -r ${loadaddr} ${filesize};" \
		"else " \
			"echo Boot env NOT FOUND on SD!;" \
			"echo continues in 5s;" \
			"sleep 5;" \
			"bootmenu;" \
		"fi;" \
		SURFACE_RT_ENV_COMMON


#define SURFACE_RT_ENV_USB \
	"boot_env_usb=echo Loading boot env from USB;" \
		"if load usb 0:1 ${loadaddr} uboot.env; then " \
			"env import -t -r ${loadaddr} ${filesize};" \
		"else " \
			"echo Boot env NOT FOUND on USB!;" \
			"echo continues in 5s;" \
			"sleep 5;" \
			"bootmenu;" \
		"fi;" \
		SURFACE_RT_ENV_COMMON

#define BOARD_EXTRA_ENV_SETTINGS \
	"kernel_addr_r=0x82408000\0" \
	"dtb_addr_r=0x88000000\0" \
	"ramdisk_addr_r=0x90000000\0" \
	"script_addr_r=0x87000000\0" \
	"bootkernel=bootz ${kernel_addr_r}\0" \
	"bootrdkernel=bootz ${kernel_addr_r} ${ramdisk_addr_r}\0" \
	"bootdtkernel=bootz ${kernel_addr_r} - ${dtb_addr_r}\0" \
	"bootdtrdkernel=bootz ${kernel_addr_r} ${ramdisk_addr_r} ${dtb_addr_r}\0" \
	SURFACE_RT_BOOT_SCRIPT_SD \
	SURFACE_RT_BOOT_SCRIPT_MMC \
	SURFACE_RT_ENV_MMC \
	SURFACE_RT_ENV_ANDROID \
	SURFACE_RT_ENV_ANDROID_RECOVERY \
	SURFACE_RT_ENV_SD \
	SURFACE_RT_ENV_USB \
        "bootmenu_0=Android=run boot_env_android; bootmenu;\0" \
        "bootmenu_1=Android Recovery=run boot_env_recovery; bootmenu;\0" \
        "bootmenu_2=Media Rescan=usb start; sleep 1; usb reset; sleep 1; mmc rescan; sleep 1 ;bootmenu;\0" \
	"bootmenu_3=Env USB=usb start; load usb 0:1 0x92000000 /unlocked.bmp; bmp display 0x92000000; sleep 1; run boot_env_usb; bootmenu;\0" \
	"bootmenu_4=Env eMMC=run boot_env_mmc; bootmenu;\0" \
	"bootmenu_5=Env SDCARD=run boot_env_sd; bootmenu;\0" \
	"bootmenu_6=Boot Script eMMC=run boot_scr_mmc; bootmenu;\0" \
	"bootmenu_7=Boot Script SDCARD=run boot_scr_sd; bootmenu;\0" \
	"bootmenu_8=USB Mass Storage - eMMC=ums 0 mmc 0; bootmenu;\0" \
	"bootmenu_9=USB Mass Storage - SD Card=ums 0 mmc 1; bootmenu;\0" \
	"bootmenu_10=RCM Mode=enterrcm\0" \
	"bootmenu_11=USB EFI Boot=usb start; load usb 0:1 90000000 /efi/boot/bootarm.efi;bootefi 90000000; bootmenu;\0" \
	"bootmenu_12=eMMC EFI Boot=load mmc 0:1 90000000 /efi/boot/bootarm.efi;bootefi 90000000; bootmenu;\0" \
	"bootmenu_13=SDCARD EFI Boot=load mmc 1:1 90000000 /efi/boot/bootarm.efi;bootefi 90000000; bootmenu;\0" \
	"bootmenu_14=Fastboot=usb start; fastboot usb 0\0" \
        "bootmenu_15=UEFI Firmware=load mmc 0:1 80108000 /uefi.bin;go 80108000 0\0" \
        "bootmenu_16=Reset=reset 0\0" \
	"bootmenu_delay=-1\0"

/* Board-specific serial config */
#define CFG_SYS_NS16550_COM1		NV_PA_APB_UARTA_BASE

#define CONFIG_MACH_TYPE		MACH_TYPE_CARDHU

#include "tegra-common-post.h"

#endif /* __CONFIG_H */
