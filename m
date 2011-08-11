Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68340E0120A
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:23:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Aug 2011 01:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="37428919"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2011 01:24:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:48 -0700
Message-Id: <dcb8a08758dd9dcdb7c0cc710b562f3d3da4e217.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 17/17] routerstationpro: remove CONFIG_PREEMPT* definitions
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
X-List-Received-Date: Thu, 11 Aug 2011 08:23:51 -0000

The routerstationpro.cfg is a nearly complete .config and needs to be pruned.
Among a lot of other things, it defines various CONFIG_PREEMPT* settings
which conflict with the preempt-rt settings. Remove them as they should be
ktype policy, not bsp specific settings.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/routerstationpro/routerstationpro.cfg      |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
index 1ac2c31..e08a92d 100644
--- a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
+++ b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
@@ -197,9 +197,6 @@ CONFIG_HZ_250=y
 # CONFIG_HZ_1024 is not set
 CONFIG_SYS_SUPPORTS_ARBIT_HZ=y
 CONFIG_HZ=250
-CONFIG_PREEMPT_NONE=y
-# CONFIG_PREEMPT_VOLUNTARY is not set
-# CONFIG_PREEMPT is not set
 CONFIG_SECCOMP=y
 CONFIG_LOCKDEP_SUPPORT=y
 CONFIG_STACKTRACE_SUPPORT=y
-- 
1.7.6


