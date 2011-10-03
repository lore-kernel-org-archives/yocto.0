Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C4AEE0130D
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 07:24:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Oct 2011 07:24:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="58464470"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by orsmga001.jf.intel.com with ESMTP; 03 Oct 2011 07:24:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  3 Oct 2011 09:24:45 -0500
Message-Id: <f975067cd2f53aea968f1102cf22abdc482e7b42.1317651502.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <066719d0c01d768672078fc5bc7663f8cd8646e0.1317651502.git.tom.zanussi@intel.com>
References: <066719d0c01d768672078fc5bc7663f8cd8646e0.1317651502.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317651502.git.tom.zanussi@intel.com>
References: <cover.1317651502.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4] meta-sugarbay: update README
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
X-List-Received-Date: Mon, 03 Oct 2011 14:24:34 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update meta-sugarbay to reflect the new image names and a couple other
minor cleanups.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/README |   18 +++++++++---------
 1 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta-sugarbay/README b/meta-sugarbay/README
index 7899205..2d72f8a 100644
--- a/meta-sugarbay/README
+++ b/meta-sugarbay/README
@@ -10,8 +10,7 @@ Table of Contents
 =================
 
   I. Building the meta-sugarbay BSP layer
- II. Special notes for building the meta-sugarbay BSP layer
-III. Booting the images in /binary
+ II. Booting the images in /binary
 
 
 I. Building the meta-sugarbay BSP layer
@@ -34,8 +33,8 @@ To enable the sugarbay layer, add the sugarbay MACHINE to local.conf:
 
 You should then be able to build a sugarbay image as such:
 
-  $ source poky-init-build-env
-  $ bitbake poky-image-sato-live
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
 
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
@@ -45,10 +44,11 @@ As an alternative to downloading the BSP tarball, you can also work
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
 
 
 II. Booting the images in /binary
@@ -61,7 +61,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=poky-image-sato-live-sugarbay-20101207053738.hddimg of=/dev/sdf
+# dd if=core-image-sato-sugarbay-20101207053738.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.0.4


