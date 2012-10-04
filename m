Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C05E00524
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 17:59:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Oct 2012 17:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,530,1344236400"; d="scan'208";a="230275751"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2012 17:59:06 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Oct 2012 19:59:02 -0500
Message-Id: <f0d4020ff592d1d97c50ed1dafa6b96d8150b2d7.1349312169.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <840b7bb756a39e297c60b9b68773b69ee009cc33.1349312169.git.tom.zanussi@intel.com>
References: <840b7bb756a39e297c60b9b68773b69ee009cc33.1349312169.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1349312169.git.tom.zanussi@intel.com>
References: <cover.1349312169.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] meta-crownbay: remove 3.0 kernel support
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
X-List-Received-Date: Thu, 04 Oct 2012 00:59:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

There's no need to support linux-yocto-3.0 for crownbay any more, so
remove the 3.0 bbappends.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend | 20 --------------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend    | 17 -----------------
 2 files changed, 37 deletions(-)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index dee9bce..0000000
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,20 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-KMACHINE_crownbay-noemgd = "crownbay"
-
-KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
-
-COMPATIBLE_MACHINE_crownbay = "crownbay"
-KMACHINE_crownbay = "crownbay"
-
-KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
-
-#KBRANCH_crownbay = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_crownbay ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_crownbay ?= XXXX
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 0c92871..0000000
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,17 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_crownbay = "crownbay"
-KMACHINE_crownbay  = "crownbay"
-KBRANCH_crownbay  = "yocto/standard/crownbay"
-KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
-
-COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-KMACHINE_crownbay-noemgd  = "crownbay"
-KBRANCH_crownbay-noemgd  = "yocto/standard/crownbay"
-KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
-
-SRCREV_machine_pn-linux-yocto_crownbay ?= "63c65842a3a74e4bd3128004ac29b5639f16433f"
-SRCREV_meta_pn-linux-yocto_crownbay ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
-
-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "63c65842a3a74e4bd3128004ac29b5639f16433f"
-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
-- 
1.7.11.4


