Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1039BE012FF
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 07:24:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Oct 2011 07:24:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,479,1312182000"; d="scan'208";a="69774385"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2011 07:24:12 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  3 Oct 2011 09:24:42 -0500
Message-Id: <066719d0c01d768672078fc5bc7663f8cd8646e0.1317651502.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1317651502.git.tom.zanussi@intel.com>
References: <cover.1317651502.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4] meta-emenlow: update README
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
X-List-Received-Date: Mon, 03 Oct 2011 14:24:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update meta-emenlow to reflect the new image names and a couple
other minor cleanups.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/README |   15 ++++++++-------
 1 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/meta-emenlow/README b/meta-emenlow/README
index 6592a70..fc3317e 100644
--- a/meta-emenlow/README
+++ b/meta-emenlow/README
@@ -40,8 +40,8 @@ To enable the emenlow layer, add the emenlow MACHINE to local.conf:
 
 You should then be able to build an emenlow image as such:
 
-  $ source poky-init-build-env
-  $ bitbake poky-image-sato-live
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
 
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
@@ -51,10 +51,11 @@ As an alternative to downloading the BSP tarball, you can also work
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
@@ -67,7 +68,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=poky-image-sato-live-emenlow-20101207053738.hddimg of=/dev/sdf
+# dd if=core-image-sato-emenlow-20101207053738.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.0.4


