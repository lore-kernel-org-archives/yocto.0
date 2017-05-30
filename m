Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A50EE00B3D; Tue, 30 May 2017 11:45:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF32E00B19
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 11:44:56 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 May 2017 11:44:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,419,1491289200"; d="scan'208";a="268150324"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 30 May 2017 11:44:35 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 May 2017 11:44:34 -0700
Message-Id: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.0
Subject: [PATCH] yocto-bsp: Fix QEMUARM based bsps to not offer SMP support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 May 2017 18:45:00 -0000

The SMP kernel config presents issues on qemuarm because:

CONFIG_SMP=y
Dependencies Missing:
  - CPU_V6K or CPU_V7:
    These are selected by setting:
    CONFIG_ARCH_MULTI_V7=y
    or
    CONFIG_ARCH_MULTI_V6=y

But our QEMU + ARM BSPs are based on armv4/v5 hence they are
incompatible with CONFIG_SMP.

This patch fixes the script, and avoids offering SMP to the user
when the created BSP is based on QEMU + ARM.

[YOCTO #11426]

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend       | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend  | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend  | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend  | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend      | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend       | 1 +
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend       | 1 +
 9 files changed, 9 insertions(+)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
index 7e3ce5ba12d..11105ebcc26 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 81392ce38ac..ad77a662682 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
index 29ad17b2009..9b5f8016841 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index a73b1aa132f..2fc992992cf 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 7d40671fd43..868d12af04b 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
index a9fd9ecff5a..13450f47438 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 5873da4245c..e1af4976fc4 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
index cdee7737983..a2511ba197c 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 24c28803ee7..fdf66bb4429 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
+{{ if qemuarch != "arm": }}
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-- 
2.12.0


