Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D759CE011C2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Aug 2011 01:23:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="37428903"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2011 01:23:53 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:33 -0700
Message-Id: <d3104bcb5205dffefbe8149f38f65b3edd48e03a.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 02/17] meta/rt: beagleboard preempt-rt support
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
 .../bsp/beagleboard/beagleboard-preempt-rt.scc     |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc

diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
new file mode 100644
index 0000000..aa71a94
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
@@ -0,0 +1,7 @@
+define KMACHINE beagleboard
+define KTYPE preempt-rt
+define KARCH arm
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include beagleboard.scc
-- 
1.7.6


