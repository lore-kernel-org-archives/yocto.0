Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB6BBE011BB
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 22:58:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p755wM5V024375
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 4 Aug 2011 22:58:22 -0700 (PDT)
Received: from localhost (128.224.162.159) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 4 Aug 2011 22:58:21 -0700
From: <jingdong.lu@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Fri, 5 Aug 2011 13:58:13 +0800
Message-ID: <785c49dcd2f29d302766da25391d05cc11bd3ff9.1312523399.git.jingdong.lu@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1312523399.git.jingdong.lu@windriver.com>
References: <cover.1312523399.git.jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.159]
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/1] pandaboard: add pandaboard bsp
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Aug 2011 05:58:13 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

add pandaboard bsp configuration.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../bsp/pandaboard/pandaboard-non_hardware.cfg     |   30 ++
 .../bsp/pandaboard/pandaboard-standard.scc         |    7 +
 .../cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg |  346 ++++++++++++++++++++
 .../cfg/kernel-cache/bsp/pandaboard/pandaboard.scc |    5 +
 4 files changed, 388 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-non_hardware.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.scc

diff --git a/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-non_hardware.cfg b/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-non_hardware.cfg
new file mode 100644
index 0000000..361343b
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-non_hardware.cfg
@@ -0,0 +1,30 @@
+#
+# Miscellaneous filesystems
+#
+CONFIG_NFS_DEF_FILE_IO_SIZE=1024
+
+#
+# Multiple Device Support
+#
+# CONFIG_MD is not set
+
+# Kernel Features
+#
+CONFIG_NO_HZ=y
+
+#
+# CPUIdle
+#
+CONFIG_CPU_IDLE=y
+CONFIG_CPU_IDLE_GOV_LADDER=y
+CONFIG_CPU_IDLE_GOV_MENU=y
+
+#
+# Kernel hacking
+#
+CONFIG_DEBUG_FS=y
+
+#
+# Power management options
+#
+CONFIG_PM_DEBUG=y
diff --git a/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-standard.scc b/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-standard.scc
new file mode 100644
index 0000000..4415af4
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-standard.scc
@@ -0,0 +1,7 @@
+define KMACHINE pandaboard
+define KTYPE standard
+define KARCH arm
+
+scc_leaf ktypes/standard pandaboard
+
+include pandaboard.scc
diff --git a/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg b/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg
new file mode 100644
index 0000000..d147f3c
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg
@@ -0,0 +1,346 @@
+#
+# System Type
+#
+CONFIG_ARCH_OMAP=y
+
+#
+# TI OMAP Common Features
+#
+# CONFIG_ARCH_OMAP1 is not set
+CONFIG_ARCH_OMAP2PLUS=y
+
+#
+# OMAP Feature Selections
+#
+# CONFIG_OMAP_SMARTREFLEX is not set
+CONFIG_OMAP_RESET_CLOCKS=y
+CONFIG_OMAP_MUX=y
+CONFIG_OMAP_MUX_DEBUG=y
+CONFIG_OMAP_MUX_WARNINGS=y
+CONFIG_OMAP_MCBSP=y
+# CONFIG_OMAP_MBOX_FWK is not set
+# CONFIG_OMAP_MPU_TIMER is not set
+CONFIG_OMAP_32K_TIMER=y
+# CONFIG_OMAP3_L2_AUX_SECURE_SAVE_RESTORE is not set
+CONFIG_OMAP_32K_TIMER_HZ=128
+CONFIG_OMAP_DM_TIMER=y
+# CONFIG_OMAP_PM_NONE is not set
+CONFIG_OMAP_PM_NOOP=y
+# CONFIG_MACH_OMAP_GENERIC is not set
+CONFIG_CPU_32v6K=y
+#
+# TI OMAP2/3/4 Specific Features
+#
+CONFIG_ARCH_OMAP2PLUS_TYPICAL=y
+CONFIG_ARCH_OMAP2=y
+CONFIG_ARCH_OMAP3=y
+CONFIG_ARCH_OMAP4=y
+
+#
+# OMAP Core Type
+#
+# CONFIG_ARCH_OMAP2420 is not set
+# CONFIG_ARCH_OMAP2430 is not set
+# CONFIG_ARCH_OMAP3430 is not set
+CONFIG_OMAP_PACKAGE_CBL=y
+CONFIG_OMAP_PACKAGE_CBS=y
+
+#
+# OMAP Board Type
+#
+CONFIG_MACH_OMAP_4430SDP=y
+CONFIG_MACH_OMAP4_PANDA=y
+
+#
+# Processor Features
+#
+CONFIG_ARM_THUMB=y
+CONFIG_ARM_THUMBEE=y
+CONFIG_DMA_CACHE_RWFO=y
+CONFIG_OUTER_CACHE=y
+CONFIG_OUTER_CACHE_SYNC=y
+CONFIG_CACHE_L2X0=y
+CONFIG_ARM_L1_CACHE_SHIFT=5
+CONFIG_ARM_DMA_MEM_BUFFERABLE=y
+CONFIG_PL310_ERRATA_588369=y
+CONFIG_ARM_ERRATA_720789=y
+CONFIG_ARM_GIC=y
+CONFIG_COMMON_CLKDEV=y
+
+#
+# Kernel Features
+#
+CONFIG_LEDS=y
+
+#
+# At least one emulation must be selected
+#
+CONFIG_FPE_NWFPE=y
+# CONFIG_FPE_NWFPE_XP is not set
+# CONFIG_FPE_FASTFPE is not set
+CONFIG_VFP=y
+CONFIG_VFPv3=y
+CONFIG_NEON=y
+
+#
+# Power management options
+#
+CONFIG_PM=y
+CONFIG_PM_RUNTIME=y
+
+
+#
+# Input device support
+#
+CONFIG_INPUT=y
+
+#
+# Hardware I/O ports
+#
+CONFIG_SERIO=y
+CONFIG_SERIO_SERPORT=y
+CONFIG_SERIO_LIBPS2=y
+
+#
+# Character devices
+#
+CONFIG_VT=y
+CONFIG_CONSOLE_TRANSLATIONS=y
+CONFIG_VT_CONSOLE=y
+CONFIG_HW_CONSOLE=y
+CONFIG_VT_HW_CONSOLE_BINDING=y
+CONFIG_DEVKMEM=y
+# CONFIG_SERIAL_NONSTANDARD is not set
+# CONFIG_N_GSM is not set
+
+#
+# Serial drivers
+#
+CONFIG_SERIAL_8250=y
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_8250_NR_UARTS=32
+CONFIG_SERIAL_8250_RUNTIME_UARTS=4
+CONFIG_SERIAL_8250_EXTENDED=y
+CONFIG_SERIAL_8250_MANY_PORTS=y
+CONFIG_SERIAL_8250_SHARE_IRQ=y
+CONFIG_SERIAL_8250_DETECT_IRQ=y
+CONFIG_SERIAL_8250_RSA=y
+
+#
+# Non-8250 serial port support
+#
+CONFIG_SERIAL_CORE=y
+CONFIG_SERIAL_CORE_CONSOLE=y
+CONFIG_SERIAL_OMAP=y
+CONFIG_SERIAL_OMAP_CONSOLE=y
+CONFIG_UNIX98_PTYS=y
+CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_OMAP=y
+CONFIG_I2C=y
+CONFIG_I2C_BOARDINFO=y
+CONFIG_I2C_COMPAT=y
+CONFIG_I2C_CHARDEV=y
+CONFIG_I2C_HELPER_AUTO=y
+
+#
+# I2C system bus drivers (mostly embedded / system-on-chip)
+#
+CONFIG_I2C_OMAP=y
+
+#
+# Other I2C/SMBus bus drivers
+#
+CONFIG_SPI=y
+CONFIG_SPI_MASTER=y
+
+#
+# SPI Master Controller Drivers
+#
+CONFIG_SPI_OMAP24XX=y
+
+#
+# PPS support
+#
+# CONFIG_PPS is not set
+CONFIG_ARCH_REQUIRE_GPIOLIB=y
+CONFIG_GPIOLIB=y
+CONFIG_DEBUG_GPIO=y
+CONFIG_GPIO_SYSFS=y
+
+#
+# I2C GPIO expanders:
+#
+CONFIG_GPIO_TWL4030=y
+
+#
+# MODULbus GPIO expanders:
+#
+CONFIG_W1=y
+CONFIG_W1_CON=y
+
+#
+# 1-wire Slaves
+#
+CONFIG_POWER_SUPPLY=y
+CONFIG_HWMON=y
+
+#
+# Native drivers
+#
+CONFIG_WATCHDOG=y
+
+#
+# Watchdog Device Drivers
+#
+CONFIG_OMAP_WATCHDOG=y
+CONFIG_TWL4030_WATCHDOG=y
+
+#
+# Sonics Silicon Backplane
+#
+CONFIG_MFD_SUPPORT=y
+CONFIG_MFD_CORE=y
+CONFIG_MENELAUS=y
+CONFIG_TWL4030_CORE=y
+CONFIG_TWL4030_POWER=y
+CONFIG_TWL6040_CODEC=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED_VOLTAGE=y
+CONFIG_REGULATOR_TWL4030=y
+CONFIG_REGULATOR_TPS65023=y
+CONFIG_REGULATOR_TPS6507X=y
+
+#
+# Graphics support
+#
+CONFIG_FB=y
+CONFIG_FIRMWARE_EDID=y
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+CONFIG_FB_MODE_HELPERS=y
+CONFIG_FB_TILEBLITTING=y
+
+#
+# Frame buffer hardware drivers
+#
+CONFIG_OMAP2_VRAM=y
+CONFIG_OMAP2_VRFB=y
+CONFIG_OMAP2_DSS=y
+CONFIG_OMAP2_VRAM_SIZE=32
+CONFIG_OMAP2_DSS_DEBUG_SUPPORT=y
+CONFIG_OMAP2_DSS_DPI=y
+# CONFIG_OMAP2_DSS_RFBI is not set
+# CONFIG_OMAP2_DSS_VENC is not set
+# CONFIG_OMAP4_DSS_HDMI is not set
+# CONFIG_OMAP2_DSS_SDI is not set
+# CONFIG_OMAP2_DSS_DSI is not set
+# CONFIG_OMAP2_DSS_FAKE_VSYNC is not set
+CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK=0
+CONFIG_FB_OMAP2=y
+CONFIG_FB_OMAP2_DEBUG_SUPPORT=y
+CONFIG_FB_OMAP2_NUM_FBS=1
+
+#
+# OMAP2/3 Display Device Drivers
+#
+CONFIG_PANEL_GENERIC_DPI=y
+
+#
+# Console display driver support
+#
+CONFIG_DUMMY_CONSOLE=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=y
+# CONFIG_FRAMEBUFFER_CONSOLE_ROTATION is not set
+CONFIG_FONTS=y
+CONFIG_FONT_8x8=y
+CONFIG_FONT_8x16=y
+CONFIG_LOGO=y
+CONFIG_LOGO_LINUX_CLUT224=y
+CONFIG_SOUND=y
+CONFIG_SND=y
+CONFIG_SND_TIMER=y
+CONFIG_SND_PCM=y
+CONFIG_SND_JACK=y
+CONFIG_SND_DYNAMIC_MINORS=y
+CONFIG_SND_SUPPORT_OLD_API=y
+CONFIG_SND_VERBOSE_PROCFS=y
+CONFIG_SND_DRIVERS=y
+CONFIG_SND_SOC=y
+CONFIG_SND_OMAP_SOC=y
+CONFIG_SND_OMAP_SOC_ABE_DSP=y
+CONFIG_SND_OMAP_SOC_MCBSP=y
+CONFIG_SND_OMAP_SOC_MCPDM=y
+CONFIG_SND_OMAP_SOC_ABE=y
+CONFIG_SND_OMAP_SOC_DMIC=y
+CONFIG_SND_OMAP_SOC_SDP4430=y
+# CONFIG_SND_OMAP_SOC_HDMI is not set
+CONFIG_SND_SOC_I2C_AND_SPI=y
+# CONFIG_SND_SOC_ALL_CODECS is not set
+CONFIG_SND_SOC_DMIC=y
+CONFIG_SND_SOC_TWL6040=y
+# CONFIG_SOUND_PRIME is not set
+CONFIG_HID_SUPPORT=y
+CONFIG_HID=y
+# CONFIG_HIDRAW is not set
+
+#
+# USB Input Devices
+#
+CONFIG_USB_HID=y
+
+#
+# Special HID drivers
+#
+CONFIG_USB_SUPPORT=y
+CONFIG_USB_ARCH_HAS_EHCI=y
+CONFIG_USB=y
+CONFIG_USB_DEBUG=y
+CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
+
+#
+# Miscellaneous USB options
+#
+CONFIG_USB_DEVICEFS=y
+CONFIG_USB_DEVICE_CLASS=y
+
+#
+# USB Host Controller Drivers
+#
+CONFIG_USB_EHCI_HCD=y
+
+#
+# USB Miscellaneous drivers
+#
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SELECTED=y
+CONFIG_USB_GADGET_OMAP=y
+CONFIG_USB_OMAP=y
+CONFIG_USB_ZERO=m
+
+#
+# OTG and related infrastructure
+#
+CONFIG_USB_OTG_UTILS=y
+
+CONFIG_MMC=y
+
+#
+# MMC/SD/SDIO Card Drivers
+#
+CONFIG_MMC_BLOCK=y
+
+#
+# MMC/SD/SDIO Host Controller Drivers
+#
+CONFIG_MMC_OMAP=y
+CONFIG_MMC_OMAP_HS=y
+
+#
+# I2C RTC drivers
+#
+CONFIG_RTC_DRV_TWL4030=y
+
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
diff --git a/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.scc b/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.scc
new file mode 100644
index 0000000..86f7fab
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.scc
@@ -0,0 +1,5 @@
+kconf hardware pandaboard.cfg
+kconf non-hardware pandaboard-non_hardware.cfg
+
+include features/usb-net/usb-net.scc
+include cfg/usb-mass-storage.scc
-- 
1.7.0.4


