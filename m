Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3224FE0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 15:14:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Oct 2012 15:13:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,688,1344236400"; d="scan'208";a="213698916"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.87])
	by orsmga001.jf.intel.com with ESMTP; 31 Oct 2012 15:14:08 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Wed, 31 Oct 2012 15:14:41 -0700
Message-Id: <f2aebacce1371dd3a459c0019b881e444192b602.1351721365.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1351721365.git.kishore.k.bodke@intel.com>
References: <cover.1351721365.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] crystalforest: Update README Instructions.
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
X-List-Received-Date: Wed, 31 Oct 2012 22:14:09 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add Instructions on how to get the DPDK and
QuickAssist Recipes.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-crystalforest/README |   19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/meta-crystalforest/README b/meta-crystalforest/README
index 8731c2a..55e4ba0 100644
--- a/meta-crystalforest/README
+++ b/meta-crystalforest/README
@@ -56,6 +56,7 @@ Table of Contents
 
   I. Building the meta-crystalforest BSP layer
  II. Booting the images in /binary
+III. Enabling Intel DPDK and QuickAssist Technology
 
 
 I. Building the meta-crystalforest BSP layer
@@ -88,15 +89,6 @@ You should then be able to build a crystalforest image as such:
   $ source oe-init-build-env
   $ bitbake core-image-sato
 
-The above image will not give you the quickassist technology features
-such as openssl-qat-module, zlib-qat-module and corpus data files.
-
-If you want those feature built into the image by default, You should
-build the custom image by doing the following:
-
-  $ source oe-init-build-env
-  $ bitbake core-image-qat
-
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
@@ -147,6 +139,15 @@ ifconfig the IP address and use that to ssh in.  The root password is
 empty, so to log in type 'root' for the user name and hit 'Enter' at
 the Password prompt: and you should be in.
 
+III. Enabling Intel DPDK and QuickAssist Technology
+===================================================
+
+There are recipes available for the 'Intel Data Plane Development Kit and
+Intel QuickAssist Technology components for use with this BSP.  Please
+contact your Intel Field Sales Representative or visit Intel Embedded Design
+Center (www.intel.com/p/en_US/embedded/designcenter) for instructions on how
+to locate and use these recipes.
+
 ----
 
 If you find you're getting corrupt images on the USB (it doesn't show
-- 
1.7.9.5


