Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F2C3E011EF
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Aug 2011 01:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="37428914"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2011 01:23:57 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:43 -0700
Message-Id: <6d9a7ad4781a63ff09d055c4c17451666e1eb619.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 12/17] meta/rt: jasperforest preempt-rt support
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
X-List-Received-Date: Thu, 11 Aug 2011 08:23:48 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc

diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
new file mode 100644
index 0000000..4b5c2ca
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE jasperforest
+define KTYPE preempt-rt
+define KARCH x86_64
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include bsp/common-pc-64/common-pc-64.scc
+include jasperforest.scc
-- 
1.7.6


