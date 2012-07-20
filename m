Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4D22E002AB
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 21:40:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Jul 2012 21:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="174602186"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by orsmga002.jf.intel.com with ESMTP; 19 Jul 2012 21:40:53 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2012 23:40:49 -0500
Message-Id: <5d0c08cd8bb3f3ce8d23b4ae8b844bba15278049.1342759135.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1342759135.git.tom.zanussi@intel.com>
References: <cover.1342759135.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] meta-chiefriver: switch to linux-yocto-3.4 kernel
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
X-List-Received-Date: Fri, 20 Jul 2012 04:40:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch chiefriver to the 3.4 kernel and update kernel SRCREVs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-chiefriver/conf/machine/chiefriver.conf       |    2 +-
 .../linux/linux-yocto-rt_3.4.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   10 ++++++++++
 3 files changed, 19 insertions(+), 1 deletions(-)
 create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
 create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index 4a35913..b644119 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Chief River systems
 # i.e. Ivy Bridge + Panther Point
 
-PREFERRED_VERSION_linux-yocto ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend b/meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
new file mode 100644
index 0000000..9e4a4a0
--- /dev/null
+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_chiefriver = "chiefriver"
+KMACHINE_chiefriver  = "chiefriver"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_chiefriver  = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_chiefriver ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_chiefriver ?= XXXX
diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..3b8c6f3
--- /dev/null
+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_chiefriver = "chiefriver"
+KMACHINE_chiefriver  = "chiefriver"
+KBRANCH_chiefriver  = "standard/common-pc-64/chiefriver"
+
+KERNEL_FEATURES_append_chiefriver = " features/amt/mei"
+
+SRCREV_machine_pn-linux-yocto_chiefriver ?= "6297e4c1d57e1063bfce297c2e12392348598559"
+SRCREV_meta_pn-linux-yocto_chiefriver ?= "c2b5ee363bf2612932301488f3ac0644ff70fc7c"
-- 
1.7.0.4


