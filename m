Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB8EDE0140F
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:14:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 May 2012 15:14:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160634803"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga002.fm.intel.com with ESMTP; 01 May 2012 15:14:12 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:13:31 -0700
Message-Id: <2a97d0059a8e3118bb8a53e7d5d8c45367e474fa.1335908926.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
Subject: [PATCH 7/7] sys940x: Cleanup sys940x.scc
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
X-List-Received-Date: Tue, 01 May 2012 22:14:12 -0000

Move the smp and minimal efi fragments into the base
BSP description rather than the recipe KERNEL_FEATURES.

Drop the -standard features from the base BSP description.
These are already defined in sys940x-standard.scc, and they
may not be wanted in other variants (such as tiny).

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc |    8 ++------
 1 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
index 962b837..144d919 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
@@ -6,10 +6,6 @@ include cfg/dmaengine.scc
 include features/serial/8250.scc
 include cfg/vesafb.scc
 include cfg/usb-mass-storage.scc
-include cfg/boot-live.scc
 include features/power/intel.scc
-
-include features/logbuf/size-normal.scc
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
+include cfg/smp.scc
+include cfg/efi.scc
-- 
1.7.7.6


