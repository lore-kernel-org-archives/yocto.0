Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B555E01425
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 18:00:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 May 2012 18:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="142576883"
Received: from unknown (HELO localhost) ([10.255.12.70])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2012 18:00:20 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu, 10 May 2012 20:00:03 -0500
Message-Id: <7fa5519835f4cb537bf3a63c3c1dde1ff0d5723a.1336697506.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336697506.git.tom.zanussi@intel.com>
References: <cover.1336697506.git.tom.zanussi@intel.com>
Subject: [PATCH 07/10] meta/emenlow: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 01:00:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/common-pc* to keep hardware-related options in
the base emenlow.scc while moving the more 'policy'-related options
into the files that include the base emenlow.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/emenlow/emenlow-preempt-rt.scc             |    8 ++++++++
 .../kernel-cache/bsp/emenlow/emenlow-standard.scc  |    8 ++++++++
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    7 -------
 3 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/emenlow/emenlow-preempt-rt.scc
index 156e4c6..85d8367 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow-preempt-rt.scc
@@ -4,4 +4,12 @@ define KARCH i386
 
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
+
 include emenlow.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow-standard.scc b/meta/cfg/kernel-cache/bsp/emenlow/emenlow-standard.scc
index 804b36e..aac1b09 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow-standard.scc
@@ -6,3 +6,11 @@ include ktypes/standard
 branch emenlow
 
 include emenlow.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
index 2967d93..9296ddb 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
@@ -6,15 +6,8 @@ include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-psb/drm-psb.scc
 include features/serial/8250.scc
 include cfg/vesafb.scc
-include cfg/usb-mass-storage.scc
-include cfg/boot-live.scc
 include cfg/smp.scc
 
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


