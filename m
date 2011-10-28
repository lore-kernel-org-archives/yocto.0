Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 303ECE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 11:40:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Oct 2011 11:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,419,1315206000"; d="scan'208";a="68136028"
Received: from unknown (HELO localhost) ([10.255.15.170])
	by azsmga001.ch.intel.com with ESMTP; 28 Oct 2011 11:40:25 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Fri, 28 Oct 2011 13:40:17 -0500
Message-Id: <267db6a013519fcca15413253008a213c957b738.1319826880.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1319826880.git.tom.zanussi@intel.com>
References: <cover.1319826880.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] meta-crownbay: add linux-yocto-rt_3.0.bbappend
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
X-List-Received-Date: Fri, 28 Oct 2011 18:40:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

commit 061f3187e8cbec70d5970928b6e8252cb0958f4a (meta-intel: move
emgd-driver-bin_1.8 to common) somehow mistakenly removed the
unrelated linux-yocto-rt_3.0.bbappend from meta-crownbay.  This adds
it back.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..aaf5614
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd = "crownbay"
+
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
-- 
1.7.0.4


