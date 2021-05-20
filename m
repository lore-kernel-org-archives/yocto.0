Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.8005.1621516152993000414
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 06:09:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 7kud4ZuVcycx6nF9CNSaptFtb85Bof8o32MvaKyfqTfbkMFXw3FQo1f4IkExRFvSOROXLRTH6f
 sCjfH/OD8Qew==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="201263892"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="201263892"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:11 -0700
IronPort-SDR: dHz0RwgTFUbu5IsZSppqelGV3/9ATMTqq7TBvYOm1u/VQvY1czo+AKcu4M9SFSgeyqO1JzxFVL
 YlIS5J51S87Q==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="467908661"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:10 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 1/4] zephyr-kernel-src: fix efi generation failure for x86 boards
Date: Thu, 20 May 2021 21:20:27 +0800
Message-Id: <20210520132030.22991-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210520132030.22991-1-naveen.kumar.saini@intel.com>
References: <20210520132030.22991-1-naveen.kumar.saini@intel.com>

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
 .../zephyr-kernel/zephyr-kernel-src-2.5.0.inc |  3 +
 .../zephyr-kernel/zephyr-kernel-src.inc       |  8 +-
 3 files changed, 87 insertions(+), 4 deletions(-)
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
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
index 6350d86..5d66f0f 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
@@ -8,3 +8,6 @@ SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
 
 PV = "2.5.0+git${SRCPV}"
+
+SRC_URI_append = " file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
+            "
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 5ee40d4..b3b9565 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -1,10 +1,6 @@
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
-# Default to a stable version
-PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
-include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
-
 inherit cmake
 
 # This file might be included from other places (like other layers) and not
@@ -23,3 +19,7 @@ SRC_URI = "\
     file://0001-cmake-add-yocto-toolchain.patch \
     "
 S = "${WORKDIR}/git"
+
+# Default to a stable version
+PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
+include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
-- 
2.17.1

