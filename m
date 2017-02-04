Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 394F9E0091A; Sat,  4 Feb 2017 10:40:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80741E00905
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2017 10:40:47 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2017 10:40:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,335,1477983600"; d="scan'208";a="55400545"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga004.jf.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Feb 2017 10:36:49 -0800
Message-Id: <1486233410-15671-7-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
References: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][morty][PATCH 6/7] qemu-*.conf: support for qemuboot
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
X-List-Received-Date: Sat, 04 Feb 2017 18:40:53 -0000

Add support to run qemus using runqemu.
All qemu machines will inherit the bbclass "zephyr-qemuboot",
which is responsible to set up everything that is needed
in order to use "runqemu".

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 conf/machine/qemu-cortex-m3.conf | 8 ++++++--
 conf/machine/qemu-nios2.conf     | 7 +++++--
 conf/machine/qemu-x86.conf       | 6 +++++-
 3 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/conf/machine/qemu-cortex-m3.conf b/conf/machine/qemu-cortex-m3.conf
index aeb9a69..6a6d45e 100644
--- a/conf/machine/qemu-cortex-m3.conf
+++ b/conf/machine/qemu-cortex-m3.conf
@@ -5,7 +5,11 @@
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-cortexm3.inc
 
-# For runqemu (TBD)
+ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
+
+# For runqemu
 QB_SYSTEM_NAME = "qemu-system-arm"
 QB_MACHINE = "-machine lm3s6965evb"
-QB_OPT_APPEND = "-nographic -vga none -cpu=cortex-m3"
+QB_OPT_APPEND = "-nographic -vga none"
+QB_CPU = "-cpu cortex-m3"
+
diff --git a/conf/machine/qemu-nios2.conf b/conf/machine/qemu-nios2.conf
index d74017f..abc9574 100644
--- a/conf/machine/qemu-nios2.conf
+++ b/conf/machine/qemu-nios2.conf
@@ -5,7 +5,10 @@
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-nios2.inc
 
-# For runqemu (TBD)
+ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
+
+# For runqemu
 QB_SYSTEM_NAME = "qemu-system-nios2"
 QB_MACHINE = "-machine altera_10m50_zephyr"
-QB_OPT_APPEND = "-nographic -cpu=nios2"
+QB_OPT_APPEND = "-nographic"
+QB_CPU = "-cpu nios2"
diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
index 0d595a1..9a46809 100644
--- a/conf/machine/qemu-x86.conf
+++ b/conf/machine/qemu-x86.conf
@@ -5,7 +5,11 @@
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-i586.inc
 
-# For runqemu (TBD)
+ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
+
+# For runqemu
 QB_SYSTEM_NAME = "qemu-system-i386"
 QB_MACHINE = "-machine pc-0.14"
 QB_OPT_APPEND = "-nographic -display none -clock dynticks -no-acpi -balloon none"
+QB_CPU_x86 = "-cpu qemu32"
+QB_CPU_KVM_x86 = "-cpu kvm32"
-- 
2.7.4


