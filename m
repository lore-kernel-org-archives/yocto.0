Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD2E9E013BB
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2012 12:42:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="139887765"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2012 12:42:31 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:41:55 -0500
Message-Id: <20a3426ff2f30e450ec7b67de50bd92d2f09519e.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 10/22] meta/sugarbay: factor out policy-related options
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
X-List-Received-Date: Sat, 12 May 2012 19:42:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/sugarbay* to keep hardware-related options in
the base sugarbay.scc while moving the more 'policy'-related options
into the files that include the base sugarbay.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    7 +++++++
 .../bsp/sugarbay/sugarbay-standard.scc             |    6 ++++++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    8 --------
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
index e824f6f..d9df73b 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
@@ -5,4 +5,11 @@ define KARCH x86_64
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
 include bsp/common-pc-64/common-pc-64.scc
+
 include sugarbay.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
index 8c2a19b..421364e 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
@@ -6,3 +6,9 @@ include bsp/common-pc-64/common-pc-64-standard
 branch sugarbay
 
 include sugarbay.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
index 128efd3..dbc2d53 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
@@ -2,14 +2,6 @@ kconf hardware sugarbay.cfg
 
 include features/i915/i915.scc
 include features/serial/8250.scc
-include cfg/usb-mass-storage.scc
 include features/power/intel.scc
 
-include features/logbuf/size-normal.scc
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-
 include features/usb/ehci-hcd.scc
-include features/usb/ohci-hcd.scc
-include features/usb/uhci-hcd.scc
-- 
1.7.0.4


