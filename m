Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B1FC61DA4
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 23:07:42 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.2300.1677107255768961474
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 15:07:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F7B82F4;
	Wed, 22 Feb 2023 15:08:18 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.76.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B80C63F587;
	Wed, 22 Feb 2023 15:07:34 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/2] zephyr-core/zephyr-kernel: Remove the downstream "yocto" toolchain
Date: Wed, 22 Feb 2023 23:07:11 +0000
Message-Id: <20230222230711.689631-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222230711.689631-1-peter.hoyes@arm.com>
References: <20230222230711.689631-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 23:07:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59287

From: Peter Hoyes <Peter.Hoyes@arm.com>

The "yocto" toolchain requires a downstream patch to be carried and
maintained. The upstream "cross-compile" toolchain is equivalent so this
is no longer needed.

Remove the toolchain-specific inc file and the downstream patch.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../0001-3.3-cmake-add-yocto-toolchain.patch  | 63 -------------------
 .../zephyr-kernel/zephyr-kernel-src-3.3.0.inc |  1 -
 .../zephyr-kernel/zephyr-toolchain-yocto.inc  | 16 -----
 .../scripts/zephyr-kernel-src.inc.jinja       |  1 -
 4 files changed, 81 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0=
001-3.3-cmake-add-yocto-toolchain.patch
 delete mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
toolchain-yocto.inc

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3=
-cmake-add-yocto-toolchain.patch b/meta-zephyr-core/recipes-kernel/zephyr=
-kernel/files/0001-3.3-cmake-add-yocto-toolchain.patch
deleted file mode 100644
index a16eabf..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.3-cmake-=
add-yocto-toolchain.patch
+++ /dev/null
@@ -1,63 +0,0 @@
-From 39f1dd116d00b6c2135c4ccd216341dcd2f2917e Mon Sep 17 00:00:00 2001
-From: Naveen Saini <naveen.kumar.saini@intel.com>
-Date: Tue, 26 Jul 2022 14:12:18 +0200
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
-diff --git a/cmake/compiler/gcc/target.cmake b/cmake/compiler/gcc/target=
.cmake
-index 014447e67e..b510f47d59 100644
---- a/cmake/compiler/gcc/target.cmake
-+++ b/cmake/compiler/gcc/target.cmake
-@@ -94,13 +94,6 @@ execute_process(
-   OUTPUT_STRIP_TRAILING_WHITESPACE
-   )
-=20
--assert_exists(LIBGCC_FILE_NAME)
--
--get_filename_component(LIBGCC_DIR ${LIBGCC_FILE_NAME} DIRECTORY)
--
--assert_exists(LIBGCC_DIR)
--
--LIST(APPEND LIB_INCLUDE_DIR "-L\"${LIBGCC_DIR}\"")
- LIST(APPEND TOOLCHAIN_LIBS gcc)
-=20
- # For CMake to be able to test if a compiler flag is supported by the
-diff --git a/cmake/toolchain/yocto/generic.cmake b/cmake/toolchain/yocto=
/generic.cmake
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
-diff --git a/cmake/toolchain/yocto/target.cmake b/cmake/toolchain/yocto/=
target.cmake
-new file mode 100644
-index 0000000000..9881313609
---- /dev/null
-+++ b/cmake/toolchain/yocto/target.cmake
-@@ -0,0 +1 @@
-+# SPDX-License-Identifier: Apache-2.0
---=20
-2.34.1
-
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src-3.3.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kern=
el-src-3.3.0.inc
index c7614a7..245ba81 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.3=
.0.inc
@@ -115,7 +115,6 @@ SRC_URI_ZEPHYR_ZSCILIB ?=3D "git://github.com/zephyrp=
roject-rtos/zscilib;protocol=3D
 SRC_URI_ZEPHYR_THRIFT ?=3D "git://github.com/zephyrproject-rtos/thrift;p=
rotocol=3Dhttps"
=20
 SRC_URI_PATCHES ?=3D "\
-    file://0001-3.3-cmake-add-yocto-toolchain.patch;patchdir=3Dzephyr \
     file://0001-3.3-x86-fix-efi-binary-generation-issue-in-cross-compila=
.patch;patchdir=3Dzephyr \
 "
=20
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolcha=
in-yocto.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolc=
hain-yocto.inc
deleted file mode 100644
index b167695..0000000
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-toolchain-yoct=
o.inc
+++ /dev/null
@@ -1,16 +0,0 @@
-# Additional definitions to use the Yocto toolchain
-
-ZEPHYR_GCC_VARIANT=3D"yocto"
-ZEPHYR_SYSROOT=3D"${STAGING_DIR_TARGET}"
-CROSS_COMPILE =3D "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
-
-EXTRA_OECMAKE:append =3D " \
-    -DZEPHYR_GCC_VARIANT=3D${ZEPHYR_GCC_VARIANT} \
-    -DCROSS_COMPILE=3D${CROSS_COMPILE} \
-    -DZEPHYR_SYSROOT=3D${ZEPHYR_SYSROOT} \
-    -DEXTRA_CPPFLAGS=3D${CPPFLAGS} \
-    "
-
-OE_TERMINAL_EXPORTS +=3D "CROSS_COMPILE"
-OE_TERMINAL_EXPORTS +=3D "ZEPHYR_SYSROOT"
-OE_TERMINAL_EXPORTS +=3D "ZEPHYR_GCC_VARIANT"
diff --git a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja b/meta-=
zephyr-core/scripts/zephyr-kernel-src.inc.jinja
index 1723b88..a2d2232 100644
--- a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
+++ b/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
@@ -13,7 +13,6 @@ SRC_URI_ZEPHYR_{{ project.name | bitbake_var }} ?=3D "{=
{ project.url | git_url_to_
 {%- endfor %}
=20
 SRC_URI_PATCHES ?=3D "\
-    file://0001-{{ short_version }}-cmake-add-yocto-toolchain.patch;patc=
hdir=3Dzephyr \
     file://0001-{{ short_version }}-x86-fix-efi-binary-generation-issue-=
in-cross-compila.patch;patchdir=3Dzephyr \
 "
=20
--=20
2.34.1


