Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CFB5E00924; Sat, 14 Jan 2017 11:05:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8F42E00563
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:05:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208";a="1083026090"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 14 Jan 2017 11:01:47 -0800
Message-Id: <1484420513-18100-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
References: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 1/7] qemu-cortex-m3: new MACHINE
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
X-List-Received-Date: Sat, 14 Jan 2017 19:05:40 -0000

Various changes to properly handle QEMU for Cortex M3.
This was solved by creating a new MACHINE qemu-cortex-m3.
Specifying MACHINE=qemu-cortex-m3 will select proper tuning
for the cross-compiler.

Typical usage:

    $ MACHINE=qemu-cortex-m3 bitbake zephyr-philosophers

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 README.txt                                    | 12 ++++--------
 conf/distro/machine/include/tune-cortexm3.inc | 20 --------------------
 conf/distro/zephyr.conf                       |  4 ----
 conf/machine/include/tune-cortexm3.inc        | 20 ++++++++++++++++++++
 conf/machine/qemu-cortex-m3.conf              | 11 +++++++++++
 lib/oeqa/utils/qemuzephyrrunner.py            |  2 +-
 6 files changed, 36 insertions(+), 33 deletions(-)
 delete mode 100644 conf/distro/machine/include/tune-cortexm3.inc
 create mode 100644 conf/machine/include/tune-cortexm3.inc
 create mode 100644 conf/machine/qemu-cortex-m3.conf

diff --git a/README.txt b/README.txt
index ccdcc49..cb9a36a 100644
--- a/README.txt
+++ b/README.txt
@@ -13,10 +13,6 @@ Building and Running Zephyr tests
 =================================
 Presently only toolchains for ARM and x86 are supported.
 (For ARM we use CortexM3 toolchain)
-The toolchain is selected via the MACHINE variable:
-
-MACHINE=qemux86 : selects x86 toolchain
-MACHINE=qemuarm : selects ARM CortexM3 toolchain
 
 Default Zephyr BOARD is selected as follows:
 
@@ -35,8 +31,8 @@ zephyr-kernel-test.inc). For example:
     $ MACHINE=qemux86 bitbake zephyr-kernel-test-all
     $ MACHINE=qemux86 bitbake zephyr-kernel-test-all -ctestimage
 or 
-    $ MACHINE=qemuarm bitbake zephyr-kernel-test-all
-    $ MACHINE=qemuarm bitbake zephyr-kernel-test-all -ctestimage
+    $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all
+    $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all -ctestimage
     
 
 
@@ -56,8 +52,8 @@ the various paths have to be entered manually):
            -no-acpi -balloon none
 
 The same sample, for ARM image:
-    $ MACHINE=qemuarm bitbake zephyr-philosophers
+    $ MACHINE=qemu-cortex-m3 bitbake zephyr-philosophers
     $ ./tmp/sysroots/x86_64-linux/usr/bin/qemu-system-arm  \
-           -kernel ./tmp/deploy/images/qemuarm/philosophers.elf \
+           -kernel ./tmp/deploy/images/qemu-cortex-m3/philosophers.elf \
            -cpu cortex-m3 -machine lm3s6965evb -nographic -vga none
 
diff --git a/conf/distro/machine/include/tune-cortexm3.inc b/conf/distro/machine/include/tune-cortexm3.inc
deleted file mode 100644
index 7714ee3..0000000
--- a/conf/distro/machine/include/tune-cortexm3.inc
+++ /dev/null
@@ -1,20 +0,0 @@
-DEFAULTTUNE ?= "cortexm3"
-
-#require conf/machine/include/arm/arch-armv7a.inc
-
-TUNEVALID[cortexm3] = "Enable Cortex-M3 specific processor optimizations"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'cortexm3', ' -mcpu=cortex-m3', '', d)}"
-AVAILTUNES += "cortexm3"
-
-TUNEVALID[armv7m] = "Enable Cortex-M3 specific processor optimizations"
-TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', ' -march=armv7-m', '', d)}"
-MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', 'armv7m:', '' ,d)}"
-
-TUNE_PKGARCH_tune-cortexm3 = "cortexm3"
-
-ARMPKGARCH_tune-cortexm3 = "armv7m"
-PACKAGE_EXTRA_ARCHS_tune-cortexm3 ="cortexm3"
-
-TUNE_FEATURES_tune-cortexm3 = "armv7m vfp cortexm3"
-PACKAGE_EXTRA_ARCHS_tune-cortexm3 = "${PACKAGE_EXTRA_ARCHS_tune-armv7at} armv7m-vfp"
-
diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf
index b97e967..9f57c9e 100644
--- a/conf/distro/zephyr.conf
+++ b/conf/distro/zephyr.conf
@@ -1,6 +1,4 @@
 
