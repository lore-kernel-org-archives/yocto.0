Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D8C5E0142A
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 May 2012 12:42:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="142287486"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2012 12:42:24 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:41:51 -0500
Message-Id: <4748d50f630bfbdc57a3ada7992f0d4e8ca1ae1d.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 06/22] meta/crownbay: factor out policy-related options
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
X-List-Received-Date: Sat, 12 May 2012 19:42:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/crownbay* to keep hardware-related options in
the base crownbay.scc while moving the more 'policy'-related options
into the files that include the base crownbay.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/crownbay/crownbay-preempt-rt.scc           |    8 ++++++++
 .../bsp/crownbay/crownbay-standard.scc             |    7 +++++++
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    8 --------
 3 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc
index d58b4be..11067ef 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc
@@ -4,4 +4,12 @@ define KARCH i386
 
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
+
 include crownbay.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
index d6036f7..dd9dbc7 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
@@ -9,3 +9,10 @@ include features/emgd/emgd-1.10.scc
 git merge emgd-1.10
 
 include crownbay.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index c4bc1a5..08e3083 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -8,16 +8,8 @@ include cfg/dmaengine.scc
 include features/serial/8250.scc
 include features/hpet/hpet.scc
 include cfg/vesafb.scc
-include cfg/usb-mass-storage.scc
-include cfg/boot-live.scc
 include cfg/smp.scc
 include features/power/intel.scc
 
-include features/logbuf/size-normal.scc
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-
 include features/usb/ehci-hcd.scc
 include features/usb/ohci-hcd.scc
-include features/usb/uhci-hcd.scc
-- 
1.7.0.4


