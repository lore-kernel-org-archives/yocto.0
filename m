Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:05:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:05:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723510"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:04:59 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 07/13] zephyr-kernel: add Zephyr RTOS version 2.0.0 support
Date: Mon,  2 Dec 2019 19:08:43 +0800
Message-Id: <20191202110849.31494-7-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Release notes:
https://github.com/zephyrproject-rtos/zephyr/releases/tag/zephyr-v2.0.0

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 classes/zephyr-kernel-src.bbclass             | 14 ++--
 .../0001-cmake-add-yocto-toolchain.patch      | 76 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-common.inc    |  2 -
 .../zephyr-kernel/zephyr-kernel-src_2.0.bb    | 33 ++++++++
 .../zephyr-kernel/zephyr-kernel.inc           |  4 -
 5 files changed, 116 insertions(+), 13 deletions(-)
 create mode 100644 recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.0.bb

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index af53e8e..9e2558b 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -1,13 +1,13 @@
 #Set relevant variables based on Zephyr kernel version
 
-PREFERRED_VERSION_zephyr-kernel ??= "1.6.0"
+PREFERRED_VERSION_zephyr-kernel ??= "2.0.0"
 
-SRCREV = "d4e799d77a36eaf6d678b357c207411ec32b2d62"
-
-SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v1.6-branch \
-          file://Makefile.toolchain.yocto "
-PV = "1.6.0"
+SRCREV = "ca3eb0eb31d134be41aefc952f696f7d9c356b7a"
 
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.0-branch \
+          file://0001-cmake-add-yocto-toolchain.patch \
+        "
+PV = "2.0.0"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
@@ -15,7 +15,7 @@ ZEPHYR_TEST_SRCDIR = "tests/legacy/kernel/"
 
 python () {
     src_pn = d.getVar('PREFERRED_VERSION_zephyr-kernel', True)
-    if src_pn == '1.6.0':
+    if src_pn == '2.0.0':
         return
     else:
         bb.error("Unsupported Zephyr kernel version requested")
diff --git a/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch b/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
new file mode 100644
index 0000000..2f91c6f
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
@@ -0,0 +1,76 @@
+From 7dffe6c78e6799a3dfd3910876b29645305a55db Mon Sep 17 00:00:00 2001
+From: Naveen Saini <naveen.kumar.saini@intel.com>
+Date: Tue, 19 Nov 2019 14:36:19 +0800
+Subject: [PATCH] cmake: add yocto toolchain
+
+Upstream status: inappropriate [OE specific]
+
+Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
+---
+ cmake/app/boilerplate.cmake         |  1 +
+ cmake/compiler/gcc/target.cmake     |  7 -------
+ cmake/toolchain/yocto/generic.cmake | 13 +++++++++++++
+ cmake/toolchain/yocto/target.cmake  |  1 +
+ 4 files changed, 15 insertions(+), 7 deletions(-)
+ create mode 100644 cmake/toolchain/yocto/generic.cmake
+ create mode 100644 cmake/toolchain/yocto/target.cmake
+
+diff --git a/cmake/app/boilerplate.cmake b/cmake/app/boilerplate.cmake
+index b0920b1d95..2dceead6c0 100644
+--- a/cmake/app/boilerplate.cmake
++++ b/cmake/app/boilerplate.cmake
+@@ -441,6 +441,7 @@ else()
+   set(SOC_PATH ${SOC_FAMILY}/${SOC_SERIES})
+ endif()
+ 
++#include(${ZEPHYR_BASE}/cmake/toolchain-yocto.cmake)
+ include(${ZEPHYR_BASE}/cmake/target_toolchain.cmake)
+ 
+ set(KERNEL_NAME ${CONFIG_KERNEL_BIN_NAME})
+diff --git a/cmake/compiler/gcc/target.cmake b/cmake/compiler/gcc/target.cmake
+index accd4ff19f..1d4018f5e6 100644
+--- a/cmake/compiler/gcc/target.cmake
++++ b/cmake/compiler/gcc/target.cmake
+@@ -85,13 +85,6 @@ if(NOT no_libgcc)
+     OUTPUT_STRIP_TRAILING_WHITESPACE
+     )
+ 
+-  assert_exists(LIBGCC_FILE_NAME)
+-
+-  get_filename_component(LIBGCC_DIR ${LIBGCC_FILE_NAME} DIRECTORY)
+-
+-  assert_exists(LIBGCC_DIR)
+-
+-  LIST(APPEND LIB_INCLUDE_DIR "-L\"${LIBGCC_DIR}\"")
+   LIST(APPEND TOOLCHAIN_LIBS gcc)
+ endif()
+ 
+diff --git a/cmake/toolchain/yocto/generic.cmake b/cmake/toolchain/yocto/generic.cmake
+new file mode 100644
+index 0000000000..45e5777e2a
+--- /dev/null
++++ b/cmake/toolchain/yocto/generic.cmake
+@@ -0,0 +1,13 @@
++set(COMPILER gcc)
++set(LINKER ld)
++set(BINTOOLS gnu)
++
++set(ZEPHYR_SYSROOT ${ZEPHYR_SYSROOT})
++set(SYSROOT_DIR ${ZEPHYR_SYSROOT})
++set(LIBC_LIBRARY_DIR "\"${SYSROOT_DIR}\"/")
++set(LIBC_INCLUDE_DIR ${SYSROOT_DIR}/include)
++LIST(APPEND TOOLCHAIN_LIBS gcc)
++
++LIST(APPEND LIB_INCLUDE_DIR "-L\"${STAGING_LIBDIR}\"")
++
++set(TOOLCHAIN_LIBS gcc)
+diff --git a/cmake/toolchain/yocto/target.cmake b/cmake/toolchain/yocto/target.cmake
+new file mode 100644
+index 0000000000..9881313609
+--- /dev/null
++++ b/cmake/toolchain/yocto/target.cmake
+@@ -0,0 +1 @@
++# SPDX-License-Identifier: Apache-2.0
+-- 
+2.17.1
+
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 2f3051d..4fab740 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -20,8 +20,6 @@ CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
 DEPENDS_append_qemuall = " qemu-native qemu-helper-native"
 
-do_configure[noexec] = "1"
-
 # The makefiles are explicit about the flags they want, so don't unset
 # them so zephyr flags actually get used.
 # This is done here rather than in the task so that things still work
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.0.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.0.bb
new file mode 100644
index 0000000..cb457f5
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.0.bb
@@ -0,0 +1,33 @@
+
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
+
+# tag v2.0
+SRCREV="ca3eb0eb31d134be41aefc952f696f7d9c356b7a"
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.0-branch \
+          file://0001-cmake-add-yocto-toolchain.patch \
+        "
+inherit cmake 
+PV = "2.0.0"
+S = "${WORKDIR}/git"
+
+IMAGE_NO_MANIFEST = "1"
+INHIBIT_DEFAULT_DEPS = "1"
+
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+
+do_compile () {
+}
+
+do_install () {
+    kerneldir=${D}/usr/src/zephyr
+    install -d $kerneldir
+    cp -r ${S}/* $kerneldir
+}
+
+PACKAGES = "${PN}"
+FILES_${PN} = "/usr/src/zephyr"
+
+SYSROOT_DIRS += "/usr/src/zephyr"
+
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
index ec7b5ae..903973d 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel.inc
@@ -2,7 +2,3 @@
 inherit zephyr-kernel-src
 
 S = "${WORKDIR}/git"
-
-do_compile_prepend() {
-    cp ${WORKDIR}/Makefile.toolchain.yocto ${S}/scripts
-}
-- 
2.17.1

