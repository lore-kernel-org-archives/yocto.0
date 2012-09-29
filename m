Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6F61E0141D
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2012 16:44:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Sep 2012 16:44:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,509,1344236400"; d="scan'208";a="216436576"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by orsmga002.jf.intel.com with ESMTP; 29 Sep 2012 16:44:45 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com
Date: Sat, 29 Sep 2012 18:44:42 -0500
Message-Id: <f464dcde156669d49bb42edc717df5e2a4cf83e9.1348958906.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1348958906.git.tom.zanussi@intel.com>
References: <cover.1348958906.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: use FILESEXTRAPATHS for xserver-xf86-config bbappends
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
X-List-Received-Date: Sat, 29 Sep 2012 23:44:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The xserver-xf86-config .bbappends are still using FILESPATH - update
them to use FILESEXTRAPATHS as recommended by the Poky Reference
Manual and BSP Developer's Guides.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 3 +--
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 3 +--
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 4 +---
 12 files changed, 12 insertions(+), 34 deletions(-)

diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 3fe0e9f..e6c4c7e 100644
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,4 +1,3 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 PR := "${PR}.2"
diff --git a/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..6d4804d 100644
--- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1,2 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
diff --git a/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 4b8d0e6..72d991c 100644
--- a/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-- 
1.7.11.4


