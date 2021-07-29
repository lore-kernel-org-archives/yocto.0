Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web12.16557.1627599270915223813
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 15:54:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Pz0FwHN2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id n21so4699916wmq.5
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jul 2021 15:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JVfidPl15pxS1yXmerJAAQwIKBzU/2uEFtQ2B3t3Tag=;
        b=Pz0FwHN2W4yAnuLKKWQg1wSmQVsH0xHUdO9VQ8I9fAyhKI9DLXngPAE1BfWG1pVDS1
         jzmnwgtZEF7ipi+NzLAPCL4FLVKiarSRQN5Q9Ay1kORt5Xie81vu9NQdw0y1zWI4NJVA
         BeRZzh9aEhi0GYRKherCd68Rlz0cnImLESxF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JVfidPl15pxS1yXmerJAAQwIKBzU/2uEFtQ2B3t3Tag=;
        b=VUOgmB+LwXk46R3kxUMFyApwAYVZF34MtefTAi4d1D7tGFZryReEZzIsBrS1FqHyUE
         O5PAwZQnjUElo6RrRewVO+m9A+bU4yGrnZ03JhZ7s54p0yuTu0Na0Mx9MYNQQjECT9QF
         PP3FMXebvRXWf9C5RLL6oQyu+lQePbOt12e2WfLC0zPMPHR6ttWyvjg76rZxxF7NeUKM
         YhVysSE0suMMRPx/8tYpgw6PPEHo/YtSpuVMCZO6NMWVd3fynZ+K19M0wxRhWh8+ZJDo
         JzrUKeuTNTkRk+EtF0CH8ObRcQa5eHlrLSM/kepm1roqJgw3uLKNfDrWlYoLQpr0p53i
         3HVQ==
X-Gm-Message-State: AOAM533L3zzyeIqdG/XW4HKvPtmJM2bsw+GHlMyzQeccuy8IfvmitYES
	C5ZeQKNxB0Yyo1UsRWDPg0KW4M9GjiBpgA==
X-Google-Smtp-Source: ABdhPJwqxfBxmFlzG15CDAqJIBuRcNfHINlYgkAvY0Ms6KnkWgfChPt4UJZ1wVZJL92s51Mt0tCcHg==
X-Received: by 2002:a1c:f40a:: with SMTP id z10mr7248236wma.119.1627599268433;
        Thu, 29 Jul 2021 15:54:28 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:47e7:2d3d:e4c2:218b])
        by smtp.gmail.com with ESMTPSA id i5sm4762296wrw.13.2021.07.29.15.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 15:54:28 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH 1/3] meta-mingw: Convert to new override syntax
Date: Thu, 29 Jul 2021 23:54:24 +0100
Message-Id: <20210729225426.3337271-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This converts the two layers to the new override syntax. This was done using

<oe-core>/scripts/contrib/convert-overrides.py <this-layer>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 classes/toolchain-scripts-mingw32.bbclass     |  8 +++---
 conf/machine-sdk/include/mingw32-common.inc   | 26 +++++++++----------
 recipes-core/dbus/dbus_%.bbappend             |  6 ++---
 recipes-core/dtc/dtc_%.bbappend               |  8 +++---
 recipes-core/expat/expat_%.bbappend           |  2 +-
 recipes-core/gettext/gettext_%.bbappend       | 14 +++++-----
 recipes-core/glib-2.0/glib-2.0_%.bbappend     | 10 +++----
 recipes-core/libxml/libxml2_%.bbappend        |  2 +-
 recipes-core/meta/meta-environment.bbappend   |  2 +-
 .../nativesdk-packagegroup-sdk-host.bbappend  |  2 +-
 recipes-core/zlib/zlib_1.2.%.bbappend         |  2 +-
 .../binutils-cross-canadian_2.%.bbappend      |  8 +++---
 recipes-devtools/cmake/cmake_%.bbappend       |  4 +--
 .../gcc/gcc-cross-canadian_%.bbappend         | 12 ++++-----
 recipes-devtools/gcc/gcc-crosssdk_%.bbappend  |  4 +--
 recipes-devtools/gcc/gcc-runtime_%.bbappend   | 16 ++++++------
 recipes-devtools/gcc/gcc_%.bbappend           |  4 +--
 recipes-devtools/gcc/libgcc_%.bbappend        |  8 +++---
 .../gdb/gdb-cross-canadian_%.bbappend         | 14 +++++-----
 recipes-devtools/go/go_%.bbappend             |  4 +--
 .../libtool/nativesdk-libtool_2.4.6.bbappend  |  2 +-
 .../nativesdk-mingw-w64-headers_8.0.0.bb      |  4 +--
 .../nativesdk-mingw-w64-runtime_8.0.0.bb      |  6 ++---
 .../nativesdk-mingw-w64-winpthreads_8.0.0.bb  |  2 +-
 recipes-devtools/ninja/ninja_%.bbappend       |  4 +--
 recipes-devtools/swig/swig_%.bbappend         |  4 +--
 .../diffutils/diffutils_%.bbappend            |  6 ++---
 .../libarchive/libarchive_%.bbappend          |  2 +-
 recipes-extended/libidn/libidn2_%.bbappend    |  2 +-
 recipes-extended/zstd/zstd_%.bbappend         |  4 +--
 recipes-graphics/libsdl2/libsdl2_%.bbappend   |  4 +--
 recipes-graphics/wayland/wayland_%.bbappend   |  6 ++---
 recipes-support/curl/curl_%.bbappend          |  4 +--
 .../libgcrypt/libgcrypt_%.bbappend            |  6 ++---
 .../libgpg-error/libgpg-error_%.bbappend      |  2 +-
 recipes-support/libiconv/libiconv_1.15.bb     |  6 ++---
 recipes-support/libmpc/libmpc_%.bbappend      |  2 +-
 recipes-support/libpcre/libpcre_%.bbappend    |  8 +++---
 recipes-support/mpfr/mpfr_4.1.%.bbappend      |  2 +-
 39 files changed, 116 insertions(+), 116 deletions(-)

diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-scripts-mingw32.bbclass
index 0afbf7d..d96cb40 100644
--- a/classes/toolchain-scripts-mingw32.bbclass
+++ b/classes/toolchain-scripts-mingw32.bbclass
@@ -1,5 +1,5 @@
 # Based off of the oe-core meta/classes/toolchain-scripts.bbclass version
-toolchain_create_sdk_env_script_sdkmingw32 () {
+toolchain_create_sdk_env_script:sdkmingw32 () {
 	# Create environment setup script
 	sdkpathnative=${7:-${SDKPATHNATIVE}}
 	prefix=${6:-${prefix_nativesdk}}
@@ -54,7 +54,7 @@ toolchain_create_sdk_env_script_sdkmingw32 () {
 	mv $script.new $script
 }
 
-toolchain_shared_env_script_sdkmingw32 () {
+toolchain_shared_env_script:sdkmingw32 () {
 	echo 'set CC=${TARGET_PREFIX}gcc ${TARGET_CC_ARCH} --sysroot=%SDKTARGETSYSROOT%' >> $script
 	echo 'set CXX=${TARGET_PREFIX}g++ ${TARGET_CC_ARCH} --sysroot=%SDKTARGETSYSROOT%' >> $script
 	echo 'set CPP=${TARGET_PREFIX}gcc -E ${TARGET_CC_ARCH} --sysroot=%SDKTARGETSYSROOT%' >> $script
@@ -94,13 +94,13 @@ toolchain_shared_env_script_sdkmingw32 () {
 EOF
 }
 
-toolchain_create_sdk_siteconfig_append_sdkmingw32 () {
+toolchain_create_sdk_siteconfig:append:sdkmingw32 () {
         # Make the file windows friendly...
         awk 'sub("$", "\r")' $siteconfig > $siteconfig.new
         mv $siteconfig.new $siteconfig
 }
 
-toolchain_create_sdk_version_append_sdkmingw32 () {
+toolchain_create_sdk_version:append:sdkmingw32 () {
         # Make the file windows friendly...
         awk 'sub("$", "\r")' $versionfile > $versionfile.new
         mv $versionfile.new $versionfile
diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 3997a26..6c43fc9 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -1,6 +1,6 @@
 SDK_OS = "mingw32"
-SDK_VENDOR_mingw32 = "-w64"
-SDK_VENDOR_sdkmingw32 = "-w64"
+SDK_VENDOR:mingw32 = "-w64"
+SDK_VENDOR:sdkmingw32 = "-w64"
 
 NATIVESDKLIBC = "libc-mingw"
 
@@ -10,12 +10,12 @@ PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-gettext"
 PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
 
-USE_NLS_mingw32 = "no"
+USE_NLS:mingw32 = "no"
 
-FILES_${PN}-staticdev_append_mingw32 = " ${libdir}/*.lib"
-ALLOW_EMPTY_${PN}_mingw32 = "1"
+FILES:${PN}-staticdev:append:mingw32 = " ${libdir}/*.lib"
+ALLOW_EMPTY:${PN}:mingw32 = "1"
 
-DISTRO_FEATURES_FILTER_NATIVESDK_remove_mingw32 = "debuginfod"
+DISTRO_FEATURES_FILTER_NATIVESDK:remove:mingw32 = "debuginfod"
 
 # Do what amounts to a NOOP
 SDK_PACKAGING_FUNC = "do_compile"
@@ -25,8 +25,8 @@ SDK_PACKAGING_FUNC = "do_compile"
 
 SDKUSE_NLS = "no"
 SDKIMAGE_LINGUAS = ""
-SDK_DEPENDS_remove = "nativesdk-glibc-locale"
-SDK_DEPENDS_remove = "nativesdk-glibc-utils"
+SDK_DEPENDS:remove = "nativesdk-glibc-locale"
+SDK_DEPENDS:remove = "nativesdk-glibc-utils"
 
 SDKPKGSUFFIX = "nativesdk-mingw32"
 
@@ -35,19 +35,19 @@ MACHINEOVERRIDES .= ":sdkmingw32"
 TESTSDK_CLASS_NAME = "oeqa.sdkmingw.testsdk.TestSDKMinGW"
 TESTSDKEXT_CLASS_NAME = ""
 
-WINDRES_mingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
-RC_mingw32 = "${WINDRES}"
+WINDRES:mingw32 = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
+RC:mingw32 = "${WINDRES}"
 
 export WINDRES
 export RC
 
-BB_HASHBASE_WHITELIST_append = " WINDRES RC"
+BB_HASHBASE_WHITELIST:append = " WINDRES RC"
 
 # Needed to override no-static-libs.inc
-DISABLE_STATIC_mingw32 = ""
+DISABLE_STATIC:mingw32 = ""
 
 # disable security flags
-GCCPIE_mingw32 = ""
+GCCPIE:mingw32 = ""
 
 # wine and wineserver are required to test MinGW SDKs
 HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk.bbclass"])) else ''}"
diff --git a/recipes-core/dbus/dbus_%.bbappend b/recipes-core/dbus/dbus_%.bbappend
index d81af7d..7bb40f1 100644
--- a/recipes-core/dbus/dbus_%.bbappend
+++ b/recipes-core/dbus/dbus_%.bbappend
@@ -1,14 +1,14 @@
-FILES_${PN}_append_mingw32 = "\
+FILES:${PN}:append:mingw32 = "\
     ${bindir}/dbus-launch.exe \
 "
 
-FILES_${PN}-tools_append_mingw32 = "\
+FILES:${PN}-tools:append:mingw32 = "\
     ${bindir}/dbus-send.exe \
     ${bindir}/dbus-monitor.exe \
     ${bindir}/dbus-test-tool.exe \
     ${bindir}/dbus-update-activation-environment.exe \
 "
 
-FILES_${PN}-lib_append_mingw32 = "\
+FILES:${PN}-lib:append:mingw32 = "\
     ${bindir}/lib*.dll \
 "
diff --git a/recipes-core/dtc/dtc_%.bbappend b/recipes-core/dtc/dtc_%.bbappend
index 1406937..2d27a0a 100644
--- a/recipes-core/dtc/dtc_%.bbappend
+++ b/recipes-core/dtc/dtc_%.bbappend
@@ -1,16 +1,16 @@
 
-do_configure_append_mingw32 () {
+do_configure:append:mingw32 () {
 		# don't try to build the other dtc components when installing libs
 		sed -i 's/install-lib: all/install-lib: libfdt/g' ${S}/Makefile
 }
 
-do_compile_mingw32 () {
+do_compile:mingw32 () {
 		oe_runmake libfdt
 }
 
-do_install_mingw32 () {
+do_install:mingw32 () {
 		oe_runmake install-lib install-includes
 }
 
-RDEPENDS_${PN}-misc_remove_mingw32 = "bash"
+RDEPENDS:${PN}-misc:remove:mingw32 = "bash"
 
diff --git a/recipes-core/expat/expat_%.bbappend b/recipes-core/expat/expat_%.bbappend
index 626ea5b..0749fe3 100644
--- a/recipes-core/expat/expat_%.bbappend
+++ b/recipes-core/expat/expat_%.bbappend
@@ -1,3 +1,3 @@
 
-FILES_${PN}-bin_mingw32 = "${bindir}/*.exe ${sbindir}/*.exe"
+FILES:${PN}-bin:mingw32 = "${bindir}/*.exe ${sbindir}/*.exe"
 
diff --git a/recipes-core/gettext/gettext_%.bbappend b/recipes-core/gettext/gettext_%.bbappend
index d518698..4e18798 100644
--- a/recipes-core/gettext/gettext_%.bbappend
+++ b/recipes-core/gettext/gettext_%.bbappend
@@ -1,12 +1,12 @@
-EXTRA_OECONF_append_mingw32 = " --enable-static"
+EXTRA_OECONF:append:mingw32 = " --enable-static"
 
-FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
-SRC_URI_append_mingw32 = " \
+FILESEXTRAPATHS:prepend:mingw32 := "${THISDIR}/${BPN}:"
+SRC_URI:append:mingw32 = " \
 		"
 
-FILES_libgettextlib_mingw32 = "${bindir}/libgettextlib-*.dll"
-FILES_libgettextsrc_mingw32 = "${bindir}/libgettextsrc-*.dll"
+FILES:libgettextlib:mingw32 = "${bindir}/libgettextlib-*.dll"
+FILES:libgettextsrc:mingw32 = "${bindir}/libgettextsrc-*.dll"
 
-PACKAGES_prepend_mingw32 = "libintl "
-FILES_libintl_mingw32 = "${bindir}/libintl*.dll"
+PACKAGES:prepend:mingw32 = "libintl "
+FILES:libintl:mingw32 = "${bindir}/libintl*.dll"
 
diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index d379f0b..28687eb 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1,15 +1,15 @@
 
 # glib always provides bash-completion output, package the output but prevent
 # the dependency chain on bash (via bash-completion) for mingw32 targets only.
-RDEPENDS_${PN}-bash-completion_remove_mingw32 = "bash-completion"
+RDEPENDS:${PN}-bash-completion:remove:mingw32 = "bash-completion"
 
 # libmount is not buildable for mingw/windows
-PACKAGECONFIG_remove_mingw32 = "libmount"
+PACKAGECONFIG:remove:mingw32 = "libmount"
 
-FILES_${PN}_append_mingw32 = " \
+FILES:${PN}:append:mingw32 = " \
 		${bindir}/lib*.dll \
 		${libexecdir}/*gio-querymodules.exe \
 		"
-FILES_${PN}-dev_append_mingw32 = " ${libdir}/*.def"
-FILES_${PN}-utils_append_mingw32 = " ${bindir}/*.exe"
+FILES:${PN}-dev:append:mingw32 = " ${libdir}/*.def"
+FILES:${PN}-utils:append:mingw32 = " ${bindir}/*.exe"
 
diff --git a/recipes-core/libxml/libxml2_%.bbappend b/recipes-core/libxml/libxml2_%.bbappend
index 2c9f206..cc155e5 100644
--- a/recipes-core/libxml/libxml2_%.bbappend
+++ b/recipes-core/libxml/libxml2_%.bbappend
@@ -1 +1 @@
-PACKAGECONFIG_remove_class-nativesdk_mingw32 = "python"
+PACKAGECONFIG:remove:class-nativesdk:mingw32 = "python"
diff --git a/recipes-core/meta/meta-environment.bbappend b/recipes-core/meta/meta-environment.bbappend
index 0846042..e981401 100644
--- a/recipes-core/meta/meta-environment.bbappend
+++ b/recipes-core/meta/meta-environment.bbappend
@@ -1,4 +1,4 @@
 TCSCRIPTS ?= ""
-TCSCRIPTS_sdkmingw32 = "toolchain-scripts-mingw32"
+TCSCRIPTS:sdkmingw32 = "toolchain-scripts-mingw32"
 
 inherit ${TCSCRIPTS}
diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
index b3ffb82..d6ec6d3 100644
--- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
+++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
@@ -1,4 +1,4 @@
-RDEPENDS_${PN}_mingw32 = "\
+RDEPENDS:${PN}:mingw32 = "\
     nativesdk-sdk-provides-dummy \
     nativesdk-pkgconfig \
     nativesdk-libtool \
diff --git a/recipes-core/zlib/zlib_1.2.%.bbappend b/recipes-core/zlib/zlib_1.2.%.bbappend
index 2fd034b..d03721a 100644
--- a/recipes-core/zlib/zlib_1.2.%.bbappend
+++ b/recipes-core/zlib/zlib_1.2.%.bbappend
@@ -1 +1 @@
-EXTRA_OEMAKE_append_mingw32 = " LDSHAREDLIBC=''"
+EXTRA_OEMAKE:append:mingw32 = " LDSHAREDLIBC=''"
diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
index 5845fe0..2890afc 100644
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
@@ -1,5 +1,5 @@
-EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
+EXTRA_OECONF:append:sdkmingw32 = " --disable-nls"
+LDFLAGS:append:sdkmingw32 = " -Wl,-static"
 
-DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
-DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
+DEPENDS:remove:sdkmingw32 = "nativesdk-gettext"
+DEPENDS:remove:sdkmingw32 = "nativesdk-flex"
diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtools/cmake/cmake_%.bbappend
index b2e8a19..9fb4f99 100644
--- a/recipes-devtools/cmake/cmake_%.bbappend
+++ b/recipes-devtools/cmake/cmake_%.bbappend
@@ -1,2 +1,2 @@
-DEPENDS_remove_mingw32 = "ncurses"
-RDEPENDS_${PN}-bash-completion_remove_mingw32 = "bash-completion"
+DEPENDS:remove:mingw32 = "ncurses"
+RDEPENDS:${PN}-bash-completion:remove:mingw32 = "bash-completion"
diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
index 9c0d828..13ea016 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
@@ -1,9 +1,9 @@
-INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
-EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
-EXEEXT_sdkmingw32 = ".exe"
-ELFUTILS_sdkmingw32 = ""
-DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
+INSANE_SKIP:${PN}:append:sdkmingw32 = " staticdev"
+EXTRA_OECONF:append:sdkmingw32 = " --disable-nls"
+LDFLAGS:append:sdkmingw32 = " -Wl,-static"
+EXEEXT:sdkmingw32 = ".exe"
+ELFUTILS:sdkmingw32 = ""
+DEPENDS:remove:sdkmingw32 = "nativesdk-gettext"
 
 # With plugins enabled, it will output 'dll.a' files that are mistaken
 # for ELF which can trigger a failure.  Simply avoid processing these
diff --git a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
index 3411946..1a4bf6c 100644
--- a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
+++ b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
@@ -1,3 +1,3 @@
 PACKAGECONFIG_CONFARGS ?= ""
-EXTRA_OECONF_remove_mingw32 = "--enable-initfini-array --with-linker-hash-style=${LINKER_HASH_STYLE}"
-EXTRA_OECONF_append_mingw32 = " --disable-initfini-array"
+EXTRA_OECONF:remove:mingw32 = "--enable-initfini-array --with-linker-hash-style=${LINKER_HASH_STYLE}"
+EXTRA_OECONF:append:mingw32 = " --disable-initfini-array"
diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b/recipes-devtools/gcc/gcc-runtime_%.bbappend
index f14edf1..0013e88 100644
--- a/recipes-devtools/gcc/gcc-runtime_%.bbappend
+++ b/recipes-devtools/gcc/gcc-runtime_%.bbappend
@@ -1,14 +1,14 @@
-FILES_libstdc++_append_mingw32 = " ${bindir}/libstdc++*.dll"
-FILES_libstdc++-staticdev_append_mingw32 = " ${libdir}/libstdc++.dll.a*"
-FILES_libssp_append_mingw32 = " ${bindir}/libssp*.dll"
-# FILES_libgomp_append_mingw32 = " ${bindir}/libgomp*.dll"
+FILES:libstdc++_append_mingw32 = " ${bindir}/libstdc++*.dll"
+FILES:libstdc++-staticdev_append_mingw32 = " ${libdir}/libstdc++.dll.a*"
+FILES:libssp:append:mingw32 = " ${bindir}/libssp*.dll"
+# FILES:libgomp:append:mingw32 = " ${bindir}/libgomp*.dll"
 
-RUNTIMETARGET_remove_mingw32 = "libatomic libgomp"
-RUNTIMETARGET_remove_mingw32 = "libitm"
+RUNTIMETARGET:remove:mingw32 = "libatomic libgomp"
+RUNTIMETARGET:remove:mingw32 = "libitm"
 
 # Intel Memory Protection Extension library for x86 builds are now enabled
 # by default. However, it does not build for mingw32, so remove it from
 # mingw builds
-RUNTIMETARGET_remove_mingw32 = "libmpx"
+RUNTIMETARGET:remove:mingw32 = "libmpx"
 
-DEPENDS_append_mingw32 = " nativesdk-mingw-w64-winpthreads"
+DEPENDS:append:mingw32 = " nativesdk-mingw-w64-winpthreads"
diff --git a/recipes-devtools/gcc/gcc_%.bbappend b/recipes-devtools/gcc/gcc_%.bbappend
index a779bb9..c72363e 100644
--- a/recipes-devtools/gcc/gcc_%.bbappend
+++ b/recipes-devtools/gcc/gcc_%.bbappend
@@ -1,6 +1,6 @@
-FILES_${PN}_append_mingw32 = "\
+FILES:${PN}:append:mingw32 = "\
    ${libexecdir}/gcc/${TARGET_SYS}/${BINV}/liblto_plugin-0.dll \
    ${libexecdir}/gcc/${TARGET_SYS}/${BINV}/liblto_plugin.dll.a \
 "
 
-INSANE_SKIP_append_mingw32 = " staticdev"
+INSANE_SKIP:append:mingw32 = " staticdev"
diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools/gcc/libgcc_%.bbappend
index f542cfc..743b5b7 100644
--- a/recipes-devtools/gcc/libgcc_%.bbappend
+++ b/recipes-devtools/gcc/libgcc_%.bbappend
@@ -1,9 +1,9 @@
-DEPENDS_append_mingw32 = " nativesdk-mingw-w64-winpthreads"
+DEPENDS:append:mingw32 = " nativesdk-mingw-w64-winpthreads"
 
-FILES_${PN}_append_mingw32 = " ${bindir}/libgcc*.dll"
-FILES_${PN}-dev_append_mingw32 = " ${base_libdir}/libgcc*.a"
+FILES:${PN}:append:mingw32 = " ${bindir}/libgcc*.dll"
+FILES:${PN}-dev:append:mingw32 = " ${base_libdir}/libgcc*.a"
 
-do_install_append_mingw32 () {
+do_install:append:mingw32 () {
 	# move the .dll files into bindir
 	install -d ${D}${bindir}
 	mv ${D}${base_libdir}/libgcc*.dll ${D}${bindir}/
diff --git a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
index 096fc63..9d8324f 100644
--- a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
+++ b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
@@ -1,7 +1,7 @@
-EXEEXT_sdkmingw32 = ".exe"
-DEPENDS_remove_sdkmingw32 = "nativesdk-ncurses nativesdk-readline nativesdk-python"
-RDEPENDS_${PN}_remove_sdkmingw32 = "nativesdk-python-core nativesdk-python-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netclient"
-EXTRA_OECONF_append_sdkmingw32 = " --without-curses --without-system-readline --with-python=no"
-PACKAGECONFIG_remove_sdkmingw32 = "readline"
-PACKAGECONFIG_remove_sdkmingw32 = "python"
-PACKAGECONFIG_remove_sdkmingw32 = "debuginfod"
+EXEEXT:sdkmingw32 = ".exe"
+DEPENDS:remove:sdkmingw32 = "nativesdk-ncurses nativesdk-readline nativesdk-python"
+RDEPENDS:${PN}:remove:sdkmingw32 = "nativesdk-python-core nativesdk-python-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netclient"
+EXTRA_OECONF:append:sdkmingw32 = " --without-curses --without-system-readline --with-python=no"
+PACKAGECONFIG:remove:sdkmingw32 = "readline"
+PACKAGECONFIG:remove:sdkmingw32 = "python"
+PACKAGECONFIG:remove:sdkmingw32 = "debuginfod"
diff --git a/recipes-devtools/go/go_%.bbappend b/recipes-devtools/go/go_%.bbappend
index 9933108..846a4ff 100644
--- a/recipes-devtools/go/go_%.bbappend
+++ b/recipes-devtools/go/go_%.bbappend
@@ -1,4 +1,4 @@
-do_install_append_class-nativesdk_mingw32() {
+do_install:append:class-nativesdk:mingw32() {
     install -d ${D}${SDKPATHNATIVE}/environment-setup.d
 
     cat <<EOF > ${D}${SDKPATHNATIVE}/environment-setup.d/go.bat
@@ -6,4 +6,4 @@ set GOROOT=%OECORE_NATIVE_SYSROOT%\\usr\\lib\\${BPN}
 EOF
 }
 
-FILES_${PN}_append_class-nativesdk_mingw32 = " ${SDKPATHNATIVE}/environment-setup.d"
+FILES:${PN}:append:class-nativesdk:mingw32 = " ${SDKPATHNATIVE}/environment-setup.d"
diff --git a/recipes-devtools/libtool/nativesdk-libtool_2.4.6.bbappend b/recipes-devtools/libtool/nativesdk-libtool_2.4.6.bbappend
index 4252e8d..63eb066 100644
--- a/recipes-devtools/libtool/nativesdk-libtool_2.4.6.bbappend
+++ b/recipes-devtools/libtool/nativesdk-libtool_2.4.6.bbappend
@@ -1 +1 @@
-EXTRA_OECONF_append_mingw32 = " --disable-shared"
\ No newline at end of file
+EXTRA_OECONF:append:mingw32 = " --disable-shared"
\ No newline at end of file
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb
index 292d22b..68e77fa 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb
@@ -18,9 +18,9 @@ do_compile() {
 	:
 }
 
-do_install_append() {
+do_install:append() {
     # install correct pthread headers
     install -m 0644 -t ${D}${includedir} ${S}/../mingw-w64-libraries/winpthreads/include/*.h
 }
 
-FILES_${PN} += "${exec_prefix}/${TARGET_SYS}"
+FILES:${PN} += "${exec_prefix}/${TARGET_SYS}"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
index 0368841..02132c1 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
@@ -9,7 +9,7 @@ B = "${WORKDIR}/build-${TARGET_SYS}"
 
 inherit autotools nativesdk
 
-BUILDSDK_CPPFLAGS_append = " -isystem${STAGING_INCDIR}"
+BUILDSDK_CPPFLAGS:append = " -isystem${STAGING_INCDIR}"
 
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS = "nativesdk-mingw-w64-headers virtual/${TARGET_PREFIX}gcc "
@@ -21,11 +21,11 @@ PROVIDES += "virtual/nativesdk-libintl"
 
 TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
 
-EXTRA_OECONF_x86-64 = "--disable-lib32"
+EXTRA_OECONF:x86-64 = "--disable-lib32"
 
 do_configure() {
     oe_runconf
 }
 
-FILES_${PN} += "${exec_prefix}/libsrc"
+FILES:${PN} += "${exec_prefix}/libsrc"
 
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
index 814268d..38092dc 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
@@ -18,7 +18,7 @@ do_configure() {
 
 TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
 
-do_install_append() {
+do_install:append() {
     # headers are already installed by mingw-w64-headers
     rm -rf ${D}${includedir}
 }
diff --git a/recipes-devtools/ninja/ninja_%.bbappend b/recipes-devtools/ninja/ninja_%.bbappend
index e7ddb4d..8860e32 100644
--- a/recipes-devtools/ninja/ninja_%.bbappend
+++ b/recipes-devtools/ninja/ninja_%.bbappend
@@ -1,8 +1,8 @@
-do_compile_mingw32() {
+do_compile:mingw32() {
         python3 ./configure.py --platform mingw
         ninja
 }
 
-do_install_mingw32() {
+do_install:mingw32() {
         install -D -m 0755  ${S}/ninja.exe ${D}${bindir}/ninja.exe
 }
diff --git a/recipes-devtools/swig/swig_%.bbappend b/recipes-devtools/swig/swig_%.bbappend
index de40609..e5ce7e7 100644
--- a/recipes-devtools/swig/swig_%.bbappend
+++ b/recipes-devtools/swig/swig_%.bbappend
@@ -1,6 +1,6 @@
 # A wrapper script won't work to set SWIG_LIB for a mingw SDK. Instead, add an
 # environment setup batch file to set SWIG_LIB when the SDK is configured.
-do_install_append_class-nativesdk_mingw32() {
+do_install:append:class-nativesdk:mingw32() {
     install -d ${D}${SDKPATHNATIVE}/environment-setup.d
 
     cat <<HEREDOC > ${D}${SDKPATHNATIVE}/environment-setup.d/swig.bat
@@ -8,5 +8,5 @@ set SWIG_LIB=%OECORE_NATIVE_SYSROOT%\\usr\\share\\${BPN}\\${PV}
 HEREDOC
 }
 
-FILES_${PN}_append_class-nativesdk_mingw32 = " ${SDKPATHNATIVE}/environment-setup.d"
+FILES:${PN}:append:class-nativesdk:mingw32 = " ${SDKPATHNATIVE}/environment-setup.d"
 
diff --git a/recipes-extended/diffutils/diffutils_%.bbappend b/recipes-extended/diffutils/diffutils_%.bbappend
index 2c54a55..8b54cb0 100644
--- a/recipes-extended/diffutils/diffutils_%.bbappend
+++ b/recipes-extended/diffutils/diffutils_%.bbappend
@@ -1,9 +1,9 @@
-FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
+FILESEXTRAPATHS:prepend:mingw32 := "${THISDIR}/${BPN}:"
 
 # Add some definitions for POSIX signals..
-CFLAGS_append_mingw32 = " -DSIGALRM=14 -DSIGHUP=1 -DSIGQUIT=3 -DSIGPIPE=13 -DSIGTSTP=18 -DSIGSTOP=17 "
+CFLAGS:append:mingw32 = " -DSIGALRM=14 -DSIGHUP=1 -DSIGQUIT=3 -DSIGPIPE=13 -DSIGTSTP=18 -DSIGSTOP=17 "
 
-do_configure_prepend_mingw32 () {
+do_configure:prepend:mingw32 () {
     # Remove building of "man" and "gnulib-tests". The tests don't
     # cross-compile for mingw, but we aren't using them anyway
     sed -i \
diff --git a/recipes-extended/libarchive/libarchive_%.bbappend b/recipes-extended/libarchive/libarchive_%.bbappend
index a411b40..228e85b 100644
--- a/recipes-extended/libarchive/libarchive_%.bbappend
+++ b/recipes-extended/libarchive/libarchive_%.bbappend
@@ -1 +1 @@
-EXTRA_OECONF_append_mingw32 = " --without-cng"
+EXTRA_OECONF:append:mingw32 = " --without-cng"
diff --git a/recipes-extended/libidn/libidn2_%.bbappend b/recipes-extended/libidn/libidn2_%.bbappend
index 275886d..51d0459 100644
--- a/recipes-extended/libidn/libidn2_%.bbappend
+++ b/recipes-extended/libidn/libidn2_%.bbappend
@@ -1 +1 @@
-FILES_${PN}-dev_append_mingw32 = " ${libdir}/*.def"
+FILES:${PN}-dev:append:mingw32 = " ${libdir}/*.def"
diff --git a/recipes-extended/zstd/zstd_%.bbappend b/recipes-extended/zstd/zstd_%.bbappend
index 3b2b991..11a2d4e 100644
--- a/recipes-extended/zstd/zstd_%.bbappend
+++ b/recipes-extended/zstd/zstd_%.bbappend
@@ -1,2 +1,2 @@
-EXTRA_OEMAKE_append_mingw32 = " OS=Windows"
-FILES_${PN}_append_mingw32 = " ${libdir}/*.dll"
+EXTRA_OEMAKE:append:mingw32 = " OS=Windows"
+FILES:${PN}:append:mingw32 = " ${libdir}/*.dll"
diff --git a/recipes-graphics/libsdl2/libsdl2_%.bbappend b/recipes-graphics/libsdl2/libsdl2_%.bbappend
index 92fa41c..89532d6 100644
--- a/recipes-graphics/libsdl2/libsdl2_%.bbappend
+++ b/recipes-graphics/libsdl2/libsdl2_%.bbappend
@@ -1,7 +1,7 @@
 # Need to disable X11 explictly as nativesdk-libxdmcp fails:
 # .libs/Fill.o:Fill.c:(.text+0x48): undefined reference to `_imp__recvfrom@24'
 # .libs/Flush.o:Flush.c:(.text+0x36): undefined reference to `_imp__sendto@24'
-PACKAGECONFIG_remove_mingw32_class-nativesdk = "x11 opengl"
+PACKAGECONFIG:remove:mingw32:class-nativesdk = "x11 opengl"
 
 # libtool doesn't think it can link windres output (COFF) with libtool objects
 # (COFF) , but it can.  This might be because file misidentifies version.o:
@@ -10,4 +10,4 @@ PACKAGECONFIG_remove_mingw32_class-nativesdk = "x11 opengl"
 #
 # Telling libtool to be dumb and just pass the input to the underlying tools
 # works fine.
-EXTRA_OECONF_append_mingw32 = " lt_cv_deplibs_check_method=pass_all"
+EXTRA_OECONF:append:mingw32 = " lt_cv_deplibs_check_method=pass_all"
diff --git a/recipes-graphics/wayland/wayland_%.bbappend b/recipes-graphics/wayland/wayland_%.bbappend
index bd42595..86a9061 100644
--- a/recipes-graphics/wayland/wayland_%.bbappend
+++ b/recipes-graphics/wayland/wayland_%.bbappend
@@ -1,7 +1,7 @@
 # The assembly file that encodes the DTD string into wayland-scanner is not
 # compatible with i686 MinGW
-PACKAGECONFIG_remove_mingw32_i686 = "dtd-validation"
+PACKAGECONFIG:remove:mingw32_i686 = "dtd-validation"
 
-EXTRA_OECONF_class-nativesdk_mingw32 = "--disable-documentation --disable-libraries"
-EXTRA_OEMESON_class-nativesdk_mingw32 = "-Ddocumentation=false -Dlibraries=false"
+EXTRA_OECONF:class-nativesdk:mingw32 = "--disable-documentation --disable-libraries"
+EXTRA_OEMESON:class-nativesdk:mingw32 = "-Ddocumentation=false -Dlibraries=false"
 
diff --git a/recipes-support/curl/curl_%.bbappend b/recipes-support/curl/curl_%.bbappend
index 7865b46..f013ee2 100644
--- a/recipes-support/curl/curl_%.bbappend
+++ b/recipes-support/curl/curl_%.bbappend
@@ -1,2 +1,2 @@
-PACKAGECONFIG_remove_class-nativesdk_mingw32 = "ssl"
-RRECOMMENDS_lib${BPN}_remove_mingw32 = "ca-certificates"
+PACKAGECONFIG:remove:class-nativesdk:mingw32 = "ssl"
+RRECOMMENDS:lib${BPN}:remove:mingw32 = "ca-certificates"
diff --git a/recipes-support/libgcrypt/libgcrypt_%.bbappend b/recipes-support/libgcrypt/libgcrypt_%.bbappend
index 50dca09..76c405a 100644
--- a/recipes-support/libgcrypt/libgcrypt_%.bbappend
+++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
@@ -1,11 +1,11 @@
 
 # libcap does not support mingw32
-PACKAGECONFIG_remove_mingw32 = "capabilities"
+PACKAGECONFIG:remove:mingw32 = "capabilities"
 
-FILES_${PN}-dev_append_mingw32 = " \
+FILES:${PN}-dev:append:mingw32 = " \
 		${libdir}/*.def \
 		${bindir}/hmac256.exe \
 		${bindir}/mpicalc.exe \
 		"
-FILES_dumpsexp-dev_append_mingw32 = " ${bindir}/dumpsexp.exe"
+FILES:dumpsexp-dev:append:mingw32 = " ${bindir}/dumpsexp.exe"
 
diff --git a/recipes-support/libgpg-error/libgpg-error_%.bbappend b/recipes-support/libgpg-error/libgpg-error_%.bbappend
index 8fcfa78..1e8db69 100644
--- a/recipes-support/libgpg-error/libgpg-error_%.bbappend
+++ b/recipes-support/libgpg-error/libgpg-error_%.bbappend
@@ -1,3 +1,3 @@
 
-FILES_${PN}-dev_append_mingw32 = " ${bindir}/gpg-error.exe"
+FILES:${PN}-dev:append:mingw32 = " ${bindir}/gpg-error.exe"
 
diff --git a/recipes-support/libiconv/libiconv_1.15.bb b/recipes-support/libiconv/libiconv_1.15.bb
index e3eacd9..7b2252f 100644
--- a/recipes-support/libiconv/libiconv_1.15.bb
+++ b/recipes-support/libiconv/libiconv_1.15.bb
@@ -30,17 +30,17 @@ EXTRA_OECONF += "--enable-shared --enable-static --enable-relocatable"
 
 LEAD_SONAME = "libiconv.so"
 
-do_configure_prepend () {
+do_configure:prepend () {
 	rm -f ${S}/m4/libtool.m4 ${S}/m4/ltoptions.m4 ${S}/m4/ltsugar.m4 ${S}/m4/ltversion.m4 ${S}/m4/lt~obsolete.m4 ${S}/libcharset/m4/libtool.m4 ${S}/libcharset/m4/ltoptions.m4 ${S}/libcharset/m4/ltsugar.m4 ${S}/libcharset/m4/ltversion.m4 ${S}/libcharset/m4/lt~obsolete.m4
 }
 
-do_configure_append () {
+do_configure:append () {
         # forcibly remove RPATH from libtool
         sed -i 's|^hardcode_libdir_flag_spec=.*|hardcode_libdir_flag_spec=""|g' *libtool
         sed -i 's|^runpath_var=LD_RUN_PATH|runpath_var=_NO_RPATH_|g' *libtool
 }
 
-do_install_append () {
+do_install:append () {
 	rm -rf ${D}${libdir}/preloadable_libiconv.so
 	rm -rf ${D}${libdir}/charset.alias
 }
diff --git a/recipes-support/libmpc/libmpc_%.bbappend b/recipes-support/libmpc/libmpc_%.bbappend
index 5a9ab9e..b04b4e5 100644
--- a/recipes-support/libmpc/libmpc_%.bbappend
+++ b/recipes-support/libmpc/libmpc_%.bbappend
@@ -1 +1 @@
-EXTRA_OECONF_append_mingw32 = " --enable-static --disable-shared"
+EXTRA_OECONF:append:mingw32 = " --enable-static --disable-shared"
diff --git a/recipes-support/libpcre/libpcre_%.bbappend b/recipes-support/libpcre/libpcre_%.bbappend
index b154f8d..ea72d11 100644
--- a/recipes-support/libpcre/libpcre_%.bbappend
+++ b/recipes-support/libpcre/libpcre_%.bbappend
@@ -1,6 +1,6 @@
 
-FILES_libpcrecpp_mingw32 = "${bindir}/libpcrecpp*.dll"
-FILES_libpcreposix_mingw32 = "${bindir}/libpcreposix*.dll"
-FILES_pcregrep_mingw32 = "${bindir}/pcregrep.exe"
-FILES_pcretest_mingw32 = "${bindir}/pcretest.exe"
+FILES:libpcrecpp:mingw32 = "${bindir}/libpcrecpp*.dll"
+FILES:libpcreposix:mingw32 = "${bindir}/libpcreposix*.dll"
+FILES:pcregrep:mingw32 = "${bindir}/pcregrep.exe"
+FILES:pcretest:mingw32 = "${bindir}/pcretest.exe"
 
diff --git a/recipes-support/mpfr/mpfr_4.1.%.bbappend b/recipes-support/mpfr/mpfr_4.1.%.bbappend
index 4252e8d..63eb066 100644
--- a/recipes-support/mpfr/mpfr_4.1.%.bbappend
+++ b/recipes-support/mpfr/mpfr_4.1.%.bbappend
@@ -1 +1 @@
-EXTRA_OECONF_append_mingw32 = " --disable-shared"
\ No newline at end of file
+EXTRA_OECONF:append:mingw32 = " --disable-shared"
\ No newline at end of file
-- 
2.30.2

