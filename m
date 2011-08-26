Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7ECAE01239
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 21:00:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 25 Aug 2011 21:00:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,283,1312182000"; d="scan'208";a="11229006"
Received: from unknown (HELO localhost) ([10.255.13.254])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Aug 2011 21:00:13 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 22:59:08 -0500
Message-Id: <fded1e74900a5c991ee2778cebd9f7d2746fa76d.1314330614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
References: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1314330614.git.tom.zanussi@intel.com>
References: <cover.1314330614.git.tom.zanussi@intel.com>
Subject: [PATCH 10/10] meta-fri2: update README
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
X-List-Received-Date: Fri, 26 Aug 2011 04:00:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update the meta-fri2 README to reflect the addtion of the EMGD
capabilities and new machine.

Changes were also made to reflect the new image names and a couple
other minor cleanups.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/README |  108 +++++++++++++++++++++++++++++++++++++++++++++++-------
 1 files changed, 94 insertions(+), 14 deletions(-)

diff --git a/meta-fri2/README b/meta-fri2/README
index 7957a7f..29f2618 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -2,36 +2,56 @@ This README file contains information on building the meta-fri2 BSP
 layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
+The Fish River Island II platform consists of the Intel Atom Z6xx
+processor, plus the Intel EG20T Platform Controller Hub (Tunnel Creek
++ Topcliff), along with a varied assortment of communications options
+and various other machine-to-machine (m2m) capabilities.
+
+It also supports the E6xx embedded on-chip graphics via the Intel
+Embedded Media and Graphics Driver (EMGD) 1.8 Driver.
+
 
 Table of Contents
 =================
 
-  I. Special notes on the meta-fri2 BSP layer
- II. Building the meta-fri2 BSP layer
+  I. Building the meta-fri2 BSP layer
+ II. Special notes for building the meta-fri2 BSP layer
 III. Booting the images in /binary
 
 
-II. Building the meta-fri2 BSP layer
-=========================================
+I. Building the meta-fri2 BSP layer
+===================================
 
 In order to build an image with BSP support for a given release, you
 need to download the corresponding BSP tarball from the 'Board Support
 Package (BSP) Downloads' page of the Yocto Project website.
 
 Having done that, and assuming you extracted the BSP tarball contents
-at the top-level of your yocto build tree, you can build a fri2 image
+at the top-level of your yocto build tree, you can build an fri2 image
 by adding the location of the meta-fri2 layer to bblayers.conf e.g.:
 
   yocto/meta-intel/meta-fri2 \
 
-To enable the fri2 layer, add the fri2 MACHINE to local.conf:
+The meta-fri2 layer contains support for two different machine
+configurations. These configurations are identical except for the fact
+that the one prefixed with 'fri2' makes use of the Intel-proprietary
+EMGD 1.8 graphics driver, while the one prefixed with 'fri2-noemgd'
+does not.
+
+If you want to enable the layer that supports EMGD graphics add the
+following to the local.conf file:
 
   MACHINE ?= "fri2"
 
-You should then be able to build a fri2 image as such:
+If you want to enable the layer that does not support EMGD graphics
+add the following to the local.conf file:
+
+  MACHINE ?= "fri2-noemgd"
 
-  $ source poky-init-build-env
-  $ bitbake poky-image-sato-live
+You should then be able to build an fri2 image as such:
+
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
 
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
@@ -41,10 +61,70 @@ As an alternative to downloading the BSP tarball, you can also work
 directly from the meta-intel git repository.  For each BSP in the
 'meta-intel' repository, there are multiple branches, one
 corresponding to each major release starting with 'laverne' (0.90), in
-addition to the latest code which tracks the current master.  Instead
-of extracting a BSP tarball at the top level of your yocto build tree,
-you can equivalently check out the appropriate branch from the
-meta-intel repository at the same location.
+addition to the latest code which tracks the current master (note that
+not all BSPs are present in every release).  Instead of extracting a
+BSP tarball at the top level of your yocto build tree, you can
+equivalently check out the appropriate branch from the meta-intel
+repository at the same location.
+
+
+II. Special notes for building the meta-fri2 BSP layer
+======================================================
+
+The meta-fri2 layer makes use of the proprietary Intel EMGD userspace
+drivers when building the "fri2" machine (but not when building the
+"fri2-noemgd" machine).  If you got the BSP from the 'BSP Downloads'
+section of the Yocto website, the EMGD binaries needed to perform the
+build will already be present in the BSP, located in the
+meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
+directory, and you can ignore the rest of this section.
+
+If you didn't get the BSP from the 'BSP Downloads' section of the
+Yocto website, you can download a tarball containing an rpm that
+contains the binaries and extract the binaries from that, and copy
+them to the proper location in the meta-fri2 layer.
+
+The following subsection describes that process in detail.
+
+
+Downloading and extracting the binaries using the EMGD Linux tarball
+--------------------------------------------------------------------
+
+The first step of the process is to download the EMGD 1.8 Driver.
+Here is the current link to the URL from which it can be downloaded:
+
+http://edc.intel.com/Software/Downloads/EMGD/
+
+In the Download Now tab, select:
+
+Intel® architecture-based product: Linux Tar Ball
+Operating System: MeeGo* 1.2 IVI Linux* (kernel 2.6.37, X.server 1.9, Mesa 7.9)
+
+That will give you a large .tgz file:
+
+Lin_EMGD_1_8_RC_2032.tgz
+
+Extract the files in the tar file, which will in turn give you a
+directory named IEMGD_HEAD_Linux.
+
+The binaries are contained in an rpm file; you can extract the
+binaries from the rpm file using rpm2cpio and cpio:
+
+$ cd IEMGD_HEAD_Linux/MeeGo1.2
+$ rpm2cpio emgd-bin-2032-1.6.i586.rpm > emgd-bin-2032-1.6.i586.cpio
+$ mkdir extracted; cd extracted
+$ cpio -idv < ../emgd-bin-2032-1.6.i586.cpio
+
+Finally, you can copy the xorg-xserver binaries to the
+emgd-driver-bin-1.8 directory in meta-intel/common:
+
+$ cp -a usr/lib meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
+
+You also need to copy the IEMGD License.txt file to the same directory:
+
+$ cp IEMGD_HEAD_Linux/License/License.txt meta-intel/common/recipes/xorg-xserver/emgd-driver-bin-1.8
+
+At this point, you should be able to build meta-fri2 images as usual.
 
 
 III. Booting the images in /binary
@@ -57,7 +137,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=poky-image-sato-live-fri2-20101207053738.hddimg of=/dev/sdf
+# dd if=core-image-sato-fri2-20101207053738.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.0.4


