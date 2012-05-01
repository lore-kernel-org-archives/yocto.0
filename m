Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88FC5E00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:24:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 May 2012 15:24:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138899580"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2012 15:13:26 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:12:47 -0700
Message-Id: <d70b8e0f1ec6eade123a18194283b15e8aaa2bef.1335909082.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
Subject: [PATCH 3/7] n450: Update to linux-yocto 3.2
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
X-List-Received-Date: Tue, 01 May 2012 22:24:23 -0000

Update the PREFERRED_VERSION to 3.2.
Drop cfg/smp.scc as this is now included in common-pc.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-n450/conf/machine/n450.conf                   |    3 +++
 .../linux/linux-yocto-rt_3.2.bbappend              |   10 ++++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    7 +++++++
 3 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index dac63ed..7ce4cc7 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -3,6 +3,9 @@
 
 #@DESCRIPTION: Machine configuration for Intel 1-N450 based systems
 
+PREFERRED_PROVIDER-virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..1c7fef9
--- /dev/null
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_n450 = "n450"
+KMACHINE_n450 = "atom-pc"
+
+KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_n450 = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_n450 ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_n450 ?= XXXX
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..f02c475
--- /dev/null
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_n450 = "n450"
+KMACHINE_n450  = "atom-pc"
+KBRANCH_n450 = "standard/default/common-pc/base"
+
+#SRCREV_machine_pn-linux-yocto_n450 = XXXX
+#SRCREV_meta_pn-linux-yocto_n450 ?= XXXX
-- 
1.7.7.6


