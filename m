Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E351E01427
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 18:00:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2012 18:00:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151639895"
Received: from unknown (HELO localhost) ([10.255.12.70])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2012 18:00:22 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu, 10 May 2012 20:00:04 -0500
Message-Id: <6c256de016c222537d56e5ff04cddee8e87c0196.1336697506.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336697506.git.tom.zanussi@intel.com>
References: <cover.1336697506.git.tom.zanussi@intel.com>
Subject: [PATCH 08/10] meta/emenlow: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 01:00:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/common-pc* to keep hardware-related options in
the base fishriver.scc while moving the more 'policy'-related options
into the files that include the base fishriver.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/fishriver/fishriver-preempt-rt.scc         |    8 ++++++++
 .../bsp/fishriver/fishriver-standard.scc           |    8 ++++++++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    7 -------
 3 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc
index 1a5e46a..f37e1c6 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc
@@ -4,4 +4,12 @@ define KARCH i386
 
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
+
 include fishriver.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
index e697d7e..fb2dc25 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
@@ -9,3 +9,11 @@ include features/emgd/emgd.scc
 git merge emgd
 
 include fishriver.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
index e401274..6ae93f9 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
@@ -8,16 +8,9 @@ include features/serial/8250.scc
 include features/hpet/hpet.scc
 include features/ericsson-3g/f5521gw.scc
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


