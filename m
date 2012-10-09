Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26378E0070B
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:53:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Oct 2012 15:52:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="203630829"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 09 Oct 2012 15:53:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue,  9 Oct 2012 15:53:06 -0700
Message-Id: <cb5383c6d2763769a5251d84b42056f5a621b79d.1349822052.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1349823186-29019-1-git-send-email-dvhart@linux.intel.com>
References: <1349823186-29019-1-git-send-email-dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] Fix use of PRINC in meta-intel BSPs
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
X-List-Received-Date: Tue, 09 Oct 2012 22:53:16 -0000

Replaces all uses of PRINC with the form:

PRINC := "${@int(PRINC) + N}"

Where N is the previously assigned value plus one to ensure a
monotonically increasing PRINC value.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Saul Wold <sgw@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Nitin Kamble <nitin.a.kamble@intel.com>
---
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    4 ++--
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 meta-tlk/recipes-core/psplash/psplash_git.bbappend |    2 +-
 meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc  |    2 +-
 14 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..6644a84 100644
--- a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
- 
-PRINC = "1"
+
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..2a3ee7a 100644
--- a/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
-PRINC = "1"
+PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-tlk/recipes-core/psplash/psplash_git.bbappend b/meta-tlk/recipes-core/psplash/psplash_git.bbappend
index 6b5258e..c0bf3dc 100644
--- a/meta-tlk/recipes-core/psplash/psplash_git.bbappend
+++ b/meta-tlk/recipes-core/psplash/psplash_git.bbappend
@@ -2,7 +2,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 DEPENDS += "gdk-pixbuf-native"
 
-PRINC = "6"
+PRINC := "${@int(PRINC) + 7}"
 
 # NB: this is only for the main logo image; if you add multiple images here,
 # poky will build multiple psplash packages with 'outsuffix' in name for
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc b/meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc
index b1cf883..47d6ffd 100644
--- a/meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 SRC_URI_append = " file://time-limited-kernel.cfg"
-PR .= ".2"
+PRINC := "${@int(PRINC) + 1}"
-- 
1.7.5.4


