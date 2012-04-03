Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D49E013FF
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 16:45:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2012 16:45:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="128397939"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.75])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2012 16:45:23 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue,  3 Apr 2012 16:43:58 -0700
Message-Id: <1377383bc9ade93f6bb303ca95fb76ceb396a0f4.1333496206.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
References: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
Subject: [PATCH 7/7] Cedartrail: Update the README.
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
X-List-Received-Date: Tue, 03 Apr 2012 23:45:33 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Update the README file with instructions to build
with pvr graphics driver.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-cedartrail/README |   41 +++++++++++++++++++++++++++++++++++++++--
 1 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index 295e9ff..f482cca 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -52,10 +52,23 @@ common metadata shared between BSPs) e.g.:
         yocto/meta-intel \  
 	yocto/meta-intel/meta-cedartrail \
 
-To enable the cedartrail layer, add the cedartrail MACHINE to local.conf:
+To enable the cedartrail layer that supports Power VR graphics, 
+add the cedartrail MACHINE to local.conf:
 
   MACHINE ?= "cedartrail"
 
+
+Power VR Graphics user-space driver binaries are covered by a
+"Intel Free Distribution Binary License". The build of this driver
+can be enabled by adding the following line to the local.conf file:
+
+LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0"
+
+To enable the layer that does not support Power VR graphics
+add the following to the local.conf file:
+
+ MACHINE ?= "cedartrail-nopvr"
+
 You should then be able to build a cedartrail image as such:
 
   $ source oe-init-build-env
@@ -85,7 +98,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=core-image-sato-cedartrail-20120105232035.hddimg of=/dev/sdf
+# dd if=core-image-sato-cedartrail-20120403210525.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
@@ -109,3 +122,27 @@ the syslinux boot: prompt, or the boot: prompt contains strange
 characters), try doing this first:
 
 # dd if=/dev/zero of=/dev/sdf bs=1M count=512
+
+Miscellaneous Notes
+====================
+
+Video and Music Samples
+-----------------------
+This BSP includes recipes to download Ogg format video and
+music files that can be played-back with the Video and music players
+included in the sato images.  The sample files are installed in
+/home/Music and /home/Videos directories.  
+
+
+Adding Glxgears to image
+-------------------------
+Glxgears can be added to the generated image by adding "debug-tweaks"
+option to the extra image features variable in the default local.conf
+before building the BSP.
+
+e.g. to add Glxgears, locate the following line in local.conf
+EXTRA_IMAGE_FEATURES = "debug-tweaks"
+
+and change above line to..
+
+EXTRA_IMAGE_FEATURES = "debug-tweaks tools-testapps"
-- 
1.7.5.4


