Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1121AE00480; Mon, 23 Jan 2017 16:05:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC5C3E00405
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 16:05:04 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 23 Jan 2017 16:05:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,276,1477983600"; d="scan'208";a="56403520"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 23 Jan 2017 16:05:03 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 16:00:48 -0800
Message-Id: <1485216048-33088-5-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1485216048-33088-1-git-send-email-juro.bystricky@intel.com>
References: <1485216048-33088-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 4/4] README.txt: Updated for qemu-nios2
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
X-List-Received-Date: Tue, 24 Jan 2017 00:05:07 -0000

Also replaced all "qemux86" with "qemu-x86"

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 README.txt | 32 +++++++++++++++++++-------------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/README.txt b/README.txt
index cb9a36a..230ad41 100644
--- a/README.txt
+++ b/README.txt
@@ -3,6 +3,8 @@ Building Zephyr Images via bitbake recipes
 
 Prerequisites:
 
+Yocto distro "morty"
+
 Modify local conf by adding:
     DISTRO="zephyr"
 
@@ -11,29 +13,27 @@ Add "meta-zephyr" to BBLAYERS
 
 Building and Running Zephyr tests
 =================================
-Presently only toolchains for ARM and x86 are supported.
+Presently only toolchains for ARM, x86, IAMCU and Nios2 are supported.
 (For ARM we use CortexM3 toolchain)
 
-Default Zephyr BOARD is selected as follows:
-
-BOARD_arm ?= "qemu_cortex_m3"
-BOARD_x86 ?= "qemu_x86"
-
 You can build and test an individual existing Zephyr test.
 This is done by appending the actual test name to the "zephyr-kernel-test",
 for example:
 
-    $ MACHINE=qemux86 bitbake zephyr-kernel-test-test_sleep
-    $ MACHINE=qemux86 bitbake zephyr-kernel-test-test_sleep -ctestimage
+    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-test_sleep
+    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-test_sleep -ctestimage
 
-You can also build and run all Zephyr existing tests (as slisted in the file
+You can also build and run all Zephyr existing tests (as listed in the file
 zephyr-kernel-test.inc). For example:
-    $ MACHINE=qemux86 bitbake zephyr-kernel-test-all
-    $ MACHINE=qemux86 bitbake zephyr-kernel-test-all -ctestimage
+    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-all
+    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-all -ctestimage
 or 
     $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all
     $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all -ctestimage
-    
+or 
+    $ MACHINE=qemu-nios2 bitbake zephyr-kernel-test-all
+    $ MACHINE=qemu-nios2 bitbake zephyr-kernel-test-all -ctestimage
+        
 
 
 Building and Running Zephyr Samples
@@ -41,7 +41,7 @@ Building and Running Zephyr Samples
 You can also build Zephyr samples. There is a sample recipe that builds
 Zephyr "philosophers" sample:
     
-    $ MACHINE=qemux86 bitbake zephyr-philosophers
+    $ MACHINE=qemu-x86 bitbake zephyr-philosophers
     
 You can run the created "philosophers" image in qemu (at this point
 the various paths have to be entered manually):
@@ -57,3 +57,9 @@ The same sample, for ARM image:
            -kernel ./tmp/deploy/images/qemu-cortex-m3/philosophers.elf \
            -cpu cortex-m3 -machine lm3s6965evb -nographic -vga none
 
+The same sample, for Nios2 image:
+    $ MACHINE=qemu-nios2 bitbake zephyr-philosophers
+    $ ./tmp/sysroots/x86_64-linux/usr/bin/qemu-system-nios2  \
+           -kernel ./tmp/deploy/images/qemu-nios2/philosophers.elf \
+           -cpu nios2 -machine altera_10m50_zephyr -nographic
+
-- 
2.7.4


