Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 655F1E0059A
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 14:50:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Mar 2012 14:50:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="144284668"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.76])
	by fmsmga002.fm.intel.com with ESMTP; 23 Mar 2012 14:50:34 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Fri, 23 Mar 2012 14:49:26 -0700
Message-Id: <39de6f63fdb74dfa8ebf10628f82b16c6c80778d.1332538690.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1332538690.git.kishore.k.bodke@intel.com>
References: <cover.1332538690.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] meta-romley: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Fri, 23 Mar 2012 21:50:35 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Switch romley to the 3.2 kernel and update kernel SRCREVs.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-romley/conf/machine/romley.conf               |    3 +++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   10 ++++++++++
 3 files changed, 21 insertions(+), 0 deletions(-)
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index aa334c0..9c93874 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -4,9 +4,12 @@
 #@DESCRIPTION: Machine configuration for Romley systems
 # i.e. Sandy Bridge + Patsburg Chipset
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
 
+
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            xserver-xorg-module-xaa \
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..1551ccf
--- /dev/null
+++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_romley = "romley"
+KMACHINE_romley  = "romley"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_romley  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_romley ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_romley ?= XXXX
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..7c8c024
--- /dev/null
+++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_romley = "romley"
+KMACHINE_romley  = "yocto/standard/common-pc-64/romley"
+
+KERNEL_FEATURES_append_romley += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_romley ?= "4716ac6af37c0c0dcc78690a4a0ba3b857f8bda2"
+SRCREV_meta_pn-linux-yocto_romley ?= "42fff722188e0de7246a3a6900eeeeaf69f87047"
+
-- 
1.7.5.4


