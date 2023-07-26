Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A184C001DC
	for <webhook@archiver.kernel.org>; Wed, 26 Jul 2023 11:10:29 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.8479.1690369827768576919
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jul 2023 04:10:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=Hyp6Xg8Z;
 spf=pass (domain: snapchat.com, ip: 209.85.218.50, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-99bc9e3cbf1so78536366b.0
        for <yocto@lists.yoctoproject.org>; Wed, 26 Jul 2023 04:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1690369826; x=1690974626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mQD89ZO6H/uPU8+2EE3iL0bSl6bHQy1wGZQTgZ5yqw8=;
        b=Hyp6Xg8Z5dRrFJZ4/1uNsZ+X+Eq14Jiwd3A61VQarqdwOfVHN9rUyZZ5bOmDeXFkaN
         4ETGKb2cPlVm0XX0gT1c1c6VoFlNEB5rFo9EIF/7jQVa+APamLSGUcbks1upOHmQM78q
         c0c1XuCOyzaJblNYUO35pFIcNxnz4Qn129IHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690369826; x=1690974626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mQD89ZO6H/uPU8+2EE3iL0bSl6bHQy1wGZQTgZ5yqw8=;
        b=R4yu/sxvBx+9mD5lGcutFIDhoxeSFn9Qx6ilFeA7v9v5uWzZeiC0f+N49B11rPlh2M
         +OvEVFyDhETqqA6ScHpN4nPMysP9/OIoVzWWFWnbQJIBaeWnblmBFJ0G5cwa9weuCLso
         XuZp9SEp4nkIXlvxq4EIfMEx1Tpbu4W2SMGmBKNB5kQvdcZupA6/0utEo5+2p7XzaKMK
         d5Z3B75IUHrcVgjvaEUumrtY5snPBRLkcFOE4cNFSR4OqQYI0y+21hVvyp81oL4lQ4b8
         X0YXZWy3Nr9s/oTuOmFFO+M1I8gEFfozBtPFeUcX+SpaxtEffKPXz9PFhJkiMuYRDwW1
         l6uA==
X-Gm-Message-State: ABy/qLZyz8GlCGIobgZdAkYLECSnW+dvBt60W5UjXURZx0aNEuaes/OB
	CJN6MY2iHstBLKy1DbcEyDDcNu/+N51XnOlz/A10nA==
X-Google-Smtp-Source: APBJJlFsOk+ErXr0lU5mxTRMRLV9fhhMGwKAu2zw02yPDPEXeOF4ouNCZjsUrPprRJHyyctCYamRIQ==
X-Received: by 2002:a17:907:724c:b0:98d:abd4:4000 with SMTP id ds12-20020a170907724c00b0098dabd44000mr4560428ejc.35.1690369825456;
        Wed, 26 Jul 2023 04:10:25 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([85.237.126.22])
        by smtp.gmail.com with ESMTPSA id jp7-20020a170906f74700b009937dbabbd5sm9423343ejb.220.2023.07.26.04.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 04:10:25 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Dominik Schnitzer <dominik@snap.com>,
	Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH] meta-darwin: update to Darwin 21.3 and SDK 12.3
Date: Wed, 26 Jul 2023 13:10:08 +0200
Message-Id: <20230726111008.1462919-1-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jul 2023 11:10:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60655

From: Dominik Schnitzer <dominik@snap.com>

Signed-off-by: Dominik Schnitzer <dominik@snap.com>
Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 README                                        | 38 ++++-----
 classes/package.bbclass                       |  2 +-
 classes/siteinfo.bbclass                      |  4 +-
 conf/machine-sdk/x86_64-darwin.conf           | 10 +--
 .../nativesdk-packagegroup-sdk-host.bbappend  |  2 +-
 recipes-core/zlib/zlib_1.2.%.bbappend         |  2 +-
 ...1142-Do-not-use-nm-B-for-Darwin-s-nm.patch |  2 +-
 .../cctools-port-crosssdk_973.0.1.bb          |  9 +--
 .../clang/0037-Fixes_for_Darwin_SDKs.patch    |  2 +-
 recipes-devtools/clang/clang_%.bbappend       | 42 +++++-----
 .../erofs-utils/erofs-utils_%.bbappend        |  2 +-
 recipes-devtools/flex/flex_%.bbappend         |  2 +-
 ...e-null-terminated-to-avoid-collision.patch | 81 +++++++++++++++++++
 ...0-change-macosx-version-min-to-12.3.patch} | 10 +--
 recipes-devtools/gcc/gcc-crosssdk_%.bbappend  | 22 ++---
 recipes-devtools/gcc/gcc-runtime_%.bbappend   | 18 ++---
 recipes-devtools/gcc/gcc-source_%.bbappend    |  3 +-
 recipes-devtools/gcc/libgcc_%.bbappend        |  8 +-
 .../libtapi/libtapi-native_git.bb             |  4 +-
 recipes-devtools/ninja/ninja_%.bbappend       |  2 +-
 .../opkg-utils/opkg-utils_%.bbappend          |  2 +-
 ...10.15.bb => nativesdk-osx-runtime_12.3.bb} |  0
 recipes-extended/zstd/zstd_%.bbappend         |  2 +-
 recipes-support/libmpc/libmpc_%.bbappend      |  2 +-
 recipes-support/lz4/lz4_%.bbappend            |  2 +-
 recipes-support/mpfr/mpfr_%.bbappend          |  2 +-
 26 files changed, 172 insertions(+), 103 deletions(-)
 create mode 100644 recipes-devtools/gcc/files/0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch
 rename recipes-devtools/gcc/files/{0100-change-macosx-version-min-to-10.15.patch => 0100-change-macosx-version-min-to-12.3.patch} (81%)
 rename recipes-devtools/osx-runtime/{nativesdk-osx-runtime_10.15.bb => nativesdk-osx-runtime_12.3.bb} (100%)

