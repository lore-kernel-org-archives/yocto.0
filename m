Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30372E00723
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 14:18:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 May 2012 14:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="136314433"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by orsmga001.jf.intel.com with ESMTP; 02 May 2012 14:18:43 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com,
	bruce.ashfield@windriver.com, kishore.k.bodke@intel.com
Date: Wed,  2 May 2012 14:08:21 -0700
Message-Id: <5c2c77dbce90198399b3dcf9481a7b4c4568a184.1335992611.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1335992611.git.rahul.saxena@intel.com>
References: <cover.1335992611.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1335992611.git.rahul.saxena@intel.com>
References: <cover.1335992611.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: add SRCREV of yocto/pvr kernel branch
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
X-List-Received-Date: Wed, 02 May 2012 21:18:44 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

SRCREV for yocto/pvr was needed after the new rev of the kernel pvr patches were added

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    3 +--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 +++++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 759c3b7..a147168 100755
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,7 +1,5 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
-
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
 
@@ -19,6 +17,7 @@ KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
 #KBRANCH_cedartrail-nopvr = "yocto/standard/preempt-rt/base"
 #SRCREV_machine_pn-linux-yocto-rt_cedartrail-nopvr ?= XXXX
 #SRCREV_meta_pn-linux-yocto-rt_cedartrail-nopvr ?= XXXX
+#SRCREV_pvr_pn-linux-yocto-rt_cedartrail ?= XXXX
 
 #KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
 #SRCREV_machine_pn-linux-yocto-rt_cedartrail ?= XXXX
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 03c5a27..fc6885a 100755
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,6 +1,9 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
+
+SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
 
 COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
 KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
@@ -12,8 +15,9 @@ KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
 KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
 KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
 
-SRCREV_machine_pn-linux-yocto_cedartrail ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
+SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
 SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
+SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
 
-SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
+SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
 SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-- 
1.7.4.1


