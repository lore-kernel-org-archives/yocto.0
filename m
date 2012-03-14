Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1123EE004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:59:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 20:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120791139"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2012 20:59:05 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:58:41 -0500
Message-Id: <f0a4bbaf1854858431efb529fe39d50c49898b80.1331696117.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1331696117.git.tom.zanussi@intel.com>
References: <cover.1331696117.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-emenlow: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Wed, 14 Mar 2012 03:59:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch emenlow to the 3.2 kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf             |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
 3 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 78020ba..aecf2cb 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -4,6 +4,8 @@
 #@DESCRIPTION: Machine configuration for eMenlow based systems, like the
 # Webs-2120 box.
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..15fc847
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_emenlow = "emenlow"
+KMACHINE_emenlow  = "emenlow"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_emenlow  = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_emenlow ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_emenlow ?= XXXX
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..57cafae
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_emenlow = "emenlow"
+KMACHINE_emenlow  = "emenlow"
+KBRANCH_emenlow  = "standard/default/emenlow"
+KERNEL_FEATURES_append_emenlow += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_emenlow ?= "f7a3b2bb8d71cf6d556d3f42041ad947d5fe684d"
+SRCREV_meta_pn-linux-yocto_emenlow ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"
-- 
1.7.0.4


