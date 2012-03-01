Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E628E0059B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113646999"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 16:00:07 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:17 -0800
Message-Id: <1e8b3dd507d36234ce52eea29c4c31c4ca4a2469.1330643786.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330643786.git.dvhart@linux.intel.com>
References: <cover.1330643786.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1330643786.git.dvhart@linux.intel.com>
References: <cover.1330643786.git.dvhart@linux.intel.com>
Subject: [PATCH 3/3] fri2: Add SMP and EFI support
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:31 -0000

Rather than add these as features in the linux-yocto recipe,
include them in the BSP meta-data directly. Include only the core
EFI bits in the fri2.scc, and add the extended EFI support to the
fri2-standard.scc so that other ktypes don't pull in more than
what's absolutely required from fri2.scc.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    2 ++
 3 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
index 142d71a..9e9a84c 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
@@ -5,3 +5,4 @@ define KARCH i386
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
 include fri2.scc
+include cfg/efi-ext.scc
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
index b28b650..1cd28fa 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
@@ -5,3 +5,4 @@ define KARCH i386
 scc_leaf ktypes/standard fri2
 
 include fri2.scc
+include cfg/efi-ext.scc
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index 1e0c295..39e6989 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -13,6 +13,8 @@ include features/framebuffer/vesafb.scc
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 include features/power/intel.scc
+include cfg/smp.scc
+include cfg/efi.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.6.5


