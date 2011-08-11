Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EFD6E01205
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Aug 2011 01:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="37370373"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 11 Aug 2011 01:23:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:44 -0700
Message-Id: <d6fcb37fa390bb95cbe39035707274b926f55f21.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 13/17] meta/rt: common-pc[-64] preempt-rt no branch fix
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
X-List-Received-Date: Thu, 11 Aug 2011 08:23:49 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    4 ++--
 .../bsp/common-pc/common-pc-preempt-rt.scc         |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
index ec75067..ea13b44 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
@@ -2,7 +2,7 @@ define KMACHINE common-pc-64
 define KTYPE preempt-rt
 define KARCH x86_64
 
-scc_leaf ktypes/preempt-rt common-pc-64
-
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
 include bsp/common-pc-64/common-pc-64.scc
 
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
index 71f9a15..f8716ee 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
@@ -2,6 +2,6 @@ define KMACHINE common-pc
 define KTYPE preempt-rt
 define KARCH i386
 
-scc_leaf ktypes/preempt-rt common-pc
-
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
 include bsp/common-pc/common-pc.scc
-- 
1.7.6


