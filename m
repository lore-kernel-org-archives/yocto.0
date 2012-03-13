Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C16CCE004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 12:32:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2012 12:32:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138229644"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2012 12:32:44 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 14:32:26 -0500
Message-Id: <a06c221e43a41fc541e269c81680d47a3beae50d.1331667057.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1331667057.git.tom.zanussi@intel.com>
References: <cover.1331667057.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-jasperforest: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Tue, 13 Mar 2012 19:32:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch jasperforest to the 3.2 kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf   |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
 3 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 9767010..26e0814 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -4,6 +4,8 @@
 #@DESCRIPTION: Machine configuration for Jasper Forest Picket Post
 # systems i.e. Xeon C5500/C3500 + Intel 3420 chipset (Ibex Peak)
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
 
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..e506bf4
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_jasperforest = "jasperforest"
+KMACHINE_jasperforest  = "jasperforest"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_jasperforest  = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
+#SRCREV_meta_pn-linux-yocto-rt_jasperforest ?= ${AUTOREV}
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..cd56fec
--- /dev/null
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_jasperforest = "jasperforest"
+
+KMACHINE_jasperforest  = "jasperforest"
+KBRANCH_jasperforest  = "standard/default/common-pc-64/jasperforest"
+
+SRCREV_machine_pn-linux-yocto_jasperforest ?= "786b8e5dcef96e3884e60c531cea2be8819ef9d4"
+SRCREV_meta_pn-linux-yocto_jasperforest ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"
-- 
1.7.0.4


