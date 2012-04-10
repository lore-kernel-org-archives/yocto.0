Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F27DE013EB
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:57:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Apr 2012 11:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87478311"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Apr 2012 11:56:59 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:32 -0700
Message-Id: <99d5459a7e3a7bd5ca105c5fac3c1f8f24bd8e33.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/9] [meta-intel] Cedartrail: Update SRCREVS and add EFI Support.
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
X-List-Received-Date: Tue, 10 Apr 2012 18:57:00 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add EFI support and update the SRCREVS for pvr
version of build.
Add pvr merge scc file to pull in the pvr patches.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   14 ++++++++++++--
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 5a95d3e..2248c88 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -3,6 +3,14 @@ COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
 
 KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
+KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
+KERNEL_FEATURES_append_cedartrail += " cfg/efi-ext.scc"
+
+COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+KMACHINE_cedartrail-nopvr  = "cedartrail"
+KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
+
 
 # Update the following to use a different BSP branch or meta SRCREV
 #KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index ca59e72..dc15a5e 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -3,6 +3,16 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "yocto/standard/cedartrail"
 KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
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


