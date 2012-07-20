Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2714E002AB
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 21:40:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jul 2012 21:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="181056196"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2012 21:40:58 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2012 23:40:51 -0500
Message-Id: <b779667233666e068a4bc668bfc3ca41af4cb711.1342759135.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5d0c08cd8bb3f3ce8d23b4ae8b844bba15278049.1342759135.git.tom.zanussi@intel.com>
References: <5d0c08cd8bb3f3ce8d23b4ae8b844bba15278049.1342759135.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1342759135.git.tom.zanussi@intel.com>
References: <cover.1342759135.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] jasperforest: retire linux-yocto-3.0
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
X-List-Received-Date: Fri, 20 Jul 2012 04:40:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

With the move to linux-yocto-3.4, linux-yocto-3.0 support can be
removed.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf   |    3 ++-
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 --------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 ---------
 3 files changed, 2 insertions(+), 18 deletions(-)
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index d661f7b..9a47b9a 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -4,7 +4,8 @@
 #@DESCRIPTION: Machine configuration for Jasper Forest Picket Post
 # systems i.e. Xeon C5500/C3500 + Intel 3420 chipset (Ibex Peak)
 
-PREFERRED_VERSION_linux-yocto ?= "3.4%"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
+PREFERRED_VERSION_linux-yocto-rt ?= "3.2%"
 
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index 1ddc78f..0000000
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_jasperforest = "jasperforest"
-KMACHINE_jasperforest  = "jasperforest"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_jasperforest  = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
-#SRCREV_meta_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 1cc7f56..0000000
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,9 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_jasperforest = "jasperforest"
-
-KMACHINE_jasperforest  = "jasperforest"
-KBRANCH_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
-
-SRCREV_machine_pn-linux-yocto_jasperforest ?= "fc10a49bed173ade9c6c076241a448639fe50aa8"
-SRCREV_meta_pn-linux-yocto_jasperforest ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
-- 
1.7.0.4


