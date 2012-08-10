Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9210E01415
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:03:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Aug 2012 12:03:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="132787787"
Received: from unknown (HELO localhost) ([10.255.12.203])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Aug 2012 12:03:36 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 10 Aug 2012 14:02:59 -0500
Message-Id: <061b316faf3d60f33242b1de5abea96602a19ce6.1344623733.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344623733.git.tom.zanussi@intel.com>
References: <cover.1344623733.git.tom.zanussi@intel.com>
Subject: [PATCH 10/19] yocto-bsp: add some standard policy
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
X-List-Received-Date: Fri, 10 Aug 2012 19:03:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add some useful default options to to the i386 and x86_64 templates.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++++++
 .../linux/files/{{=machine}}-standard.scc          |    7 +++++++
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++++++
 .../linux/files/{{=machine}}-standard.scc          |    7 +++++++
 4 files changed, 28 insertions(+)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
index 9fb8002..6ee1c93 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -6,3 +6,10 @@ define KARCH i386
 include ktypes/preempt-rt
 
 include {{=machine}}.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
index a241b29..2c16efa 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -7,3 +7,10 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 branch {{=machine}}
 
 include {{=machine}}.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
index ecb0f01..5819dce 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -6,3 +6,10 @@ define KARCH x86_64
 include ktypes/preempt-rt
 
 include {{=machine}}.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 3253133..9e5cf13 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -7,3 +7,10 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 branch {{=machine}}
 
 include {{=machine}}.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
-- 
1.7.9.5


