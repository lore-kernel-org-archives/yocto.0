Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB20AE0143A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:01:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Aug 2012 14:01:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="195744580"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2012 14:01:25 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	scott.a.garman@intel.com
Date: Thu,  9 Aug 2012 16:00:59 -0500
Message-Id: <591d4a0eb3d197a82c20e2dd5b87c448a49f596b.1344545782.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <24bc7bda6a0a13a71fe9e638db5a9c3052574ca2.1344545782.git.tom.zanussi@intel.com>
References: <24bc7bda6a0a13a71fe9e638db5a9c3052574ca2.1344545782.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344545782.git.tom.zanussi@intel.com>
References: <cover.1344545782.git.tom.zanussi@intel.com>
Subject: [PATCH 09/14] yocto-bsp: remove 'branch' statements in .scc if reusing branch
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
X-List-Received-Date: Thu, 09 Aug 2012 21:01:27 -0000

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


