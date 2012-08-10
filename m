Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C6CAE01468
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:03:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Aug 2012 12:03:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="197063692"
Received: from unknown (HELO localhost) ([10.255.12.203])
	by fmsmga001.fm.intel.com with ESMTP; 10 Aug 2012 12:03:57 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 10 Aug 2012 14:03:06 -0500
Message-Id: <787d3465947074077e50778f9f5fb676b04c7523.1344623733.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344623733.git.tom.zanussi@intel.com>
References: <cover.1344623733.git.tom.zanussi@intel.com>
Subject: [PATCH 17/19] yocto-bsp: remove YOCTO_KERNEL_EXTERNAL_BRANCH usage
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
X-List-Received-Date: Fri, 10 Aug 2012 19:03:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

YOCTO_KERNEL_EXTERNAL_BRANCH is now obsolete, so remove it from the
templates.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    3 ---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |    3 ---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    3 ---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |    5 -----
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    3 ---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |    3 ---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    3 ---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |    5 -----
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    3 ---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |    3 ---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    3 ---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |    5 -----
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    3 ---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |    3 ---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    3 ---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |    5 -----
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    3 ---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |    3 ---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    3 ---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |    3 ---
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    3 ---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |    3 ---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    3 ---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |    5 -----
 24 files changed, 82 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index a2b4726..25b8ef9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f80989c..094cf5c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 87f6cf1..730b07a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index b2c842b..bea555c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -23,11 +23,6 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-{{ if need_new_kbranch == "n": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 2b59803..e3085f5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f80989c..094cf5c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index f74a17e..985a6a8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 47b6dd5..23147e9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -23,11 +23,6 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-{{ if need_new_kbranch == "n": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 2b59803..e3085f5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f80989c..094cf5c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 3251158..e1230c1 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index b2c842b..bea555c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -23,11 +23,6 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-{{ if need_new_kbranch == "n": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 2b59803..e3085f5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f80989c..094cf5c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 3251158..e1230c1 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index b2c842b..bea555c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -23,11 +23,6 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-{{ if need_new_kbranch == "n": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 590f50d..7bb3ee9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -41,9 +41,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index fad9103..13e96ad 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -41,9 +41,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 82bafd9..1f8ad71 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -41,9 +41,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 7217713..4bafac2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -41,9 +41,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 2b59803..e3085f5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f80989c..094cf5c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index d32cba3..e3e0cc2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -17,9 +17,6 @@ KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-
 KMACHINE_{{=machine}}  = "{{=machine}}"
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index bf5959c..7db77a4 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -23,11 +23,6 @@ KMACHINE_{{=machine}}  = "{{=machine}}"
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
-{{ if need_new_kbranch == "y": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-{{ if need_new_kbranch == "n": }}
-YOCTO_KERNEL_EXTERNAL_BRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-- 
1.7.9.5


