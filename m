Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18843E01416
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:14:12 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2012 15:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137625933"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2012 15:14:11 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:13:29 -0700
Message-Id: <16927af670b92428886951e5245a52129b471bc1.1335908926.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
Subject: [PATCH 5/7] sys940x: Add common standard and preempt-rt features
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
X-List-Received-Date: Tue, 01 May 2012 22:14:12 -0000

Add the features commonly added to standard and preempt-rt scc files for
sys940x as well. This enables live boot capability as well various analysis
bits.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/sys940x/sys940x-preempt-rt.scc             |    5 +++++
 .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    9 ++++++++-
 2 files changed, 13 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
index 39fa1d4..daf5963 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
@@ -8,3 +8,8 @@ include ktypes/preempt-rt
 include sys940x.scc
 include cfg/efi-ext.scc
 
+# default policy for standard kernels
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
index 23f99fb..cf6d767 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
@@ -2,10 +2,17 @@ define KMACHINE sys940x
 define KTYPE standard
 define KARCH i386
 
+include ktypes/standard
+
 include features/emgd/emgd-1.10.scc
 git merge emgd-1.10
 
 include sys940x.scc
 include cfg/efi-ext.scc
 
-include ktypes/standard
+# default policy for standard kernels
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
-- 
1.7.7.6