-require conf/distro/machine/include/tune-cortexm3.inc
-
 DISTRO = "zephyr"
 DISTRO_NAME = "Zephyr"
 DISTRO_VERSION = "1.0"
@@ -13,7 +11,5 @@ TCLIBCAPPEND = ""
 TEST_TARGET = "QemuTargetZephyr"
 TEST_SUITES = "zephyr"
 
-DEFAULTTUNE_arm ?= "cortexm3"
-
 BOARD_arm ?= "qemu_cortex_m3"
 BOARD_x86 ?= "qemu_x86"
diff --git a/conf/machine/include/tune-cortexm3.inc b/conf/machine/include/tune-cortexm3.inc
new file mode 100644
index 0000000..25d7590
--- /dev/null
+++ b/conf/machine/include/tune-cortexm3.inc
@@ -0,0 +1,20 @@
+DEFAULTTUNE ?= "cortexm3"
+
+require conf/machine/include/arm/arch-armv7a.inc
+
+TUNEVALID[cortexm3] = "Enable Cortex-M3 specific processor optimizations"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'cortexm3', ' -mcpu=cortex-m3', '', d)}"
+AVAILTUNES += "cortexm3"
+
+TUNEVALID[armv7m] = "Enable Cortex-M3 specific processor optimizations"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', ' -march=armv7-m', '', d)}"
+MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', 'armv7m:', '' ,d)}"
+
+TUNE_PKGARCH_tune-cortexm3 = "cortexm3"
+
+ARMPKGARCH_tune-cortexm3 = "armv7m"
+PACKAGE_EXTRA_ARCHS_tune-cortexm3 ="cortexm3"
+
+TUNE_FEATURES_tune-cortexm3 = "armv7m vfp cortexm3"
+PACKAGE_EXTRA_ARCHS_tune-cortexm3 = "${PACKAGE_EXTRA_ARCHS_tune-armv7at} armv7m-vfp"
+
diff --git a/conf/machine/qemu-cortex-m3.conf b/conf/machine/qemu-cortex-m3.conf
new file mode 100644
index 0000000..13f76af
--- /dev/null
+++ b/conf/machine/qemu-cortex-m3.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: lm3s6965evb
+#@DESCRIPTION: lm3s6965evb
+
+require conf/machine/include/qemu.inc
+require conf/machine/include/tune-cortexm3.inc
+
+# For runqemu (TBD)
+QB_SYSTEM_NAME = "qemu-system-arm"
+QB_MACHINE = "-machine lm3s6965evb"
+QB_OPT_APPEND = "-nographic -vga none -cpu=cortex-m3"
diff --git a/lib/oeqa/utils/qemuzephyrrunner.py b/lib/oeqa/utils/qemuzephyrrunner.py
index 52939b5..441e0d6 100644
--- a/lib/oeqa/utils/qemuzephyrrunner.py
+++ b/lib/oeqa/utils/qemuzephyrrunner.py
@@ -68,7 +68,7 @@ class QemuZephyrRunner(QemuRunner):
 
         self.qemuparams = '-nographic -serial unix:%s,server' % (self.socketname)
         qemu_binary = ""
-        if 'arm' in self.machine:
+        if 'arm' in self.machine or 'cortex' in self.machine:
             qemu_binary = 'qemu-system-arm'
             qemu_machine_args = '-machine lm3s6965evb'
         elif 'x86' in self.machine:
-- 
2.7.4


