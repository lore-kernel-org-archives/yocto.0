Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3DE34C80AC6
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 02:17:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Jun 2011 00:17:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,399,1304319600"; d="scan'208";a="16006097"
Received: from unknown (HELO localhost) ([10.255.12.247])
	by azsmga001.ch.intel.com with ESMTP; 21 Jun 2011 00:17:44 -0700
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	koen@dominion.thruhere.net
Date: Tue, 21 Jun 2011 00:17:26 -0700
Message-Id: <bef4105a9b9cd2bf4a938df89813da423ddf0dac.1308640367.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1308640367.git.dvhart@linux.intel.com>
References: <cover.1308640367.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1308640367.git.dvhart@linux.intel.com>
References: <cover.1308640367.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] beagleboard: new config based on meta-texasinstruments
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
X-List-Received-Date: Tue, 21 Jun 2011 07:17:46 -0000

From: Darren Hart <dvhart@linux.intel.com>

Using the defconfig from the meta-texasinstruments layer,
update the beagleboard.cfg to enable the omap framebuffer
and other hardware. Break out other fragments as local
features (which we can move into the higher level features
if we choose later): wifi and wl1271.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../kernel-cache/bsp/beagleboard/beagleboard.cfg   |   97 ++++++++++++++++++--
 .../kernel-cache/bsp/beagleboard/beagleboard.scc   |    2 +
 meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg     |    3 +
 meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg   |    6 +
 4 files changed, 100 insertions(+), 8 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg

diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
index b1b5e22..00485d2 100644
--- a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
+++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
@@ -2,6 +2,8 @@
 # System Type
 #
 CONFIG_ARCH_OMAP=y
+CONFIG_HAVE_PWM=y
+CONFIG_ARM_L1_CACHE_SHIFT_6=y
 
 #
 # TI OMAP Implementations
@@ -21,7 +23,12 @@ CONFIG_OMAP_32K_TIMER=y
 CONFIG_OMAP_32K_TIMER_HZ=128
 CONFIG_OMAP_DM_TIMER=y
 CONFIG_OMAP_RESET_CLOCKS=y
-
+CONFIG_OMAP_SMARTREFLEX=y
+CONFIG_OMAP_SMARTREFLEX_CLASS3=y
+CONFIG_OMAP_MBOX_FWK=m
+CONFIG_OMAP_MBOX_KFIFO_SIZE=256
+CONFIG_OMAP_IOMMU=m
+CONFIG_OMAP_IOMMU_DEBUG=m
 
 #
 # OMAP Board Type
@@ -29,6 +36,19 @@ CONFIG_OMAP_RESET_CLOCKS=y
 CONFIG_MACH_OMAP3_BEAGLE=y
 
 #
+# Processor Features
+#
+CONFIG_ARM_THUMBEE=y
+CONFIG_ARM_L1_CACHE_SHIFT=6
+CONFIG_ARM_ERRATA_430973=y
+
+#
+# Kernel Features
+#
+CONFIG_LEDS=y
+
+
+#
 # Serial drivers
 #
 CONFIG_SERIAL_8250=y
@@ -40,9 +60,6 @@ CONFIG_SERIAL_8250_SHARE_IRQ=y
 CONFIG_SERIAL_8250_DETECT_IRQ=y
 CONFIG_SERIAL_8250_RUNTIME_UARTS=4
 
-# Floating point emulation
-#
-
 #
 # At least one emulation must be selected
 #
@@ -144,19 +161,84 @@ CONFIG_REGULATOR_TWL4030=y
 # Graphics support
 #
 CONFIG_FB=y
+CONFIG_DRM=m
+# CONFIG_VGASTATE is not set
+# CONFIG_VIDEO_OUTPUT_CONTROL is not set
+# CONFIG_FIRMWARE_EDID is not set
+# CONFIG_FB_DDC is not set
+# CONFIG_FB_BOOT_VESA_SUPPORT is not set
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+# CONFIG_FB_CFB_REV_PIXELS_IN_BYTE is not set
+CONFIG_FB_SYS_FILLRECT=m
+CONFIG_FB_SYS_COPYAREA=m
+CONFIG_FB_SYS_IMAGEBLIT=m
+# CONFIG_FB_FOREIGN_ENDIAN is not set
+CONFIG_FB_SYS_FOPS=m
+CONFIG_FB_DEFERRED_IO=y
+# CONFIG_FB_SVGALIB is not set
+# CONFIG_FB_MACMODES is not set
+# CONFIG_FB_BACKLIGHT is not set
+CONFIG_FB_MODE_HELPERS=y
+# CONFIG_FB_TILEBLITTING is not set
 
 #
 # Frame buffer hardware drivers
 #
