Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D60464C80A74
	for <yocto@yoctoproject.org>; Mon,  6 Dec 2010 04:12:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Dec 2010 02:12:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="357556601"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2010 02:12:32 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PPY8O-0004mD-7O; Mon, 06 Dec 2010 18:17:28 +0800
Message-Id: <1185fb9a25df39ac51f2d4a0769a615c9efd5fa2.1291629646.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1291629646.git.lianhao.lu@intel.com>
References: <cover.1291629646.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Wed, 1 Dec 2010 10:13:01 +0800
To: yocto@yoctoproject.org,joshua.lock@intel.com
Subject: [PATCH 1/2] cross-canadian: pkg name includes target arch
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
X-List-Received-Date: Mon, 06 Dec 2010 10:12:34 -0000

This commit fixes Bug #528.

1. Added the target arch name to the pkg name of gcc-cross-canadian,
gdb-cross-candian and bintuils-cross-candian.

2. Move the cross-canadian pkgs out of task-sdk-host into a new task
task-cross-canadian.

3. Added the RDEPENDS of task-cross-canadian into meta-toolchain.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/recipes-core/meta/meta-toolchain.bb           |    2 +-
 meta/recipes-core/tasks/task-cross-canadian.bb     |   15 +++++++++++++++
 meta/recipes-core/tasks/task-sdk-host.bb           |    5 +----
 .../binutils/binutils-cross-canadian.inc           |    6 ++++++
 .../binutils/binutils-cross-canadian_2.20.1.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc-cross-canadian.inc   |    4 ++++
 .../gcc/gcc-cross-canadian_4.3.3.bb                |    2 +-
 .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
 meta/recipes-devtools/gdb/gdb-cross-canadian.inc   |    7 +++++++
 .../recipes-devtools/gdb/gdb-cross-canadian_7.2.bb |    7 ++-----
 10 files changed, 39 insertions(+), 13 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-cross-canadian.bb
 create mode 100644 meta/recipes-devtools/gdb/gdb-cross-canadian.inc

diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
index 2fab8f9..8b62fab 100644
--- a/meta/recipes-core/meta/meta-toolchain.bb
+++ b/meta/recipes-core/meta/meta-toolchain.bb
@@ -13,7 +13,7 @@ SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
 IPKG_HOST = "opkg-cl -f ${IPKGCONF_SDK} -o ${SDK_OUTPUT}"
 IPKG_TARGET = "opkg-cl -f ${IPKGCONF_TARGET} -o ${SDK_OUTPUT}/${SDKTARGETSYSROOT}"
 
-TOOLCHAIN_HOST_TASK ?= "task-sdk-host"
+TOOLCHAIN_HOST_TASK ?= "task-sdk-host task-cross-canadian"
 TOOLCHAIN_TARGET_TASK ?= "task-poky-standalone-sdk-target task-poky-standalone-sdk-target-dbg"
 TOOLCHAIN_OUTPUTNAME ?= "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
 
diff --git a/meta/recipes-core/tasks/task-cross-canadian.bb b/meta/recipes-core/tasks/task-cross-canadian.bb
new file mode 100644
index 0000000..6a7cd2e
--- /dev/null
+++ b/meta/recipes-core/tasks/task-cross-canadian.bb
@@ -0,0 +1,15 @@
+DESCRIPTION = "Host SDK package for cross canadian toolchain" 
+PR = "r0"
+LICENSE = "MIT"
+ALLOW_EMPTY = "1"
+
+inherit cross-canadian
+
+PACKAGES = "${PN}"
+
+RDEPENDS_${PN} = "\
+    binutils-cross-canadian-${TARGET_ARCH} \
+    gdb-cross-canadian-${TARGET_ARCH} \
+    gcc-cross-canadian-${TARGET_ARCH} \
+    "
+
diff --git a/meta/recipes-core/tasks/task-sdk-host.bb b/meta/recipes-core/tasks/task-sdk-host.bb
index bccf48d..7bf4453 100644
--- a/meta/recipes-core/tasks/task-sdk-host.bb
+++ b/meta/recipes-core/tasks/task-sdk-host.bb
@@ -3,7 +3,7 @@
 #
 
 DESCRIPTION = "Host packages for the standalone SDK or external toolchain"
-PR = "r8"
+PR = "r9"
 LICENSE = "MIT"
 ALLOW_EMPTY = "1"
 
