Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BB7C43219
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 06:49:28 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.3978.1668062964834609945
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Nov 2022 22:49:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=CMHcFU9h;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1668062965; x=1699598965;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=1H4MKqAtN5AiJcx336+EVtg862Z7NtpMH0NsZMLZ5M8=;
  b=CMHcFU9hFNzyLxpdMsW2EplSW+yEQDc/lVNDVSRT6c0g3ZbO2xAo8eUl
   MNe+3hz0As+Q1BR2vEqwUbMa1Tgihaf7OvSlV9Jo4vk7+OsDBmC3QmECh
   1eT3G9/MPxi2y6IcadaFCHiCbbZvLaidMFGotQyqHs0TVj99YWUK7Lkwj
   fsn5u2tQJti976x9n7LLXcZ2ivQUNDW/8l7wixbmety8voTlA1VWGf8SC
   pFQuFi6FekrQDyo4RusOKwJaGhDQH/CXvJOB418VrQUZJ4LBgZDgusgFn
   VKnM4qQCX7QdzJaCkotXRXO+8tNG3fFY07CXq88kDCDeC5lBgawf7eTEg
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309944887"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="309944887"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2022 22:49:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="882241251"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="882241251"
Received: from saininav-desk1.png.intel.com ([172.30.130.9])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2022 22:49:24 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 2/5] zephyr-kernel-src: drop support for v2.7.3
Date: Thu, 10 Nov 2022 15:09:56 +0800
Message-Id: <20221110070959.3104172-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221110070959.3104172-1-naveen.kumar.saini@intel.com>
References: <20221110070959.3104172-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 06:49:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58531

Support for zephyr v3.2.0 is already being added. So time to drop it.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../0001-2.7-cmake-add-yocto-toolchain.patch  |  63 ------
 ...ry-generation-issue-in-cross-compila.patch |  80 -------
 .../zephyr-kernel/files/dtc.patch             |  43 ----
 .../zephyr-kernel/zephyr-kernel-src-2.7.3.inc | 196 ------------------
 4 files changed, 382 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-cmake-add-yocto-toolchain.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-cmake-add-yocto-toolchain.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-cmake-add-yocto-toolchain.patch
