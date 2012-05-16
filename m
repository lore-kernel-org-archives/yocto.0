Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE1BE01421
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 May 2012 08:51:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="167150451"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga002.fm.intel.com with ESMTP; 16 May 2012 08:51:08 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:24 -0500
Message-Id: <5a3f5c724b0ce2b0e7d97b6c3b304c7ebcc7913c.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 04/22][KERNEL] meta/common-pc: factor out policy-related options
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
X-List-Received-Date: Wed, 16 May 2012 15:51:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Refactor bsp/common-pc/common-pc* to keep hardware-related options in
the base common-pc.scc while moving the more 'policy'-related options
into the files that include the base common-pc.scc fragment.

This allows the different kernel types to make use of the basic
machine support without dragging along possibly unwanted options that
fall under the heading of 'policy' for a specific kernel type.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/common-pc/common-pc-preempt-rt.scc         |    7 +++++++
 .../bsp/common-pc/common-pc-standard.scc           |    6 ++++++
 .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |    5 +----
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    5 +----
 4 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
index f8716ee..706f669 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
@@ -4,4 +4,11 @@ define KARCH i386
 
 # no new branch required, re-use the ktypes/preempt-rt branch
 include ktypes/preempt-rt
+
 include bsp/common-pc/common-pc.scc
+
+# default policy for preempt-rt kernels
+include cfg/boot-live.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+include cfg/virtio.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
index f5baf52..83d49fd 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
@@ -6,3 +6,9 @@ include ktypes/standard
 branch common-pc
 
 include common-pc.scc
+
+# default policy for standard kernels
+include cfg/boot-live.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+include cfg/virtio.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
index 8d7a498..900eb27 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
@@ -5,8 +5,5 @@ define KARCH i386
 include ktypes/tiny
 branch common-pc
 
-# Don't include common-pc.scc directly,
-# it pulls in too many non-hardware options
-kconf hardware common-pc.cfg
-kconf hardware common-pc-gfx.cfg
+include common-pc.scc
 
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
index 2338ea6..02ddfd4 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
@@ -1,11 +1,8 @@
 kconf hardware common-pc.cfg
 kconf hardware common-pc-gfx.cfg
 
-include cfg/boot-live.scc
 include features/usb/ehci-hcd.scc
 include features/usb/uhci-hcd.scc
+include features/usb/ohci-hcd.scc
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-include cfg/virtio.scc
-- 
1.7.0.4