@@ -12,9 +12,6 @@ inherit nativesdk
 PACKAGES = "${PN}"
 
 RDEPENDS_${PN} = "\
-    binutils-cross-canadian \
-    gdb-cross-canadian \
-    gcc-cross-canadian \
     pkgconfig-nativesdk \
     qemu-nativesdk \
     qemu-helper-nativesdk \
diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
index 4953bc2..68a8e5a 100644
--- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
+++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
@@ -1,4 +1,10 @@
 inherit cross-canadian
+
+
+DESCRIPTION = "A GNU collection of cross-canadian binary utilities for ${TARGET_ARCH} target"
+PN = "binutils-cross-canadian-${TARGET_ARCH}"
+BPN = "binutils"
+
 DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/libc-nativesdk zlib-nativesdk gettext-nativesdk"
 EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TARGET_SYS} \
 		--program-prefix=${TARGET_PREFIX}"
diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian_2.20.1.bb b/meta/recipes-devtools/binutils/binutils-cross-canadian_2.20.1.bb
index 631be4f..1621b77 100644
--- a/meta/recipes-devtools/binutils/binutils-cross-canadian_2.20.1.bb
+++ b/meta/recipes-devtools/binutils/binutils-cross-canadian_2.20.1.bb
@@ -1,3 +1,3 @@
 require binutils_${PV}.bb
 require binutils-cross-canadian.inc
-PR = "r5"
+PR = "r6"
diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian.inc b/meta/recipes-devtools/gcc/gcc-cross-canadian.inc
index a3b15c3..0d39900 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-canadian.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-canadian.inc
@@ -1,4 +1,8 @@
 inherit cross-canadian
 
+DESCRIPTION = "The cross-canadian GNU cc and gcc C compilers for ${TARGET_ARCH} target."
+PN = "gcc-cross-canadian-${TARGET_ARCH}"
+BPN = "gcc"
+
 DEPENDS = "virtual/${HOST_PREFIX}binutils-crosssdk virtual/${TARGET_PREFIX}libc-for-gcc gettext-nativesdk"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.3.3.bb b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.3.3.bb
index 43bab39..d420f80 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.3.3.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.3.3.bb
@@ -5,7 +5,7 @@ require gcc-cross-canadian.inc
 require gcc-configure-sdk.inc
 require gcc-package-sdk.inc
 
-PR = "r19"
+PR = "r20"
 
 DEPENDS += "gmp-nativesdk mpfr-nativesdk"
 RDEPENDS_${PN} += "mpfr-nativesdk"
diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
index e160aab..98e239d 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
@@ -5,7 +5,7 @@ require gcc-cross-canadian.inc
 require gcc-configure-sdk.inc
 require gcc-package-sdk.inc
 
-PR = "r0"
+PR = "r1"
 
 DEPENDS += "gmp-nativesdk mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
 RDEPENDS_${PN} += "mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
diff --git a/meta/recipes-devtools/gdb/gdb-cross-canadian.inc b/meta/recipes-devtools/gdb/gdb-cross-canadian.inc
new file mode 100644
index 0000000..8fe5ad8
--- /dev/null
+++ b/meta/recipes-devtools/gdb/gdb-cross-canadian.inc
@@ -0,0 +1,7 @@
+inherit cross-canadian
+
+DESCRIPTION = "cross-canadian gdb for ${TARGET_ARCH} target - GNU debugger"
+PN = "gdb-cross-canadian-${TARGET_ARCH}"
+BPN = "gdb"
+
+DEPENDS = "ncurses-nativesdk expat-nativesdk gettext-nativesdk"
diff --git a/meta/recipes-devtools/gdb/gdb-cross-canadian_7.2.bb b/meta/recipes-devtools/gdb/gdb-cross-canadian_7.2.bb
index 5982c05..ca44b3c 100644
--- a/meta/recipes-devtools/gdb/gdb-cross-canadian_7.2.bb
+++ b/meta/recipes-devtools/gdb/gdb-cross-canadian_7.2.bb
@@ -1,10 +1,7 @@
 require gdb-common.inc
+require gdb-cross-canadian.inc
 
-DEPENDS = "ncurses-nativesdk expat-nativesdk gettext-nativesdk"
-
-inherit cross-canadian
-
-PR = "r0"
+PR = "r1"
 
 GDBPROPREFIX = "--program-prefix='${TARGET_PREFIX}'"
 EXPAT = "--with-expat"
-- 
1.7.0.4


