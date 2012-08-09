Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06E06E0145F
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:06:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Aug 2012 14:06:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="178933616"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by azsmga001.ch.intel.com with ESMTP; 09 Aug 2012 14:06:07 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Aug 2012 16:05:32 -0500
Message-Id: <e54dfd605785038100c90af56434a78ab6b4be3e.1344546148.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344546148.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344546148.git.tom.zanussi@intel.com>
References: <cover.1344546148.git.tom.zanussi@intel.com>
Subject: [PATCH 09/19] yocto-bsp: remove 'branch' statements in .scc if reusing branch
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
X-List-Received-Date: Thu, 09 Aug 2012 21:06:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

If reusing a branch (need_new_branch == 'n') we don't need to branch
in the .scc, so make it conditional on need_new_branch.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    5 +----
 .../linux/files/{{=machine}}-standard.scc          |    5 +----
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 7 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
index cd8fa9c..d131678 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH arm
 
 include ktypes/standard
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
index c7ba1fb..a241b29 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH i386
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
index c6139f0..3b916b4 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH mips
 
 include ktypes/standard
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 1213e61..a521874 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH powerpc
 
 include ktypes/standard
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
index 6399a4b..0f5a582 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -13,18 +13,15 @@ define KARCH mips
 
 {{ if qemuarch == "i386": }}
 include bsp/common-pc/common-pc-preempt-rt
-branch {{=machine}}
 {{ if qemuarch == "x86_64": }}
 include bsp/common-pc-64/common-pc-64-preempt-rt
-branch {{=machine}}
 {{ if qemuarch == "arm": }}
 include bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt
-branch {{=machine}}
 {{ if qemuarch == "powerpc": }}
 include bsp/qemu-ppc32/qemu-ppc32-rt
-branch {{=machine}}
 {{ if qemuarch == "mips": }}
 include bsp/mti-malta32/mti-malta32-be-preempt-rt
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 4def04a..04a3620 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -13,18 +13,15 @@ define KARCH mips
 
 {{ if qemuarch == "i386": }}
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
-branch {{=machine}}
 {{ if qemuarch == "x86_64": }}
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
-branch {{=machine}}
 {{ if qemuarch == "arm": }}
 include bsp/arm-versatile-926ejs/arm-versatile-926ejs-standard
-branch {{=machine}}
 {{ if qemuarch == "powerpc": }}
 include bsp/qemu-ppc32/qemu-ppc32-standard
-branch {{=machine}}
 {{ if qemuarch == "mips": }}
 include bsp/mti-malta32/mti-malta32-be-standard
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 4a034fa..3253133 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH x86_64
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
-- 
1.7.4.1


