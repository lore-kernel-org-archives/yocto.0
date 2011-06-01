Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 806604C80578
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 17:15:20 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Jun 2011 15:15:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; 
   d="scan'208";a="8089139"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2011 15:15:03 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 17:12:55 -0500
Message-Id: <0037dbfe56e2b72f1d998997531c53925006a44d.1306966282.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306966282.git.tom.zanussi@intel.com>
References: <cover.1306966282.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-fishriver: remove crownbay specifics
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
X-List-Received-Date: Wed, 01 Jun 2011 22:15:20 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The fishriver BSP was borrowing a few things from crownbay, but now
has its own branch, so remove the crownbay-specific items.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fishriver/README                              |   13 -------------
 meta-fishriver/conf/machine/fishriver.conf         |    4 ++--
 .../linux/linux-yocto-stable_git.bbappend          |    4 ++--
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 +--
 4 files changed, 5 insertions(+), 19 deletions(-)

diff --git a/meta-fishriver/README b/meta-fishriver/README
index 1ffbbf1..013f76e 100644
--- a/meta-fishriver/README
+++ b/meta-fishriver/README
@@ -11,19 +11,6 @@ Table of Contents
 III. Booting the images in /binary
 
 
-I. Special notes on the meta-fishriver BSP layer
-================================================
-
-The meta-fishriver layer currently and temporarily uses the crownbay
-kernel branch.  This will change once we have new patches and/or
-config changes for:
-
-- Zigbee
-- wifi
-- upstream gma500
-- EMGD?
-
-
 II. Building the meta-fishriver BSP layer
 =========================================
 
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 05c9afe..371871f 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -38,5 +38,5 @@ GLIBC_EXTRA_OECONF = "--with-tls"
 SRCREV_machine_pn-linux-yocto_fishriver ?= "0e3c3904bae04ef13db4049577d9512f7d0e6fa5"
 SRCREV_meta_pn-linux-yocto_fishriver ?= "ceb1744ec55408cb637929a3f154379e42642890"
 
-SRCREV_machine_pn-linux-yocto-stable_crownbay ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
-SRCREV_meta_pn-linux-yocto-stable_crownbay ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
+SRCREV_machine_pn-linux-yocto-stable_fishriver ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
+SRCREV_meta_pn-linux-yocto-stable_fishriver ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index dcc4534..29399ba 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,5 +1,5 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-COMPATIBLE_MACHINE_fishriver = "crownbay"
-KMACHINE_fishriver  = "crownbay"
+COMPATIBLE_MACHINE_fishriver = "fishriver"
+KMACHINE_fishriver  = "fishriver"
 
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
index ba38dbe..eec65d8 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,3 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_fishriver = "fishriver"
-# zzzz /yocto/standard/crownbay->fishriver
-KMACHINE_fishriver  = "yocto/standard/crownbay"
+KMACHINE_fishriver  = "yocto/standard/fishriver"
-- 
1.7.0.4


