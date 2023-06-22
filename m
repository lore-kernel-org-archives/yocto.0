Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26605EB64DD
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 10:21:16 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.8093.1687429271392048144
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 03:21:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=mJ0vkNUJ;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1687429271; x=1718965271;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=B7U8HtdCA8JOAWbTsioHcGuo1QgnUNIgSRAGqxjbZJg=;
  b=mJ0vkNUJozCRyDcZuQ7lNxyYpF3SNkbcJROebgN/jaT+uiK3WpdnrLYx
   SpDpj3Xqku4VeQMR/YFlWVXKeGs7FtqOs9lSwVtSZ6EVNhRr32yEpHVFN
   KJfAKpy71T5NN/qhG4jdaJzP4ZPfG+ebExJOxCoD3fuv25pVhiGZtQuCr
   LauIHtHyW/rErXlSBT6afSkXhAkZ//jVsxAxuSXA9WqfqZb4QsmYYnRmB
   OKFBwdq3fnMA5R5nMH2pkawN2GmNgqgqKgAHbQLPkbGb9OKQ0vH69ubal
   +N2VTLVNIl7encY0jRuZ9OhCYTPeg4OFCWwumvTPHp+gtL1QCxvIyp22G
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="424114854"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; 
   d="scan'208";a="424114854"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2023 03:15:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="827835449"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; 
   d="scan'208";a="827835449"
Received: from saininav-desk1.png.intel.com ([172.30.130.5])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2023 03:15:16 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/3] zephyr-kernel: Drop support for v3.3.0
Date: Thu, 22 Jun 2023 18:39:38 +0800
Message-Id: <20230622103939.2893308-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230622103939.2893308-1-naveen.kumar.saini@intel.com>
References: <20230622103939.2893308-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 10:21:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60396

v3.4.0 is available, now drop support for old version.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ry-generation-issue-in-cross-compila.patch |  93 -------
 ...c-target.cmake-fix-build-with-gcc-13.patch |  54 ----
 ...x-separator-between-directives-on-sa.patch |  44 ----
 .../zephyr-kernel/zephyr-kernel-src-3.3.0.inc | 240 ------------------
 4 files changed, 431 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-gcc-target.cmake-fix-build-with-gcc-13.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
