Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3688E01281
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 13:17:13 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 29 Sep 2011 13:17:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,463,1312182000"; d="scan'208";a="21922251"
Received: from unknown (HELO localhost) ([10.255.14.216])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Sep 2011 13:17:12 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Thu, 29 Sep 2011 15:17:05 -0500
Message-Id: <8cd30c00ed8e94e5e4f5d67344a3478c2c6563d5.1317326894.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <b33bc7ad590e46d721bdb16adfb1e90c7d74e221.1317326894.git.tom.zanussi@intel.com>
References: <b33bc7ad590e46d721bdb16adfb1e90c7d74e221.1317326894.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317326894.git.tom.zanussi@intel.com>
References: <cover.1317326894.git.tom.zanussi@intel.com>
Subject: [PATCH 3/5][KERNEL] crownbay: cleanup bsp config
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
X-List-Received-Date: Thu, 29 Sep 2011 20:17:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove unnecessary options or options already defined in base configs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |   34 +++++-----------------
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    5 ++-
 2 files changed, 11 insertions(+), 28 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
index 5daa65b..76a48eb 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -27,6 +27,12 @@ CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_HDA_INTEL=y
 CONFIG_SATA_AHCI=y
+CONFIG_AGP=y
+CONFIG_PM=y
+CONFIG_ACPI=y
+CONFIG_BACKLIGHT_LCD_SUPPORT=y
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+CONFIG_INPUT=y
 
 # Make sure these are on, otherwise the bootup won't be fun
 CONFIG_EXT3_FS=y
@@ -37,33 +43,9 @@ CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
 
-# These are needed for the Poulsbo kernel modules
-CONFIG_I2C=y
-CONFIG_AGP=y
-CONFIG_VFAT_FS=y
-CONFIG_PM=y
-CONFIG_ACPI=y
-CONFIG_FB=y
-CONFIG_BACKLIGHT_LCD_SUPPORT=y
-CONFIG_BACKLIGHT_CLASS_DEVICE=y
-CONFIG_INPUT=y
-CONFIG_VIDEO_V4L2=y
-CONFIG_VIDEO_IVTV=y
-CONFIG_MEDIA_SUPPORT=y
-CONFIG_VIDEO_CAPTURE_DRIVERS=y
-CONFIG_VIDEO_DEV=y
-CONFIG_VIDEO_V4L2_COMMON=y
-CONFIG_I2C_ALGOBIT=y
-CONFIG_FB_CFB_COPYAREA=y
-CONFIG_FB_CFB_IMAGEBLIT=y
-CONFIG_FB_CFB_FILLRECT=y
-CONFIG_VIDEO_FB_IVTV=y
-
 # Needed for booting (and using) USB memory sticks
-CONFIG_USB_STORAGE=y
-CONFIG_BLK_DEV_RAM=y
 CONFIG_BLK_DEV_LOOP=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_RD_GZIP=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
+
+CONFIG_RD_GZIP=y
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 63b7ad6..3114cbc 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -8,10 +8,11 @@ include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
+include features/hpet/hpet.scc
+include features/framebuffer/vesafb.scc
+include cfg/usb-mass-storage.scc
 
 include features/logbuf/size-normal.scc
 
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
-
-include features/hpet/hpet.scc
-- 
1.7.0.4


