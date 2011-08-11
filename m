Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B479BE011B6
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 16:09:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Aug 2011 16:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="36969939"
Received: from unknown (HELO localhost) ([10.7.199.156])
	by orsmga002.jf.intel.com with ESMTP; 11 Aug 2011 16:09:45 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: bruce.ashfield@windriver.com, tom.zanussi@intel.com, yocto@yoctoproject.org
Date: Thu, 11 Aug 2011 16:09:40 -0700
Message-Id: <90d7762bb322a3357c6ca90a6055dbc092cba603.1313092725.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313092725.git.dvhart@linux.intel.com>
References: <cover.1313092725.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313092725.git.dvhart@linux.intel.com>
References: <cover.1313092725.git.dvhart@linux.intel.com>
Subject: [PATCH 1/2] add linux-yocto-rt_3.0 support for all meta-intel BSPs
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
X-List-Received-Date: Thu, 11 Aug 2011 23:09:35 -0000

All the BSPs build out of the preempt-rt/base branch (rather than a
preempt-rt/$MACHINE branch), so separate KMACHINE and KBRANCH assignments are
required for each BSP.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    9 +++++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    9 +++++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    7 +++++++
 7 files changed, 53 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..c257703
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd = "crownbay"
+KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
+
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= ${AUTOREV}
+SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= ${AUTOREV}
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..fbff72d
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_emenlow = "emenlow"
+KMACHINE_emenlow  = "emenlow"
+KBRANCH_emenlow  = "yocto/standard/preempt-rt/base"
+
+SRCREV_machine_pn-linux-yocto-rt_emenlow ?= ${AUTOREV}
+SRCREV_meta_pn-linux-yocto-rt_emenlow ?= ${AUTOREV}
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..4b1a2e1
--- /dev/null
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_fishriver = "fishriver"
+KMACHINE_fishriver  = "fishriver"
+KBRANCH_fishriver  = "yocto/standard/preempt-rt/base"
+
+SRCREV_machine_pn-linux-yocto-rt_fishriver ?= ${AUTOREV}
+SRCREV_meta_pn-linux-yocto-rt_fishriver ?= ${AUTOREV}
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..13b68a3
--- /dev/null
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_fri2 = "fri2"
+KMACHINE_fri2 = "fri2"
+KBRANCH_fri2 = "yocto/standard/preempt-rt/base"
+
+SRCREV_machine_pn-linux-yocto-rt_fri2 ?= ${AUTOREV}
+SRCREV_meta_pn-linux-yocto-rt_fri2 ?= ${AUTOREV}
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..ac18db0
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_jasperforest = "jasperforest"
+KMACHINE_jasperforest  = "jasperforest"
+KBRANCH_jasperforest  = "yocto/standard/preempt-rt/base"
+
+SRCREV_machine_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
+SRCREV_meta_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..69e9304
--- /dev/null
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_n450 = "n450"
+KMACHINE_n450 = "atom-pc"
+KBRANCH_n450 = "yocto/standard/preempt-rt/base"
+
+KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto-rt_n450 ?= ${AUTOREV}
+SRCREV_meta_pn-linux-yocto-rt_n450 ?= ${AUTOREV}
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..7564367
--- /dev/null
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_sugarbay = "sugarbay"
+KMACHINE_sugarbay  = "sugarbay"
+KBRANCH_sugarbay  = "yocto/standard/preempt-rt/base"
+
+SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= ${AUTOREV}
+SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= ${AUTOREV}
-- 
1.7.6


