Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D49914C8043A
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 18:23:49 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 May 2011 16:23:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,269,1304319600"; 
   d="scan'208";a="7710501"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by fmsmga002.fm.intel.com with ESMTP; 25 May 2011 16:23:49 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2011 16:23:37 -0700
Message-Id: <06b79c7da717474d401547c332fb8efdf108f2b0.1306365817.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>, Phill Blundell <pb@pbcl.net>
Subject: [PATCH meta-intel] linux-yocto*: correct FILESEXTRAPATHS assignment in all layers
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
X-List-Received-Date: Wed, 25 May 2011 23:23:50 -0000

My previous commit used a self referencing immediate expansion assignment using.
This causes a circular reference and build failure, particularly when more than
one layer is configured in.

Use the _prepend mechanism in conjunction with the immediate expansion
assignment operator to accomplish a similar thing without the self referencing.

Note: This patch is dependent on changes to oe-core, specifically:
http://lists.linuxtogo.org/pipermail/openembedded-core/2011-May/003145.html

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Phill Blundell <pb@pbcl.net>
Cc: Koen Kooi <koen@dominion.thruhere.net>
---
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 11 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 44f892f..570f8d4 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "crownbay"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
index 387c207..cdae000 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "yocto/standard/crownbay"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 09234dc..77a665d 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "emenlow"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
index 3d7e021..05307b7 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "yocto/standard/emenlow"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 8003c93..dcc4534 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_fishriver = "crownbay"
 KMACHINE_fishriver  = "crownbay"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
index 2e12221..ba38dbe 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_fishriver = "fishriver"
 # zzzz /yocto/standard/crownbay->fishriver
 KMACHINE_fishriver  = "yocto/standard/crownbay"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index a6e31d0..bd6bada 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 KMACHINE_jasperforest  = "jasperforest"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
index 5781326..abceb18 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 73a3ee3..18d4999 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 KMACHINE_n450 = "atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
index 92d666f..d52a90a 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 KMACHINE_n450 = "yocto/standard/common-pc/atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
index c1b9a9e..72d00ec 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_sugarbay = "sugarbay"
 KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
-- 
1.7.1


