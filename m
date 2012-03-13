Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D2E6E013A3
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 21:37:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Mar 2012 21:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128229658"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by fmsmga001.fm.intel.com with ESMTP; 12 Mar 2012 21:37:46 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 12 Mar 2012 23:37:37 -0500
Message-Id: <86eeec9f1963b57809b988e148ddf43562e2f0bc.1331610171.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1331610171.git.tom.zanussi@intel.com>
References: <cover.1331610171.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-crownbay: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Tue, 13 Mar 2012 04:37:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch crownbay and crownbay-noemgd to the 3.2 kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 ++
 meta-crownbay/conf/machine/crownbay.conf           |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |   20 ++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   17 +++++++++++++++++
 4 files changed, 41 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 2c80bd8..af85b00 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -4,6 +4,8 @@
 #@DESCRIPTION: Machine configuration for Crown Bay systems, without Intel-proprietary graphics bits
 # i.e. E660 + EG20T
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 2c1ef3d..1458bff 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -4,6 +4,8 @@
 #@DESCRIPTION: Machine configuration for Crown Bay systems
 # i.e. E660 + EG20T
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..dee9bce
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,20 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd = "crownbay"
+
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
+
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay = "crownbay"
+
+KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
+
+#KBRANCH_crownbay = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_crownbay ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_crownbay ?= XXXX
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..3b02076
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,17 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay  = "crownbay"
+KBRANCH_crownbay  = "standard/default/crownbay"
+KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd  = "crownbay"
+KBRANCH_crownbay-noemgd  = "standard/default/crownbay"
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_crownbay ?= "4471c11c7755727219b673cb887d8a13b8715aba"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"
+
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "4471c11c7755727219b673cb887d8a13b8715aba"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"
-- 
1.7.0.4


