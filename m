Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1EC0E013EB
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:22:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Aug 2012 13:22:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="194777778"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2012 13:21:54 -0700
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:21:34 -0500
Message-Id: <894960aa8a11b993bb8b56f0c686ba67631440cf.1344456875.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
References: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344456875.git.tom.zanussi@intel.com>
References: <cover.1344456875.git.tom.zanussi@intel.com>
Subject: [PATCH 03/13] yocto-bsp: update default branch names
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
X-List-Received-Date: Wed, 08 Aug 2012 20:22:03 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Make sure the default branch names match branch names found in the
kernel branch listing.

Fixes [YOCTO #2587].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    2 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    2 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    2 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    2 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    2 +-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    2 +-
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    2 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    2 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    2 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    2 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   10 +++++-----
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   10 +++++-----
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   10 +++++-----
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   10 +++++-----
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    2 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    2 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    2 +-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    2 +-
 24 files changed, 46 insertions(+), 46 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index a55e6c7..059426f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index d60b7ce..5a8cc7a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 87741b6..d911b0a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -7,10 +7,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
 
 {{ if need_new_kbranch == "y": }}
 KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 393bed3..04c16e9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -7,10 +7,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "y": }}
 KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index a55e6c7..059426f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index d60b7ce..5a8cc7a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 7f35c24..d911b0a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 88b486f..04c16e9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index a55e6c7..059426f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index d60b7ce..5a8cc7a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 87741b6..d911b0a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -7,10 +7,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
 
 {{ if need_new_kbranch == "y": }}
 KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 393bed3..04c16e9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -7,10 +7,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "y": }}
 KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index a55e6c7..059426f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index d60b7ce..5a8cc7a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 87741b6..d911b0a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -7,10 +7,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
 
 {{ if need_new_kbranch == "y": }}
 KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 393bed3..04c16e9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -7,10 +7,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "y": }}
 KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index db15e45..28257da 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -7,31 +7,31 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "arm": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 75e6bd8..3ec3b69 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -7,31 +7,31 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "arm": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 4a58c00..528cc3a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -7,31 +7,31 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base your new BSP branch on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base your new BSP branch on:" default:"yocto/standard/arm-versatile-926ejs" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "arm": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose an existing machine branch to use for this BSP:" default:"yocto/standard/arm-versatile-926ejs" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/mti-malta32-be" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/mti-malta32-be" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 3065ee7..cb11dcb 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -7,31 +7,31 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/arm-versatile-926ejs" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "arm": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/arm-versatile-926ejs" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/mti-malta32-be" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/mti-malta32-be" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index a55e6c7..059426f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index d60b7ce..5a8cc7a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 5a1ac72..e6ee8de 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 4cafb0e..f9636c3 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -7,7 +7,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
-- 
1.7.4.1


