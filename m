Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 304E7E013BA
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 06:47:28 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Mar 2012 06:47:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118264538"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by azsmga001.ch.intel.com with ESMTP; 13 Mar 2012 06:47:27 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 08:47:13 -0500
Message-Id: <e7f7340ffd113656aaa77825207dfdeda607de01.1331646257.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1331646257.git.tom.zanussi@intel.com>
References: <cover.1331646257.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-sugarbay: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Tue, 13 Mar 2012 13:47:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch sugarbay to the 3.2 kernel and update kernel SRCREVs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf           |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
 3 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 25b3aad..776089e 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -4,6 +4,8 @@
 #@DESCRIPTION: Machine configuration for Sugar Bay systems
 # i.e. Sandy Bridge + Cougar Point
 
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
 
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..531a3ad
--- /dev/null
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_sugarbay = "sugarbay"
+KMACHINE_sugarbay  = "sugarbay"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_sugarbay  = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= XXXX
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..4755fa7
--- /dev/null
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_sugarbay = "sugarbay"
+
+KMACHINE_sugarbay  = "sugarbay"
+KBRANCH_sugarbay  = "standard/default/common-pc-64/sugarbay"
+
+SRCREV_machine_pn-linux-yocto_sugarbay ?= "6b0da62eb4beaf950ef235cb548490afe6cfd055"
+SRCREV_meta_pn-linux-yocto_sugarbay ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"
-- 
1.7.0.4


