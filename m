Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BB94E013B7
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 13:26:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 May 2012 13:26:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154541864"
Received: from unknown (HELO localhost) ([10.255.13.126])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2012 13:26:18 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 18 May 2012 13:25:28 -0700
Message-Id: <10e66d792ff56fd73dcb7afae6caaa5e8465b91a.1337372728.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] linux-yocto_3.0: Update KMACHINE and KBRANCH to play nice with new kerntools
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
X-List-Received-Date: Fri, 18 May 2012 20:26:19 -0000

The 3.0 based boards are lazy compared to our new modern ones.

Without this patch, the linux-yocto-3.0 kernel do_patch() task would fail
with:

/srv/home/pokybuild/yocto-autobuilder/yocto-slave/cedartrail/build/build/tmp/sysroots/x86_64-linux/usr/bin/updateme:
line 434: yocto/standard/cedartrail-standard.scc: No such file or directory

Setting the KBRANCH explicitly avoids this issue. This brings the following
recipes inline with the fri2 and sys940x BSPs.

Fix proposed by Bruce Ashfield.

Testing: I build linux-yocto_3.0 for all machines involved, including the nopvr,
noemgd variants. All built linux-yocto_3.0 successfully.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
CC: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 ++++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 ++++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ++-
 8 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 68ff3ea..5996b47 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -5,14 +5,16 @@ SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;b
 SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
 
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
-KMACHINE_cedartrail  = "yocto/standard/cedartrail"
+KMACHINE_cedartrail  = "cedartrail"
+KBRANCH_cedartrail  = "yocto/standard/cedartrail"
 KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
 KERNEL_FEATURES_append_cedartrail += "cfg/drm-cdvpvr.scc"
 KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
 KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
 
 COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
-KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
+KMACHINE_cedartrail-nopvr  = "cedartrail"
+KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
 KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 505d899..0c92871 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,11 +1,13 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_crownbay = "crownbay"
-KMACHINE_crownbay  = "yocto/standard/crownbay"
+KMACHINE_crownbay  = "crownbay"
+KBRANCH_crownbay  = "yocto/standard/crownbay"
 KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
 
 COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
+KMACHINE_crownbay-noemgd  = "crownbay"
+KBRANCH_crownbay-noemgd  = "yocto/standard/crownbay"
 KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_crownbay ?= "63c65842a3a74e4bd3128004ac29b5639f16433f"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 304d476..85a4cbe 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_emenlow = "emenlow"
-KMACHINE_emenlow  = "yocto/standard/emenlow"
+KMACHINE_emenlow  = "emenlow"
+KBRANCH_emenlow  = "yocto/standard/emenlow"
 KERNEL_FEATURES_append_emenlow += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_emenlow ?= "0b13bbbc423fea345fd537792284ccf388809e5b"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 4d34c2a..6ac6ef5 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_fishriver = "fishriver"
-KMACHINE_fishriver  = "yocto/standard/fishriver"
+KMACHINE_fishriver  = "fishriver"
+KBRANCH_fishriver  = "yocto/standard/fishriver"
 KERNEL_FEATURES_append_fishriver += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_fishriver ?= "c139592c96722727a9f074515a4061c3820da1a6"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 127d885..1cc7f56 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -2,7 +2,8 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 
-KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
+KMACHINE_jasperforest  = "jasperforest"
+KBRANCH_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
 
 SRCREV_machine_pn-linux-yocto_jasperforest ?= "fc10a49bed173ade9c6c076241a448639fe50aa8"
 SRCREV_meta_pn-linux-yocto_jasperforest ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 5fd298e..4590c27 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,6 +1,7 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_n450 = "n450"
-KMACHINE_n450  = "yocto/standard/common-pc/atom-pc"
+KMACHINE_n450  = "atom-pc"
+KBRANCH_n450  = "yocto/standard/common-pc/atom-pc"
 
 # The n450 is a single core hypterthreaded CPU
 KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 02e231c..021f466 100644
--- a/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_romley = "romley"
-KMACHINE_romley  = "yocto/standard/common-pc-64/romley"
+KMACHINE_romley  = "romley"
+KBRANCH_romley  = "yocto/standard/common-pc-64/romley"
 
 SRCREV_machine_pn-linux-yocto_romley ?= "d26ab3559d75d0a3946ecaef67d3aeb7e9e7ef22"
 SRCREV_meta_pn-linux-yocto_romley ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
index c46f6fb..58de27a 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_sugarbay = "sugarbay"
-KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
+KMACHINE_sugarbay  = "sugarbay"
+KBRANCH_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
 
 SRCREV_machine_pn-linux-yocto_sugarbay ?= "162abf381df130fbf6ba8df353821fa684e59dfa"
 SRCREV_meta_pn-linux-yocto_sugarbay ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
-- 
1.7.7.6


