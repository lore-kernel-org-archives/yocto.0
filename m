Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.18719.1625648822052673338
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jul 2021 02:07:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="206256446"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; 
   d="scan'208";a="206256446"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2021 02:06:53 -0700
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; 
   d="scan'208";a="486741014"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2021 02:06:50 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/2] zephyr-kernel/2.6.0: update to include latest commits
Date: Wed,  7 Jul 2021 17:20:13 +0800
Message-Id: <20210707092014.12537-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Switched to v2.6-branch. It included x86 EFI binary fix.

It requried rebasing of yocto toolchain patch.

Commits included:
837ab4a915 ARC: save/restore accumulator registers on all ARCv2 HS CPUs by default
0943608550 riscv: openisa_rv32m1: Fix booting of rv32m1_vega
3c56e0df0b cmake: ld: Disable manual linking of libgcc components for host
b0cb7412b9 cmake: host-gcc: Remove libgcc library path resolution
80e1b785dc cmake: host-gcc: Detect libgcc for all archs
e72a327107 cmake: gcc: Remove no_libgcc exclusion for libgcc detection
1cf1d75d3f Bluetooth: Controller: Fix Data Length Update node Rx reservations
e43afd10f7 Bluetooth: Controller: Fix free rx buffer MFIFO enqueue
6d9b318dca Bluetooth: Controller: Minor change to use IS_ENABLED
d4d362d081 doc: api: fix devicetree modification version
d0dca15734 arch/x86/zefi: Fix entry-nop hack for EFI entry
218e438f3e drivers: bluetooth: hci driver for stm32wb includes clock control
f66d0cea06 Tracing: TraceRecorder CMake update
d5a1a22b1a python-devicetree: tox: fix mypy
c77f8fae83 doc/guides/dts: bindings: Fix code snippet for 'signal-gpios'
3ec1caa504 dts/arm: st: g0: closes parenthesis for soc
a221f358eb drivers: flash_stm32_v1: fix a potential unaligned access
f5a6110b4a tests: cpp: libcxx: Test with full and nano variants of newlib
1d6106fd5e tests: cpp: libcxx: Use full version of newlib for testing
4b87e90167 cpp: Fix C++ exception handling newlib dependency
1d4d16b748 linker: cpp: Fix C++ exception handling info section linking
4a564cdef0 version: add EXTRAVERSION to VERSION file

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../0001-cmake-add-yocto-toolchain.patch      | 24 +++----
 ...phyr-2.5.0-cmake-add-yocto-toolchain.patch | 63 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src-2.5.0.inc |  6 +-
 .../zephyr-kernel/zephyr-kernel-src-2.6.0.inc |  8 ++-
 .../zephyr-kernel/zephyr-kernel-src.inc       |  3 +-
 5 files changed, 85 insertions(+), 19 deletions(-)
 create mode 100644 recipes-kernel/zephyr-kernel/files/0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch

diff --git a/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch b/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
index caab16f..563af7d 100644
--- a/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
+++ b/recipes-kernel/zephyr-kernel/files/0001-cmake-add-yocto-toolchain.patch
@@ -1,6 +1,6 @@
-From 511745625637da0effca13c5489a392e15d32271 Mon Sep 17 00:00:00 2001
+From bfab268c870548e3e7a24ea67ebed2a0513b2307 Mon Sep 17 00:00:00 2001
 From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Tue, 31 Mar 2020 13:22:17 +0800
+Date: Wed, 7 Jul 2021 13:53:05 +0800
 Subject: [PATCH] cmake: add yocto toolchain
 
 Upstream status: inappropriate [OE specific]
@@ -15,23 +15,23 @@ Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
  create mode 100644 cmake/toolchain/yocto/target.cmake
 
 diff --git a/cmake/compiler/gcc/target.cmake b/cmake/compiler/gcc/target.cmake
-index 401cc28db8..5a026f4559 100644
+index 2b90c5d2ef..b6f28b2f87 100644
 --- a/cmake/compiler/gcc/target.cmake
 +++ b/cmake/compiler/gcc/target.cmake
-@@ -66,13 +66,6 @@ if(NOT no_libgcc)
-     OUTPUT_STRIP_TRAILING_WHITESPACE
-     )
+@@ -68,13 +68,6 @@ execute_process(
+   OUTPUT_STRIP_TRAILING_WHITESPACE
+   )
  
