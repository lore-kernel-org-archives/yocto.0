Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA68E005B6
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 07:24:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Oct 2011 07:24:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="58464349"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by orsmga001.jf.intel.com with ESMTP; 03 Oct 2011 07:24:19 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  3 Oct 2011 09:24:43 -0500
Message-Id: <c22ec62e70bc47470a126852032586bfb6290e00.1317651502.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <066719d0c01d768672078fc5bc7663f8cd8646e0.1317651502.git.tom.zanussi@intel.com>
References: <066719d0c01d768672078fc5bc7663f8cd8646e0.1317651502.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317651502.git.tom.zanussi@intel.com>
References: <cover.1317651502.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4] meta-fishriver: update README
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
X-List-Received-Date: Mon, 03 Oct 2011 14:24:20 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update meta-fishriver to reflect the new image names and a couple
other minor cleanups.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fishriver/README |   28 ++++++++++++++--------------
 1 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/meta-fishriver/README b/meta-fishriver/README
index 013f76e..b76056c 100644
--- a/meta-fishriver/README
+++ b/meta-fishriver/README
@@ -6,13 +6,12 @@ Please see the corresponding sections below for details.
 Table of Contents
 =================
 
-  I. Special notes on the meta-fishriver BSP layer
- II. Building the meta-fishriver BSP layer
-III. Booting the images in /binary
+  I. Building the meta-fishriver BSP layer
+ II. Booting the images in /binary
 
 
-II. Building the meta-fishriver BSP layer
-=========================================
+I. Building the meta-fishriver BSP layer
+========================================
 
 In order to build an image with BSP support for a given release, you
 need to download the corresponding BSP tarball from the 'Board Support
@@ -31,8 +30,8 @@ To enable the fishriver layer, add the fishriver MACHINE to local.conf:
 
 You should then be able to build a fishriver image as such:
 
-  $ source poky-init-build-env
-  $ bitbake poky-image-sato-live
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
 
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
@@ -42,14 +41,15 @@ As an alternative to downloading the BSP tarball, you can also work
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
 
 
-III. Booting the images in /binary
-==================================
+II. Booting the images in /binary
+=================================
 
 This BSP contains bootable live images, which can be used to directly
 boot Yocto off of a USB flash drive.
@@ -58,7 +58,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=poky-image-sato-live-fishriver-20101207053738.hddimg of=/dev/sdf
+# dd if=core-image-sato-fishriver-20101207053738.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.0.4


