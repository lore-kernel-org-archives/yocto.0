Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AF6FE0142A
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 May 2012 12:42:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165425695"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2012 12:42:29 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:41:54 -0500
Message-Id: <c8205ee5bb6bd7938dcd1868f26953ec2759a966.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 09/22] meta/jasperforest: factor out policy-related options
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
X-List-Received-Date: Sat, 12 May 2012 19:42:30 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/jasperforest* to keep hardware-related options
in the base jasperforest.scc while moving the more 'policy'-related
options into the files that include the base jasperforest.scc
fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    7 +++++++
 .../bsp/jasperforest/jasperforest-standard.scc     |    6 ++++++
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    8 --------
 3 files changed, 13 insertions(+), 8 deletions(-)

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
index 82f0f52..64e4088 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
@@ -2,14 +2,6 @@ kconf hardware jasperforest.cfg
 
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
-include features/usb/ohci-hcd.scc
-include features/usb/uhci-hcd.scc
-- 
1.7.0.4