diff --git a/README b/README
index 59ae032..72aa77a 100644
--- a/README
+++ b/README
@@ -3,39 +3,29 @@ meta-darwin
 
 OpenEmbedded meta layer for darwin based SDKs
 
-Note: For now, only macOS SDK version 10.15 is supported.
+Note: Only macOS SDK version 12.3 (Darwin 21) is supported.
 
-You also need a OS-X sysroot tarball/zip file generated (copied) from a target macOS
+Ensure you have read and understood the Xcode license terms:
+https://www.apple.com/legal/sla/docs/xcode.pdf
+
+You also need a macOS sysroot tarball/zip file generated (copied) from a target macOS
 system. This is placed in the osx-runtime files directory and is used to compile the SDK
 against it. It needs to contain the system libraries (/usr/lib) and include files 
 (/usr/include). This tarball is not part of this meta-darwin layer and must be
 created by the user. To create it, the user is required to have a legitimate Mac computer
-with macOS 10.15 or later and with Xcode 5.1.0 or later installed.
-
-To create the SDK tarball, perform the following steps using your Mac computer:
-
-1. Install Xcode 5.1.0 or later using App Store.
-
-2. Install the command-line development tools
-    (Preferences -> Downloads -> Command-line tools)
-
-3. Use Terminal to create the file OSX-sdk.zip from the macOS SDK (this sample assumes
-   macOS 10.15):
+with macOS 12.3 or later and with Xcode installed.
 
-    $ mkdir ~/Desktop/OSX-sdk
-    $ cd ~/Desktop/OSX-sdk
-    $ ditto `xcrun --sdk macosx10.15 --show-sdk-path` .
-    $ cd ..
-    $ zip -yr OSX-sdk OSX-sdk
+Information on packaging the SDK is available at:
+https://github.com/tpoechtrager/osxcross#packaging-the-sdk
 
-4. Copy the created OSX-sdk.zip file to your Yocto development machine, placing it into
-   meta-darwin layer:
+Copy the created OSX-sdk.zip file to your Yocto development machine, placing it into
+meta-darwin layer:
 
-    <...>/meta-darwin/recipes-devtools/osx-runtime/files
+ <...>/meta-darwin/recipes-devtools/osx-runtime/files
 
-   You can alternatively add a nativesdk-osx-runtime_%.bbappend file to your
-   layer and override SRC_URI and do_configure() to extract the SDK from
-   a different location.
+You can alternatively add a nativesdk-osx-runtime_%.bbappend file to your
+layer and override SRC_URI and do_configure() to extract the SDK from
+a different location.
 
 
 This layer depends on:
