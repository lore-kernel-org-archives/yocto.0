Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB360E01353
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:35:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Oct 2011 20:35:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="61566902"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by orsmga002.jf.intel.com with ESMTP; 09 Oct 2011 20:35:05 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:34:47 -0500
Message-Id: <2a605e293891a5da113a36181b30aa673ad14e49.1318217109.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <913facfef4ffff121bbbad386a4f30e69541455b.1318217109.git.tom.zanussi@intel.com>
References: <913facfef4ffff121bbbad386a4f30e69541455b.1318217109.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318217109.git.tom.zanussi@intel.com>
References: <cover.1318217109.git.tom.zanussi@intel.com>
Subject: [PATCH 7/8][KERNEL] sugarbay: cleanup bsp config
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
X-List-Received-Date: Mon, 10 Oct 2011 03:35:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove unnecessary options or options already defined in base configs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg |   22 ++--------------------
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc |    1 +
 2 files changed, 3 insertions(+), 20 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
index 3dbc0f3..58c6493 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
@@ -33,33 +33,15 @@ CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
 
-# These are needed for the Poulsbo kernel modules
 CONFIG_I2C=y
 CONFIG_AGP=y
-CONFIG_VFAT_FS=y
 CONFIG_PM=y
 CONFIG_ACPI=y
-CONFIG_FB=y
-CONFIG_BACKLIGHT_LCD_SUPPORT=y
-CONFIG_BACKLIGHT_CLASS_DEVICE=y
 CONFIG_INPUT=y
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
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
index 86346f6..77f51bd 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
@@ -2,6 +2,7 @@ kconf hardware sugarbay.cfg
 
 include features/i915/i915.scc
 include features/serial/8250.scc
+include cfg/usb-mass-storage.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


