Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 101D8E013CB
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 10:02:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2012 10:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138800777"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2012 10:02:15 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 14 Mar 2012 12:01:42 -0500
Message-Id: <7328f01f208c689f6b0eb692f0cc3270720dbcce.1331744339.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1331744339.git.tom.zanussi@intel.com>
References: <cover.1331744339.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-fishriver: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Wed, 14 Mar 2012 17:02:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch fishriver to the 3.2 kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fishriver/conf/machine/fishriver.conf         |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
 3 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index aa066db..289e41d 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -4,6 +4,8 @@
 #@DESCRIPTION: Machine configuration for Fish River Island systems
 # i.e. Z530/E660 + EG20T
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..a91a425
--- /dev/null
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_fishriver = "fishriver"
+KMACHINE_fishriver  = "fishriver"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_fishriver  = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_fishriver ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_fishriver ?= XXXX
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..8179340
--- /dev/null
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_fishriver = "fishriver"
+KMACHINE_fishriver  = "fishriver"
+KBRANCH_fishriver  = "standard/default/fishriver"
+KERNEL_FEATURES_append_fishriver += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_fishriver ?= "36df9697b127a1d2b791f369e2c16ee7c8f8a15e"
+SRCREV_meta_pn-linux-yocto_fishriver ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"
-- 
1.7.0.4


