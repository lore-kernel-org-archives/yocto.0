Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEEBBE00348
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 21:31:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Oct 2012 21:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,638,1344236400"; d="scan'208";a="209809657"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 23 Oct 2012 21:31:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 23 Oct 2012 21:31:15 -0700
Message-Id: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] fri2: Add linux-yocto-tiny_3.4 support
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
X-List-Received-Date: Wed, 24 Oct 2012 04:31:03 -0000

Add support for the tiny KTYPE via a liunx-yocto-tiny bbappend
for the 3.4 kernel. With this kernel, DISTRO="poky-tiny" can be
used with the fri2 and fri2-noemgd machines.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-tiny_3.4.bbappend            |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)
 create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend

diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
new file mode 100644
index 0000000..bc96859
--- /dev/null
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
@@ -0,0 +1,14 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_fri2 = "fri2"
+KMACHINE_fri2 = "fri2"
+KBRANCH_fri2 = "standard/tiny/base"
+#SRCREV_machine_pn-linux-yocto-tiny_fri2 ?= "449f7f520350700858f21a5554b81cc8ad23267d"
+SRCREV_meta_pn-linux-yocto-tiny_fri2 ?= "2ec32d511b62d44b63e8560a9b1d6895a5dac695"
+
+
+COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
+KMACHINE_fri2-noemgd = "fri2"
+KBRANCH_fri2-noemgd = "standard/tiny/base"
+#SRCREV_machine_pn-linux-yocto-tiny_fri2-noemgd ?= "449f7f520350700858f21a5554b81cc8ad23267d"
+SRCREV_meta_pn-linux-yocto-tiny_fri2-noemgd ?= "2ec32d511b62d44b63e8560a9b1d6895a5dac695"
-- 
1.7.5.4


