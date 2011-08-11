Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE46E011C2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Aug 2011 01:23:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="36690071"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga002.jf.intel.com with ESMTP; 11 Aug 2011 01:23:54 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:36 -0700
Message-Id: <494d59db88a340cd520202cad201e7044ea7e807.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 05/17] meta/rt: qemu-ppc32 preempt-rt support
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
X-List-Received-Date: Thu, 11 Aug 2011 08:23:45 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc       |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc

diff --git a/meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc
new file mode 100644
index 0000000..f0e7c26
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32-preempt-rt.scc
@@ -0,0 +1,7 @@
+define KMACHINE qemu-ppc32
+define KTYPE preempt-rt
+define KARCH powerpc
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include qemu-ppc32.scc
-- 
1.7.6


