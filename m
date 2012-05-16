Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1630BE0140C
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:22 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 May 2012 08:51:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="141328144"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga001.jf.intel.com with ESMTP; 16 May 2012 08:51:09 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:25 -0500
Message-Id: <44f592f1407964bba7b098b0b915b5551526ac5f.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 05/22][KERNEL] meta/common-pc-64: factor out policy-related options
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
X-List-Received-Date: Wed, 16 May 2012 15:51:22 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc-64/common-pc-64* to keep hardware-related
options in the base common-pc-64.scc while moving the more
'policy'-related options into the files that include the base
common-pc-64.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    6 ++++++
 .../bsp/common-pc-64/common-pc-64-standard.scc     |    6 ++++++
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    7 +------
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
index ea13b44..8a79dd1 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
@@ -4,5 +4,11 @@ define KARCH x86_64
 
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
+
 include bsp/common-pc-64/common-pc-64.scc
 
+# default policy for preempt-rt kernels
+include cfg/boot-live.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+include cfg/virtio.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
index aa690cd..dcb1949 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
@@ -6,3 +6,9 @@ include ktypes/standard
 branch common-pc-64
 
 include common-pc-64.scc
+
+# default policy for standard kernels
+include cfg/boot-live.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+include cfg/virtio.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
index d0327c5..82d1af3 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -1,14 +1,9 @@
 kconf hardware common-pc-64.cfg
 kconf hardware common-pc-64-graphics.cfg
 
-include cfg/boot-live.scc
-
 include features/hpet/hpet.scc
 include features/usb/ehci-hcd.scc
 include features/usb/uhci-hcd.scc
+include features/usb/ohci-hcd.scc
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-include cfg/virtio.scc
-- 
1.7.0.4


