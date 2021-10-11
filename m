Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28FF8C433F5
	for <webhook@archiver.kernel.org>; Mon, 11 Oct 2021 09:06:59 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web09.9304.1633943217385708152
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 02:06:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10133"; a="287711337"
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200";
   d="scan'208";a="287711337"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 02:06:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200";
   d="scan'208";a="490392213"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 02:06:56 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-kernel/2.5.0: drop recipe
Date: Mon, 11 Oct 2021 17:21:51 +0800
Message-Id: <20211011092151.28048-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211011092151.28048-1-naveen.kumar.saini@intel.com>
References: <20211011092151.28048-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Oct 2021 09:06:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55017

As v2.7.0 is being added, drop this version support

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...phyr-2.5.0-cmake-add-yocto-toolchain.patch | 63 -------------------
 .../zephyr-kernel/zephyr-kernel-src-2.5.0.inc | 17 -----
 2 files changed, 80 deletions(-)
 delete mode 100644 recipes-kernel/zephyr-kernel/files/0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch
 delete mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc

diff --git a/recipes-kernel/zephyr-kernel/files/0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch b/recipes-kernel/zephyr-kernel/files/0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch
deleted file mode 100644
index caab16f..0000000
--- a/recipes-kernel/zephyr-kernel/files/0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch
+++ /dev/null
@@ -1,63 +0,0 @@
-From 511745625637da0effca13c5489a392e15d32271 Mon Sep 17 00:00:00 2001
-From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Tue, 31 Mar 2020 13:22:17 +0800
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
-index 401cc28db8..5a026f4559 100644
---- a/cmake/compiler/gcc/target.cmake
-+++ b/cmake/compiler/gcc/target.cmake
-@@ -66,13 +66,6 @@ if(NOT no_libgcc)
-     OUTPUT_STRIP_TRAILING_WHITESPACE
-     )
- 
--  assert_exists(LIBGCC_FILE_NAME)
--
--  get_filename_component(LIBGCC_DIR ${LIBGCC_FILE_NAME} DIRECTORY)
--
--  assert_exists(LIBGCC_DIR)
--
--  LIST(APPEND LIB_INCLUDE_DIR "-L\"${LIBGCC_DIR}\"")
-   LIST(APPEND TOOLCHAIN_LIBS gcc)
- endif()
- 
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
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
deleted file mode 100644
index be75362..0000000
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.5.0.inc
+++ /dev/null
@@ -1,17 +0,0 @@
-SRCREV_FORMAT = "default_cmsis"
-SRCREV_default = "fe7c2efca800a0cf1bccf23aefe08b3c4beb88bf"
-SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
-SRCREV_nordic = "f3434da6446380fcdd426dbe2866af21d0d549b6"
-SRCREV_stm32 = "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635"
-SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
-SRCREV_openthread = "385e19da1ae15f27872c2543b97276a42f102ead"
-SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
-SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-SRCREV_mbedtls = "24d84ecff195fb15c889d9046e44e4804d626c67"
-
-ZEPHYR_BRANCH = "main"
-PV = "2.5.0+git${SRCPV}"
-
-SRC_URI:append = " file://0001-zephyr-2.5.0-cmake-add-yocto-toolchain.patch \
-                    file://0001-x86-fix-efi-binary-generation-issue-in-cross-compila.patch \
-                    "
-- 
2.17.1