deleted file mode 100644
index 563af7d..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-cmake-add-yocto-toolchain.patch
+++ /dev/null
@@ -1,63 +0,0 @@
-From bfab268c870548e3e7a24ea67ebed2a0513b2307 Mon Sep 17 00:00:00 2001
-From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Wed, 7 Jul 2021 13:53:05 +0800
-Subject: [PATCH] cmake: add yocto toolchain
-
-Upstream status: inappropriate [OE specific]
-
-Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
----
- cmake/compiler/gcc/target.cmake     |  7 -------
- cmake/toolchain/yocto/generic.cmake | 13 +++++++++++++
- cmake/toolchain/yocto/target.cmake  |  1 +
- 3 files changed, 14 insertions(+), 7 deletions(-)
- create mode 100644 cmake/toolchain/yocto/generic.cmake
- create mode 100644 cmake/toolchain/yocto/target.cmake
-
-diff --git a/cmake/compiler/gcc/target.cmake b/cmake/compiler/gcc/target.cmake
-index 2b90c5d2ef..b6f28b2f87 100644
---- a/cmake/compiler/gcc/target.cmake
-+++ b/cmake/compiler/gcc/target.cmake
-@@ -68,13 +68,6 @@ execute_process(
-   OUTPUT_STRIP_TRAILING_WHITESPACE
-   )
- 
--assert_exists(LIBGCC_FILE_NAME)
--
--get_filename_component(LIBGCC_DIR ${LIBGCC_FILE_NAME} DIRECTORY)
--
--assert_exists(LIBGCC_DIR)
--
--LIST(APPEND LIB_INCLUDE_DIR "-L\"${LIBGCC_DIR}\"")
- LIST(APPEND TOOLCHAIN_LIBS gcc)
- 
- if(SYSROOT_DIR)
-diff --git a/cmake/toolchain/yocto/generic.cmake b/cmake/toolchain/yocto/generic.cmake
-new file mode 100644
-index 0000000000..45e5777e2a
---- /dev/null
-+++ b/cmake/toolchain/yocto/generic.cmake
-@@ -0,0 +1,13 @@
-+set(COMPILER gcc)
-+set(LINKER ld)
-+set(BINTOOLS gnu)
-+
-+set(ZEPHYR_SYSROOT ${ZEPHYR_SYSROOT})
-+set(SYSROOT_DIR ${ZEPHYR_SYSROOT})
-+set(LIBC_LIBRARY_DIR "\"${SYSROOT_DIR}\"/")
-+set(LIBC_INCLUDE_DIR ${SYSROOT_DIR}/include)
-+LIST(APPEND TOOLCHAIN_LIBS gcc)
-+
-+LIST(APPEND LIB_INCLUDE_DIR "-L\"${STAGING_LIBDIR}\"")
-+
-+set(TOOLCHAIN_LIBS gcc)
-diff --git a/cmake/toolchain/yocto/target.cmake b/cmake/toolchain/yocto/target.cmake
-new file mode 100644
-index 0000000000..9881313609
---- /dev/null
-+++ b/cmake/toolchain/yocto/target.cmake
-@@ -0,0 +1 @@
-+# SPDX-License-Identifier: Apache-2.0
--- 
-2.17.1
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-x86-fix-efi-binary-generation-issue-in-cross-compila.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
deleted file mode 100644
index fd6fc6b..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-2.7-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
+++ /dev/null
@@ -1,80 +0,0 @@
-From cfde3b1018c3151b6cc1fbe3e9e163d0aaf16954 Mon Sep 17 00:00:00 2001
-From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Tue, 11 May 2021 13:46:39 +0800
-Subject: [PATCH] x86: fix efi binary generation issue in cross compilation env
-
-Set root directory for headers.
-
-Upstream-Status: Inappropriate [Cross-compilation specific]
-
-Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
----
- arch/x86/zefi/zefi.py                | 6 +++++-
- boards/x86/ehl_crb/CMakeLists.txt    | 1 +
- boards/x86/qemu_x86/CMakeLists.txt   | 1 +
- boards/x86/up_squared/CMakeLists.txt | 1 +
- 4 files changed, 8 insertions(+), 1 deletion(-)
-
-diff --git a/arch/x86/zefi/zefi.py b/arch/x86/zefi/zefi.py
-index d3514391a8..b9eccbfa10 100755
---- a/arch/x86/zefi/zefi.py
-+++ b/arch/x86/zefi/zefi.py
-@@ -106,7 +106,10 @@ def build_elf(elf_file):
-     #  + We need pic to enforce that the linker adds no relocations
-     #  + UEFI can take interrupts on our stack, so no red zone
-     #  + UEFI API assumes 16-bit wchar_t
--    cmd = [args.compiler, "-shared", "-Wall", "-Werror", "-I.",
-+
-+    #  Pass --sysroot path for cross compilation
-+    sysrootarg = "--sysroot=" + args.sysroot
-+    cmd = [args.compiler, "-shared", "-Wall", "-Werror", "-I.", sysrootarg,
-         "-fno-stack-protector", "-fpic", "-mno-red-zone", "-fshort-wchar",
-         "-Wl,-nostdlib", "-T", ldscript, "-o", "zefi.elf", cfile]
-     verbose(" ".join(cmd))
-@@ -145,6 +148,7 @@ def parse_args():
-     parser.add_argument("-o", "--objcopy", required=True, help="objcopy to be used")
-     parser.add_argument("-f", "--elf-file", required=True, help="Input file")
-     parser.add_argument("-v", "--verbose", action="store_true", help="Verbose output")
-+    parser.add_argument("-s", "--sysroot", required=True, help="Cross compilation --sysroot=path")
- 
-     return parser.parse_args()
- 
-diff --git a/boards/x86/ehl_crb/CMakeLists.txt b/boards/x86/ehl_crb/CMakeLists.txt
-index 0d572eff30..6a228107dc 100644
---- a/boards/x86/ehl_crb/CMakeLists.txt
-+++ b/boards/x86/ehl_crb/CMakeLists.txt
-@@ -5,6 +5,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -c ${CMAKE_C_COMPILER}
-   -o ${CMAKE_OBJCOPY}
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
-diff --git a/boards/x86/qemu_x86/CMakeLists.txt b/boards/x86/qemu_x86/CMakeLists.txt
-index 1131a5c7ce..489f17192b 100644
---- a/boards/x86/qemu_x86/CMakeLists.txt
-+++ b/boards/x86/qemu_x86/CMakeLists.txt
-@@ -4,6 +4,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -c ${CMAKE_C_COMPILER}
-   -o ${CMAKE_OBJCOPY}
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
-diff --git a/boards/x86/up_squared/CMakeLists.txt b/boards/x86/up_squared/CMakeLists.txt
-index 0eaa9753fc..2e8ce7cfbc 100644
---- a/boards/x86/up_squared/CMakeLists.txt
-+++ b/boards/x86/up_squared/CMakeLists.txt
-@@ -5,6 +5,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -c ${CMAKE_C_COMPILER}
-   -o ${CMAKE_OBJCOPY}
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
--- 
-2.17.1
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patch
deleted file mode 100644
index 971995b..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-Upstream-Status: Backport [https://github.com/zephyrproject-rtos/zephyr/commit/a4da64033dac55108215857659831b7d027513de]
-Signed-off-by: Ross Burton <ross.burton@arm.com>
-
-From deb6e9b29d77f0d86eb188fb3c5fc6f470277d3d Mon Sep 17 00:00:00 2001
-From: Ross Burton <ross.burton@arm.com>
-Date: Mon, 15 Nov 2021 14:01:47 +0000
-Subject: [PATCH] cmake: expand DTC version regex
-
-DTC can be built with both traditional Makefiles or Meson. When built
-with Makefiles the --version output looks like 'Version: DTC
-1.6.1-dirty' but when built with Meson the output is 'Version: DTC
-v1.6.1+.
-
-This fails to match the version regex and the cmake then fails:
-
-CMake Error at cmake/host-tools.cmake:28 (if):
-  if given arguments:
-    "VERSION_GREATER" "1.4.6"
-  Unknown arguments specified
-
-Expanding the regex with an optional 'v' covers both cases and the build
-succeeds.
-
-Signed-off-by: Ross Burton <ross.burton@arm.com>
----
- cmake/host-tools.cmake | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/cmake/host-tools.cmake b/cmake/host-tools.cmake
-index cb7bf2e281..93d33d6390 100644
---- a/cmake/host-tools.cmake
-+++ b/cmake/host-tools.cmake
-@@ -20,7 +20,7 @@ if(DTC)
-     )
- 
-   if(${dtc_status} EQUAL 0)
--    string(REGEX MATCH "Version: DTC ([0-9]+[.][0-9]+[.][0-9]+).*" out_var ${dtc_version_output})
-+    string(REGEX MATCH "Version: DTC v?([0-9]+[.][0-9]+[.][0-9]+).*" out_var ${dtc_version_output})
- 
-     # Since it is optional, an outdated version is not an error. If an
-     # outdated version is discovered, print a warning and proceed as if
--- 
-2.25.1
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc
deleted file mode 100644
index 2d20888..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc
+++ /dev/null
@@ -1,196 +0,0 @@
-# Auto-generated from zephyr-kernel-src.inc.jinja
-
-SRCREV_FORMAT = "default"
-
-SRCREV_default = "003de78ce0dd213a1c7b3d159b967fb19a12aa45"
-SRCREV_canopennode = "f167efe85c8c7de886f1bc47f9173cfb8a346bb5"
-SRCREV_civetweb = "094aeb41bb93e9199d24d665ee43e9e05d6d7b1c"
-SRCREV_cmsis = "b0612c97c1401feeb4160add6462c3627fe90fc7"
-SRCREV_edtt = "31badfbbd04f2948e3df6ebf329f930317550961"
-SRCREV_fatfs = "94fcd6bfb3801ac0a5e12ea2f52187e0a688b90e"
-SRCREV_hal_altera = "23c1c1dd7a0c1cc9a399509d1819375847c95b97"
-SRCREV_hal_atmel = "9f78f520f6cbb997e5b44fe8ab17dd5bf2448095"
-SRCREV_hal_cypress = "81a059f21435bc7e315bccd720da5a9b615bbb50"
-SRCREV_hal_espressif = "3400257534944d3a6a4194d1dbf8f0cd1670d64e"
-SRCREV_hal_infineon = "f1fa8241f8786198ba41155413243de36ed878a5"
-SRCREV_hal_microchip = "870d05e6a64ea9548da6b907058b03c8c9420826"
-SRCREV_hal_nordic = "a6e5299041f152da5ae0ab17b2e44e088bb96d6d"
-SRCREV_hal_nuvoton = "b4d31f33238713a568e23618845702fadd67386f"
-SRCREV_hal_nxp = "78efc4ba7c1057c1cf2bf06e3e27ed7cc33e1da7"
-SRCREV_hal_openisa = "40d049f69c50b58ea20473bee14cf93f518bf262"
-SRCREV_hal_quicklogic = "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
-SRCREV_hal_silabs = "be39d4eebeddac6e18e9c0c3ba1b31ad1e82eaed"
-SRCREV_hal_st = "575de9d461aa6f430cf62c58a053675377e700f3"
-SRCREV_hal_stm32 = "5c8275071ec1cf160bfe8c18bbd9330a7d714dc8"
-SRCREV_hal_telink = "ffcfd6282aa213f1dc0848dbca6279b098f6b143"
-SRCREV_hal_ti = "1992a4c536554c4f409c36896eda6abdc414d277"
-SRCREV_hal_xtensa = "6e1cf3c483e87df4888e87c5396b4534570f01af"
-SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
-SRCREV_littlefs = "9e4498d1c73009acd84bb36036ee5e2869112a6c"
-SRCREV_loramac-node = "12019623bbad9eb54fe51066847a7cbd4b4eac57"
-SRCREV_lvgl = "783c1f78c8e39751fe89d0883c8bce7336f55e94"
-SRCREV_lz4 = "8e303c264fc21c2116dc612658003a22e933124d"
-SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
-SRCREV_mcuboot = "70bfbd21cdf5f6d1402bc8d0031e197222ed2ec0"
-SRCREV_mcumgr = "9ffebd5e92d9d069667b9af2a3a028f4a033cfd3"
-SRCREV_mipi-sys-t = "75e671550ac1acb502f315fe4952514dc73f7bfb"
-SRCREV_nanopb = "d148bd26718e4c10414f07a7eb1bd24c62e56c5d"
-SRCREV_net-tools = "f49bd1354616fae4093bf36e5eaee43c51a55127"
-SRCREV_nrf_hw_models = "a47e326ca772ddd14cc3b9d4ca30a9ab44ecca16"
-SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
-SRCREV_openthread = "5d706547ebcb0a85e11412bcd88e80e2af98c74d"
-SRCREV_segger = "3a52ab222133193802d3c3b4d21730b9b1f1d2f6"
-SRCREV_sof = "76feb11d1b8f425021b5691668af2250fee444ac"
-SRCREV_tflite-micro = "9156d050927012da87079064db59d07f03b8baf6"
-SRCREV_tinycbor = "40daca97b478989884bffb5226e9ab73ca54b8c4"
-SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-SRCREV_TraceRecorderSource = "36c577727642457b0db7274298a4b96558374832"
-SRCREV_trusted-firmware-m = "c74be3890c9d975976fde1b1a3b2f5742bec34c0"
-
-SRC_URI_ZEPHYR ?= "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https"
-SRC_URI_CANOPENNODE ?= "git://github.com/zephyrproject-rtos/canopennode;protocol=https"
-SRC_URI_CIVETWEB ?= "git://github.com/zephyrproject-rtos/civetweb;protocol=https"
-SRC_URI_CMSIS ?= "git://github.com/zephyrproject-rtos/cmsis;protocol=https"
-SRC_URI_EDTT ?= "git://github.com/zephyrproject-rtos/edtt;protocol=https"
-SRC_URI_FATFS ?= "git://github.com/zephyrproject-rtos/fatfs;protocol=https"
-SRC_URI_HAL_ALTERA ?= "git://github.com/zephyrproject-rtos/hal_altera;protocol=https"
-SRC_URI_HAL_ATMEL ?= "git://github.com/zephyrproject-rtos/hal_atmel;protocol=https"
-SRC_URI_HAL_CYPRESS ?= "git://github.com/zephyrproject-rtos/hal_cypress;protocol=https"
-SRC_URI_HAL_ESPRESSIF ?= "git://github.com/zephyrproject-rtos/hal_espressif;protocol=https"
-SRC_URI_HAL_INFINEON ?= "git://github.com/zephyrproject-rtos/hal_infineon;protocol=https"
-SRC_URI_HAL_MICROCHIP ?= "git://github.com/zephyrproject-rtos/hal_microchip;protocol=https"
-SRC_URI_HAL_NORDIC ?= "git://github.com/zephyrproject-rtos/hal_nordic;protocol=https"
-SRC_URI_HAL_NUVOTON ?= "git://github.com/zephyrproject-rtos/hal_nuvoton;protocol=https"
-SRC_URI_HAL_NXP ?= "git://github.com/zephyrproject-rtos/hal_nxp;protocol=https"
-SRC_URI_HAL_OPENISA ?= "git://github.com/zephyrproject-rtos/hal_openisa;protocol=https"
-SRC_URI_HAL_QUICKLOGIC ?= "git://github.com/zephyrproject-rtos/hal_quicklogic;protocol=https"
-SRC_URI_HAL_SILABS ?= "git://github.com/zephyrproject-rtos/hal_silabs;protocol=https"
-SRC_URI_HAL_ST ?= "git://github.com/zephyrproject-rtos/hal_st;protocol=https"
-SRC_URI_HAL_STM32 ?= "git://github.com/zephyrproject-rtos/hal_stm32;protocol=https"
-SRC_URI_HAL_TELINK ?= "git://github.com/zephyrproject-rtos/hal_telink;protocol=https"
-SRC_URI_HAL_TI ?= "git://github.com/zephyrproject-rtos/hal_ti;protocol=https"
-SRC_URI_HAL_XTENSA ?= "git://github.com/zephyrproject-rtos/hal_xtensa;protocol=https"
-SRC_URI_LIBMETAL ?= "git://github.com/zephyrproject-rtos/libmetal;protocol=https"
-SRC_URI_LITTLEFS ?= "git://github.com/zephyrproject-rtos/littlefs;protocol=https"
-SRC_URI_LORAMAC_NODE ?= "git://github.com/zephyrproject-rtos/loramac-node;protocol=https"
-SRC_URI_LVGL ?= "git://github.com/zephyrproject-rtos/lvgl;protocol=https"
-SRC_URI_LZ4 ?= "git://github.com/zephyrproject-rtos/lz4;protocol=https"
-SRC_URI_MBEDTLS ?= "git://github.com/zephyrproject-rtos/mbedtls;protocol=https"
-SRC_URI_MCUBOOT ?= "git://github.com/zephyrproject-rtos/mcuboot;protocol=https"
-SRC_URI_MCUMGR ?= "git://github.com/zephyrproject-rtos/mcumgr;protocol=https"
-SRC_URI_MIPI_SYS_T ?= "git://github.com/zephyrproject-rtos/mipi-sys-t;protocol=https"
-SRC_URI_NANOPB ?= "git://github.com/zephyrproject-rtos/nanopb;protocol=https"
-SRC_URI_NET_TOOLS ?= "git://github.com/zephyrproject-rtos/net-tools;protocol=https"
-SRC_URI_NRF_HW_MODELS ?= "git://github.com/zephyrproject-rtos/nrf_hw_models;protocol=https"
-SRC_URI_OPEN_AMP ?= "git://github.com/zephyrproject-rtos/open-amp;protocol=https"
-SRC_URI_OPENTHREAD ?= "git://github.com/zephyrproject-rtos/openthread;protocol=https"
-SRC_URI_SEGGER ?= "git://github.com/zephyrproject-rtos/segger;protocol=https"
-SRC_URI_SOF ?= "git://github.com/zephyrproject-rtos/sof;protocol=https"
-SRC_URI_TFLITE_MICRO ?= "git://github.com/zephyrproject-rtos/tflite-micro;protocol=https"
-SRC_URI_TINYCBOR ?= "git://github.com/zephyrproject-rtos/tinycbor;protocol=https"
-SRC_URI_TINYCRYPT ?= "git://github.com/zephyrproject-rtos/tinycrypt;protocol=https"
-SRC_URI_TRACERECORDERSOURCE ?= "git://github.com/zephyrproject-rtos/TraceRecorderSource;protocol=https"
-SRC_URI_TRUSTED_FIRMWARE_M ?= "git://github.com/zephyrproject-rtos/trusted-firmware-m;protocol=https"
-
-SRC_URI_PATCHES ?= "\
-    file://dtc.patch;patchdir=zephyr \
-    file://0001-2.7-cmake-add-yocto-toolchain.patch;patchdir=zephyr \
-    file://0001-2.7-x86-fix-efi-binary-generation-issue-in-cross-compila.patch;patchdir=zephyr \
-"
-
-SRC_URI = "\
-    ${SRC_URI_ZEPHYR};branch=${ZEPHYR_BRANCH};name=default;destsuffix=git/zephyr \
-    ${SRC_URI_CANOPENNODE};name=canopennode;nobranch=1;destsuffix=git/modules/lib/canopennode \
-    ${SRC_URI_CIVETWEB};name=civetweb;nobranch=1;destsuffix=git/modules/lib/civetweb \
-    ${SRC_URI_CMSIS};name=cmsis;nobranch=1;destsuffix=git/modules/hal/cmsis \
-    ${SRC_URI_EDTT};name=edtt;nobranch=1;destsuffix=git/tools/edtt \
-    ${SRC_URI_FATFS};name=fatfs;nobranch=1;destsuffix=git/modules/fs/fatfs \
-    ${SRC_URI_HAL_ALTERA};name=hal_altera;nobranch=1;destsuffix=git/modules/hal/altera \
-    ${SRC_URI_HAL_ATMEL};name=hal_atmel;nobranch=1;destsuffix=git/modules/hal/atmel \
-    ${SRC_URI_HAL_CYPRESS};name=hal_cypress;nobranch=1;destsuffix=git/modules/hal/cypress \
-    ${SRC_URI_HAL_ESPRESSIF};name=hal_espressif;nobranch=1;destsuffix=git/modules/hal/espressif \
-    ${SRC_URI_HAL_INFINEON};name=hal_infineon;nobranch=1;destsuffix=git/modules/hal/infineon \
-    ${SRC_URI_HAL_MICROCHIP};name=hal_microchip;nobranch=1;destsuffix=git/modules/hal/microchip \
-    ${SRC_URI_HAL_NORDIC};name=hal_nordic;nobranch=1;destsuffix=git/modules/hal/nordic \
-    ${SRC_URI_HAL_NUVOTON};name=hal_nuvoton;nobranch=1;destsuffix=git/modules/hal/nuvoton \
-    ${SRC_URI_HAL_NXP};name=hal_nxp;nobranch=1;destsuffix=git/modules/hal/nxp \
-    ${SRC_URI_HAL_OPENISA};name=hal_openisa;nobranch=1;destsuffix=git/modules/hal/openisa \
-    ${SRC_URI_HAL_QUICKLOGIC};name=hal_quicklogic;nobranch=1;destsuffix=git/modules/hal/quicklogic \
-    ${SRC_URI_HAL_SILABS};name=hal_silabs;nobranch=1;destsuffix=git/modules/hal/silabs \
-    ${SRC_URI_HAL_ST};name=hal_st;nobranch=1;destsuffix=git/modules/hal/st \
-    ${SRC_URI_HAL_STM32};name=hal_stm32;nobranch=1;destsuffix=git/modules/hal/stm32 \
-    ${SRC_URI_HAL_TELINK};name=hal_telink;nobranch=1;destsuffix=git/modules/hal/telink \
-    ${SRC_URI_HAL_TI};name=hal_ti;nobranch=1;destsuffix=git/modules/hal/ti \
-    ${SRC_URI_HAL_XTENSA};name=hal_xtensa;nobranch=1;destsuffix=git/modules/hal/xtensa \
-    ${SRC_URI_LIBMETAL};name=libmetal;nobranch=1;destsuffix=git/modules/hal/libmetal \
-    ${SRC_URI_LITTLEFS};name=littlefs;nobranch=1;destsuffix=git/modules/fs/littlefs \
-    ${SRC_URI_LORAMAC_NODE};name=loramac-node;nobranch=1;destsuffix=git/modules/lib/loramac-node \
-    ${SRC_URI_LVGL};name=lvgl;nobranch=1;destsuffix=git/modules/lib/gui/lvgl \
-    ${SRC_URI_LZ4};name=lz4;nobranch=1;destsuffix=git/modules/lib/lz4 \
-    ${SRC_URI_MBEDTLS};name=mbedtls;nobranch=1;destsuffix=git/modules/crypto/mbedtls \
-    ${SRC_URI_MCUBOOT};name=mcuboot;nobranch=1;destsuffix=git/bootloader/mcuboot \
-    ${SRC_URI_MCUMGR};name=mcumgr;nobranch=1;destsuffix=git/modules/lib/mcumgr \
-    ${SRC_URI_MIPI_SYS_T};name=mipi-sys-t;nobranch=1;destsuffix=git/modules/debug/mipi-sys-t \
-    ${SRC_URI_NANOPB};name=nanopb;nobranch=1;destsuffix=git/modules/lib/nanopb \
-    ${SRC_URI_NET_TOOLS};name=net-tools;nobranch=1;destsuffix=git/tools/net-tools \
-    ${SRC_URI_NRF_HW_MODELS};name=nrf_hw_models;nobranch=1;destsuffix=git/modules/bsim_hw_models/nrf_hw_models \
-    ${SRC_URI_OPEN_AMP};name=open-amp;nobranch=1;destsuffix=git/modules/lib/open-amp \
-    ${SRC_URI_OPENTHREAD};name=openthread;nobranch=1;destsuffix=git/modules/lib/openthread \
-    ${SRC_URI_SEGGER};name=segger;nobranch=1;destsuffix=git/modules/debug/segger \
-    ${SRC_URI_SOF};name=sof;nobranch=1;destsuffix=git/modules/audio/sof \
-    ${SRC_URI_TFLITE_MICRO};name=tflite-micro;nobranch=1;destsuffix=git/modules/lib/tflite-micro \
-    ${SRC_URI_TINYCBOR};name=tinycbor;nobranch=1;destsuffix=git/modules/lib/tinycbor \
-    ${SRC_URI_TINYCRYPT};name=tinycrypt;nobranch=1;destsuffix=git/modules/crypto/tinycrypt \
-    ${SRC_URI_TRACERECORDERSOURCE};name=TraceRecorderSource;nobranch=1;destsuffix=git/modules/debug/TraceRecorder \
-    ${SRC_URI_TRUSTED_FIRMWARE_M};name=trusted-firmware-m;nobranch=1;destsuffix=git/modules/tee/tfm \
-    ${SRC_URI_PATCHES} \
-"
-
-ZEPHYR_MODULES = "\
-${S}/modules/lib/canopennode\;\
-${S}/modules/lib/civetweb\;\
-${S}/modules/hal/cmsis\;\
-${S}/tools/edtt\;\
-${S}/modules/fs/fatfs\;\
-${S}/modules/hal/altera\;\
-${S}/modules/hal/atmel\;\
-${S}/modules/hal/cypress\;\
-${S}/modules/hal/espressif\;\
-${S}/modules/hal/infineon\;\
-${S}/modules/hal/microchip\;\
-${S}/modules/hal/nordic\;\
-${S}/modules/hal/nuvoton\;\
-${S}/modules/hal/nxp\;\
-${S}/modules/hal/openisa\;\
-${S}/modules/hal/quicklogic\;\
-${S}/modules/hal/silabs\;\
-${S}/modules/hal/st\;\
-${S}/modules/hal/stm32\;\
-${S}/modules/hal/telink\;\
-${S}/modules/hal/ti\;\
-${S}/modules/hal/xtensa\;\
-${S}/modules/hal/libmetal\;\
-${S}/modules/fs/littlefs\;\
-${S}/modules/lib/loramac-node\;\
-${S}/modules/lib/gui/lvgl\;\
-${S}/modules/lib/lz4\;\
-${S}/modules/crypto/mbedtls\;\
-${S}/bootloader/mcuboot\;\
-${S}/modules/lib/mcumgr\;\
-${S}/modules/debug/mipi-sys-t\;\
-${S}/modules/lib/nanopb\;\
-${S}/tools/net-tools\;\
-${S}/modules/bsim_hw_models/nrf_hw_models\;\
-${S}/modules/lib/open-amp\;\
-${S}/modules/lib/openthread\;\
-${S}/modules/debug/segger\;\
-${S}/modules/audio/sof\;\
-${S}/modules/lib/tflite-micro\;\
-${S}/modules/lib/tinycbor\;\
-${S}/modules/crypto/tinycrypt\;\
-${S}/modules/debug/TraceRecorder\;\
-${S}/modules/tee/tfm\;\
-"
-
-ZEPHYR_BRANCH = "v2.7-branch"
-PV = "2.7.3+git${SRCPV}"
-- 
2.25.1


