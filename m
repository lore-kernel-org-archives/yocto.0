Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80529E0142A
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2012 08:51:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153671069"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2012 08:51:13 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:27 -0500
Message-Id: <13bf9ab557b1e521bbf871b1d98d63a308a8f726.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 07/22][KERNEL] meta/emenlow: factor out policy-related options
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
X-List-Received-Date: Wed, 16 May 2012 15:51:14 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/emenlow/emenlow* to keep hardware-related options in the
base emenlow.scc while moving the more 'policy'-related options into
the files that include the base emenlow.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/emenlow/emenlow-preempt-rt.scc             |    8 ++++++++
 .../kernel-cache/bsp/emenlow/emenlow-standard.scc  |    8 ++++++++
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    8 --------
 3 files changed, 16 insertions(+), 8 deletions(-)

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
index 2967d93..e69c0c5 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
@@ -6,15 +6,7 @@ include features/intel-e1xxxx/intel-e1xxxx.scc
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
-include features/usb/ohci-hcd.scc
 include features/usb/uhci-hcd.scc
-- 
1.7.0.4


