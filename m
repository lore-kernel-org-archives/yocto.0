Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E87AE01429
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 18:00:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2012 18:00:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151639912"
Received: from unknown (HELO localhost) ([10.255.12.70])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2012 18:00:26 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu, 10 May 2012 20:00:06 -0500
Message-Id: <eddd249e96f531ba43064efa77ddaa6b7dd57275.1336697506.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336697506.git.tom.zanussi@intel.com>
References: <cover.1336697506.git.tom.zanussi@intel.com>
Subject: [PATCH 10/10] meta/sugarbay: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 01:00:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/common-pc* to keep hardware-related options in
the base sugarbay.scc while moving the more 'policy'-related options
into the files that include the base sugarbay.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    7 +++++++
 .../bsp/sugarbay/sugarbay-standard.scc             |    6 ++++++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    6 ------
 3 files changed, 13 insertions(+), 6 deletions(-)

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
index 128efd3..d8144f0 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
@@ -2,14 +2,8 @@ kconf hardware sugarbay.cfg
 
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
 include features/usb/ohci-hcd.scc
 include features/usb/uhci-hcd.scc
-- 
1.7.0.4


