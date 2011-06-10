Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58EB74C80AB3
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 12:47:50 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jun 2011 10:47:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,348,1304319600"; d="scan'208";a="14885695"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.133])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2011 10:47:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Jun 2011 18:47:33 +0100
Message-Id: <78149ae3ac9d00de0acf3e6172b6e5d76a1fde27.1307727998.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1307727998.git.paul.eggleton@linux.intel.com>
References: <cover.1307727998.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1307727998.git.paul.eggleton@linux.intel.com>
References: <cover.1307727998.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] meta-intel: fix formfactor bbappends to use FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Fri, 10 Jun 2011 17:47:50 -0000

This allows meta-intel sub-layers to coexist with meta-yocto when building
formfactor for different machines with the same layer setup.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 4a41d48..54da0ff 100644
--- a/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
 PRINC = "1"
diff --git a/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 4a41d48..54da0ff 100644
--- a/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
 PRINC = "1"
diff --git a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 4a41d48..54da0ff 100644
--- a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
 PRINC = "1"
diff --git a/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 4a41d48..54da0ff 100644
--- a/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
 PRINC = "1"
diff --git a/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 4a41d48..54da0ff 100644
--- a/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
 PRINC = "1"
diff --git a/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 4a41d48..54da0ff 100644
--- a/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
  
 PRINC = "1"
-- 
1.7.4.1


