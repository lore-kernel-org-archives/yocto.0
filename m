Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF411E00746
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 15:34:40 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2012 15:34:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137757915"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2012 15:34:40 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed,  4 Apr 2012 15:33:17 -0700
Message-Id: <c5801db1ea89ecbfaa883023a5e37c37c6f4f976.1333578511.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333578511.git.kishore.k.bodke@intel.com>
References: <cover.1333578511.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] Romley: Add new bbappend file for 3.2 kernel
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
X-List-Received-Date: Wed, 04 Apr 2012 22:34:40 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Switching Romley to 3.2 kernel.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-romley/conf/machine/romley.conf               |    3 +++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
 3 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index aa334c0..e6a755b 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -4,6 +4,9 @@
 #@DESCRIPTION: Machine configuration for Romley systems
 # i.e. Sandy Bridge + Patsburg Chipset
 
+
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
 
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..7a61749
--- /dev/null
+++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_romley = "romley"
+KMACHINE_romley  = "romley"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_romley  = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_romley ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_romley ?= XXXX
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..803e772
--- /dev/null
+++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_romley = "romley"
+
+KMACHINE_romley  = "romley"
+KBRANCH_romley  = "standard/default/common-pc-64/romley"
+
+SRCREV_machine_pn-linux-yocto_romley ?= "5c7f1c53b5b367858ae6a86c1d4de36d8c71bedb"
+SRCREV_meta_pn-linux-yocto_romley ?= "59f350ec3794e19fa806c1b73749d851f8ebf364"
-- 
1.7.5.4


