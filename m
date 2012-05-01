Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F44FE00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:14:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2012 15:14:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="135875356"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga001.jf.intel.com with ESMTP; 01 May 2012 15:14:09 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:13:26 -0700
Message-Id: <978f7128f74f80a9286f937423d2692241f619d4.1335908926.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
Subject: [PATCH 2/7] fri2: Cleanup fri2-$KTYPE.scc files re efi-ext.scc
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
X-List-Received-Date: Tue, 01 May 2012 22:14:10 -0000

The efi-ext.scc fragment is not part of the standard or preempt-rt
standard features. It is instead a BSP specific feature added to
these ktypes. Rearrange the meta-data accordingly.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    2 +-
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
index 1a9e638..2404a78 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
@@ -5,10 +5,10 @@ define KARCH i386
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
 include fri2.scc
+include cfg/efi-ext.scc
 
 # default policy for preempt-rt kernels
 include cfg/boot-live.scc
 include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
-include cfg/efi-ext.scc
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
index e992db5..ed92fa7 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
@@ -9,10 +9,10 @@ include features/emgd/emgd-1.10.scc
 git merge emgd-1.10
 
 include fri2.scc
+include cfg/efi-ext.scc
 
 # default policy for standard kernels
 include cfg/boot-live.scc
 include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
-include cfg/efi-ext.scc
-- 
1.7.7.6


