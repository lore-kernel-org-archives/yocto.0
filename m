Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCDFCE00524
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 17:59:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Oct 2012 17:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,530,1344236400"; d="scan'208";a="200293624"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by azsmga001.ch.intel.com with ESMTP; 03 Oct 2012 17:59:04 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Oct 2012 19:59:01 -0500
Message-Id: <d7bdd8bc98bb39078a607e944e0d365546a66cbc.1349312169.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <840b7bb756a39e297c60b9b68773b69ee009cc33.1349312169.git.tom.zanussi@intel.com>
References: <840b7bb756a39e297c60b9b68773b69ee009cc33.1349312169.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1349312169.git.tom.zanussi@intel.com>
References: <cover.1349312169.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] meta-crownbay: remove -rt smp options from recipe-space
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
X-List-Received-Date: Thu, 04 Oct 2012 00:59:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

SMP support is now configured in the kernel branch, remove it from
recipe-space.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
index dee9bce..55537fd 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -3,13 +3,9 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd = "crownbay"
 
-KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
-
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay = "crownbay"
 
-KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
-
 # Update the following to use a different BSP branch or meta SRCREV
 #KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
 #SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
-- 
1.7.11.4


