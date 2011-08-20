Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70900E011F2
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 08:26:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2011 08:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="40340209"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2011 08:26:51 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	saul.wold@intel.com,
	yocto@yoctoproject.org
Date: Sat, 20 Aug 2011 10:26:59 -0500
Message-Id: <8ed218c9ca7224f07b196f6f9eacf00091c61833.1313853536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
References: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313853536.git.tom.zanussi@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
Subject: [PATCH 9/9] meta-fri2: update README
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
X-List-Received-Date: Sat, 20 Aug 2011 15:26:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update the meta-fri2 README to reflect the addtion of the EMGD
capabilities and new machine.

Changes were also made to reflect the new image names and a couple
other minor cleanups.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/README |   95 ++++++++++++++++++++++++++++++++++++++++++++++++------
 1 files changed, 85 insertions(+), 10 deletions(-)

diff --git a/meta-fri2/README b/meta-fri2/README
index 7957a7f..eb5baae 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -2,12 +2,20 @@ This README file contains information on building the meta-fri2 BSP
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
 
 
@@ -24,14 +32,32 @@ by adding the location of the meta-fri2 layer to bblayers.conf e.g.:
 
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
 
+You also need to add the line:
+
+  EMGD_LICENSE = "yes"
+
+to the local.conf file.
+
+If you want to enable the layer that does not support EMGD graphics
+add the following to the local.conf file:
+
+  MACHINE ?= "fri2-noemgd"
+
 You should then be able to build a fri2 image as such:
 
-  $ source poky-init-build-env
-  $ bitbake poky-image-sato-live
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
 
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
@@ -41,10 +67,59 @@ As an alternative to downloading the BSP tarball, you can also work
 directly from the meta-intel git repository.  For each BSP in the
 'meta-intel' repository, there are multiple branches, one
 corresponding to each major release starting with 'laverne' (0.90), in
-addition to the latest code which tracks the current master.  Instead
-of extracting a BSP tarball at the top level of your yocto build tree,
-you can equivalently check out the appropriate branch from the
-meta-intel repository at the same location.
+addition to the latest code which tracks the current master (note that
+not all BSPs are present in every release).  Instead of extracting
+a BSP tarball at the top level of your yocto build tree, you can
+equivalently check out the appropriate branch from the meta-intel
+repository at the same location.
+
+
+II. Special notes for building the meta-fri2 BSP layer
+======================================================
+
+The meta-fri2 layer makes use of the proprietary Intel EMGD userspace
+drivers when building the "fri2" machine (but not when building the
+"fri2-noemgd" machine).
+
+As mentioned in Section I, you need to add the line:
+
+  EMGD_LICENSE = "yes"
+
+to the local.conf file in order for the build to succeed.
+
+The fri2 BSP EMGD_LICENSE default setting causes the build to fail in
+order to prevent users from inadvertently creating and possibly
+distributing images containing the non-free EMGD package.  Setting the
+EMGD_LICENSE variable as shown above essentially tells the build
+system that you're OK with the fact that the non-free EMGD package
+will be installed in the image.
+
+Once you've done a build, you can examine the EMGD license(s) in the
+IEMGD_HEAD_Linux/License directory of the emgd-driver-bin work
+directory of the build.
+
+Alternatively, you can examine the licenses before building by
+downloading the EMGD 1.8 Driver and looking at the licenses in the
+downloaded tarball.
+
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
+The applicable Licenses are contained in the License directory under
+IEMGD_HEAD_Linux.
 
 
 III. Booting the images in /binary
@@ -57,7 +132,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=poky-image-sato-live-fri2-20101207053738.hddimg of=/dev/sdf
+# dd if=core-image-sato-fri2-20101207053738.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.0.4


