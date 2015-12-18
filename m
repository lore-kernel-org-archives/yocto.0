Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6D4DE00C2B; Fri, 18 Dec 2015 13:01:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CCF2E007B4
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 13:01:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tBIL1CBt007936
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Dec 2015 13:01:12 -0800 (PST)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Fri, 18 Dec 2015 13:01:11 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <ross.burton@intel.com>
Date: Fri, 18 Dec 2015 16:01:07 -0500
Message-ID: <94edd9c8d7b56e4fcc9de9209add06adc11b1a70.1450472132.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1450472132.git.bruce.ashfield@windriver.com>
References: <cover.1450472132.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/3] yocto-bsp: remove 3.14 and 3.19 bbappends
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
X-List-Received-Date: Fri, 18 Dec 2015 21:01:21 -0000
Content-Type: text/plain

The 3.14 and 3.19 kernel have been removed from oe-core, so we drop
our bbappends.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 .../linux/linux-yocto-rt_3.14.bbappend             | 62 ----------------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 62 ----------------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 62 ----------------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 61 ---------------------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 61 ---------------------
 .../linux/linux-yocto-rt_3.14.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.14.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend | 32 -----------
 .../recipes-kernel/linux/linux-yocto_3.19.bbappend | 32 -----------
 35 files changed, 1286 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
deleted file mode 100644
index c56e9e56f741..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
deleted file mode 100644
index 15b9b1b927d2..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
deleted file mode 100644
index caefcfc26976..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index 5af490dc53c3..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index c327d16d7b9d..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
deleted file mode 100644
index c56e9e56f741..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
deleted file mode 100644
index 15b9b1b927d2..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
deleted file mode 100644
index caefcfc26976..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index 41325ca80a60..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index b471742dc063..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
deleted file mode 100644
index c56e9e56f741..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
deleted file mode 100644
index 7c6bc7fdf4dc..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
deleted file mode 100644
index 7f203794ebe1..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index 5af490dc53c3..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index c327d16d7b9d..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
deleted file mode 100644
index c56e9e56f741..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
deleted file mode 100644
index 7c6bc7fdf4dc..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
deleted file mode 100644
index 7f203794ebe1..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index 858d5fcaa0f1..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "6eddbf47875ef48ddc5864957a7b63363100782b"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index f08453147aa9..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
deleted file mode 100644
index 4700d9802ffc..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
deleted file mode 100644
index 15b9b1b927d2..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
deleted file mode 100644
index caefcfc26976..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index 6f1e7b0a484c..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index 44086af8022e..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
deleted file mode 100644
index 9e5aa976ce27..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
+++ /dev/null
@@ -1,62 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemuppc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
deleted file mode 100644
index 1faac4443d94..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
+++ /dev/null
@@ -1,62 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/common-pc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
deleted file mode 100644
index 51fc7d0aaf5f..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
+++ /dev/null
@@ -1,62 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/common-pc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index fbaed33b154d..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,61 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base your new BSP branch on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose an existing machine branch to use for this BSP:" default:"standard/arm-versatile-926ejs" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta64" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index 7b590ad3d021..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,61 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base your new BSP branch on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose an existing machine branch to use for this BSP:" default:"standard/arm-versatile-926ejs" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta64" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
deleted file mode 100644
index 4700d9802ffc..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
deleted file mode 100644
index 15b9b1b927d2..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
deleted file mode 100644
index caefcfc26976..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend
deleted file mode 100644
index 62a99d54b2a0..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend
deleted file mode 100644
index a5dd37da9ec0..000000000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ /dev/null
@@ -1,32 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "3.19"
-- 
2.1.0


