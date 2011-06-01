Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEEC14C80AB0
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 17:07:36 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Jun 2011 15:07:36 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.255.13.85])
	by orsmga002.jf.intel.com with ESMTP; 01 Jun 2011 15:07:35 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dongxiao.xu@intel.com, yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 17:05:21 -0500
Message-Id: <a8c5a89bc68081f90896b768254f61415b93fbc9.1306964823.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d1eb7fd2496c24ad7c4694881c32e3216efa11b1.1306964823.git.tom.zanussi@intel.com>
References: <d1eb7fd2496c24ad7c4694881c32e3216efa11b1.1306964823.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306964823.git.tom.zanussi@intel.com>
References: <cover.1306964823.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2][KERNEL] meta/fishriver: create initial BSP infrastructure
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
X-List-Received-Date: Wed, 01 Jun 2011 22:07:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

We now dedicate a branch to fishriver, which before now had been happy
with crownbay.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg      |   39 +++++++++++
 .../bsp/fishriver/fishriver-standard.scc           |    7 ++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   69 ++++++++++++++++++++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |   15 ++++
 4 files changed, 130 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc

diff --git a/meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg b/meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
new file mode 100644
index 0000000..225581c
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
@@ -0,0 +1,39 @@
+# Hardware support for the Platform Controller Hub EG20T
+
+CONFIG_PCH_DMA=y
+CONFIG_PCH_UART_DMA=y
+CONFIG_SERIAL_8250_PCI=y
+CONFIG_SERIAL_8250_PCH=y
+CONFIG_SERIAL_8250_PCH_DMA=y
+
+CONFIG_SERIAL_PCH_UART=y
+CONFIG_SERIAL_CORE=y
+
+CONFIG_SPI=y
+CONFIG_SPI_BITBANG=y
+CONFIG_SPI_GPIO=y
+CONFIG_SPI_TOPCLIFF_PCH=y
+ 
+CONFIG_MISC_DEVICES=y
+CONFIG_PCH_PHUB=y
+
+CONFIG_NETDEVICES=y
+CONFIG_NETDEV_1000=y
+CONFIG_PCH_GBE=y
+
+CONFIG_PCH_USBDEV=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_EG20T=y
+CONFIG_USB_GADGET_DUALSPEED=y
+CONFIG_USB_GADGET_SELECTED=y
+
+CONFIG_I2C_EG20T=y
+
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_PCH=y
+
+CONFIG_PCH_IEEE1588=y
+
+CONFIG_CAN=y
+CONFIG_CAN_DEV=y
+CONFIG_PCH_CAN=y
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
new file mode 100644
index 0000000..897eb3e
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
@@ -0,0 +1,7 @@
+define KMACHINE fishriver
+define KTYPE standard
+define KARCH i386
+
+scc_leaf ktypes/standard fishriver
+
+include fishriver.scc
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
new file mode 100644
index 0000000..5daa65b
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
@@ -0,0 +1,69 @@
+CONFIG_X86_32=y
+CONFIG_MATOM=y
+CONFIG_PRINTK=y
+
+# Basic hardware support for the box - network, USB, PCI, sound
+CONFIG_NETDEVICES=y
+CONFIG_ATA=y
+CONFIG_ATA_GENERIC=y
+CONFIG_ATA_SFF=y
+CONFIG_PCI=y
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_USB_SUPPORT=y
+CONFIG_USB=y
+CONFIG_USB_ARCH_HAS_EHCI=y
+CONFIG_R8169=y
+CONFIG_PATA_SCH=y
+CONFIG_MMC_SDHCI_PCI=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_PCIEPORTBUS=y
+CONFIG_NET=y
+CONFIG_USB_UHCI_HCD=y
+CONFIG_USB_OHCI_HCD=y
+CONFIG_BLK_DEV_SD=y
+CONFIG_CHR_DEV_SG=y
+CONFIG_SOUND=y
+CONFIG_SND=y
+CONFIG_SND_HDA_INTEL=y
+CONFIG_SATA_AHCI=y
+
+# Make sure these are on, otherwise the bootup won't be fun
+CONFIG_EXT3_FS=y
+CONFIG_UNIX=y
+CONFIG_INET=y
+CONFIG_MODULES=y
+CONFIG_SHMEM=y
+CONFIG_TMPFS=y
+CONFIG_PACKET=y
+
+# These are needed for the Poulsbo kernel modules
+CONFIG_I2C=y
+CONFIG_AGP=y
+CONFIG_VFAT_FS=y
+CONFIG_PM=y
+CONFIG_ACPI=y
+CONFIG_FB=y
+CONFIG_BACKLIGHT_LCD_SUPPORT=y
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+CONFIG_INPUT=y
+CONFIG_VIDEO_V4L2=y
+CONFIG_VIDEO_IVTV=y
+CONFIG_MEDIA_SUPPORT=y
+CONFIG_VIDEO_CAPTURE_DRIVERS=y
+CONFIG_VIDEO_DEV=y
+CONFIG_VIDEO_V4L2_COMMON=y
+CONFIG_I2C_ALGOBIT=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_VIDEO_FB_IVTV=y
+
+# Needed for booting (and using) USB memory sticks
+CONFIG_USB_STORAGE=y
+CONFIG_BLK_DEV_RAM=y
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_RD_GZIP=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
new file mode 100644
index 0000000..0abde0d
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
@@ -0,0 +1,15 @@
+kconf hardware fishriver.cfg
+kconf hardware fishriver.cfg
+
+git merge yocto/emgd
+
+include features/intel-e1xxxx/intel-e1xxxx.scc
+include features/drm-emgd/drm-emgd.scc
+include features/dmaengine/dmaengine.scc
+include features/serial/8250.scc
+include features/ericsson-3g/f5521gw.scc
+
+include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
-- 
1.7.0.4


