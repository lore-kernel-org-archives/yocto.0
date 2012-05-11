Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57367E0141F
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 18:00:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 May 2012 18:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="142576861"
Received: from unknown (HELO localhost) ([10.255.12.70])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2012 18:00:18 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu, 10 May 2012 20:00:02 -0500
Message-Id: <0a78d7e8401e3d500b3cb784c6bf0a4e7271f99e.1336697506.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336697506.git.tom.zanussi@intel.com>
References: <cover.1336697506.git.tom.zanussi@intel.com>
Subject: [PATCH 06/10] meta/crownbay: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 01:00:20 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/common-pc* to keep hardware-related options in
the base crownbay.scc while moving the more 'policy'-related options
into the files that include the base crownbay.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/crownbay/crownbay-preempt-rt.scc           |    8 ++++++++
 .../bsp/crownbay/crownbay-standard.scc             |    7 +++++++
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    7 -------
 3 files changed, 15 insertions(+), 7 deletions(-)

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
index c4bc1a5..82ed6f3 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -8,16 +8,9 @@ include cfg/dmaengine.scc
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
 include features/usb/uhci-hcd.scc
-- 
1.7.0.4


