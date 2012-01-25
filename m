Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CB36E01371
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 16:00:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2012 16:00:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="102328409"
Received: from unknown (HELO localhost) ([10.255.13.231])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2012 16:00:54 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Tue, 24 Jan 2012 18:00:07 -0600
Message-Id: <981c8f0bd4290c1526bf2f5f921d70d3d6f1e210.1327449325.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7e91f8311f723350e7d3cefcadd7b6c13b76bd5e.1327449325.git.tom.zanussi@intel.com>
References: <7e91f8311f723350e7d3cefcadd7b6c13b76bd5e.1327449325.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1327449325.git.tom.zanussi@intel.com>
References: <cover.1327449325.git.tom.zanussi@intel.com>
Subject: [PATCH 5/6] meta-crownbay: update README
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
X-List-Received-Date: Wed, 25 Jan 2012 00:00:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The new emgd-driver-bin_1.10 recipe no longer requires manually
extracting and installing emgd binaries, so remove the section that
deals with that.

It does require a new LICENSE_FLAGS_WHITELIST entry in local.conf, so
add instructions detailing that.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README |   97 ++++++-------------------------------------------
 1 files changed, 12 insertions(+), 85 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index 65289f7..b56c79a 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -6,7 +6,7 @@ The Crown Bay platform consists of the Intel Atom Z6xx processor,
 plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
 
 It also supports the E6xx embedded on-chip graphics via the Intel
-Embedded Media and Graphics Driver (EMGD) 1.8 Driver.
+Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
 
 
 Dependencies
@@ -41,8 +41,7 @@ Table of Contents
 =================
 
   I. Building the meta-crownbay BSP layer
- II. Special notes for building the meta-crownbay BSP layer
-III. Booting the images in /binary
+ II. Booting the images in /binary
 
 
 I. Building the meta-crownbay BSP layer
@@ -64,7 +63,7 @@ common metadata shared between BSPs) e.g.:
 The meta-crownbay layer contains support for two different machine
 configurations. These configurations are identical except for the fact
 that the one prefixed with 'crownbay' makes use of the
-Intel-proprietary EMGD 1.8 graphics driver, while the one prefixed
+Intel-proprietary EMGD 1.10 graphics driver, while the one prefixed
 with 'crownbay-noemgd' does not.
 
 If you want to enable the layer that supports EMGD graphics add the
@@ -72,6 +71,13 @@ following to the local.conf file:
 
   MACHINE ?= "crownbay"
 
+The 'crownbay' machine includes the emgd-driver-bin package, which has
+a proprietary license that must be whitelisted by adding the string
+"license_emgd-driver-bin_1.10" to the LICENSE_FLAGS_WHITELIST variable
+in your local.conf.  For example:
+
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"
+
 If you want to enable the layer that does not support EMGD graphics
 add the following to the local.conf file:
 
@@ -97,87 +103,8 @@ equivalently check out the appropriate branch from the meta-intel
 repository at the same location.
 
 
-II. Special notes for building the meta-crownbay BSP layer
-==========================================================
-
-The meta-crownbay layer makes use of the proprietary Intel EMGD
-userspace drivers when building the "crownbay" machine (but not when
-building the "crownbay-noemgd" machine).  If you got the BSP from the
-'BSP Downloads' section of the Yocto website, the EMGD binaries needed
-to perform the build will already be present in the BSP, located in
-the meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
-directory, and you can ignore the rest of this section.
-
-If you didn't get the BSP from the 'BSP Downloads' section of the
-Yocto website, you can download a tarball containing an rpm that
-contains the binaries and extract the binaries from that, and copy
-them to the proper location in the meta-crownbay layer.
-
-The following subsection describes that process in detail.
-
-
-Downloading and extracting the binaries using the EMGD Linux tarball
---------------------------------------------------------------------
-
-The first step of the process is to download the EMGD 1.8 Driver.
-Here is the current link to the URL from which it can be downloaded:
-
-http://edc.intel.com/Software/Downloads/EMGD/
-
-In the Download Now tab, select:
-
-Intel® architecture-based product: Linux Tar Ball
-Operating System: MeeGo* 1.2 IVI Linux* (kernel 2.6.37, X.server 1.9, Mesa 7.9)
-
-That will give you a large .tgz file:
-
-Lin_EMGD_1_8_RC_2032.tgz
-
-Extract the files in the tar file, which will in turn give you a
-directory named IEMGD_HEAD_Linux.
-
-The binaries are contained in an rpm file; you can extract the
-binaries from the rpm file using rpm2cpio and cpio:
-
-$ cd IEMGD_HEAD_Linux/MeeGo1.2
-$ rpm2cpio emgd-bin-2032-1.6.i586.rpm > emgd-bin-2032-1.6.i586.cpio
-$ mkdir extracted; cd extracted
-$ cpio -idv < ../emgd-bin-2032-1.6.i586.cpio
-
-You can now copy the xorg-xserver binaries to the emgd-driver-bin-1.8
-directory in meta-intel/common:
-
-$ cp -a usr/lib meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
-
-You also need to copy the IEMGD License.txt file to the same directory:
-
-$ cp IEMGD_HEAD_Linux/License/License.txt meta-intel/common/recipes/xorg-xserver/emgd-driver-bin-1.8
-
-Finally, you need to extract and copy the video plugins to the
-emgd-driver-bin-1.8 directory in meta-intel/common:
- 
-$ cd IEMGD_HEAD_Linux/common/video_plugin
-$ rpm2cpio gst-plugins-mixvideo-0.10.30-1.i586.rpm > gst-plugins-mixvideo-0.10.30-1.i586.cpio
-$ rpm2cpio gst-plugins-va-0.10.7MFLD-1.i586.rpm > gst-plugins-va-0.10.7MFLD-1.i586.cpio
-$ rpm2cpio gst-vabuffer-0.10.5MFLD-1.i586.rpm > gst-vabuffer-0.10.5MFLD-1.i586.cpio
-$ rpm2cpio mixcommon-0.1.9-1.i586.rpm > mixcommon-0.1.9-1.i586.cpio
-$ rpm2cpio mixvbp-0.1.24-1.i586.rpm > mixvbp-0.1.24-1.i586.cpio
-$ rpm2cpio mixvideo-0.1.31-1.i586.rpm > mixvideo-0.1.31-1.i586.cpio
-$ mkdir extracted; cd extracted
-$ cpio -idv < ../gst-plugins-mixvideo-0.10.30-1.i586.cpio
-$ cpio -idv < ../gst-plugins-va-0.10.7MFLD-1.i586.cpio
-$ cpio -idv < ../gst-vabuffer-0.10.5MFLD-1.i586.cpio
-$ cpio -idv < ../mixcommon-0.1.9-1.i586.cpio
-$ cpio -idv < ../mixvbp-0.1.24-1.i586.cpio
-$ cpio -idv < ../mixvideo-0.1.31-1.i586.cpio
-$ rm usr/lib/*.so.0
-$ cp -a usr/lib meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
-
-At this point, you should be able to build meta-crownbay images as usual.
-
-
-III. Booting the images in /binary
-==================================
+II. Booting the images in /binary
+=================================
 
 This BSP contains bootable live images, which can be used to directly
 boot Yocto off of a USB flash drive.
-- 
1.7.0.4


