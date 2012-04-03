Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0693CE0137C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 16:45:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Apr 2012 16:45:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="149338431"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.75])
	by fmsmga002.fm.intel.com with ESMTP; 03 Apr 2012 16:45:16 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue,  3 Apr 2012 16:43:53 -0700
Message-Id: <ff65c1a3b558d9a8d7602e1a0da07263cf43e3a5.1333496206.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
References: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/7] Cedartrail: Update SRCREVS and add EFI Support.
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
X-List-Received-Date: Tue, 03 Apr 2012 23:45:17 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add EFI support and update the SRCREVS.
Add pvr merge scc file to pull in the pvr patches.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   16 +++++++++++++---
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 5a95d3e..eefaf6e 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,8 +1,16 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
 
 KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
+KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
+
+COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+KMACHINE_cedartrail-nopvr  = "cedartrail"
+KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
 
 # Update the following to use a different BSP branch or meta SRCREV
 #KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index ca59e72..1d967fc 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -2,7 +2,17 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "yocto/standard/cedartrail"
-KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/drm-cdvpvr.scc"
+KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
+KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
 
-SRCREV_machine_pn-linux-yocto_cedartrail ?= "f389d310965a56091f688b28ea8be6d9cbb7fbbe"
-SRCREV_meta_pn-linux-yocto_cedartrail ?= "04a52a32cbdf0972033b97b83eaa83eb275dfdc9"
+COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
+KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
+SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
+
+SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
+SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-- 
1.7.5.4


