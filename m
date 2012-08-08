Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 535C3E01382
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:44:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Aug 2012 13:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="183310893"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by orsmga002.jf.intel.com with ESMTP; 08 Aug 2012 13:44:00 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:43:40 -0500
Message-Id: <c66224c667bcdaf2594d7c9d46892662c44bcc41.1344458451.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c2f8f4743b9369476fd0cb7fb6a7bf0ada2b7c13.1344458451.git.tom.zanussi@intel.com>
References: <c2f8f4743b9369476fd0cb7fb6a7bf0ada2b7c13.1344458451.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344458451.git.tom.zanussi@intel.com>
References: <cover.1344458451.git.tom.zanussi@intel.com>
Subject: [PATCH 02/17] yocto-bsp: strip '/base' from kernel branches in templates
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
X-List-Received-Date: Wed, 08 Aug 2012 20:44:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

For new branches, users can specify /base branches, but we don't want
the '/base' in the resultant branch name, so remove it.

Fixes [YOCTO #2693].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    4 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    4 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    4 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    4 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    4 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    4 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    4 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    4 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    4 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    4 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    4 ++--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    4 ++--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    4 ++--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    4 ++--
 24 files changed, 48 insertions(+), 48 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index 144acd3..a55e6c7 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 7fc48a5..d60b7ce 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 12de75e..87741b6 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -13,7 +13,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
@@ -24,7 +24,7 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 5480e90..393bed3 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index 144acd3..a55e6c7 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 7fc48a5..d60b7ce 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 39bf0f3..7f35c24 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -13,7 +13,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
@@ -24,7 +24,7 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 4877aa2..88b486f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index 144acd3..a55e6c7 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 7fc48a5..d60b7ce 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 12de75e..87741b6 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -13,7 +13,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
@@ -24,7 +24,7 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 5480e90..393bed3 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index 144acd3..a55e6c7 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 7fc48a5..d60b7ce 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 12de75e..87741b6 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -13,7 +13,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
@@ -24,7 +24,7 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 5480e90..393bed3 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index 21e5234..db15e45 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -37,12 +37,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index c0e22c7..75e6bd8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -37,12 +37,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 56c4029..4a58c00 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -37,12 +37,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/mti-malta32-be" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 36c5cc3..3065ee7 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -37,12 +37,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/mti-malta32-be" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"
index 144acd3..a55e6c7 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 7fc48a5..d60b7ce 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"
index 377e6a7..5a1ac72 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.0\": }} linux-yocto_3.0.bbappend"	
@@ -13,7 +13,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"yocto/standard/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
@@ -24,7 +24,7 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 17c98ee..4cafb0e 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,12 +13,12 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
 {{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=new_kbranch}}/{{=machine}}"
+YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
-- 
1.7.4.1


