Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5351E011DA
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Aug 2011 01:23:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; 
   d="scan'208";a="6085482"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Aug 2011 01:23:59 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:45 -0700
Message-Id: <619ea01151be06f99f96f1bdb605cfec8dcf8b32.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 14/17] meta/rt: sugarbay preempt-rt support
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
X-List-Received-Date: Thu, 11 Aug 2011 08:23:50 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
new file mode 100644
index 0000000..e824f6f
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE sugarbay
+define KTYPE preempt-rt
+define KARCH x86_64
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include bsp/common-pc-64/common-pc-64.scc
+include sugarbay.scc
-- 
1.7.6


