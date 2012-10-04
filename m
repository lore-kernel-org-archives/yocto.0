Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 162A8E00524
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 17:59:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Oct 2012 17:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,530,1344236400"; d="scan'208";a="219555594"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by orsmga002.jf.intel.com with ESMTP; 03 Oct 2012 17:59:03 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Oct 2012 19:59:00 -0500
Message-Id: <840b7bb756a39e297c60b9b68773b69ee009cc33.1349312169.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1349312169.git.tom.zanussi@intel.com>
References: <cover.1349312169.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] meta-crownbay: add 3.4 rt support
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
X-List-Received-Date: Thu, 04 Oct 2012 00:59:04 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add the -rt version of linux-yocto-3.4.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto-rt_3.4.bbappend     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
new file mode 100644
index 0000000..2049076
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
@@ -0,0 +1,16 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd = "crownbay"
+
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay = "crownbay"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_crownbay-noemgd = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
+
+#KBRANCH_crownbay = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_crownbay ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_crownbay ?= XXXX
-- 
1.7.11.4