-
 CONFIG_FB_OMAP=y
 CONFIG_FB_OMAP_CONSISTENT_DMA_SIZE=2
+# CONFIG_FB_S1D13XXX is not set
+# CONFIG_FB_TMIO is not set
+# CONFIG_FB_VIRTUAL is not set
+# CONFIG_FB_METRONOME is not set
+# CONFIG_FB_MB862XX is not set
+# CONFIG_FB_BROADSHEET is not set
+# CONFIG_FB_OMAP_BOOTLOADER_INIT is not set
+CONFIG_OMAP2_VRAM=y
+CONFIG_OMAP2_VRFB=y
+CONFIG_OMAP2_DSS=y
+CONFIG_OMAP2_VRAM_SIZE=14
+CONFIG_OMAP2_DSS_DEBUG_SUPPORT=y
+# CONFIG_OMAP2_DSS_COLLECT_IRQ_STATS is not set
+CONFIG_OMAP2_DSS_DPI=y
+# CONFIG_OMAP2_DSS_RFBI is not set
+CONFIG_OMAP2_DSS_VENC=y
+# CONFIG_OMAP2_DSS_SDI is not set
+CONFIG_OMAP2_DSS_DSI=y
+CONFIG_OMAP2_DSS_USE_DSI_PLL=y
+# CONFIG_OMAP2_DSS_FAKE_VSYNC is not set
+CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK=0
+CONFIG_FB_OMAP2=y
+CONFIG_FB_OMAP2_DEBUG_SUPPORT=y
+CONFIG_FB_OMAP2_NUM_FBS=2
 
 #
 # OMAP2/3 Display Device Drivers
 #
 CONFIG_PANEL_GENERIC=y
 CONFIG_PANEL_SHARP_LS037V7DW01=y
+# CONFIG_PANEL_LGPHILIPS_LB035Q02 is not set
+# CONFIG_PANEL_SAMSUNG_LTE430WQ_F0C is not set
+# CONFIG_PANEL_SHARP_LQ043T1DG01 is not set
+# CONFIG_PANEL_TAAL is not set
+CONFIG_PANEL_TOPPOLY_TDO35S=m
+CONFIG_PANEL_TPO_TD043MTEA1=m
+# CONFIG_BACKLIGHT_LCD_SUPPORT is not set
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+
+#
+# Display device support
+#
+CONFIG_DISPLAY_SUPPORT=y
+CONFIG_DUMMY_CONSOLE=y
+# CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY is not set
+CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=y
+# CONFIG_FONTS is not set
+CONFIG_FONT_8x8=y
+CONFIG_FONT_8x16=y
+# CONFIG_LOGO_LINUX_MONO is not set
+# CONFIG_LOGO_LINUX_VGA16 is not set
 
 #
 # Console display driver support
@@ -188,9 +270,10 @@ CONFIG_USB_OTG=y
 # USB Host Controller Drivers
 #
 CONFIG_USB_EHCI_HCD=y
-# CONFIG_USB_EHCI_TT_NEWSCHED is not set
+CONFIG_USB_EHCI_TT_NEWSCHED=y
 CONFIG_USB_EHCI_ROOT_HUB_TT=y
 CONFIG_USB_MUSB_HDRC=y
+CONFIG_USB_MUSB_SOC=y
 
 #
 # OMAP 343x high speed USB support
@@ -245,5 +328,3 @@ CONFIG_VIDEO_OMAP3_ISP=y
 # CONFIG_VIDEO_OMAP34XX_ISP_PREVIEWER is not set
 CONFIG_VIDEO_OMAP34XX_ISP_RESIZER=y
 # CONFIG_VIDEO_HELPER_CHIPS_AUTO is not set
-
-CONFIG_OMAP2_VRAM_SIZE=4
diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.scc b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.scc
index 4485277..6a408be 100644
--- a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.scc
+++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.scc
@@ -2,3 +2,5 @@ kconf hardware beagleboard.cfg
 kconf non-hardware beagleboard-non_hardware.cfg
 
 include features/usb-net/usb-net.scc
+include wifi.scc
+include wl1271.scc
diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg b/meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg
new file mode 100644
index 0000000..21c1fc1
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg
@@ -0,0 +1,3 @@
+CONFIG_CFG80211=y
+CONFIG_MAC80211=y
+CONFIG_WLAN=y
diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg b/meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg
new file mode 100644
index 0000000..5eaa3b6
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg
@@ -0,0 +1,6 @@
+CONFIG_WL12XX=m
+CONFIG_WL1271=m
+CONFIG_WL1271_HT=y
+CONFIG_WL1271_SPI=m
+CONFIG_WL1271_SDIO=m
+CONFIG_WL12XX_PLATFORM_DATA=y
-- 
1.7.1


