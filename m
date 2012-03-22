Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 582C5E013DB
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="124096724"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:20 -0700
Message-Id: <12c72c7b153bd4af2776473d9cf904c435a1f4f2.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
Subject: [PATCH 07/13] meta-cedartrail: update Kernel recipes to add support for pvr driver
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:30 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Modify kernel recipes to enable pvr kernel patches and to include
additional Kernel config files for pvr driver

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |   13 ++++++++++++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 +++++++++++----
 2 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 3978951..828e6fd 100755
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -2,10 +2,21 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
 
-# The Cedarview processors have hyperthreading and includes dual-core versions
+COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+KMACHINE_cedartrail-nopvr  = "cedartrail"
+KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
+
+COMPATIBLE_MACHINE_cedartrail = "cedartrail"
+KMACHINE_cedartrail  = "cedartrail"
 KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
+KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
 
 # Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_cedartrail-nopvr = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_cedartrail-nopvr ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_cedartrail-nopvr ?= XXXX
+
 #KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
 #SRCREV_machine_pn-linux-yocto-rt_cedartrail ?= XXXX
 #SRCREV_meta_pn-linux-yocto-rt_cedartrail ?= XXXX
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 858db15..14c0b9d 100755
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,10 +1,17 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
+COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
+KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
+KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
+
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "yocto/standard/cedartrail"
-
-# The Cedarview processors have hyperthreading and includes dual-core versions
 KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
+KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
+
+SRCREV_machine_pn-linux-yocto_cedartrail ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
+SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
 
-SRCREV_machine_pn-linux-yocto_cedartrail ?= "f389d310965a56091f688b28ea8be6d9cbb7fbbe"
-SRCREV_meta_pn-linux-yocto_cedartrail ?= "04a52a32cbdf0972033b97b83eaa83eb275dfdc9"
+SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
+SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "d588bdafc0d9b4d2386144b7d76a1d379e2d16c0"
-- 
1.7.4.1


