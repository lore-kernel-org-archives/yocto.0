Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38FD7E00771
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 16:09:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Aug 2011 16:09:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="37688907"
Received: from unknown (HELO localhost) ([10.7.199.156])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2011 16:09:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: bruce.ashfield@windriver.com, tom.zanussi@intel.com, yocto@yoctoproject.org
Date: Thu, 11 Aug 2011 16:08:54 -0700
Message-Id: <19fa483730d1ce90ae2924c08af68698c489e070.1313093647.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313093647.git.dvhart@linux.intel.com>
References: <cover.1313093647.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313093647.git.dvhart@linux.intel.com>
References: <cover.1313093647.git.dvhart@linux.intel.com>
Subject: [PATCH 2/2] meta-yocto: add linux-yocto-rt support for all meta-yocto machines
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
X-List-Received-Date: Thu, 11 Aug 2011 23:09:11 -0000

Provide the necessary info in the linux-yocto-rt_3.0.bbappend to
support building the RT kernel for each of the meta-yocto example
BSPs.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |   25 ++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..a575105
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,25 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+# atom-pc support
+COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+KMACHINE_atom-pc = "atom-pc"
+KBRANCH_atom-pc = "yocto/standard/preempt-rt/base"
+SRCREV_machine_pn-linux-yocto-rt_atom-pc = "7e1e5b6c8a13c615feb0d7b6d37988a094aae98f"
+
+# mpc8315e-rdb support
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
+KBRANCH_mpc8315e-rdb = "yocto/standard/preempt-rt/base"
+SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "7e1e5b6c8a13c615feb0d7b6d37988a094aae98f"
+
+# beagleboard support - 3.0 support has not yet been completed, build failure
+#COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+#KMACHINE_beagleboard = "beagleboard"
+#KBRANCH_beagleboard = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_beagleboard = 
+
+# routerstationpro support - preempt-rt kernel build failure
+#COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+#KMACHINE_routerstationpro = "routerstationpro"
+#KBRANCH_routerstationpro = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "7e1e5b6c8a13c615feb0d7b6d37988a094aae98f"
-- 
1.7.6


