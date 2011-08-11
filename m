Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 610F9E006AB
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Aug 2011 01:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="38082024"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by fmsmga002.fm.intel.com with ESMTP; 11 Aug 2011 01:23:52 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:32 -0700
Message-Id: <7dd8470f8cc990113dd381726b741b61bdc569b0.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 01/17] meta/rt: use CONFIG_PREEMPT_RT_FULL for 3.0 kernels
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
X-List-Received-Date: Thu, 11 Aug 2011 08:23:43 -0000

The 3.0 preempt-rt patches use CONFIG_PREEMPT_RT_FULL instead of
CONFIG_PREEMPT_RT. Without this fix, the preemmpt-rt kernels build
with CONFIG_PREEMPT_NONE.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../kernel-cache/ktypes/preempt-rt/preempt-rt.cfg  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/ktypes/preempt-rt/preempt-rt.cfg b/meta/cfg/kernel-cache/ktypes/preempt-rt/preempt-rt.cfg
index d27dd4a..b71c51c 100644
--- a/meta/cfg/kernel-cache/ktypes/preempt-rt/preempt-rt.cfg
+++ b/meta/cfg/kernel-cache/ktypes/preempt-rt/preempt-rt.cfg
@@ -10,7 +10,7 @@
 . consult the product documentation.
 .
 ..........................................................................
-CONFIG_PREEMPT_RT=y
+CONFIG_PREEMPT_RT_FULL=y
 CONFIG_HWLAT_DETECTOR=m
 
 CONFIG_SLAB=y
-- 
1.7.6


