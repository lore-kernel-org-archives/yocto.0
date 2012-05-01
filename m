Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E93CE00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 16:09:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 May 2012 16:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148240158"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by fmsmga001.fm.intel.com with ESMTP; 01 May 2012 16:09:01 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com,
	bruce.ashfield@windriver.com, kishore.k.bodke@intel.com
Date: Tue,  1 May 2012 15:58:41 -0700
Message-Id: <ada122743df856aa1d46cf8eeb835c8aeea9a2bc.1335911495.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1335911494.git.rahul.saxena@intel.com>
References: <cover.1335911494.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1335911494.git.rahul.saxena@intel.com>
References: <cover.1335911494.git.rahul.saxena@intel.com>
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
X-List-Received-Date: Tue, 01 May 2012 23:09:01 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

SRCREV for yocto/pvr was needed after new rev of kernel pvr patches were added

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    3 +--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ++-
 2 files changed, 3 insertions(+), 3 deletions(-)

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
index 03c5a27..b7994a8 100755
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,6 +1,6 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
 
 COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
 KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
@@ -14,6 +14,7 @@ KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
 
 SRCREV_machine_pn-linux-yocto_cedartrail ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
 SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
+SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
 
 SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
 SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-- 
1.7.4.1