--  assert_exists(LIBGCC_FILE_NAME)
+-assert_exists(LIBGCC_FILE_NAME)
 -
--  get_filename_component(LIBGCC_DIR ${LIBGCC_FILE_NAME} DIRECTORY)
+-get_filename_component(LIBGCC_DIR ${LIBGCC_FILE_NAME} DIRECTORY)
 -
--  assert_exists(LIBGCC_DIR)
+-assert_exists(LIBGCC_DIR)
 -
--  LIST(APPEND LIB_INCLUDE_DIR "-L\"${LIBGCC_DIR}\"")
-   LIST(APPEND TOOLCHAIN_LIBS gcc)
- endif()
+-LIST(APPEND LIB_INCLUDE_DIR "-L\"${LIBGCC_DIR}\"")
+ LIST(APPEND TOOLCHAIN_LIBS gcc)
  
+ if(SYSROOT_DIR)
 diff --git a/cmake/toolchain/yocto/generic.cmake b/cmake/toolchain/yocto/generic.cmake
 new file mode 100644
 index 0000000000..45e5777e2a
diff --git a/recipes-kernel/zephyr-kernel/files/0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch b/recipes-kernel/zephyr-kernel/files/0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch
new file mode 100644
index 0000000..caab16f
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/files/0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch
@@ -0,0 +1,63 @@
+From 511745625637da0effca13c5489a392e15d32271 Mon Sep 17 00:00:00 2001
+From: Naveen Saini <naveen.kumar.saini@intel.com>
+Date: Tue, 31 Mar 2020 13:22:17 +0800
+Subject: [PATCH] cmake: add yocto toolchain
+
+Upstream status: inappropriate [OE specific]
+
+Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
+---
+ cmake/compiler/gcc/target.cmake     |  7 -------
+ cmake/toolchain/yocto/generic.cmake | 13 +++++++++++++
+ cmake/toolchain/yocto/target.cmake  |  1 +
+ 3 files changed, 14 insertions(+), 7 deletions(-)
+ create mode 100644 cmake/toolchain/yocto/generic.cmake
+ create mode 100644 cmake/toolchain/yocto/target.cmake
+
+diff --git a/cmake/compiler/gcc/target.cmake b/cmake/compiler/gcc/target.cmake
+index 401cc28db8..5a026f4559 100644
+--- a/cmake/compiler/gcc/target.cmake
++++ b/cmake/compiler/gcc/target.cmake
+@@ -66,13 +66,6 @@ if(NOT no_libgcc)
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
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
index 9cdc721..35bafdf 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
@@ -9,7 +9,9 @@ SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 SRCREV_mbedtls = "24d84ecff195fb15c889d9046e44e4804d626c67"
 
+ZEPHYR_BRANCH = "main"
 PV = "2.5.0+git${SRCPV}"
 
-SRC_URI_append = " file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
-            "
+SRC_URI_append = " file://0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch \
+                    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
+                    "
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
index 4910db2..949492f 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
@@ -1,5 +1,5 @@
 SRCREV_FORMAT = "default_cmsis"
-SRCREV_default = "79a6c07536bc14583198f8e3555df6134d8822cf"
+SRCREV_default = "837ab4a915f7802a6fb02a27e4b024e287ac93c2"
 SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
 SRCREV_nordic = "574493fe29c79140df4827ab5d4a23df79d03681"
 SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
@@ -9,7 +9,9 @@ SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
 
+ZEPHYR_BRANCH = "v2.6-branch"
 PV = "2.6.0+git${SRCPV}"
 
-SRC_URI_append = " file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
-            "
+SRC_URI_append = " file://0001-cmake-add-yocto-toolchain.patch \
+                    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
+                    "
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 4937a77..a0004ed 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -9,7 +9,7 @@ inherit cmake
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 SRC_URI = "\
-    git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=main;name=default \
+    git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=${ZEPHYR_BRANCH};name=default \
     git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
     git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
     git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
@@ -18,7 +18,6 @@ SRC_URI = "\
     git://github.com/zephyrproject-rtos/openthread.git;protocol=https;branch=zephyr;destsuffix=git/modules/lib/openthread;name=openthread \
     git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
     git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
-    file://0001-cmake-add-yocto-toolchain.patch \
     "
 S = "${WORKDIR}/git"
 
-- 
2.17.1

