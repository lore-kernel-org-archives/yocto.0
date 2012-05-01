Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68180E01413
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:14:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2012 15:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="135875368"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga001.jf.intel.com with ESMTP; 01 May 2012 15:14:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:13:28 -0700
Message-Id: <446c43e0a45f46556a64804bef305c0146e9407d.1335908926.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
Subject: [PATCH 4/7] sys940x: Add efi-ext to standard and preempt-rt configs
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
X-List-Received-Date: Tue, 01 May 2012 22:14:11 -0000

Enable efi-ext in the standard and preempt-rt configs so the recipes
do not have to do this explicitly.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../bsp/sys940x/sys940x-preempt-rt.scc             |    3 +++
 .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    4 +++-
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
index 3b8f0aa..39fa1d4 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
@@ -4,4 +4,7 @@ define KARCH i386
 
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
+
 include sys940x.scc
+include cfg/efi-ext.scc
+
diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
index 132e44a..23f99fb 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
@@ -5,5 +5,7 @@ define KARCH i386
 include features/emgd/emgd-1.10.scc
 git merge emgd-1.10
 
-include ktypes/standard
 include sys940x.scc
+include cfg/efi-ext.scc
+
+include ktypes/standard
-- 
1.7.7.6


