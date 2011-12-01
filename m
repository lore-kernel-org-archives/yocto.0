Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95FB0E006B3
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 18:01:24 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Nov 2011 18:01:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,275,1320652800"; d="scan'208";a="97249384"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2011 18:01:23 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 30 Nov 2011 20:01:21 -0600
Message-Id: <2ddef4a7a9fd2882f511f0b3f3e5c062aee0d5e4.1322704583.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <8ae139fe7a08de13a8b0fd572c3a6efabf3afba2.1322704583.git.tom.zanussi@intel.com>
References: <8ae139fe7a08de13a8b0fd572c3a6efabf3afba2.1322704583.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322704583.git.tom.zanussi@intel.com>
References: <cover.1322704583.git.tom.zanussi@intel.com>
Subject: [PATCH 2/6] meta-intel: update kernel SRCREVs
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
X-List-Received-Date: Thu, 01 Dec 2011 02:01:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update linux-yocto_3.0 kernel SRCREVS for crownbay, emenlow,
fishriver, fri2, jasperforest, sugarbay, and romley.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 7 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
index b9e2d24..db23ae7 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -8,8 +8,8 @@ COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
 KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto_crownbay ?= "94e7946b9e121bc32812d33b4a064480a52f5938"
-SRCREV_meta_pn-linux-yocto_crownbay ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_crownbay ?= "8800e8c8107e70ef84fd8b9b0ac0c7f7402b2d89"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
 
-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "94e7946b9e121bc32812d33b4a064480a52f5938"
-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "8800e8c8107e70ef84fd8b9b0ac0c7f7402b2d89"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 0bd2131..ab99df7 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,5 +4,5 @@ COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "yocto/standard/emenlow"
 KERNEL_FEATURES_append_emenlow += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto_emenlow ?= "629e2581c88e7db9c4a844ddbf9c7a4087de18a0"
-SRCREV_meta_pn-linux-yocto_emenlow ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_emenlow ?= "ae00bcfe717db99ac2ff53f1ad995f589deffc53"
+SRCREV_meta_pn-linux-yocto_emenlow ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 802ee96..ba9bfbe 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,5 +4,5 @@ COMPATIBLE_MACHINE_fishriver = "fishriver"
 KMACHINE_fishriver  = "yocto/standard/fishriver"
 KERNEL_FEATURES_append_fishriver += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto_fishriver ?= "947ec2b64f6920ab67f2afbfc074da2b222d9b67"
-SRCREV_meta_pn-linux-yocto_fishriver ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_fishriver ?= "153cb7313697f6638109ed6ce40009af353eeb94"
+SRCREV_meta_pn-linux-yocto_fishriver ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
index dbbb488..34395a7 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -8,8 +8,8 @@ COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
 KMACHINE_fri2-noemgd  = "yocto/standard/fri2"
 KERNEL_FEATURES_append_fri2-noemgd += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto_fri2 ?= "bdb0cabe7bd20b74c47d6d4e65d14c633028bfea"
-SRCREV_meta_pn-linux-yocto_fri2 ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_fri2 ?= "20507c447f92907a6df53bc4f03655f050367ec7"
+SRCREV_meta_pn-linux-yocto_fri2 ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
 
-SRCREV_machine_pn-linux-yocto_fri2-noemgd ?= "bdb0cabe7bd20b74c47d6d4e65d14c633028bfea"
-SRCREV_meta_pn-linux-yocto_fri2-noemgd ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_fri2-noemgd ?= "20507c447f92907a6df53bc4f03655f050367ec7"
+SRCREV_meta_pn-linux-yocto_fri2-noemgd ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 89efd1f..6b45574 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,5 +4,5 @@ COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 
 KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
 
-SRCREV_machine_pn-linux-yocto_jasperforest ?= "ca70dc1b835abd24ea1019b54169aab10a4a6f3b"
-SRCREV_meta_pn-linux-yocto_jasperforest ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_jasperforest ?= "3e6916fcb356afde1791d5da80f7e310948f0681"
+SRCREV_meta_pn-linux-yocto_jasperforest ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 3bdb039..02e231c 100644
--- a/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -3,5 +3,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_romley = "romley"
 KMACHINE_romley  = "yocto/standard/common-pc-64/romley"
 
-SRCREV_machine_pn-linux-yocto_romley ?= "fe3f155fa58db251640a5e110b861380b07b29f5"
-SRCREV_meta_pn-linux-yocto_romley ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_romley ?= "d26ab3559d75d0a3946ecaef67d3aeb7e9e7ef22"
+SRCREV_meta_pn-linux-yocto_romley ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 4ab514f..97810c8 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -3,5 +3,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_sugarbay = "sugarbay"
 KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
 
-SRCREV_machine_pn-linux-yocto_sugarbay ?= "d560dc224c77283a400cf1ffee301b7089a52a68"
-SRCREV_meta_pn-linux-yocto_sugarbay ?= "ae3e64c077972fe87f09946bd215620df68ca327"
+SRCREV_machine_pn-linux-yocto_sugarbay ?= "a52fb6e9ff9328dce8335db6c5891d0c4670d217"
+SRCREV_meta_pn-linux-yocto_sugarbay ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
-- 
1.7.0.4


