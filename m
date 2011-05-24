Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE8094C80524
	for <yocto@yoctoproject.org>; Tue, 24 May 2011 17:49:35 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 May 2011 15:49:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,264,1304319600"; 
   d="scan'208";a="8049998"
Received: from unknown (HELO localhost) ([10.255.12.149])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2011 15:49:35 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 May 2011 15:49:29 -0700
Message-Id: <fbf372de0b1ea7e80fef58e78636e5a8faa86fba.1306277369.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] linux-yocto*: extend FILESEXTRAPATHS instead of clobber them
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
X-List-Received-Date: Tue, 24 May 2011 22:49:36 -0000

Clobbering FILESEXTRAPATHS prevents multiple bbappends providing file://
SRC_URIs. Extend the variable in each meta-* layer instead.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 10 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 4136536..8309478 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "crownbay"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
index 32bbd10..5912fb7 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "yocto/standard/crownbay"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 9fa2937..09234dc 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "emenlow"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
index 360c259..3d7e021 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "yocto/standard/emenlow"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
index 549d085..2e12221 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_fishriver = "fishriver"
 # zzzz /yocto/standard/crownbay->fishriver
 KMACHINE_fishriver  = "yocto/standard/crownbay"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 066776b..a6e31d0 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 KMACHINE_jasperforest  = "jasperforest"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
index 988c969..5781326 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index e69c644..73a3ee3 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 KMACHINE_n450 = "atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
index 79706d5..92d666f 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 KMACHINE_n450 = "yocto/standard/common-pc/atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
index fe160c0..c1b9a9e 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_sugarbay = "sugarbay"
 KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
-- 
1.7.1


