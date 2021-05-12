Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.1500.1620786456585841456
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 19:27:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: +WkXWj5ONXea5AH/xJl9wK/dWMyXa8Gf5vtMD5c70bsjK7rW2ozo0ec7f3EQ2SeK1L60eKVudl
 fTk9SjAy5ULA==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199658609"
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; 
   d="scan'208";a="199658609"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 19:27:35 -0700
IronPort-SDR: 29PRS9tsa5Fm01SexQCpJDhAmf5bRZx21pjlnFOLk3Oej+sj3J1UyzCH3EtNphooypxFj0JpC5
 gLD82MhbXlIw==
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; 
   d="scan'208";a="625044090"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 19:27:34 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/3] zephyr-kernel-src: fix efi generation failure for x86 boards
Date: Wed, 12 May 2021 10:40:02 +0800
Message-Id: <20210512024004.29966-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210512024004.29966-1-naveen.kumar.saini@intel.com>
References: <20210512024004.29966-1-naveen.kumar.saini@intel.com>

With zephyr v2.5.0, EFI binary support has been added for x86 board (64-bit mode).

To achieve this, an python tool[1] has been added to convert zephyr ELF file
into an EFI appliable. But currently this does not work with Yocto
cross-compilation env.
This patch fix this issue and allow to build zephyr.efi

Ref:
[1]https://github.com/zephyrproject-rtos/zephyr/commit/928d31125f0b4eb28fe1cf3f3ad02b0ae071d7fd

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ry-generation-issue-in-cross-compila.patch | 80 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src.inc       |  1 +
 2 files changed, 81 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/files/0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch

diff --git a/recipes-kernel/zephyr-kernel/files/0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch b/recipes-kernel/zephyr-kernel/files/0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
new file mode 100644
index 0000000..fd6fc6b
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/files/0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch
@@ -0,0 +1,80 @@
+From cfde3b1018c3151b6cc1fbe3e9e163d0aaf16954 Mon Sep 17 00:00:00 2001
+From: Naveen Saini <naveen.kumar.saini@intel.com>
+Date: Tue, 11 May 2021 13:46:39 +0800
+Subject: [PATCH] x86: fix efi binary generation issue in cross compilation env
+
+Set root directory for headers.
+
+Upstream-Status: Inappropriate [Cross-compilation specific]
+
+Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
+---
+ arch/x86/zefi/zefi.py                | 6 +++++-
+ boards/x86/ehl_crb/CMakeLists.txt    | 1 +
+ boards/x86/qemu_x86/CMakeLists.txt   | 1 +
+ boards/x86/up_squared/CMakeLists.txt | 1 +
+ 4 files changed, 8 insertions(+), 1 deletion(-)
+
+diff --git a/arch/x86/zefi/zefi.py b/arch/x86/zefi/zefi.py
+index d3514391a8..b9eccbfa10 100755
+--- a/arch/x86/zefi/zefi.py
++++ b/arch/x86/zefi/zefi.py
+@@ -106,7 +106,10 @@ def build_elf(elf_file):
+     #  + We need pic to enforce that the linker adds no relocations
+     #  + UEFI can take interrupts on our stack, so no red zone
+     #  + UEFI API assumes 16-bit wchar_t
+-    cmd = [args.compiler, "-shared", "-Wall", "-Werror", "-I.",
++
++    #  Pass --sysroot path for cross compilation
++    sysrootarg = "--sysroot=" + args.sysroot
++    cmd = [args.compiler, "-shared", "-Wall", "-Werror", "-I.", sysrootarg,
+         "-fno-stack-protector", "-fpic", "-mno-red-zone", "-fshort-wchar",
+         "-Wl,-nostdlib", "-T", ldscript, "-o", "zefi.elf", cfile]
+     verbose(" ".join(cmd))
+@@ -145,6 +148,7 @@ def parse_args():
+     parser.add_argument("-o", "--objcopy", required=True, help="objcopy to be used")
+     parser.add_argument("-f", "--elf-file", required=True, help="Input file")
+     parser.add_argument("-v", "--verbose", action="store_true", help="Verbose output")
++    parser.add_argument("-s", "--sysroot", required=True, help="Cross compilation --sysroot=path")
+ 
+     return parser.parse_args()
+ 
+diff --git a/boards/x86/ehl_crb/CMakeLists.txt b/boards/x86/ehl_crb/CMakeLists.txt
+index 0d572eff30..6a228107dc 100644
+--- a/boards/x86/ehl_crb/CMakeLists.txt
++++ b/boards/x86/ehl_crb/CMakeLists.txt
+@@ -5,6 +5,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
+   -c ${CMAKE_C_COMPILER}
+   -o ${CMAKE_OBJCOPY}
+   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
++  -s ${SYSROOT_DIR}
+   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
+   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
+ )
+diff --git a/boards/x86/qemu_x86/CMakeLists.txt b/boards/x86/qemu_x86/CMakeLists.txt
+index 1131a5c7ce..489f17192b 100644
+--- a/boards/x86/qemu_x86/CMakeLists.txt
++++ b/boards/x86/qemu_x86/CMakeLists.txt
+@@ -4,6 +4,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
+   -c ${CMAKE_C_COMPILER}
+   -o ${CMAKE_OBJCOPY}
+   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
++  -s ${SYSROOT_DIR}
+   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
+   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
+ )
+diff --git a/boards/x86/up_squared/CMakeLists.txt b/boards/x86/up_squared/CMakeLists.txt
+index 0eaa9753fc..2e8ce7cfbc 100644
+--- a/boards/x86/up_squared/CMakeLists.txt
++++ b/boards/x86/up_squared/CMakeLists.txt
+@@ -5,6 +5,7 @@ set_property(GLOBAL APPEND PROPERTY extra_post_build_commands
+   -c ${CMAKE_C_COMPILER}
+   -o ${CMAKE_OBJCOPY}
+   -f ${PROJECT_BINARY_DIR}/${CONFIG_KERNEL_BIN_NAME}.elf
++  -s ${SYSROOT_DIR}
+   $<$<BOOL:${CMAKE_VERBOSE_MAKEFILE}>:--verbose>
+   WORKING_DIRECTORY ${PROJECT_BINARY_DIR}
+ )
+-- 
+2.17.1
+
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 8c987bb..8d5f176 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -21,5 +21,6 @@ SRC_URI = "\
     git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
     git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
     file://0001-cmake-add-yocto-toolchain.patch \
+    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
     "
 S = "${WORKDIR}/git"
-- 
2.17.1

