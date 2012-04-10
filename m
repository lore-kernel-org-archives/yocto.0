Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15886E00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:57:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Apr 2012 11:57:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129291147"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by azsmga001.ch.intel.com with ESMTP; 10 Apr 2012 11:57:09 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:39 -0700
Message-Id: <510483a761c38b88e7c64c8e897ec94df1b21e35.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 9/9] [meta-intel] Cedartrail: Update the README.
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
X-List-Received-Date: Tue, 10 Apr 2012 18:57:10 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add instructions on how to build with pvr graphics
support and how to build with custom image.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-cedartrail/README |   49 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 48 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index 295e9ff..493e831 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -52,15 +52,38 @@ common metadata shared between BSPs) e.g.:
         yocto/meta-intel \  
 	yocto/meta-intel/meta-cedartrail \
 
-To enable the cedartrail layer, add the cedartrail MACHINE to local.conf:
+To enable the cedartrail layer that supports Power VR graphics,
+add the cedartrail MACHINE to local.conf:
 
   MACHINE ?= "cedartrail"
 
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
+
 You should then be able to build a cedartrail image as such:
 
   $ source oe-init-build-env
   $ bitbake core-image-sato
 
+The above image will not give you the webkit feature and will not
+have the Audio and Video media samples in the image.
+
+If you want the webkit feature and Audio , Video media samples built
+into the image by default, You should build the custom image by 
+doing the following:
+
+  $ source oe-init-build-env
+  $ bitbake core-image-cdv-media
+
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
@@ -109,3 +132,27 @@ the syslinux boot: prompt, or the boot: prompt contains strange
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
+Glxgears can be added to the generated image by adding "tools-testapps"
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


