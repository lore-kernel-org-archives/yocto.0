Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 933F44C80A74
	for <yocto@yoctoproject.org>; Mon,  6 Dec 2010 04:12:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 02:12:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="864915413"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 02:12:32 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PPY8O-0004mJ-EF; Mon, 06 Dec 2010 18:17:28 +0800
Message-Id: <47a34e6c8ec87a972fbc3a56b443744488c50f23.1291629646.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1291629646.git.lianhao.lu@intel.com>
References: <cover.1291629646.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Mon, 6 Dec 2010 17:45:45 +0800
To: yocto@yoctoproject.org,joshua.lock@intel.com
Subject: [PATCH 2/2] Using TRANSLATED_TARGET_ARCH instead of TARGET_ARCH.
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
X-List-Received-Date: Mon, 06 Dec 2010 10:12:33 -0000

Using TRANSLATED_TARGET_ARCH instead of TARGET_ARCH for
cross-canadian packages. This is due to the TARGET_ARCH of x86_64
would results incorrect packaging in cross-canadian packages.

The pacakge name appendix of x86_64 target in cross-canadian
packages is x86-64.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/cross-canadian.bbclass                |    3 +++
 meta/conf/machine/qemux86-64.conf                  |    1 +
 meta/recipes-core/tasks/task-cross-canadian.bb     |    6 +++---
 .../binutils/binutils-cross-canadian.inc           |    2 +-
 meta/recipes-devtools/gcc/gcc-cross-canadian.inc   |    2 +-
 meta/recipes-devtools/gdb/gdb-cross-canadian.inc   |    2 +-
 6 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index f608db2..7971147 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -68,3 +68,6 @@ export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR_HOST}"
 
 # Cross-canadian packages need to pull in nativesdk dynamic libs
 SHLIBSDIR = "${STAGING_DIR}/${SDK_ARCH}-nativesdk${SDK_VENDOR}-${BUILD_OS}/shlibs"
+
+# handle x86_64 TARGET_ARCH name
+TRANSLATED_TARGET_ARCH ?= ${TARGET_ARCH}
diff --git a/meta/conf/machine/qemux86-64.conf b/meta/conf/machine/qemux86-64.conf
index 31459cd..fd34709 100644
--- a/meta/conf/machine/qemux86-64.conf
+++ b/meta/conf/machine/qemux86-64.conf
@@ -3,6 +3,7 @@
 #@DESCRIPTION: Machine configuration for running a common x86
 
 TARGET_ARCH = "x86_64"
+TRANSLATED_TARGET_ARCH = "x86-64"
 PACKAGE_EXTRA_ARCHS = "x86"
 
 PREFERRED_PROVIDER_virtual/libgl  = "mesa-dri"
diff --git a/meta/recipes-core/tasks/task-cross-canadian.bb b/meta/recipes-core/tasks/task-cross-canadian.bb
index 6a7cd2e..c32afdc 100644
--- a/meta/recipes-core/tasks/task-cross-canadian.bb
+++ b/meta/recipes-core/tasks/task-cross-canadian.bb
@@ -8,8 +8,8 @@ inherit cross-canadian
 PACKAGES = "${PN}"
 
 RDEPENDS_${PN} = "\
-    binutils-cross-canadian-${TARGET_ARCH} \
-    gdb-cross-canadian-${TARGET_ARCH} \
-    gcc-cross-canadian-${TARGET_ARCH} \
+    binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} \
+    gdb-cross-canadian-${TRANSLATED_TARGET_ARCH} \
+    gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} \
     "
 
diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
index 68a8e5a..2fca81d 100644
--- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
+++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
@@ -2,7 +2,7 @@ inherit cross-canadian
 
 
 DESCRIPTION = "A GNU collection of cross-canadian binary utilities for ${TARGET_ARCH} target"
-PN = "binutils-cross-canadian-${TARGET_ARCH}"
+PN = "binutils-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 BPN = "binutils"
 
 DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/libc-nativesdk zlib-nativesdk gettext-nativesdk"
diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian.inc b/meta/recipes-devtools/gcc/gcc-cross-canadian.inc
index 0d39900..cc0a3ba 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-canadian.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-canadian.inc
@@ -1,7 +1,7 @@
 inherit cross-canadian
 
 DESCRIPTION = "The cross-canadian GNU cc and gcc C compilers for ${TARGET_ARCH} target."
-PN = "gcc-cross-canadian-${TARGET_ARCH}"
+PN = "gcc-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 BPN = "gcc"
 
 DEPENDS = "virtual/${HOST_PREFIX}binutils-crosssdk virtual/${TARGET_PREFIX}libc-for-gcc gettext-nativesdk"
diff --git a/meta/recipes-devtools/gdb/gdb-cross-canadian.inc b/meta/recipes-devtools/gdb/gdb-cross-canadian.inc
index 8fe5ad8..90a20e2 100644
--- a/meta/recipes-devtools/gdb/gdb-cross-canadian.inc
+++ b/meta/recipes-devtools/gdb/gdb-cross-canadian.inc
@@ -1,7 +1,7 @@
 inherit cross-canadian
 
 DESCRIPTION = "cross-canadian gdb for ${TARGET_ARCH} target - GNU debugger"
-PN = "gdb-cross-canadian-${TARGET_ARCH}"
+PN = "gdb-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 BPN = "gdb"
 
 DEPENDS = "ncurses-nativesdk expat-nativesdk gettext-nativesdk"
-- 
1.7.0.4


