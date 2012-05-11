Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBCF2E01415
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 18:00:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2012 18:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151639881"
Received: from unknown (HELO localhost) ([10.255.12.70])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2012 18:00:17 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu, 10 May 2012 20:00:01 -0500
Message-Id: <4b6778f59a7f6475dad58a3c9daea9c51f278a50.1336697506.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336697506.git.tom.zanussi@intel.com>
References: <cover.1336697506.git.tom.zanussi@intel.com>
Subject: [PATCH 05/10] meta/common-pc: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 01:00:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/common-pc* to keep hardware-related options in
the base common-pc-64.scc while moving the more 'policy'-related
options into the files that include the base common-pc-64.scc
fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    6 ++++++
 .../bsp/common-pc-64/common-pc-64-standard.scc     |    6 ++++++
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    6 ------
 3 files changed, 12 insertions(+), 6 deletions(-)

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
index d0327c5..c2efc88 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -1,14 +1,8 @@
 kconf hardware common-pc-64.cfg
 kconf hardware common-pc-64-graphics.cfg
 
-include cfg/boot-live.scc
-
 include features/hpet/hpet.scc
 include features/usb/ehci-hcd.scc
 include features/usb/uhci-hcd.scc
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-include cfg/virtio.scc
-- 
1.7.0.4


