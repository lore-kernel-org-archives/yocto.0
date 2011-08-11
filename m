Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C801EE011B5
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:24:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Aug 2011 01:24:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="40432607"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by fmsmga001.fm.intel.com with ESMTP; 11 Aug 2011 01:23:55 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:37 -0700
Message-Id: <dcadc0ebbfca9979db333c1e71ee9da06e8512a6.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 06/17] meta/rt: mti-malta32-be preempt-rt support
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
X-List-Received-Date: Thu, 11 Aug 2011 08:24:03 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/mti-malta32/mti-malta32-be-preempt-rt.scc  |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/mti-malta32/mti-malta32-be-preempt-rt.scc

diff --git a/meta/cfg/kernel-cache/bsp/mti-malta32/mti-malta32-be-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/mti-malta32/mti-malta32-be-preempt-rt.scc
new file mode 100644
index 0000000..9906af1
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/mti-malta32/mti-malta32-be-preempt-rt.scc
@@ -0,0 +1,8 @@
+define KMACHINE mti-malta32-be
+define KTYPE preempt-rt
+define KARCH mips
+
+# no new branch required, re-use the ktypes/preempt-rt branch
+include ktypes/preempt-rt
+include mti-malta32.scc
+kconf hardware mti-malta32-be.cfg
-- 
1.7.6


