Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E61CAE0133F
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 16:12:03 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 29 Oct 2012 16:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,675,1344236400"; d="scan'208";a="162117641"
Received: from unknown (HELO localhost) ([10.255.14.158])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Oct 2012 16:11:59 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, nitin.a.kamble@intel.com,
	kishore.k.bodke@intel.com, rahul.saxena@intel.com
Date: Mon, 29 Oct 2012 18:11:54 -0500
Message-Id: <376fb0a2ac28529509179a771a73fa6ac6c196cf.1351551995.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <3898886e634523bc1bfbfae9f942959f6badfdb0.1351551995.git.tom.zanussi@intel.com>
References: <3898886e634523bc1bfbfae9f942959f6badfdb0.1351551995.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1351551995.git.tom.zanussi@intel.com>
References: <cover.1351551995.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-intel: remove linux-yocto*_3.0 bbappends
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
X-List-Received-Date: Mon, 29 Oct 2012 23:12:04 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The 3.2 and 3.4 kernels are the ones supported for Yocto 1.3, so
remove the 3.0 versions.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  9 ---------
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 11 -----------
 meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend | 11 -----------
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 10 ----------
 meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend | 10 ----------
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  8 --------
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  8 --------
 .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 14 --------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend       | 17 -----------------
 12 files changed, 122 deletions(-)
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index fce01cb..0000000
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_emenlow = "emenlow"
-KMACHINE_emenlow  = "emenlow"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_emenlow  = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_emenlow ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_emenlow ?= XXXX
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 85a4cbe..0000000
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,9 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_emenlow = "emenlow"
-KMACHINE_emenlow  = "emenlow"
-KBRANCH_emenlow  = "yocto/standard/emenlow"
-KERNEL_FEATURES_append_emenlow += " cfg/smp.scc"
-
-SRCREV_machine_pn-linux-yocto_emenlow ?= "0b13bbbc423fea345fd537792284ccf388809e5b"
-SRCREV_meta_pn-linux-yocto_emenlow ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index d3b4f81..0000000
--- a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,11 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_fri2 = "fri2"
-KMACHINE_fri2 = "fri2"
-KBRANCH_fri2 = "yocto/standard/preempt-rt/base"
-
-COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
-KMACHINE_fri2-noemgd = "fri2"
-KBRANCH_fri2-noemgd = "yocto/standard/preempt-rt/base"
-
-module_autoload_iwlwifi = "iwlwifi"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index e53991a..0000000
--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,11 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_fri2 = "fri2"
-KMACHINE_fri2 = "fri2"
-KBRANCH_fri2 = "yocto/standard/fri2"
-
-COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
-KMACHINE_fri2-noemgd = "fri2"
-KBRANCH_fri2-noemgd = "yocto/standard/fri2"
-
-module_autoload_iwlwifi = "iwlwifi"
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index 1c7fef9..0000000
--- a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_n450 = "n450"
-KMACHINE_n450 = "atom-pc"
-
-KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_n450 = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_n450 ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_n450 ?= XXXX
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 4590c27..0000000
--- a/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_n450 = "n450"
-KMACHINE_n450  = "atom-pc"
-KBRANCH_n450  = "yocto/standard/common-pc/atom-pc"
-
-# The n450 is a single core hypterthreaded CPU
-KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
-
-SRCREV_machine_pn-linux-yocto_n450 = "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
-#SRCREV_meta_pn-linux-yocto_n450 ?= XXXX
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index 1551ccf..0000000
--- a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_romley = "romley"
-KMACHINE_romley  = "romley"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_romley  = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_romley ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_romley ?= XXXX
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 021f466..0000000
--- a/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_romley = "romley"
-KMACHINE_romley  = "romley"
-KBRANCH_romley  = "yocto/standard/common-pc-64/romley"
-
-SRCREV_machine_pn-linux-yocto_romley ?= "d26ab3559d75d0a3946ecaef67d3aeb7e9e7ef22"
-SRCREV_meta_pn-linux-yocto_romley ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index a63959c..0000000
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_sugarbay = "sugarbay"
-KMACHINE_sugarbay  = "sugarbay"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_sugarbay  = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= XXXX
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 58de27a..0000000
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_sugarbay = "sugarbay"
-KMACHINE_sugarbay  = "sugarbay"
-KBRANCH_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
-
-SRCREV_machine_pn-linux-yocto_sugarbay ?= "162abf381df130fbf6ba8df353821fa684e59dfa"
-SRCREV_meta_pn-linux-yocto_sugarbay ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
diff --git a/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index 5d3567d..0000000
--- a/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,14 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_sys940x = "sys940x"
-KMACHINE_sys940x = "sys940x"
-KERNEL_FEATURES_append_sys940x += " cfg/smp.scc cfg/efi-ext.scc"
-
-COMPATIBLE_MACHINE_sys940x-noemgd = "sys940x-noemgd"
-KMACHINE_sys940x-noemgd = "sys940x"
-KERNEL_FEATURES_append_sys940x-noemgd += " cfg/smp.scc cfg/efi-ext.scc"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_sys940x = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_sys940x ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_sys940x ?= XXXX
diff --git a/meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 1d8bfb8..0000000
--- a/meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,17 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-
-COMPATIBLE_MACHINE_sys940x = "sys940x"
-KMACHINE_sys940x  = "sys940x"
-KBRANCH_sys940x = "yocto/standard/base"
-KERNEL_FEATURES_append_sys940x += " cfg/smp.scc cfg/efi-ext.scc"
-
-COMPATIBLE_MACHINE_sys940x-noemgd = "sys940x-noemgd"
-KMACHINE_sys940x-noemgd  = "sys940x"
-KBRANCH_sys940x-noemgd = "yocto/standard/base"
-KERNEL_FEATURES_append_sys940x-noemgd += " cfg/smp.scc cfg/efi-ext.scc"
-
-SRCREV_machine_pn-linux-yocto_sys940x ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
-SRCREV_meta_pn-linux-yocto_sys940x ?= "77ca4855e80acb8dad21acea946908716c308b5b"
-SRCREV_machine_pn-linux-yocto_sys940x-noemgd ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
-SRCREV_meta_pn-linux-yocto_sys940x-noemgd ?= "77ca4855e80acb8dad21acea946908716c308b5b"
-- 
1.7.11.4