deleted file mode 100644
index d4e1d09..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
+++ /dev/null
@@ -1,93 +0,0 @@
-From 60b4dc4214ee645833eff109ff04d4849219fd4e Mon Sep 17 00:00:00 2001
-From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Thu, 28 Jul 2022 14:15:11 +0800
-Subject: [PATCH] x86: fix efi binary generation issue in cross compilation env
-
-Set root directory for headers.
-
-Upstream-Status: Inappropriate [Cross-compilation specific]
-
-Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
----
- arch/x86/zefi/zefi.py                | 5 ++++-
- boards/x86/ehl_crb/CMakeLists.txt    | 1 +
- boards/x86/qemu_x86/CMakeLists.txt   | 1 +
- boards/x86/rpl_crb/CMakeLists.txt    | 1 +
- boards/x86/up_squared/CMakeLists.txt | 1 +
- 5 files changed, 8 insertions(+), 1 deletion(-)
-
-diff --git a/arch/x86/zefi/zefi.py b/arch/x86/zefi/zefi.py
-index 99c188ecd0..1cd86a21cd 100755
---- a/arch/x86/zefi/zefi.py
-+++ b/arch/x86/zefi/zefi.py
-@@ -109,8 +109,10 @@ def build_elf(elf_file, include_dirs):
-     includes = []
-     for include_dir in include_dirs:
-         includes.extend(["-I", include_dir])
-+    #  Pass --sysroot path for cross compilation
-+    sysrootarg = "--sysroot=" + args.sysroot
-     cmd = ([args.compiler, "-shared", "-Wall", "-Werror", "-I."] + includes +
--           ["-fno-stack-protector", "-fpic", "-mno-red-zone", "-fshort-wchar",
-+           ["-fno-stack-protector", "-fpic", "-mno-red-zone", "-fshort-wchar", sysrootarg,
-             "-Wl,-nostdlib", "-T", ldscript, "-o", "zefi.elf", cfile])
-     verbose(" ".join(cmd))
-     subprocess.run(cmd, check = True)
-@@ -150,6 +152,7 @@ def parse_args():
-     parser.add_argument("-v", "--verbose", action="store_true", help="Verbose output")
-     parser.add_argument("-i", "--includes", required=True, nargs="+",
-                         help="Zephyr base include directories")
-+    parser.add_argument("-s", "--sysroot", required=True, help="Cross compilation --sysroot=path")
- 
-     return parser.parse_args()
- 
-diff --git a/boards/x86/ehl_crb/CMakeLists.txt b/boards/x86/ehl_crb/CMakeLists.txt
-index cdf8c9e097..6ea94b54e1 100644
---- a/boards/x86/ehl_crb/CMakeLists.txt
-+++ b/boards/x86/ehl_crb/CMakeLists.txt
-@@ -7,6 +7,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -i ${ZEPHYR_BASE}/include
-      $<$<BOOL:${CONFIG_LEGACY_INCLUDE_PATH}>:${ZEPHYR_BASE}/include/zephyr>
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
-diff --git a/boards/x86/qemu_x86/CMakeLists.txt b/boards/x86/qemu_x86/CMakeLists.txt
-index 8d227f8b26..a5d6480bc3 100644
---- a/boards/x86/qemu_x86/CMakeLists.txt
-+++ b/boards/x86/qemu_x86/CMakeLists.txt
-@@ -6,6 +6,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-      $<$<BOOL:${CONFIG_LEGACY_INCLUDE_PATH}>:${ZEPHYR_BASE}/include/zephyr>
-   -o ${CMAKE_OBJCOPY}
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
-diff --git a/boards/x86/rpl_crb/CMakeLists.txt b/boards/x86/rpl_crb/CMakeLists.txt
-index 8bd6e36099..7316f23759 100644
---- a/boards/x86/rpl_crb/CMakeLists.txt
-+++ b/boards/x86/rpl_crb/CMakeLists.txt
-@@ -7,6 +7,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -i ${ZEPHYR_BASE}/include
-      $<$<BOOL:${CONFIG_LEGACY_INCLUDE_PATH}>:${ZEPHYR_BASE}/include/zephyr>
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
-diff --git a/boards/x86/up_squared/CMakeLists.txt b/boards/x86/up_squared/CMakeLists.txt
-index b867282d60..43cd081b21 100644
---- a/boards/x86/up_squared/CMakeLists.txt
-+++ b/boards/x86/up_squared/CMakeLists.txt
-@@ -7,6 +7,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
-   -i ${ZEPHYR_BASE}/include
-      $<$<BOOL:${CONFIG_LEGACY_INCLUDE_PATH}>:${ZEPHYR_BASE}/include/zephyr>
-   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
-+  -s ${SYSROOT_DIR}
-   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
-   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
- )
--- 
-2.25.1
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-gcc-target.cmake-fix-build-with-gcc-13.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-gcc-target.cmake-fix-build-with-gcc-13.patch
deleted file mode 100644
index c239f4f..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-gcc-target.cmake-fix-build-with-gcc-13.patch
+++ /dev/null
@@ -1,54 +0,0 @@
-From ba1ca46190900b5d003e3d0386c20694f04b1710 Mon Sep 17 00:00:00 2001
-From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Mon, 29 May 2023 17:48:20 +0800
-Subject: [PATCH] gcc/target.cmake: fix build with gcc-13
-
-Configuration error:
-| -- Configuring done (4.9s)
-| CMake Error in CMakeLists.txt:
-|   Target "zephyr_interface" contains relative path in its
-|   INTERFACE_INCLUDE_DIRECTORIES:
-|
-|     "include-fixed"
-
-With GCC-13, limits.h and syslimits.h header files
-are always being installed to include folder.
-https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=be9dd80f933480
-
-Upstream-Status: Submitted [https://github.com/zephyrproject-rtos/zephyr/pull/58408]
-
-Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
----
- cmake/compiler/gcc/target.cmake | 16 +++++++++++++++-
- 1 file changed, 15 insertions(+), 1 deletion(-)
-
-diff --git a/cmake/compiler/gcc/target.cmake b/cmake/compiler/gcc/target.cmake
-index c970048297..e78a7c6a0b 100644
---- a/cmake/compiler/gcc/target.cmake
-+++ b/cmake/compiler/gcc/target.cmake
-@@ -34,7 +34,21 @@ if(NOT DEFINED NOSYSDEF_CFLAG)
-   set(NOSYSDEF_CFLAG -undef)
- endif()
- 
--foreach(file_name include/stddef.h include-fixed/limits.h)
-+# GCC-13, does not install limits.h on include-fixed anymore
-+# https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=be9dd80f933480
-+# Add check for GCC version >= 13.1
-+execute_process(
-+    COMMAND ${CMAKE_C_COMPILER} -dumpversion
-+    OUTPUT_VARIABLE TEMP_COMPILER_VERSION
-+    )
-+
-+if(${TEMP_COMPILER_VERSION} VERSION_GREATER_EQUAL 13.1.0)
-+    set(FIX_HEADER_FILE include/limits.h)
-+else()
-+    set(FIX_HEADER_FILE include-fixed/limits.h)
-+endif()
-+
-+foreach(file_name include/stddef.h ${FIX_HEADER_FILE})
-   execute_process(
-     COMMAND ${CMAKE_C_COMPILER} --print-file-name=${file_name}
-     OUTPUT_VARIABLE _OUTPUT
--- 
-2.34.1
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch
deleted file mode 100644
index 84750b8..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch
+++ /dev/null
@@ -1,44 +0,0 @@
-From e709258cd766a7b4a3b02e6910f980d501ef1493 Mon Sep 17 00:00:00 2001
-From: Peter Hoyes <Peter.Hoyes@arm.com>
-Date: Sun, 26 Feb 2023 21:18:04 +0000
-Subject: [PATCH] toolchain: gcc: Fix separator between directives on same
- line
-
-The Arm assembler in binutils 2.40 contains a change [1] which affects
-how multiple directives on the same line are parsed.
-
-Previously, the following combination of directives parsed successfully:
-
-    .code 32 .balign 4
-
-With binutils 2.40, the following error is now seen:
-
-    Error: junk at end of line, first unrecognised character is `.'
-
-To fix, insert a semicolon after '.code 32', as there already is after
-'.thumb'.
-
-[1] https://sourceware.org/git/?p=binutils-gdb.git;a=commitdiff;h=a37854f9162fac592b669eda53f465fc190c9341
-
-Upstream-Status: Backport [https://github.com/zephyrproject-rtos/zephyr/commit/2f2f3edacdf13bb9bc0be1ce3b80726dce6fb1c0]
-Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
----
- include/zephyr/toolchain/gcc.h | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/include/zephyr/toolchain/gcc.h b/include/zephyr/toolchain/gcc.h
-index ede21a47fe..f81cb0a309 100644
---- a/include/zephyr/toolchain/gcc.h
-+++ b/include/zephyr/toolchain/gcc.h
-@@ -312,7 +312,7 @@ do {                                                                    \
- 
- #else
- 
--#define FUNC_CODE() .code 32
-+#define FUNC_CODE() .code 32;
- #define FUNC_INSTR(a)
- 
- #endif /* CONFIG_ASSEMBLER_ISA_THUMB2 */
--- 
-2.34.1
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc
deleted file mode 100644
index 2c99ca2..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3.0.inc
+++ /dev/null
@@ -1,240 +0,0 @@
-# Auto-generated from zephyr-kernel-src.inc.jinja
-
-SRCREV_FORMAT = "default"
-
-SRCREV_default = "07c6af3b8c35c1e49186578ca61a25c76e2fb308"
-SRCREV_canopennode = "dec12fa3f0d790cafa8414a4c2930ea71ab72ffd"
-SRCREV_chre = "b7955c27e50485b7dafdc3888d7d6afdc2ac6d96"
-SRCREV_cmsis = "74981bf893e8b10931464b9945e2143d99a3f0a3"
-SRCREV_edtt = "000fb87261beaf33f80a8868e73857bd62edc668"
-SRCREV_fatfs = "427159bf95ea49b7680facffaa29ad506b42709b"
-SRCREV_hal_altera = "0d225ddd314379b32355a00fb669eacf911e750d"
-SRCREV_hal_atmel = "d45adfb6897aba323cac29cdda8070ce4f23f014"
-SRCREV_hal_espressif = "73e7af1e2ed64571ce49ff9f07dc02690b9f2df5"
-SRCREV_hal_ethos_u = "90ada2ea5681b2a2722a10d2898eac34c2510791"
-SRCREV_hal_gigadevice = "2994b7dde8b0b0fa9b9c0ccb13474b6a486cddc3"
-SRCREV_hal_infineon = "5b0c7700a7be049e02835dfa0950d378aac39e67"
-SRCREV_hal_microchip = "5d079f1683a00b801373bbbbf5d181d4e33b30d5"
-SRCREV_hal_nordic = "3f7ae2320b6d348898c7b11e956a6e792d0b3724"
-SRCREV_hal_nuvoton = "0a1f153c433f5f637a4490651bdda6d966de3b99"
-SRCREV_hal_nxp = "d957472002a3758154f402e982d95ce90cf58e12"
-SRCREV_hal_openisa = "40d049f69c50b58ea20473bee14cf93f518bf262"
-SRCREV_hal_quicklogic = "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0"
-SRCREV_hal_renesas = "468d3f2146d18c7f86a4640fc641cc1d20a4a100"
-SRCREV_hal_rpi_pico = "a094c060e0c2d43c7f9d8f5c06cc0665117e0c18"
-SRCREV_hal_silabs = "9dcaa761258cfdfecaacc5a9f0af92f6535d74a3"
-SRCREV_hal_st = "cccbc24c14decfd3f93959f7b14514536af973c7"
-SRCREV_hal_stm32 = "b916f9a01c665194fbbdd6a67a0f37b4e0a7e78c"
-SRCREV_hal_telink = "38573af589173259801ae6c2b34b7d4c9e626746"
-SRCREV_hal_ti = "5e7d5cd584047699c9fd279923120cb25ba3dda7"
-SRCREV_hal_wurthelektronik = "24ca9873c3d608fad1fea0431836bc8f144c132e"
-SRCREV_hal_xtensa = "63f655362423aa49507da7977a2d37142e8debeb"
-SRCREV_libmetal = "efa2ace6028290ddee494a78ade772a0b112ab83"
-SRCREV_liblc3 = "448f3de31f49a838988a162ef1e23a89ddf2d2ed"
-SRCREV_littlefs = "ca583fd297ceb48bced3c2548600dc615d67af24"
-SRCREV_loramac-node = "ce57712f3e426bbbb13acaec97b45369f716f43a"
-SRCREV_lvgl = "5ab83099854719ed326b6ecb9b09b07b1eee4818"
-SRCREV_lz4 = "8e303c264fc21c2116dc612658003a22e933124d"
-SRCREV_mbedtls = "6e166050075688fd3cf3d0cb3fc34a1c52df2496"
-SRCREV_mcuboot = "750678e33819b95756203e5db1ba827baee35708"
-SRCREV_mipi-sys-t = "0d521d8055f3b2b4842f728b0365d3f0ece9c37f"
-SRCREV_nanopb = "dc4deed54fd4c7e1935e3b6387eedf21bb45dc38"
-SRCREV_net-tools = "e0828aa9629b533644dc96ff6d1295c939bd713c"
-SRCREV_nrf_hw_models = "d8f125e1988221ebfea5944fc3118f1780787ccc"
-SRCREV_open-amp = "aedcc262f93bbb1b0c2f58026911575729b7465c"
-SRCREV_openthread = "a1979fdd8ed756468719cc4921b04a57efcf9f15"
-SRCREV_picolibc = "98e59b70d6ef8eb18f7dccc3d39cecaa0658fa4f"
-SRCREV_segger = "e2ff2200556e8a8f962921444275c04971a2bb3d"
-SRCREV_sof = "6f5f7258ad2738df78e600568d38fc261e2a118d"
-SRCREV_tflite-micro = "9156d050927012da87079064db59d07f03b8baf6"
-SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-SRCREV_TraceRecorderSource = "d92607521335eaaaedb01b241cdd26fda48a5ca6"
-SRCREV_trusted-firmware-m = "f2a639c8d1842acb2964a27461f5c9cfdfaa4d16"
-SRCREV_trusted-firmware-a = "28f5e137837f1c1a7a7b2af2dd8bb778c0a27532"
-SRCREV_tf-m-tests = "0f80a65193ddbbe3f0ac38b33b07b26138c11fa7"
-SRCREV_psa-arch-tests = "24ed42e34e03ebbc945a7204819c1471cce2bda8"
-SRCREV_uoscore-uedhoc = "e8920192b66db4f909eb9cd3f155d5245c1ae825"
-SRCREV_zcbor = "0556edac504d1f34699aa8a22fcd507c14756c9e"
-SRCREV_zscilib = "0035be5e6a45e4ab89755b176d305d7a877fc79c"
-SRCREV_thrift = "10023645a0e6cb7ce23fcd7fd3dbac9f18df6234"
-
-SRC_URI_ZEPHYR ?= "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https"
-SRC_URI_ZEPHYR_CANOPENNODE ?= "git://github.com/zephyrproject-rtos/canopennode;protocol=https"
-SRC_URI_ZEPHYR_CHRE ?= "git://github.com/zephyrproject-rtos/chre;protocol=https"
-SRC_URI_ZEPHYR_CMSIS ?= "git://github.com/zephyrproject-rtos/cmsis;protocol=https"
-SRC_URI_ZEPHYR_EDTT ?= "git://github.com/zephyrproject-rtos/edtt;protocol=https"
-SRC_URI_ZEPHYR_FATFS ?= "git://github.com/zephyrproject-rtos/fatfs;protocol=https"
-SRC_URI_ZEPHYR_HAL_ALTERA ?= "git://github.com/zephyrproject-rtos/hal_altera;protocol=https"
-SRC_URI_ZEPHYR_HAL_ATMEL ?= "git://github.com/zephyrproject-rtos/hal_atmel;protocol=https"
-SRC_URI_ZEPHYR_HAL_ESPRESSIF ?= "git://github.com/zephyrproject-rtos/hal_espressif;protocol=https"
-SRC_URI_ZEPHYR_HAL_ETHOS_U ?= "git://github.com/zephyrproject-rtos/hal_ethos_u;protocol=https"
-SRC_URI_ZEPHYR_HAL_GIGADEVICE ?= "git://github.com/zephyrproject-rtos/hal_gigadevice;protocol=https"
-SRC_URI_ZEPHYR_HAL_INFINEON ?= "git://github.com/zephyrproject-rtos/hal_infineon;protocol=https"
-SRC_URI_ZEPHYR_HAL_MICROCHIP ?= "git://github.com/zephyrproject-rtos/hal_microchip;protocol=https"
-SRC_URI_ZEPHYR_HAL_NORDIC ?= "git://github.com/zephyrproject-rtos/hal_nordic;protocol=https"
-SRC_URI_ZEPHYR_HAL_NUVOTON ?= "git://github.com/zephyrproject-rtos/hal_nuvoton;protocol=https"
-SRC_URI_ZEPHYR_HAL_NXP ?= "git://github.com/zephyrproject-rtos/hal_nxp;protocol=https"
-SRC_URI_ZEPHYR_HAL_OPENISA ?= "git://github.com/zephyrproject-rtos/hal_openisa;protocol=https"
-SRC_URI_ZEPHYR_HAL_QUICKLOGIC ?= "git://github.com/zephyrproject-rtos/hal_quicklogic;protocol=https"
-SRC_URI_ZEPHYR_HAL_RENESAS ?= "git://github.com/zephyrproject-rtos/hal_renesas;protocol=https"
-SRC_URI_ZEPHYR_HAL_RPI_PICO ?= "git://github.com/zephyrproject-rtos/hal_rpi_pico;protocol=https"
-SRC_URI_ZEPHYR_HAL_SILABS ?= "git://github.com/zephyrproject-rtos/hal_silabs;protocol=https"
-SRC_URI_ZEPHYR_HAL_ST ?= "git://github.com/zephyrproject-rtos/hal_st;protocol=https"
-SRC_URI_ZEPHYR_HAL_STM32 ?= "git://github.com/zephyrproject-rtos/hal_stm32;protocol=https"
-SRC_URI_ZEPHYR_HAL_TELINK ?= "git://github.com/zephyrproject-rtos/hal_telink;protocol=https"
-SRC_URI_ZEPHYR_HAL_TI ?= "git://github.com/zephyrproject-rtos/hal_ti;protocol=https"
-SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK ?= "git://github.com/zephyrproject-rtos/hal_wurthelektronik;protocol=https"
-SRC_URI_ZEPHYR_HAL_XTENSA ?= "git://github.com/zephyrproject-rtos/hal_xtensa;protocol=https"
-SRC_URI_ZEPHYR_LIBMETAL ?= "git://github.com/zephyrproject-rtos/libmetal;protocol=https"
-SRC_URI_ZEPHYR_LIBLC3 ?= "git://github.com/zephyrproject-rtos/liblc3;protocol=https"
-SRC_URI_ZEPHYR_LITTLEFS ?= "git://github.com/zephyrproject-rtos/littlefs;protocol=https"
-SRC_URI_ZEPHYR_LORAMAC_NODE ?= "git://github.com/zephyrproject-rtos/loramac-node;protocol=https"
-SRC_URI_ZEPHYR_LVGL ?= "git://github.com/zephyrproject-rtos/lvgl;protocol=https"
-SRC_URI_ZEPHYR_LZ4 ?= "git://github.com/zephyrproject-rtos/lz4;protocol=https"
-SRC_URI_ZEPHYR_MBEDTLS ?= "git://github.com/zephyrproject-rtos/mbedtls;protocol=https"
-SRC_URI_ZEPHYR_MCUBOOT ?= "git://github.com/zephyrproject-rtos/mcuboot;protocol=https"
-SRC_URI_ZEPHYR_MIPI_SYS_T ?= "git://github.com/zephyrproject-rtos/mipi-sys-t;protocol=https"
-SRC_URI_ZEPHYR_NANOPB ?= "git://github.com/zephyrproject-rtos/nanopb;protocol=https"
-SRC_URI_ZEPHYR_NET_TOOLS ?= "git://github.com/zephyrproject-rtos/net-tools;protocol=https"
-SRC_URI_ZEPHYR_NRF_HW_MODELS ?= "git://github.com/zephyrproject-rtos/nrf_hw_models;protocol=https"
-SRC_URI_ZEPHYR_OPEN_AMP ?= "git://github.com/zephyrproject-rtos/open-amp;protocol=https"
-SRC_URI_ZEPHYR_OPENTHREAD ?= "git://github.com/zephyrproject-rtos/openthread;protocol=https"
-SRC_URI_ZEPHYR_PICOLIBC ?= "git://github.com/zephyrproject-rtos/picolibc;protocol=https"
-SRC_URI_ZEPHYR_SEGGER ?= "git://github.com/zephyrproject-rtos/segger;protocol=https"
-SRC_URI_ZEPHYR_SOF ?= "git://github.com/zephyrproject-rtos/sof;protocol=https"
-SRC_URI_ZEPHYR_TFLITE_MICRO ?= "git://github.com/zephyrproject-rtos/tflite-micro;protocol=https"
-SRC_URI_ZEPHYR_TINYCRYPT ?= "git://github.com/zephyrproject-rtos/tinycrypt;protocol=https"
-SRC_URI_ZEPHYR_TRACERECORDERSOURCE ?= "git://github.com/zephyrproject-rtos/TraceRecorderSource;protocol=https"
-SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M ?= "git://github.com/zephyrproject-rtos/trusted-firmware-m;protocol=https"
-SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A ?= "git://github.com/zephyrproject-rtos/trusted-firmware-a;protocol=https"
-SRC_URI_ZEPHYR_TF_M_TESTS ?= "git://github.com/zephyrproject-rtos/tf-m-tests;protocol=https"
-SRC_URI_ZEPHYR_PSA_ARCH_TESTS ?= "git://github.com/zephyrproject-rtos/psa-arch-tests;protocol=https"
-SRC_URI_ZEPHYR_UOSCORE_UEDHOC ?= "git://github.com/zephyrproject-rtos/uoscore-uedhoc;protocol=https"
-SRC_URI_ZEPHYR_ZCBOR ?= "git://github.com/zephyrproject-rtos/zcbor;protocol=https"
-SRC_URI_ZEPHYR_ZSCILIB ?= "git://github.com/zephyrproject-rtos/zscilib;protocol=https"
-SRC_URI_ZEPHYR_THRIFT ?= "git://github.com/zephyrproject-rtos/thrift;protocol=https"
-
-SRC_URI_PATCHES ?= "\
-    file://0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila.patch;patchdir=zephyr \
-    file://0002-3.3-toolchain-gcc-Fix-separator-between-directives-on-sa.patch;patchdir=zephyr \
-    file://0001-gcc-target.cmake-fix-build-with-gcc-13.patch;patchdir=zephyr \
-"
-
-SRC_URI = "\
-    ${SRC_URI_ZEPHYR};branch=${ZEPHYR_BRANCH};name=default;destsuffix=git/zephyr \
-    ${SRC_URI_ZEPHYR_CANOPENNODE};name=canopennode;nobranch=1;destsuffix=git/modules/lib/canopennode \
-    ${SRC_URI_ZEPHYR_CHRE};name=chre;nobranch=1;destsuffix=git/modules/lib/chre \
-    ${SRC_URI_ZEPHYR_CMSIS};name=cmsis;nobranch=1;destsuffix=git/modules/hal/cmsis \
-    ${SRC_URI_ZEPHYR_EDTT};name=edtt;nobranch=1;destsuffix=git/tools/edtt \
-    ${SRC_URI_ZEPHYR_FATFS};name=fatfs;nobranch=1;destsuffix=git/modules/fs/fatfs \
-    ${SRC_URI_ZEPHYR_HAL_ALTERA};name=hal_altera;nobranch=1;destsuffix=git/modules/hal/altera \
-    ${SRC_URI_ZEPHYR_HAL_ATMEL};name=hal_atmel;nobranch=1;destsuffix=git/modules/hal/atmel \
-    ${SRC_URI_ZEPHYR_HAL_ESPRESSIF};name=hal_espressif;nobranch=1;destsuffix=git/modules/hal/espressif \
-    ${SRC_URI_ZEPHYR_HAL_ETHOS_U};name=hal_ethos_u;nobranch=1;destsuffix=git/modules/hal/ethos_u \
-    ${SRC_URI_ZEPHYR_HAL_GIGADEVICE};name=hal_gigadevice;nobranch=1;destsuffix=git/modules/hal/gigadevice \
-    ${SRC_URI_ZEPHYR_HAL_INFINEON};name=hal_infineon;nobranch=1;destsuffix=git/modules/hal/infineon \
-    ${SRC_URI_ZEPHYR_HAL_MICROCHIP};name=hal_microchip;nobranch=1;destsuffix=git/modules/hal/microchip \
-    ${SRC_URI_ZEPHYR_HAL_NORDIC};name=hal_nordic;nobranch=1;destsuffix=git/modules/hal/nordic \
-    ${SRC_URI_ZEPHYR_HAL_NUVOTON};name=hal_nuvoton;nobranch=1;destsuffix=git/modules/hal/nuvoton \
-    ${SRC_URI_ZEPHYR_HAL_NXP};name=hal_nxp;nobranch=1;destsuffix=git/modules/hal/nxp \
-    ${SRC_URI_ZEPHYR_HAL_OPENISA};name=hal_openisa;nobranch=1;destsuffix=git/modules/hal/openisa \
-    ${SRC_URI_ZEPHYR_HAL_QUICKLOGIC};name=hal_quicklogic;nobranch=1;destsuffix=git/modules/hal/quicklogic \
-    ${SRC_URI_ZEPHYR_HAL_RENESAS};name=hal_renesas;nobranch=1;destsuffix=git/modules/hal/renesas \
-    ${SRC_URI_ZEPHYR_HAL_RPI_PICO};name=hal_rpi_pico;nobranch=1;destsuffix=git/modules/hal/rpi_pico \
-    ${SRC_URI_ZEPHYR_HAL_SILABS};name=hal_silabs;nobranch=1;destsuffix=git/modules/hal/silabs \
-    ${SRC_URI_ZEPHYR_HAL_ST};name=hal_st;nobranch=1;destsuffix=git/modules/hal/st \
-    ${SRC_URI_ZEPHYR_HAL_STM32};name=hal_stm32;nobranch=1;destsuffix=git/modules/hal/stm32 \
-    ${SRC_URI_ZEPHYR_HAL_TELINK};name=hal_telink;nobranch=1;destsuffix=git/modules/hal/telink \
-    ${SRC_URI_ZEPHYR_HAL_TI};name=hal_ti;nobranch=1;destsuffix=git/modules/hal/ti \
-    ${SRC_URI_ZEPHYR_HAL_WURTHELEKTRONIK};name=hal_wurthelektronik;nobranch=1;destsuffix=git/modules/hal/wurthelektronik \
-    ${SRC_URI_ZEPHYR_HAL_XTENSA};name=hal_xtensa;nobranch=1;destsuffix=git/modules/hal/xtensa \
-    ${SRC_URI_ZEPHYR_LIBMETAL};name=libmetal;nobranch=1;destsuffix=git/modules/hal/libmetal \
-    ${SRC_URI_ZEPHYR_LIBLC3};name=liblc3;nobranch=1;destsuffix=git/modules/lib/liblc3 \
-    ${SRC_URI_ZEPHYR_LITTLEFS};name=littlefs;nobranch=1;destsuffix=git/modules/fs/littlefs \
-    ${SRC_URI_ZEPHYR_LORAMAC_NODE};name=loramac-node;nobranch=1;destsuffix=git/modules/lib/loramac-node \
-    ${SRC_URI_ZEPHYR_LVGL};name=lvgl;nobranch=1;destsuffix=git/modules/lib/gui/lvgl \
-    ${SRC_URI_ZEPHYR_LZ4};name=lz4;nobranch=1;destsuffix=git/modules/lib/lz4 \
-    ${SRC_URI_ZEPHYR_MBEDTLS};name=mbedtls;nobranch=1;destsuffix=git/modules/crypto/mbedtls \
-    ${SRC_URI_ZEPHYR_MCUBOOT};name=mcuboot;nobranch=1;destsuffix=git/bootloader/mcuboot \
-    ${SRC_URI_ZEPHYR_MIPI_SYS_T};name=mipi-sys-t;nobranch=1;destsuffix=git/modules/debug/mipi-sys-t \
-    ${SRC_URI_ZEPHYR_NANOPB};name=nanopb;nobranch=1;destsuffix=git/modules/lib/nanopb \
-    ${SRC_URI_ZEPHYR_NET_TOOLS};name=net-tools;nobranch=1;destsuffix=git/tools/net-tools \
-    ${SRC_URI_ZEPHYR_NRF_HW_MODELS};name=nrf_hw_models;nobranch=1;destsuffix=git/modules/bsim_hw_models/nrf_hw_models \
-    ${SRC_URI_ZEPHYR_OPEN_AMP};name=open-amp;nobranch=1;destsuffix=git/modules/lib/open-amp \
-    ${SRC_URI_ZEPHYR_OPENTHREAD};name=openthread;nobranch=1;destsuffix=git/modules/lib/openthread \
-    ${SRC_URI_ZEPHYR_PICOLIBC};name=picolibc;nobranch=1;destsuffix=git/modules/lib/picolibc \
-    ${SRC_URI_ZEPHYR_SEGGER};name=segger;nobranch=1;destsuffix=git/modules/debug/segger \
-    ${SRC_URI_ZEPHYR_SOF};name=sof;nobranch=1;destsuffix=git/modules/audio/sof \
-    ${SRC_URI_ZEPHYR_TFLITE_MICRO};name=tflite-micro;nobranch=1;destsuffix=git/modules/lib/tflite-micro \
-    ${SRC_URI_ZEPHYR_TINYCRYPT};name=tinycrypt;nobranch=1;destsuffix=git/modules/crypto/tinycrypt \
-    ${SRC_URI_ZEPHYR_TRACERECORDERSOURCE};name=TraceRecorderSource;nobranch=1;destsuffix=git/modules/debug/TraceRecorder \
-    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_M};name=trusted-firmware-m;nobranch=1;destsuffix=git/modules/tee/tf-m/trusted-firmware-m \
-    ${SRC_URI_ZEPHYR_TRUSTED_FIRMWARE_A};name=trusted-firmware-a;nobranch=1;destsuffix=git/modules/tee/tf-a/trusted-firmware-a \
-    ${SRC_URI_ZEPHYR_TF_M_TESTS};name=tf-m-tests;nobranch=1;destsuffix=git/modules/tee/tf-m/tf-m-tests \
-    ${SRC_URI_ZEPHYR_PSA_ARCH_TESTS};name=psa-arch-tests;nobranch=1;destsuffix=git/modules/tee/tf-m/psa-arch-tests \
-    ${SRC_URI_ZEPHYR_UOSCORE_UEDHOC};name=uoscore-uedhoc;nobranch=1;destsuffix=git/modules/lib/uoscore-uedhoc \
-    ${SRC_URI_ZEPHYR_ZCBOR};name=zcbor;nobranch=1;destsuffix=git/modules/lib/zcbor \
-    ${SRC_URI_ZEPHYR_ZSCILIB};name=zscilib;nobranch=1;destsuffix=git/modules/lib/zscilib \
-    ${SRC_URI_ZEPHYR_THRIFT};name=thrift;nobranch=1;destsuffix=git/modules/lib/thrift \
-    ${SRC_URI_PATCHES} \
-"
-
-ZEPHYR_MODULES = "\
-${S}/modules/lib/canopennode\;\
-${S}/modules/lib/chre\;\
-${S}/modules/hal/cmsis\;\
-${S}/tools/edtt\;\
-${S}/modules/fs/fatfs\;\
-${S}/modules/hal/altera\;\
-${S}/modules/hal/atmel\;\
-${S}/modules/hal/espressif\;\
-${S}/modules/hal/ethos_u\;\
-${S}/modules/hal/gigadevice\;\
-${S}/modules/hal/infineon\;\
-${S}/modules/hal/microchip\;\
-${S}/modules/hal/nordic\;\
-${S}/modules/hal/nuvoton\;\
-${S}/modules/hal/nxp\;\
-${S}/modules/hal/openisa\;\
-${S}/modules/hal/quicklogic\;\
-${S}/modules/hal/renesas\;\
-${S}/modules/hal/rpi_pico\;\
-${S}/modules/hal/silabs\;\
-${S}/modules/hal/st\;\
-${S}/modules/hal/stm32\;\
-${S}/modules/hal/telink\;\
-${S}/modules/hal/ti\;\
-${S}/modules/hal/wurthelektronik\;\
-${S}/modules/hal/xtensa\;\
-${S}/modules/hal/libmetal\;\
-${S}/modules/lib/liblc3\;\
-${S}/modules/fs/littlefs\;\
-${S}/modules/lib/loramac-node\;\
-${S}/modules/lib/gui/lvgl\;\
-${S}/modules/lib/lz4\;\
-${S}/modules/crypto/mbedtls\;\
-${S}/bootloader/mcuboot\;\
-${S}/modules/debug/mipi-sys-t\;\
-${S}/modules/lib/nanopb\;\
-${S}/tools/net-tools\;\
-${S}/modules/bsim_hw_models/nrf_hw_models\;\
-${S}/modules/lib/open-amp\;\
-${S}/modules/lib/openthread\;\
-${S}/modules/lib/picolibc\;\
-${S}/modules/debug/segger\;\
-${S}/modules/audio/sof\;\
-${S}/modules/lib/tflite-micro\;\
-${S}/modules/crypto/tinycrypt\;\
-${S}/modules/debug/TraceRecorder\;\
-${S}/modules/tee/tf-m/trusted-firmware-m\;\
-${S}/modules/tee/tf-a/trusted-firmware-a\;\
-${S}/modules/tee/tf-m/tf-m-tests\;\
-${S}/modules/tee/tf-m/psa-arch-tests\;\
-${S}/modules/lib/uoscore-uedhoc\;\
-${S}/modules/lib/zcbor\;\
-${S}/modules/lib/zscilib\;\
-${S}/modules/lib/thrift\;\
-"
-
-ZEPHYR_BRANCH = "v3.3-branch"
-PV = "3.3.0+git${SRCPV}"
-- 
2.34.1


