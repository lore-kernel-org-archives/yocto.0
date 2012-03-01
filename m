Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62A9AE01415
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:46 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116734486"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
From: Darren Hart <darren@dvhart.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:56 -0800
Message-Id: <8bf0cedb058ba28cd93c05e52a259ffb90e04b31.1330644090.git.darren@dvhart.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
In-Reply-To: <cover.1330644090.git.darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
Subject: [PATCH 6/6] fri2: Move non-hardware optional features out of fri2.scc
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

Move policy features out of fri2.scc and into the fri2-KTYPE.scc files. This
allows KTYPEs like tiny to build smaller kernels while still reusing the
fri2.scc file.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    6 ++++++
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    6 ++++++
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    6 ------
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
index 9e9a84c..1a9e638 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
@@ -5,4 +5,10 @@ define KARCH i386
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
 include fri2.scc
+
+# default policy for preempt-rt kernels
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
 include cfg/efi-ext.scc
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
index b17eca5..66b87ce 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
@@ -9,4 +9,10 @@ include features/emgd/emgd.scc
 git merge emgd
 
 include fri2.scc
+
+# default policy for standard kernels
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
 include cfg/efi-ext.scc
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index a89a6e2..62ad14b 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -9,12 +9,6 @@ include features/ericsson-3g/f5521gw.scc
 include features/iwlagn/iwlagn.scc
 include cfg/vesafb.scc
 include cfg/usb-mass-storage.scc
-include cfg/boot-live.scc
 include features/power/intel.scc
 include cfg/smp.scc
 include cfg/efi.scc
-
-include features/logbuf/size-normal.scc
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-- 
1.7.6.5


