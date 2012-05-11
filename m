Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6213E01428
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 18:00:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2012 18:00:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="139312123"
Received: from unknown (HELO localhost) ([10.255.12.70])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2012 18:00:24 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu, 10 May 2012 20:00:05 -0500
Message-Id: <260d3531fd6be950263c2fe72f47fe79f35fd41a.1336697506.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336697506.git.tom.zanussi@intel.com>
References: <cover.1336697506.git.tom.zanussi@intel.com>
Subject: [PATCH 09/10] meta/jasperforest: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 01:00:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/common-pc* to keep hardware-related options in
the base jasperforest.scc while moving the more 'policy'-related
options into the files that include the base jasperforest.scc
fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    7 +++++++
 .../bsp/jasperforest/jasperforest-standard.scc     |    6 ++++++
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    6 ------
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
index 4b5c2ca..b3a6370 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
@@ -5,4 +5,11 @@ define KARCH x86_64
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
 include bsp/common-pc-64/common-pc-64.scc
+
 include jasperforest.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
index baf66d8..ec7a10a 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
@@ -6,3 +6,9 @@ include bsp/common-pc-64/common-pc-64-standard
 branch jasperforest
 
 include jasperforest.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
index 82f0f52..68afd4a 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
@@ -2,14 +2,8 @@ kconf hardware jasperforest.cfg
 
 include features/serial/8250.scc
 include cfg/vesafb.scc
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


