Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5131AE013AF
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:46 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116734483"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
From: Darren Hart <darren@dvhart.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:55 -0800
Message-Id: <9242bfa391c0591f520d2e906fe3440db045ba99.1330644090.git.darren@dvhart.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
Subject: [PATCH 5/6] fri2: Add SMP and EFI support
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:46 -0000

From: Darren Hart <dvhart@linux.intel.com>

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
index bbb0ebc..b17eca5 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
@@ -9,3 +9,4 @@ include features/emgd/emgd.scc
 git merge emgd
 
 include fri2.scc
+include cfg/efi-ext.scc
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index 2dd3170..a89a6e2 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -11,6 +11,8 @@ include cfg/vesafb.scc
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 include features/power/intel.scc
+include cfg/smp.scc
+include cfg/efi.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.6.5


