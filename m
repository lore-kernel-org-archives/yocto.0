Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FFB1E00905; Sat,  4 Feb 2017 10:40:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65AF9E008F2
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2017 10:40:47 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,335,1477983600"; d="scan'208";a="55400542"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga004.jf.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Feb 2017 10:36:48 -0800
Message-Id: <1486233410-15671-6-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
References: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][morty][PATCH 5/7] zephyrtest.bbclass: refactor
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

Only keep code/variables related to individual test/package names.
Moved ZEPHYR_TEST_SRCDIR into zephyr-kernel.inc as it is
zephyr kernel version specific.
Moved ZEPHYR_MAKE_OUTPUT into zephyr-kernel-common.inc as it is
as it is not zephyr test specific but applicable to all
zephyr images.
Additional minor cleanup.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 classes/zephyrtest.bbclass                            | 10 ++++------
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc |  1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel.inc        |  3 +++
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/classes/zephyrtest.bbclass b/classes/zephyrtest.bbclass
index e396bf7..aa9ee3c 100644
--- a/classes/zephyrtest.bbclass
+++ b/classes/zephyrtest.bbclass
@@ -1,6 +1,5 @@
 
 python zephyrtest_virtclass_handler () {
-    cls = e.data.getVar("BBEXTENDCURR", True)
     variant = e.data.getVar("BBEXTENDVARIANT", True)
 
     # ipk doesn't like underscores in pacakges names. So just use dashes
@@ -11,13 +10,12 @@ python zephyrtest_virtclass_handler () {
     pn_underscores = e.data.getVar("PN", True) + "-" + variant
 
     e.data.setVar("PN", pn)
-    e.data.setVar("ZEPHYR_IMAGENAME", variant_dashes + ".elf")
+    e.data.setVar("ZEPHYR_IMAGENAME", pn + ".elf")
 
-    # Most tests for Zephyr 1.6 are in the "legacy" folder
-    e.data.setVar("ZEPHYR_IMAGE_SRCDIR", "tests/legacy/kernel/" + variant)
-    e.data.setVar("ZEPHYR_MAKE_OUTPUT", "zephyr.elf")
+    testsrc = e.data.getVar("ZEPHYR_TEST_SRCDIR", True)
+    e.data.setVar("ZEPHYR_IMAGE_SRCDIR", testsrc + variant)
 
-    # Allow to build using both foo-some_test form as well ass foo-some-test
+    # Allow to build using both foo-some_test form as well as foo-some-test
     e.data.setVar("PROVIDES", e.data.getVar("PROVIDES", True) + pn_underscores)
 }
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 078ea72..f5106c1 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -10,6 +10,7 @@ IMAGE_NO_MANIFEST = "1"
 ZEPHYR_GCC_VARIANT="yocto"
 ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
+ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 ZEPHYR_MAKE_ARGS = " V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE} ZEPHYR_GCC_VARIANT=${ZEPHYR_GCC_VARIANT} ZEPHYR_BASE=${ZEPHYR_BASE} ZEPHYR_SYSROOT=${ZEPHYR_SYSROOT}"
 
 # We always need a toolchain to cross-compile.
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
index 71c7a29..59b0713 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
@@ -8,6 +8,9 @@ SRC_URI += "file://Makefile.toolchain.yocto"
 
 PV = "1.6.0"
 
+# Most tests for Zephyr 1.6 are in the "legacy" folder
+ZEPHYR_TEST_SRCDIR = "tests/legacy/kernel/"
+
 S = "${WORKDIR}/git"
 
 do_compile_prepend() {
-- 
2.7.4


