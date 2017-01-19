Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 821C3E00A64; Thu, 19 Jan 2017 10:03:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EFE0E00A2C
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 10:03:49 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2017 10:03:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,254,1477983600"; d="scan'208";a="1084972766"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2017 10:03:42 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 09:59:38 -0800
Message-Id: <1484848779-10836-5-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484848779-10836-1-git-send-email-juro.bystricky@intel.com>
References: <1484848779-10836-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 4/5] zephyr.bbclass: support for image configuration
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
X-List-Received-Date: Thu, 19 Jan 2017 18:03:53 -0000

New class to support commands such as:

$ MACHINE=xxx bitbake yyy -c menuconfig
$ MACHINE=xxx bitbake yyy -c devshell

Kernel options are typically configured via menuconfig.
The file "prj.conf" must be edited manually, hence the need for devshell.
Once in devshell, user can use their favorite editor to edit the file.

For proper operation, these two variables need to be set in
recipes:

ZEPHYR_SRC_DIR : path to the source, typically place with prj.conf
ZEPHYR_BASE: Zephyr kernel tree location

[YOCTO#10657]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 classes/zephyr.bbclass                             | 53 ++++++++++++++++++++++
 recipes-kernel/zephyr-kernel/zephyr-image.inc      |  8 +---
 .../zephyr-kernel/zephyr-kernel-common.inc         | 13 +++---
 .../zephyr-kernel/zephyr-philosophers.bb           | 10 ++--
 .../zephyr-getchar/zephyr-getchar_git.bb           | 10 ++--
 5 files changed, 72 insertions(+), 22 deletions(-)
 create mode 100644 classes/zephyr.bbclass

diff --git a/classes/zephyr.bbclass b/classes/zephyr.bbclass
new file mode 100644
index 0000000..3ea0746
--- /dev/null
+++ b/classes/zephyr.bbclass
@@ -0,0 +1,53 @@
+
+
+inherit terminal
+
+OE_TERMINAL_EXPORTS += "HOST_EXTRACFLAGS HOSTLDFLAGS TERMINFO CROSS_CURSES_LIB CROSS_CURSES_INC"
+HOST_EXTRACFLAGS = "${BUILD_CFLAGS} ${BUILD_LDFLAGS}"
+HOSTLDFLAGS = "${BUILD_LDFLAGS}"
+CROSS_CURSES_LIB = "-lncurses -ltinfo"
+CROSS_CURSES_INC = '-DCURSES_LOC="<curses.h>"'
+TERMINFO = "${STAGING_DATADIR_NATIVE}/terminfo"
+
+KCONFIG_CONFIG_COMMAND ??= "menuconfig"
+
+python () {
+    # Translate MACHINE into Zephyr BOARD
+    # Zephyr BOARD is basically our MACHINE, except we must use "-" instead of "_"
+    board = d.getVar('MACHINE',True)
+    board = board.replace('-', '_')
+    d.setVar('BOARD',board)
+}
+
+python do_menuconfig() {
+    os.chdir(d.getVar('ZEPHYR_SRC_DIR', True))
+    configdir = d.getVar('ZEPHYR_SRC_DIR', True) + '/outdir/' + d.getVar('BOARD', True)
+    try:
+        mtime = os.path.getmtime(configdir +"/.config")
+    except OSError:
+        mtime = 0
+
+    oe_terminal("${SHELL} -c \"ZEPHYR_BASE=%s make BOARD=%s %s; if [ \$? -ne 0 ]; then echo 'Command failed.'; \
+                printf 'Press any key to continue... '; \
+                read r; fi\"" % (d.getVar('ZEPHYR_BASE', True), d.getVar('BOARD', True),d.getVar('KCONFIG_CONFIG_COMMAND', True)),
+                d.getVar('PN', True) + ' Configuration', d)
+
+    try:
+        newmtime = os.path.getmtime(configdir +"/.config")
+    except OSError:
+        newmtime = 0
+
+    if newmtime > mtime:
+        bb.warn("Configuration changed, recompile will be forced")
+        bb.build.write_taint('do_compile', d)
+}
+do_menuconfig[depends] += "ncurses-native:do_populate_sysroot"
+do_menuconfig[nostamp] = "1"
+do_menuconfig[dirs] = "${B}"
+addtask menuconfig after do_configure
+
+python do_devshell_prepend () {
+    # Most likely we need to manually edit prj.conf...
+    os.chdir(d.getVar('ZEPHYR_SRC_DIR', True))
+}
+
diff --git a/recipes-kernel/zephyr-kernel/zephyr-image.inc b/recipes-kernel/zephyr-kernel/zephyr-image.inc
index d365c9c..cf57dbf 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -6,15 +6,11 @@ inherit deploy
 
 QEMU_BIN_PATH = "${STAGING_BINDIR_NATIVE}"
 
-OE_TERMINAL_EXPORTS += "CROSS_COMPILE"
-OE_TERMINAL_EXPORTS += "BOARD"
+ZEPHYR_BASE = "${S}"
 
 do_compile () {
     cd ${S}
-    export ZEPHYR_BASE=${S}
-    export ZEPHYR_GCC_VARIANT="yocto"
-    ${MAKE_COMMAND} -C ${ZEPHYR_IMAGE_SRCDIR} pristine
-    ${MAKE_COMMAND} -C ${ZEPHYR_IMAGE_SRCDIR}
+     oe_runmake ${ZEPHYR_MAKE_ARGS} -C ${ZEPHYR_IMAGE_SRCDIR}
 }
 
 do_deploy () {
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 30c1a5a..b2dc48a 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -1,15 +1,12 @@
 # Common settings for all Zephyr recipes
 
+inherit zephyr
+
 # There shouldn't be a manifest for zephyr kernels since there is no root
 # filesystem.
 IMAGE_NO_MANIFEST = "1"
 
-# Zephyr BOARD is basically our MACHINE, except we must use "-" instead of "_"
-BOARD="$(echo ${MACHINE} | tr - _)"
-
-# oe_runmake isn't used because of the make -e causing issues with some
-# make variables.
-MAKE_COMMAND = "make -j V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE}"
+ZEPHYR_MAKE_ARGS = " V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE} ZEPHYR_GCC_VARIANT="yocto" ZEPHYR_BASE=${ZEPHYR_BASE} SYSROOT=${STAGING_DIR_TARGET}"
 
 # We always need a toolchain to cross-compile.
 INHIBIT_DEFAULT_DEPS = "1"
@@ -28,3 +25,7 @@ python () {
     d.delVar('CXXFLAGS')
     d.delVar('LDFLAGS')
 }
+OE_TERMINAL_EXPORTS += "CROSS_COMPILE"
+OE_TERMINAL_EXPORTS += "BOARD"
+OE_TERMINAL_EXPORTS += "ZEPHYR_SRC_DIR"
+OE_TERMINAL_EXPORTS += "ZEPHYR_BASE"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
index 7fb0ea4..babc453 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
@@ -2,12 +2,12 @@ require zephyr-kernel.inc
 require zephyr-kernel-common.inc
 inherit deploy
 
+ZEPHYR_SRC_DIR = "${S}/samples/philosophers"
+ZEPHYR_BASE = "${S}"
+
 do_compile () {
-    cd ${S}
-    export ZEPHYR_BASE=${S}
-    export ZEPHYR_GCC_VARIANT="yocto"
-    ${MAKE_COMMAND} -C samples/philosophers pristine
-    ${MAKE_COMMAND} -C samples/philosophers
+    cd ${ZEPHYR_SRC_DIR}
+    oe_runmake ${ZEPHYR_MAKE_ARGS}
 }
 
 do_deploy () {
diff --git a/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb b/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
index d795151..3a34b22 100644
--- a/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
+++ b/recipes-zephyr/zephyr-getchar/zephyr-getchar_git.bb
@@ -9,14 +9,14 @@ SRCREV="b8d511be4d2b9e05c6adb413a33d6ea510aa0c6a"
 SRC_URI = "git://github.com/pfalcon/zephyr_console_helpers.git;protocol=https"
 S = "${WORKDIR}/git/zephyr_getchar"
 
+ZEPHYR_SRC_DIR = "${S}"
+ZEPHYR_BASE="${STAGING_DIR_TARGET}/usr/src/zephyr"
+
 DEPENDS += " zephyr-kernel-src"
 
 do_compile () {
-    cd ${S}
-    export ZEPHYR_GCC_VARIANT="yocto"
-    export CROSS_COMPILE=${CROSS_COMPILE}
-    export ZEPHYR_BASE=${STAGING_DIR_TARGET}/usr/src/zephyr
-    make -j V=1 BOARD=${BOARD} 
+    cd ${ZEPHYR_SRC_DIR}
+    oe_runmake ${ZEPHYR_MAKE_ARGS}
 }
 
 do_deploy () {
-- 
2.7.4


