Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E73EE01416
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 11:40:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Oct 2011 11:40:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="68664838"
Received: from unknown (HELO localhost) ([10.255.15.170])
	by orsmga002.jf.intel.com with ESMTP; 28 Oct 2011 11:40:29 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Fri, 28 Oct 2011 13:40:19 -0500
Message-Id: <bdf5b42c29aedc53bcdf7ac560a3ddf24b82d2d9.1319826880.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <267db6a013519fcca15413253008a213c957b738.1319826880.git.tom.zanussi@intel.com>
References: <267db6a013519fcca15413253008a213c957b738.1319826880.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1319826880.git.tom.zanussi@intel.com>
References: <cover.1319826880.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] meta-crownbay: allow linux-yocto-rt to be used for crownbay
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
X-List-Received-Date: Fri, 28 Oct 2011 18:40:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The crownbay linux-yocto-rt .bbappend is missing settings needed for use
with crownbay - this adds them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index aaf5614..dee9bce 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,10 +1,20 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
 COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd = "crownbay"
 
 KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
 
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay = "crownbay"
+
+KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
+
 # Update the following to use a different BSP branch or meta SRCREV
 #KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
 #SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
 #SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
+
+#KBRANCH_crownbay = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_crownbay ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_crownbay ?= XXXX
-- 
1.7.0.4


