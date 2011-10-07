Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99FCCE0133D
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2011 06:14:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Oct 2011 06:14:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="60134038"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by orsmga001.jf.intel.com with ESMTP; 07 Oct 2011 06:14:34 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Fri,  7 Oct 2011 08:15:38 -0500
Message-Id: <07f7e894b17c1302eb718a1fc74f8affcacef646.1317993031.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <913facfef4ffff121bbbad386a4f30e69541455b.1317993031.git.tom.zanussi@intel.com>
References: <913facfef4ffff121bbbad386a4f30e69541455b.1317993031.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317993031.git.tom.zanussi@intel.com>
References: <cover.1317993031.git.tom.zanussi@intel.com>
Subject: [PATCH 4/5][KERNEL] emenlow: cleanup bsp config
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
X-List-Received-Date: Fri, 07 Oct 2011 13:14:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove unnecessary options or options already defined in base configs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg |   35 ++++++------------------
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc |    2 +
 2 files changed, 11 insertions(+), 26 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
index d527e8d..b9704c5 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
@@ -24,6 +24,13 @@ CONFIG_CHR_DEV_SG=y
 CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_HDA_INTEL=y
+CONFIG_I2C=y
+CONFIG_AGP=y
+CONFIG_PM=y
+CONFIG_ACPI=y
+CONFIG_BACKLIGHT_LCD_SUPPORT=y
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+CONFIG_INPUT=y
 
 # Make sure these are on, otherwise the bootup won't be fun
 CONFIG_EXT3_FS=y
@@ -34,36 +41,12 @@ CONFIG_SHMEM=y
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
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
index e5b2097..8ee3558 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
@@ -5,6 +5,8 @@ include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-psb/drm-psb.scc
 include features/serial/8250.scc
+include features/framebuffer/vesafb.scc
+include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 
 include features/logbuf/size-normal.scc
-- 
1.7.0.4


