Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 213A4E01354
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:35:13 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Oct 2011 20:35:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,514,1312182000"; d="scan'208";a="60505758"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by azsmga001.ch.intel.com with ESMTP; 09 Oct 2011 20:35:12 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:34:48 -0500
Message-Id: <353d43d340e87996b4be4c5f6ddb4447e050b65c.1318217109.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <913facfef4ffff121bbbad386a4f30e69541455b.1318217109.git.tom.zanussi@intel.com>
References: <913facfef4ffff121bbbad386a4f30e69541455b.1318217109.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318217109.git.tom.zanussi@intel.com>
References: <cover.1318217109.git.tom.zanussi@intel.com>
Subject: [PATCH 8/8][KERNEL] fri2: cleanup bsp config
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
X-List-Received-Date: Mon, 10 Oct 2011 03:35:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove unnecessary options or options already defined in base configs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |   34 +++++++-----------------------
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    2 +
 2 files changed, 10 insertions(+), 26 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
index 8081001..e93c0b8 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
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
@@ -37,36 +43,12 @@ CONFIG_SHMEM=y
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
 
+CONFIG_RD_GZIP=y
+
 # Needed for booting (and using) CD images
 CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index 43df3a9..d44cd68 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -10,6 +10,8 @@ include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
 include features/ericsson-3g/f5521gw.scc
 include features/iwlagn/iwlagn.scc
+include features/framebuffer/vesafb.scc
+include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 
 include features/logbuf/size-normal.scc
-- 
1.7.0.4


