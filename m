Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79830E00348
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 21:40:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jul 2012 21:40:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="195383037"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jul 2012 21:40:54 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2012 23:40:50 -0500
Message-Id: <0a1cacf63ee87a6a8086d50cd00ebcc04e3751bc.1342759135.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5d0c08cd8bb3f3ce8d23b4ae8b844bba15278049.1342759135.git.tom.zanussi@intel.com>
References: <5d0c08cd8bb3f3ce8d23b4ae8b844bba15278049.1342759135.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1342759135.git.tom.zanussi@intel.com>
References: <cover.1342759135.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] meta-jasperforest: switch to linux-yocto-3.4 kernel
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
X-List-Received-Date: Fri, 20 Jul 2012 04:40:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch jasperforest to the 3.4 kernel and update kernel SRCREVs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf   |    2 +-
 .../linux/linux-yocto-rt_3.4.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    9 +++++++++
 3 files changed, 18 insertions(+), 1 deletions(-)
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 26e0814..d661f7b 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Jasper Forest Picket Post
 # systems i.e. Xeon C5500/C3500 + Intel 3420 chipset (Ibex Peak)
 
-PREFERRED_VERSION_linux-yocto ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
new file mode 100644
index 0000000..e506bf4
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_jasperforest = "jasperforest"
+KMACHINE_jasperforest  = "jasperforest"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_jasperforest  = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
+#SRCREV_meta_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..abe60cd
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_jasperforest = "jasperforest"
+
+KMACHINE_jasperforest  = "jasperforest"
+KBRANCH_jasperforest  = "standard/common-pc-64/jasperforest"
+
+SRCREV_machine_pn-linux-yocto_jasperforest ?= "6297e4c1d57e1063bfce297c2e12392348598559"
+SRCREV_meta_pn-linux-yocto_jasperforest ?= "c2b5ee363bf2612932301488f3ac0644ff70fc7c"
-- 
1.7.0.4


