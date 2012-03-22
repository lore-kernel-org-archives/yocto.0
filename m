Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFE53E013DC
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Mar 2012 17:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132233165"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2012 17:41:29 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:16 -0700
Message-Id: <997f9bcdd026d4cb945a962ff08a58f58e3d4dce.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
Subject: [PATCH 03/13] meta-cedartrail: update README with instructions for PVR Graphics driver build
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:30 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Update README file with information on building image with PVR graphics driver.
Also provide info on  enabling build of recipes for glxgears demo apps,
video and music samples.

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 meta-cedartrail/README |   50 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 48 insertions(+), 2 deletions(-)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index 67cba6b..f17410c 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -2,13 +2,17 @@ This README file contains information on building the meta-cedartrail
 BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
+The 'Cedar Trail' platform consists of the Cedarview (Intel® Atom™
+N2600, N2800 and D2700) processor, plus the Tiger Point
+(Intel® NM10 Express) Chipset. 
+
 
 Table of Contents
 =================
 
  I. Building the meta-cedartrail BSP layer
 II. Booting the images in /binary
-
+III. Miscellaneous Notes 
 
 I. Building the meta-cedartrail BSP layer
 =========================================
@@ -24,10 +28,28 @@ bblayers.conf e.g.:
 
   yocto/meta-intel/meta-cedartrail \
 
-To enable the cedartrail layer, add the cedartrail MACHINE to local.conf:
+The meta-cedartrail layer contains support for two different machine
+configurations. These configurations are identical except for the fact
+that the one prefixed with 'cedartrail' makes use of Intel' proprietary
+PowerVR Graphics/Media drivers to enable Graphics and Media acceleration
+in the processor, while the one prefixed with 'cedartrail-nonopvr' uses
+non-accelerated graphics driver (VESA).
+
+If you want to enable the layer that supports Power VR graphics add the
+following to the local.conf file:
 
   MACHINE ?= "cedartrail"
 
+Power VR Graphics user-space driver binaries are covered by a
+"Intel Free Distribution Binary License". The build of this driver
+can be enabled by adding the following line to the local.conf file:
+ PVR_LICENSE = "yes"
+
+If you want to enable the layer that does not support Power VR graphics
+add the following to the local.conf file:
+
+ MACHINE ?= "cedartrail-nopvr"
+
 You should then be able to build a cedartrail image as such:
 
   $ source oe-init-build-env
@@ -81,3 +103,27 @@ the syslinux boot: prompt, or the boot: prompt contains strange
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
1.7.4.1


