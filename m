Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31B52E0079A; Sat, 14 Jan 2017 11:05:44 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4E67E00655
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:05:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208";a="1083026093"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 14 Jan 2017 11:01:48 -0800
Message-Id: <1484420513-18100-3-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
References: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 2/7] zephyr-kernel: refactor common code
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
X-List-Received-Date: Sat, 14 Jan 2017 19:05:44 -0000

Several changes to simplify recipes by refactoring
common code. The code common to all Zephyr builds is
now in the file "zephyr-kernel-common.inc".

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-image.inc      | 21 +----------------
 .../zephyr-kernel/zephyr-kernel-common.inc         | 27 ++++++++++++++++++++++
 recipes-kernel/zephyr-kernel/zephyr-kernel.inc     |  4 ----
 .../zephyr-kernel/zephyr-philosophers.bb           | 25 +-------------------
 .../zephyr-getchar/zephyr-getchar_git.bb           | 16 +++----------
 5 files changed, 32 insertions(+), 61 deletions(-)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-image.inc b/recipes-kernel/zephyr-kernel/zephyr-image.inc
index 1e630e5..d365c9c 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -1,33 +1,14 @@
 require zephyr-kernel.inc
+require zephyr-kernel-common.inc
 
 inherit testimage
 inherit deploy
 
-INHIBIT_DEFAULT_DEPS = "1"
-DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc"
-
-CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 QEMU_BIN_PATH = "${STAGING_BINDIR_NATIVE}"
 
 OE_TERMINAL_EXPORTS += "CROSS_COMPILE"
 OE_TERMINAL_EXPORTS += "BOARD"
 
-# oe_runmake isn't used because of the make -e causing issues with some
-# make variables.
-MAKE_COMMAND = "make -j V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE}"
-
-do_configure[noexec] = "1"
-
-# The makefiles are explicit about the flags they want, so don't unset
-# them so zephyr flags actually get used.
-# This is done here rather than in the task so that things still work
-# in devshell.
-python () {
-    d.delVar('CFLAGS')
-    d.delVar('CXXFLAGS')
-    d.delVar('LDFLAGS')
-}
-
 do_compile () {
     cd ${S}
     export ZEPHYR_BASE=${S}
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
new file mode 100644
index 0000000..6fe44b5
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -0,0 +1,27 @@
+# Common settings for all Zephyr recipes
+
+# There shouldn't be a manifest for zephyr kernels since there is no root
+# filesystem.
+IMAGE_NO_MANIFEST = "1"
+
+# oe_runmake isn't used because of the make -e causing issues with some
+# make variables.
+MAKE_COMMAND = "make -j V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE}"
+
+# We always need a toolchain to cross-compile.
+INHIBIT_DEFAULT_DEPS = "1"
+DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc"
+CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
+
+do_configure[noexec] = "1"
+
+# The makefiles are explicit about the flags they want, so don't unset
+# them so zephyr flags actually get used.
+# This is done here rather than in the task so that things still work
+# in devshell.
+
+python () {
+    d.delVar('CFLAGS')
+    d.delVar('CXXFLAGS')
+    d.delVar('LDFLAGS')
+}
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
index aa450ca..71c7a29 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
@@ -10,10 +10,6 @@ PV = "1.6.0"
 
 S = "${WORKDIR}/git"
 
-# There shouldn't be a manifest for zephyr kernels since there is no root
-# filesystem.
-IMAGE_NO_MANIFEST = "1"
-
 do_compile_prepend() {
     cp ${WORKDIR}/Makefile.toolchain.yocto ${S}/scripts
 }
diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
index ac0b2a7..f9e9282 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
@@ -1,30 +1,7 @@
 require zephyr-kernel.inc
-
+require zephyr-kernel-common.inc
 inherit deploy
 
-INHIBIT_DEFAULT_DEPS = "1"
-
-DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc"
-
-# The makefiles are explicit about the flags they want, so don't unset
-# them so zephyr flags actually get used.
-# This is done here rather than in the task so that things still work
-# in devshell.
-python () {
-    d.delVar('CFLAGS')
-    d.delVar('CXXFLAGS')
-    d.delVar('LDFLAGS')
-}
-
-do_configure[noexec] = "1"
-
-CROSS_COMPILE="${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
-
-# oe_runmake isn't used because of the make -e causing issues with some
-# make variables.
-
-MAKE_COMMAND = "make -j V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE}"
-
 do_compile () {
     cd ${S}
     export ZEPHYR_BASE=${S}
diff --git a/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb b/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
index e616e75..d795151 100644
--- a/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
+++ b/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
@@ -3,23 +3,13 @@ LICENSE="Apache-2.0"
 LIC_FILES_CHKSUM = "file://src/zephyr_getchar.c;beginline=1;endline=15;md5=d78a817213b11b6bcd9fe41669a2fd4a"
 inherit deploy
 
+require recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+
 SRCREV="b8d511be4d2b9e05c6adb413a33d6ea510aa0c6a"
 SRC_URI = "git://github.com/pfalcon/zephyr_console_helpers.git;protocol=https"
 S = "${WORKDIR}/git/zephyr_getchar"
 
-INHIBIT_DEFAULT_DEPS = "1"
-
-DEPENDS += "gcc-cross-${TARGET_ARCH} libgcc zephyr-kernel-src"
-
-python () {
-    d.delVar('CFLAGS')
-    d.delVar('CXXFLAGS')
-    d.delVar('LDFLAGS')
-}
-
-do_configure[noexec] = "1"
-
-CROSS_COMPILE="${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
+DEPENDS += " zephyr-kernel-src"
 
 do_compile () {
     cd ${S}
-- 
2.7.4


