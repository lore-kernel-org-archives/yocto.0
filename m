Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9757E011B1
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 07:31:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Aug 2011 07:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,362,1309762800"; d="scan'208";a="38794762"
Received: from unknown (HELO envy.home) ([10.255.14.228])
	by fmsmga002.fm.intel.com with ESMTP; 12 Aug 2011 07:31:04 -0700
Message-ID: <4E453928.6060202@intel.com>
Date: Fri, 12 Aug 2011 07:31:04 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: bruce.ashfield@windriver.com, tom.zanussi@intel.com, 
	yocto@yoctoproject.org
References: <cover.1313092725.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313092725.git.dvhart@linux.intel.com>
Subject: Re: [PATCH 3/2] rt: simplify linux-yocto-rt.bbappend for all BSPs
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
X-List-Received-Date: Fri, 12 Aug 2011 14:31:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

[rather than rebase, I've added this one to the series, here for review
 as well]

As the all the BSPs use the same BSP branch and meta commit ID as the base
recipe, there is no need specify the KBRANCH and SRCREVs. Not doing so
greatly simplifies maintenance. Leaving the syntax in place, but commented
out, serves as documentation should the need arise to use a different BSP
branch or meta commit ID.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 ++++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 ++++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 ++++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 ++++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 ++++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 ++++---
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 ++++---
 7 files changed, 28 insertions(+), 21 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index c257703..aaf5614 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,9 +1,10 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd = "crownbay"
-KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
 
 KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= ${AUTOREV}
-SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= ${AUTOREV}
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index fbff72d..fce01cb 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "emenlow"
-KBRANCH_emenlow  = "yocto/standard/preempt-rt/base"
 
-SRCREV_machine_pn-linux-yocto-rt_emenlow ?= ${AUTOREV}
-SRCREV_meta_pn-linux-yocto-rt_emenlow ?= ${AUTOREV}
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_emenlow  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_emenlow ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_emenlow ?= XXXX
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 4b1a2e1..7a502bd 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_fishriver = "fishriver"
 KMACHINE_fishriver  = "fishriver"
-KBRANCH_fishriver  = "yocto/standard/preempt-rt/base"
 
-SRCREV_machine_pn-linux-yocto-rt_fishriver ?= ${AUTOREV}
-SRCREV_meta_pn-linux-yocto-rt_fishriver ?= ${AUTOREV}
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_fishriver  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_fishriver ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_fishriver ?= XXXX
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 13b68a3..2624176 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_fri2 = "fri2"
 KMACHINE_fri2 = "fri2"
-KBRANCH_fri2 = "yocto/standard/preempt-rt/base"
 
-SRCREV_machine_pn-linux-yocto-rt_fri2 ?= ${AUTOREV}
-SRCREV_meta_pn-linux-yocto-rt_fri2 ?= ${AUTOREV}
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_fri2 = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_fri2 ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_fri2 ?= XXXX
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index ac18db0..1ddc78f 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 KMACHINE_jasperforest  = "jasperforest"
-KBRANCH_jasperforest  = "yocto/standard/preempt-rt/base"
 
-SRCREV_machine_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
-SRCREV_meta_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_jasperforest  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
+#SRCREV_meta_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 69e9304..1c7fef9 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,9 +1,10 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_n450 = "n450"
 KMACHINE_n450 = "atom-pc"
-KBRANCH_n450 = "yocto/standard/preempt-rt/base"
 
 KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto-rt_n450 ?= ${AUTOREV}
-SRCREV_meta_pn-linux-yocto-rt_n450 ?= ${AUTOREV}
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_n450 = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_n450 ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_n450 ?= XXXX
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 7564367..a63959c 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,7 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_sugarbay = "sugarbay"
 KMACHINE_sugarbay  = "sugarbay"
-KBRANCH_sugarbay  = "yocto/standard/preempt-rt/base"
 
-SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= ${AUTOREV}
-SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= ${AUTOREV}
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_sugarbay  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= XXXX
-- 
1.7.6

