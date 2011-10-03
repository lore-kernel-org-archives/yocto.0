Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A011E0130C
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 07:24:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Oct 2011 07:24:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,479,1312182000"; d="scan'208";a="22793733"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Oct 2011 07:24:27 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  3 Oct 2011 09:24:44 -0500
Message-Id: <d1dd73c4a2ca2f47e8aed4db72d02d7fce71a93d.1317651502.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <066719d0c01d768672078fc5bc7663f8cd8646e0.1317651502.git.tom.zanussi@intel.com>
References: <066719d0c01d768672078fc5bc7663f8cd8646e0.1317651502.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317651502.git.tom.zanussi@intel.com>
References: <cover.1317651502.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4] meta-jasperforest: update README
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
X-List-Received-Date: Mon, 03 Oct 2011 14:24:29 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update meta-jasperforest to reflect the new image names and a couple
other minor cleanups.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/README |   15 ++++++++-------
 1 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/meta-jasperforest/README b/meta-jasperforest/README
index 6421d06..7652da0 100644
--- a/meta-jasperforest/README
+++ b/meta-jasperforest/README
@@ -35,8 +35,8 @@ To enable the jasperforest layer, add the jasperforest MACHINE to local.conf:
 
 You should then be able to build a jasperforest image as such:
 
-  $ source poky-init-build-env
-  $ bitbake poky-image-sato-live
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
 
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
@@ -46,10 +46,11 @@ As an alternative to downloading the BSP tarball, you can also work
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
@@ -62,7 +63,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-# dd if=poky-image-sato-live-jasperforest-20101207053738.hddimg of=/dev/sdf
+# dd if=core-image-sato-jasperforest-20101207053738.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-- 
1.7.0.4