diff --git a/classes/package.bbclass b/classes/package.bbclass
index bf6bfeb..8f5825e 100644
--- a/classes/package.bbclass
+++ b/classes/package.bbclass
@@ -2015,7 +2015,7 @@ python package_do_shlibs() {
                 soname = None
                 if cpath.islink(file):
                     continue
-                if hostos == "darwin" or hostos == "darwin19":
+                if hostos == "darwin" or hostos == "darwin21":
                     darwin_so(file, needed, sonames, renames, pkgver)
                 elif hostos.startswith("mingw"):
                     mingw_dll(file, needed, sonames, renames, pkgver)
diff --git a/classes/siteinfo.bbclass b/classes/siteinfo.bbclass
index 992ed61..34ca9bb 100644
--- a/classes/siteinfo.bbclass
+++ b/classes/siteinfo.bbclass
@@ -64,7 +64,7 @@ def siteinfo_data_for_machine(arch, os, d):
     }
     osinfo = {
         "darwin": "common-darwin",
-        "darwin19": "common-darwin",
+        "darwin21": "common-darwin",
         "linux": "common-linux common-glibc",
         "linux-gnu": "common-linux common-glibc",
         "linux-gnu_ilp32": "common-linux common-glibc",
@@ -119,7 +119,7 @@ def siteinfo_data_for_machine(arch, os, d):
         "riscv64-linux-musl": "riscv64-linux",
         "x86_64-cygwin": "bit-64",
         "x86_64-darwin": "bit-64",
-        "x86_64-darwin19": "bit-64",
+        "x86_64-darwin21": "bit-64",
         "x86_64-linux": "bit-64",
         "x86_64-linux-musl": "x86_64-linux bit-64",
         "x86_64-linux-muslx32": "bit-32 ix86-common x32-linux",
diff --git a/conf/machine-sdk/x86_64-darwin.conf b/conf/machine-sdk/x86_64-darwin.conf
index 57712d4..c4a111d 100644
--- a/conf/machine-sdk/x86_64-darwin.conf
+++ b/conf/machine-sdk/x86_64-darwin.conf
@@ -1,8 +1,8 @@
 SDK_ARCH = "x86_64"
-SDK_OS = "darwin19"
+SDK_OS = "darwin21"
 
-SOLIBS:darwin19 = ".dylib"
-SOLIBSDEV:darwin19 = ".dylibbroken"
+SOLIBS:darwin21 = ".dylib"
+SOLIBSDEV:darwin21 = ".dylibbroken"
 
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc = "nativesdk-osx-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial = "nativesdk-osx-runtime"
@@ -18,13 +18,13 @@ SDK_DEPENDS:remove = "nativesdk-glibc-locale nativesdk-qemuwrapper-cross"
 SDKPKGSUFFIX = "nativesdk-darwin"
 
 OSX_TOOLCHAIN_OPTIONS = " \
-    -mmacosx-version-min=10.15 \
+    -mmacosx-version-min=12.3 \
     -L${STAGING_DIR_TARGET}${SDKPATHNATIVE}/usr/lib \
     -L${STAGING_DIR_TARGET}${SDKPATHNATIVE}/runtime/usr/lib \
     -L${STAGING_DIR_TARGET}${SDKPATHNATIVE}/runtime/usr/lib/system \
 "
 
-TOOLCHAIN_OPTIONS:append:darwin19 = " \
+TOOLCHAIN_OPTIONS:append:darwin21 = " \
     ${OSX_TOOLCHAIN_OPTIONS}"
 TOOLCHAIN_OPTIONS:append:class-cross-canadian = " \
     ${OSX_TOOLCHAIN_OPTIONS}"
diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
index 0ffdd03..170a8c1 100644
--- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
+++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
@@ -1,4 +1,4 @@
-RDEPENDS:${PN}:darwin19 = "\
+RDEPENDS:${PN}:darwin21 = "\
     nativesdk-flex \
     nativesdk-ninja \
     nativesdk-bison \
diff --git a/recipes-core/zlib/zlib_1.2.%.bbappend b/recipes-core/zlib/zlib_1.2.%.bbappend
index 69d1e8a..8738b98 100644
--- a/recipes-core/zlib/zlib_1.2.%.bbappend
+++ b/recipes-core/zlib/zlib_1.2.%.bbappend
@@ -3,6 +3,6 @@ FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 SRC_URI += "\
     file://0001-fix-wrong-libtool-path.patch \
 "
-do_configure:darwin19 () {
+do_configure:darwin21 () {
     uname=darwin ./configure --prefix=${prefix} --shared --libdir=${libdir}
 }
diff --git a/recipes-devtools/binutils/binutils/0001-OS-1142-Do-not-use-nm-B-for-Darwin-s-nm.patch b/recipes-devtools/binutils/binutils/0001-OS-1142-Do-not-use-nm-B-for-Darwin-s-nm.patch
index eaf5ba1..6d28872 100644
--- a/recipes-devtools/binutils/binutils/0001-OS-1142-Do-not-use-nm-B-for-Darwin-s-nm.patch
+++ b/recipes-devtools/binutils/binutils/0001-OS-1142-Do-not-use-nm-B-for-Darwin-s-nm.patch
@@ -3,7 +3,7 @@ From: Etienne Cordonnier <ecordonnier@snap.com>
 Date: Thu, 25 Aug 2022 16:08:58 +0200
 Subject: [PATCH] [OS-1142] Do not use nm -B for Darwin's nm
 
-The cross-compiled tool "x86_64-pokysdk-darwin19-nm" does not support
+The cross-compiled tool "x86_64-pokysdk-darwin21-nm" does not support
 the option -B, however the configure script wrongly detects that this
 option is supported.
 This causes compilation failures down the line, because configure then
diff --git a/recipes-devtools/cctools-port/cctools-port-crosssdk_973.0.1.bb b/recipes-devtools/cctools-port/cctools-port-crosssdk_973.0.1.bb
index cbe9b9d..4082150 100644
--- a/recipes-devtools/cctools-port/cctools-port-crosssdk_973.0.1.bb
+++ b/recipes-devtools/cctools-port/cctools-port-crosssdk_973.0.1.bb
@@ -3,13 +3,10 @@ SECTION = "devel"
 LICENSE = "ApplePSLicense-2.0"
 LIC_FILES_CHKSUM = "file://cctools/APPLE_LICENSE;md5=dacaafbaf91483700da837d31213a1e8"
 
-SRCREV = "6540086c5e12e9c1649fed524b527d8c1793ddc0"
-SRC_URI = "git://github.com/tpoechtrager/cctools-port.git;branch=973.0.1-ld64-609;protocol=https"
+SRCREV = "f28fb5e9c31efd3d0552afcce2d2c03cae25c1ca"
+SRC_URI = "git://github.com/tpoechtrager/cctools-port.git;branch=master;protocol=https"
 
-SRC_URI[md5sum] = "1f2507d489c7416f3bfc447bd7d3a07e"
-SRC_URI[sha256sum] = "1fa3dd2c4d7192e284481927fceaaa1b2b0e2efff8f219479b87c95dc840c5d3"
-
-PR = "r1"
+PR = "r2"
 
 inherit autotools crosssdk
 
diff --git a/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch b/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
index c44ec57..024894b 100644
--- a/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
+++ b/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
@@ -23,7 +23,7 @@ index f7da3f187814..0656f5cbad69 100644
 -                                                "i686-apple-darwin10",
 -                                                arch == llvm::Triple::x86_64 ? "x86_64" : "");
 +                                                "11.3.0",
-+                                                "x86_64#SDK_VENDOR#-darwin19",
++                                                "x86_64#SDK_VENDOR#-darwin21",
 +                                                "");
        IsBaseFound |= AddGnuCPlusPlusIncludePaths(DriverArgs, CC1Args, UsrIncludeCxx,
 -                                                "4.0.0", "i686-apple-darwin8",
diff --git a/recipes-devtools/clang/clang_%.bbappend b/recipes-devtools/clang/clang_%.bbappend
index f095a82..25a9bf7 100644
--- a/recipes-devtools/clang/clang_%.bbappend
+++ b/recipes-devtools/clang/clang_%.bbappend
@@ -1,36 +1,36 @@
-DEPENDS:remove:class-nativesdk:darwin19 = "nativesdk-python3"
-DEPENDS:remove:class-nativesdk:darwin19 = "libxml2"
-DEPENDS:remove:class-nativesdk:darwin19 = "libffi"
-DEPENDS:append:class-nativesdk:darwin19 = " xz"
-PACKAGECONFIG:remove:class-nativesdk:darwin19 = "libedit"
-PACKAGECONFIG:remove:class-nativesdk:darwin19 = "shared-libs"
+DEPENDS:remove:class-nativesdk:darwin21 = "nativesdk-python3"
+DEPENDS:remove:class-nativesdk:darwin21 = "libxml2"
+DEPENDS:remove:class-nativesdk:darwin21 = "libffi"
+DEPENDS:append:class-nativesdk:darwin21 = " xz"
+PACKAGECONFIG:remove:class-nativesdk:darwin21 = "libedit"
+PACKAGECONFIG:remove:class-nativesdk:darwin21 = "shared-libs"
 
 DEPENDS:remove:class-nativesdk = "clang-crosssdk-${SDK_ARCH}"
 DEPENDS:append:class-nativesdk = " clang-crosssdk-${SDK_SYS}"
 
-COMPILER_RT:class-nativesdk:toolchain-clang:runtime-llvm:darwin19 = ""
-LIBCPLUSPLUS:class-nativesdk:toolchain-clang:darwin19 = " -stdlib=libstdc++"
+COMPILER_RT:class-nativesdk:toolchain-clang:runtime-llvm:darwin21 = ""
+LIBCPLUSPLUS:class-nativesdk:toolchain-clang:darwin21 = " -stdlib=libstdc++"
 
-OSXSDK:class-nativesdk:darwin19 = "${STAGING_DIR_TARGET}${SDKPATHNATIVE}/runtime"
-do_compile:prepend:class-nativesdk:darwin19() {
+OSXSDK:class-nativesdk:darwin21 = "${STAGING_DIR_TARGET}${SDKPATHNATIVE}/runtime"
+do_compile:prepend:class-nativesdk:darwin21() {
     export YOCTO_SDKPATH="${OSXSDK}/usr/include"
 }
 
-LDFLAGS:toolchain-clang:class-nativesdk:darwin19 = " \
+LDFLAGS:toolchain-clang:class-nativesdk:darwin21 = " \
     ${BUILDSDK_LDFLAGS} \
     -lgcc_s \
 "
-LDFLAGS:remove:toolchain-clang:class-nativesdk:x86-64:darwin19 = " -Wl,-dynamic-linker,${base_libdir}/ld-linux-x86-64.so.2"
-LDFLAGS:remove:toolchain-clang:class-nativesdk:x86:darwin19 = " -Wl,-dynamic-linker,${base_libdir}/ld-linux.so.2"
-LDFLAGS:remove:toolchain-clang:class-nativesdk:aarch64:darwin19 = " -Wl,-dynamic-linker,${base_libdir}/ld-linux-aarch64.so.1"
+LDFLAGS:remove:toolchain-clang:class-nativesdk:x86-64:darwin21 = " -Wl,-dynamic-linker,${base_libdir}/ld-linux-x86-64.so.2"
+LDFLAGS:remove:toolchain-clang:class-nativesdk:x86:darwin21 = " -Wl,-dynamic-linker,${base_libdir}/ld-linux.so.2"
+LDFLAGS:remove:toolchain-clang:class-nativesdk:aarch64:darwin21 = " -Wl,-dynamic-linker,${base_libdir}/ld-linux-aarch64.so.1"
 
-CFLAGS:append:class-nativesdk:darwin19 = " \
+CFLAGS:append:class-nativesdk:darwin21 = " \
     -femulated-tls \
     -I${OSXSDK}/usr/include \
     -include TargetConditionals.h \
 "
 
-CXXFLAGS:append:class-nativesdk:darwin19 = " \
+CXXFLAGS:append:class-nativesdk:darwin21 = " \
     -femulated-tls \
     -Wno-elaborated-enum-base \
     -I${OSXSDK}/usr/include \
@@ -39,10 +39,10 @@ CXXFLAGS:append:class-nativesdk:darwin19 = " \
     -F${OSXSDK}/System/Library/Frameworks/CoreServices.framework/Frameworks \
 "
 
-EXTRA_OECMAKE:remove:class-nativesdk:darwin19 = "-DPYTHON_LIBRARY=${STAGING_LIBDIR}/lib${PYTHON_DIR}${PYTHON_ABI}.so"
-EXTRA_OECMAKE:remove:class-nativesdk:darwin19 = "-DPYTHON_INCLUDE_DIR=${STAGING_INCDIR}/${PYTHON_DIR}${PYTHON_ABI}"
-EXTRA_OECMAKE:remove:class-nativesdk:darwin19 = "-DPYTHON_EXECUTABLE='${PYTHON}'"
-EXTRA_OECMAKE:append:class-nativesdk:darwin19 = " \
+EXTRA_OECMAKE:remove:class-nativesdk:darwin21 = "-DPYTHON_LIBRARY=${STAGING_LIBDIR}/lib${PYTHON_DIR}${PYTHON_ABI}.so"
+EXTRA_OECMAKE:remove:class-nativesdk:darwin21 = "-DPYTHON_INCLUDE_DIR=${STAGING_INCDIR}/${PYTHON_DIR}${PYTHON_ABI}"
+EXTRA_OECMAKE:remove:class-nativesdk:darwin21 = "-DPYTHON_EXECUTABLE='${PYTHON}'"
+EXTRA_OECMAKE:append:class-nativesdk:darwin21 = " \
     -DCMAKE_FRAMEWORK_PATH='${OSXSDK}/System/Library/Frameworks'\
     -DLLDB_USE_SYSTEM_DEBUGSERVER=ON \
     -DLLDB_INCLUDE_TESTS=OFF \
@@ -69,4 +69,4 @@ FILES:${PN} += " \
    ${libdir}/LLVMgold.dylib \
 "
 
-INSANE_SKIP:${PN}:class-nativesdk:darwin19 += " file-rdeps"
+INSANE_SKIP:${PN}:class-nativesdk:darwin21 += " file-rdeps"
diff --git a/recipes-devtools/erofs-utils/erofs-utils_%.bbappend b/recipes-devtools/erofs-utils/erofs-utils_%.bbappend
index c94e17a..1d65a81 100644
--- a/recipes-devtools/erofs-utils/erofs-utils_%.bbappend
+++ b/recipes-devtools/erofs-utils/erofs-utils_%.bbappend
@@ -1,3 +1,3 @@
-CPPFLAGS:append:class-nativesdk:darwin19 = " \
+CPPFLAGS:append:class-nativesdk:darwin21 = " \
     -I${STAGING_INCDIR} \
 "
diff --git a/recipes-devtools/flex/flex_%.bbappend b/recipes-devtools/flex/flex_%.bbappend
index dbf0204..93fa850 100644
--- a/recipes-devtools/flex/flex_%.bbappend
+++ b/recipes-devtools/flex/flex_%.bbappend
@@ -1,5 +1,5 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
-SRC_URI:append:class-nativesdk:darwin19 = "\
+SRC_URI:append:class-nativesdk:darwin21 = "\
     file://0001-scanner-include-flexdevh-at-top-block-of-scanl.patch \
     "
diff --git a/recipes-devtools/gcc/files/0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch b/recipes-devtools/gcc/files/0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch
new file mode 100644
index 0000000..ff7b912
--- /dev/null
+++ b/recipes-devtools/gcc/files/0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch
@@ -0,0 +1,81 @@
+From d1201dbf55a11d391030914985ba6b443e59baa5 Mon Sep 17 00:00:00 2001
+From: Mark Mentovai <mark@mentovai.com>
+Date: Mon, 13 Jun 2022 16:40:19 +0100
+Subject: [PATCH] libstdc++: Rename __null_terminated to avoid collision with
+ Apple SDK
+
+The macOS 13 SDK (and equivalent-version iOS and other Apple OS SDKs)
+contain this definition in <sys/cdefs.h>:
+
+863  #define __null_terminated
+
+This collides with the use of __null_terminated in libstdc++'s
+experimental fs_path.h.
+
+As libstdc++'s use of this token is entirely internal to fs_path.h, the
+simplest workaround, renaming it, is most appropriate. Here, it's
+renamed to __nul_terminated, referencing the NUL ('\0') value that is
+used to terminate the strings in the context in which this tag structure
+is used.
+
+libstdc++-v3/ChangeLog:
+
+	* include/experimental/bits/fs_path.h (__detail::__null_terminated):
+	Rename to __nul_terminated to avoid colliding with a macro in
+	Apple's SDK.
+
+Signed-off-by: Mark Mentovai <mark@mentovai.com>
+(cherry picked from commit 254e88b3d7e8abcc236be3451609834371cf4d5d)
+---
+ libstdc++-v3/include/experimental/bits/fs_path.h | 12 ++++++------
+ 1 file changed, 6 insertions(+), 6 deletions(-)
+
+diff --git a/libstdc++-v3/include/experimental/bits/fs_path.h b/libstdc++-v3/include/experimental/bits/fs_path.h
+index b0825ba76e803..19d246100cb5a 100644
+--- a/libstdc++-v3/include/experimental/bits/fs_path.h
++++ b/libstdc++-v3/include/experimental/bits/fs_path.h
+@@ -140,10 +140,10 @@ namespace __detail
+     inline _Source
+     _S_range_begin(_Source __begin) { return __begin; }
+ 
+-  struct __null_terminated { };
++  struct __nul_terminated { };
+ 
+   template<typename _Source>
+-    inline __null_terminated
++    inline __nul_terminated
+     _S_range_end(_Source) { return {}; }
+ 
+   template<typename _CharT, typename _Traits, typename _Alloc>
+@@ -459,11 +459,11 @@ namespace __detail
+       struct _Cvt;
+ 
+     static string_type
+-    _S_convert(value_type* __src, __detail::__null_terminated)
++    _S_convert(value_type* __src, __detail::__nul_terminated)
+     { return string_type(__src); }
+ 
+     static string_type
+-    _S_convert(const value_type* __src, __detail::__null_terminated)
++    _S_convert(const value_type* __src, __detail::__nul_terminated)
+     { return string_type(__src); }
+ 
+     template<typename _Iter>
+@@ -477,7 +477,7 @@ namespace __detail
+ 
+     template<typename _InputIterator>
+       static string_type
+-      _S_convert(_InputIterator __src, __detail::__null_terminated)
++      _S_convert(_InputIterator __src, __detail::__nul_terminated)
+       {
+ 	auto __s = _S_string_from_iter(__src);
+ 	return _S_convert(__s.c_str(), __s.c_str() + __s.size());
+@@ -504,7 +504,7 @@ namespace __detail
+ 
+     template<typename _InputIterator>
+       static string_type
+-      _S_convert_loc(_InputIterator __src, __detail::__null_terminated,
++      _S_convert_loc(_InputIterator __src, __detail::__nul_terminated,
+ 		     const std::locale& __loc)
+       {
+ 	const std::string __s = _S_string_from_iter(__src);
diff --git a/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-10.15.patch b/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-12.3.patch
similarity index 81%
rename from recipes-devtools/gcc/files/0100-change-macosx-version-min-to-10.15.patch
rename to recipes-devtools/gcc/files/0100-change-macosx-version-min-to-12.3.patch
index 2cbe9be..5b28bf1 100644
--- a/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-10.15.patch
+++ b/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-12.3.patch
@@ -1,7 +1,7 @@
 From 07ee0f0eb8442174b2e5d39862bd99952c2cfb64 Mon Sep 17 00:00:00 2001
 From: Etienne Cordonnier <ecordonnier@snap.com>
 Date: Thu, 11 Aug 2022 15:39:44 +0200
-Subject: [PATCH] change macosx-version-min to 10.15
+Subject: [PATCH] change macosx-version-min to 12.3
 
 Upstream-Status: Inappropriate [OE specific]
 Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
@@ -17,19 +17,19 @@ index 299d26c2c96..c7117023277 100644
  # Set this as a minimum (unless overriden by arch t-files) since it's a
  # reasonable lowest common denominator that works for all our archs.
 -HOST_LIBGCC2_CFLAGS += -mmacosx-version-min=10.4
-+HOST_LIBGCC2_CFLAGS += -mmacosx-version-min=10.15
++HOST_LIBGCC2_CFLAGS += -mmacosx-version-min=12.3
  
  crt3.o: $(srcdir)/config/darwin-crt3.c
 -	$(crt_compile) -mmacosx-version-min=10.4 -c $<
-+	$(crt_compile) -mmacosx-version-min=10.15 -c $<
++	$(crt_compile) -mmacosx-version-min=12.3 -c $<
  
  crttms.o: $(srcdir)/config/darwin-crt-tm.c
 -	$(crt_compile) -mmacosx-version-min=10.4 -DSTART -c $<
-+	$(crt_compile) -mmacosx-version-min=10.15 -DSTART -c $<
++	$(crt_compile) -mmacosx-version-min=12.3 -DSTART -c $<
  
  crttme.o: $(srcdir)/config/darwin-crt-tm.c
 -	$(crt_compile) -mmacosx-version-min=10.4 -DEND -c $<
-+	$(crt_compile) -mmacosx-version-min=10.15 -DEND -c $<
++	$(crt_compile) -mmacosx-version-min=12.3 -DEND -c $<
  
  # Make emutls weak so that we can deal with -static-libgcc, override the
  # hidden visibility when this is present in libgcc_eh.
diff --git a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
index 39b9c1b..361e6bd 100644
--- a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
+++ b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
@@ -1,20 +1,20 @@
-SYSTEMHEADERS:darwin19 = "${SDKPATHNATIVE}/runtime/usr/include/"
+SYSTEMHEADERS:darwin21 = "${SDKPATHNATIVE}/runtime/usr/include/"
 
-LINKER_HASH_STYLE:darwin19 = ""
+LINKER_HASH_STYLE:darwin21 = ""
 
-EXTRA_OECONF:remove:darwin19 = "--enable-clocale=gnu"
-EXTRA_OECONF:remove:darwin19 = "--enable-clocale=generic"
+EXTRA_OECONF:remove:darwin21 = "--enable-clocale=gnu"
+EXTRA_OECONF:remove:darwin21 = "--enable-clocale=generic"
 
-EXTRA_OECONF:remove:darwin19 = "--enable-initfini-array"
-EXTRA_OECONF:append:darwin19 = " --disable-initfini-array"
+EXTRA_OECONF:remove:darwin21 = "--enable-initfini-array"
+EXTRA_OECONF:append:darwin21 = " --disable-initfini-array"
 
-LTO:darwin19 = "--disable-lto"
-EXTRA_OECONF:remove:darwin19 = "--enable-lto"
-EXTRA_OECONF:append:darwin19 = " --disable-lto"
+LTO:darwin21 = "--disable-lto"
+EXTRA_OECONF:remove:darwin21 = "--enable-lto"
+EXTRA_OECONF:append:darwin21 = " --disable-lto"
 
-DEPENDS:append:darwin19 = " nativesdk-osx-runtime"
+DEPENDS:append:darwin21 = " nativesdk-osx-runtime"
 
-do_configure:prepend:darwin19 () {
+do_configure:prepend:darwin21 () {
     export ARCH_FLAGS_FOR_TARGET=" $ARCH_FLAGS_FOR_TARGET \
         -L${SDKPATHNATIVE}/usr/lib \
         -L${SDKPATHNATIVE}/runtime/usr/lib \
diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b/recipes-devtools/gcc/gcc-runtime_%.bbappend
index 48337c1..90e4ff0 100644
--- a/recipes-devtools/gcc/gcc-runtime_%.bbappend
+++ b/recipes-devtools/gcc/gcc-runtime_%.bbappend
@@ -1,14 +1,14 @@
-EXTRA_OECONF:remove:darwin19 = "--enable-clocale=gnu"
-EXTRA_OECONF:remove:darwin19 = "--enable-clocale=generic"
+EXTRA_OECONF:remove:darwin21 = "--enable-clocale=gnu"
+EXTRA_OECONF:remove:darwin21 = "--enable-clocale=generic"
 
-RUNTIMETARGET:remove:darwin19 = "libmpx"
+RUNTIMETARGET:remove:darwin21 = "libmpx"
 
-FILES:libssp:append:darwin19 = " ${libdir}/libssp*.dylib"
-FILES:libstdc++:append:darwin19 = " ${libdir}/libstdc++*.dylib"
-FILES:libitm:append:darwin19 = " ${libdir}/libitm*.dylib"
-FILES:libatomic:append:darwin19 = " ${libdir}/libatomic*.dylib"
-FILES:libgomp:append:darwin19 = " ${libdir}/libgomp*.dylib"
-FILES:${PN}-dbg:append:darwin19 = " ${libdir}/libstdc++.a-gdb.py"
+FILES:libssp:append:darwin21 = " ${libdir}/libssp*.dylib"
+FILES:libstdc++:append:darwin21 = " ${libdir}/libstdc++*.dylib"
+FILES:libitm:append:darwin21 = " ${libdir}/libitm*.dylib"
+FILES:libatomic:append:darwin21 = " ${libdir}/libatomic*.dylib"
+FILES:libgomp:append:darwin21 = " ${libdir}/libgomp*.dylib"
+FILES:${PN}-dbg:append:darwin21 = " ${libdir}/libstdc++.a-gdb.py"
 
 # Replace do_configure and do_check from poky. We can't link libstdc++.dylib to
 # a dummy libstdc++.so, because this adds a dependency to the generated libstdc++.dylib.
diff --git a/recipes-devtools/gcc/gcc-source_%.bbappend b/recipes-devtools/gcc/gcc-source_%.bbappend
index 6a2b0fd..a2b117a 100644
--- a/recipes-devtools/gcc/gcc-source_%.bbappend
+++ b/recipes-devtools/gcc/gcc-source_%.bbappend
@@ -2,6 +2,7 @@ FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 SRC_URI:append = "\
     file://0099-nativesdk-gcc-darwin.patch \
-    file://0100-change-macosx-version-min-to-10.15.patch \
+    file://0100-change-macosx-version-min-to-12.3.patch \
     file://0101-optional-libstdc.patch \
+    file://0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch \
 "
diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools/gcc/libgcc_%.bbappend
index 1ef8bef..2b824fb 100644
--- a/recipes-devtools/gcc/libgcc_%.bbappend
+++ b/recipes-devtools/gcc/libgcc_%.bbappend
@@ -1,12 +1,12 @@
-SYSTEMHEADERS:darwin19 = "${SDKPATHNATIVE}/runtime/usr/include/"
+SYSTEMHEADERS:darwin21 = "${SDKPATHNATIVE}/runtime/usr/include/"
 
-do_compile:darwin19() {
+do_compile:darwin21() {
      oe_runmake all-target-libgcc MULTIBUILDTOP=${B}/${TARGET_SYS}/${BPN}
 }
 
 # See file gcc/config/darwin.h in the gcc repository to understand which library is being linked against,
 # depending on the minimum version of os-x targetted (parameter "mmacosx-version-min").
-do_install:darwin19 () {
+do_install:darwin21 () {
     install -d ${D}${libdir}
     cp ${B}/${TARGET_SYS}/${BPN}/libgcc_s.1.1.dylib ${D}${libdir}
     cp ${B}/${TARGET_SYS}/${BPN}/libemutls_w.a ${D}${libdir}
@@ -15,4 +15,4 @@ do_install:darwin19 () {
     ${TARGET_SYS}-install_name_tool -id ${libdir}/libgcc_s.1.1.dylib ${D}/${libdir}/libgcc_s.1.1.dylib
 }
 
-FILES:${PN}:append:darwin19 = " ${libdir}"
+FILES:${PN}:append:darwin21 = " ${libdir}"
diff --git a/recipes-devtools/libtapi/libtapi-native_git.bb b/recipes-devtools/libtapi/libtapi-native_git.bb
index 9bde446..ee569ec 100644
--- a/recipes-devtools/libtapi/libtapi-native_git.bb
+++ b/recipes-devtools/libtapi/libtapi-native_git.bb
@@ -11,8 +11,8 @@ LIC_FILES_CHKSUM = "file://${WORKDIR}/git/LICENSE.APPLE-LIBTAPI.txt;md5=ecd05d65
 
 SECTION = "devel"
 
-SRCREV = "664b8414f89612f2dfd35a9b679c345aa5389026"
-SRC_URI = "git://github.com/tpoechtrager/apple-libtapi.git;branch=${TAPI_REPOSITORY};protocol=https"
+SRCREV = "b7b5bdbfda9e8062d405b48da3b811afad98ae76"
+SRC_URI = "git://github.com/tpoechtrager/apple-libtapi.git;branch=master;protocol=https"
 
 PACKAGES = "${PN}-dbg ${PN} ${PN}-dev"
 
diff --git a/recipes-devtools/ninja/ninja_%.bbappend b/recipes-devtools/ninja/ninja_%.bbappend
index 4df5132..ae692cd 100644
--- a/recipes-devtools/ninja/ninja_%.bbappend
+++ b/recipes-devtools/ninja/ninja_%.bbappend
@@ -1,4 +1,4 @@
-do_compile:darwin19() {
+do_compile:darwin21() {
     python3 ./configure.py --platform darwin
     ninja
 }
diff --git a/recipes-devtools/opkg-utils/opkg-utils_%.bbappend b/recipes-devtools/opkg-utils/opkg-utils_%.bbappend
index dba306c..88ed55a 100644
--- a/recipes-devtools/opkg-utils/opkg-utils_%.bbappend
+++ b/recipes-devtools/opkg-utils/opkg-utils_%.bbappend
@@ -1,3 +1,3 @@
-PACKAGECONFIG:darwin19:class-nativesdk = "update-alternatives"
+PACKAGECONFIG:darwin21:class-nativesdk = "update-alternatives"
 
 RDEPENDS:opkg-utils:class-nativesdk = ""
diff --git a/recipes-devtools/osx-runtime/nativesdk-osx-runtime_10.15.bb b/recipes-devtools/osx-runtime/nativesdk-osx-runtime_12.3.bb
similarity index 100%
rename from recipes-devtools/osx-runtime/nativesdk-osx-runtime_10.15.bb
rename to recipes-devtools/osx-runtime/nativesdk-osx-runtime_12.3.bb
diff --git a/recipes-extended/zstd/zstd_%.bbappend b/recipes-extended/zstd/zstd_%.bbappend
index 357cb20..bb583f6 100644
--- a/recipes-extended/zstd/zstd_%.bbappend
+++ b/recipes-extended/zstd/zstd_%.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 
-EXTRA_OEMAKE:append:darwin19 = " UNAME='Darwin'"
+EXTRA_OEMAKE:append:darwin21 = " UNAME='Darwin'"
diff --git a/recipes-support/libmpc/libmpc_%.bbappend b/recipes-support/libmpc/libmpc_%.bbappend
index bdb66a6..9ec4e4f 100644
--- a/recipes-support/libmpc/libmpc_%.bbappend
+++ b/recipes-support/libmpc/libmpc_%.bbappend
@@ -1 +1 @@
-EXTRA_OECONF:append:darwin19 = " --with-gmp=${STAGING_EXECPREFIXDIR}"
+EXTRA_OECONF:append:darwin21 = " --with-gmp=${STAGING_EXECPREFIXDIR}"
diff --git a/recipes-support/lz4/lz4_%.bbappend b/recipes-support/lz4/lz4_%.bbappend
index eb1948a..e6ec2d3 100644
--- a/recipes-support/lz4/lz4_%.bbappend
+++ b/recipes-support/lz4/lz4_%.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 
-EXTRA_OEMAKE:append:darwin19 = " TARGET_OS='Darwin'"
+EXTRA_OEMAKE:append:darwin21 = " TARGET_OS='Darwin'"
diff --git a/recipes-support/mpfr/mpfr_%.bbappend b/recipes-support/mpfr/mpfr_%.bbappend
index bdb66a6..9ec4e4f 100644
--- a/recipes-support/mpfr/mpfr_%.bbappend
+++ b/recipes-support/mpfr/mpfr_%.bbappend
@@ -1 +1 @@
-EXTRA_OECONF:append:darwin19 = " --with-gmp=${STAGING_EXECPREFIXDIR}"
+EXTRA_OECONF:append:darwin21 = " --with-gmp=${STAGING_EXECPREFIXDIR}"
-- 
2.36.1.vfs.0.0


