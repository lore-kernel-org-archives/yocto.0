Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A248E00EDA; Mon,  5 Mar 2018 01:31:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B03E0107E
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:25 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id l43so16479885wrc.2
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=H3V6711DHug6W1yiAjdykzW3xk4s1xUz8D+5/zRGLJY=;
	b=kJQnM/eu9YXZhx8k7rSdvDBWBtdDXoFazrHwwP4yMJe9044tV2sLyYP2R4QYx5aaPt
	IYQ87TbA76wyRrfSZqlOG8KYkyF+Z0zf8/75TqQbUbJIv/u01nZDX+VQA59d/TH6hEqQ
	lE9wlrDp/gPTmnof6ACkFFd0ZdKzaxc15ee2k8n4RyyKOnEdNMPAnzMZnrOkPZ6cpt3C
	g9QebHQhAAXNTuLVokkBVWuwRdG3Hv3fIG6OFpUx2coPI/w3JoCfqQrsl8au4Sn3dVmy
	aByLYQFuohr4oIzuGr8VbyU1/lqeGqh0DduKhsyLRRZgHdivi3zccdrjzqps/ZF2PXHl
	HkbA==
X-Gm-Message-State: APf1xPDT+fJISaEoAG+Uy9IldolBsQ6612uS2iB5e0i+AxzGlULTw7h/
	cSdReKD7uPrF7Xn3oD8NJJ2vMTta
X-Google-Smtp-Source: AG47ELtcxpZ9RBgAq19W7je8yxcYIjCx9RH/ixEoECeA8mgkyEUb3+f4nXq25oGIvRyiqlS2QCHXdQ==
X-Received: by 10.223.209.197 with SMTP id m5mr12035049wri.121.1520242283746; 
	Mon, 05 Mar 2018 01:31:23 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.22 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:22 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:31:00 +0000
Message-Id: <20180305093106.11858-9-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 08/14] openjdk-8: add patches to support building against system libpng & libjpeg
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Mar 2018 09:31:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

This didn't actually before. Patches taken from Debian / OpenJDK-9.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-cross.inc           |   5 +-
 recipes-core/openjdk/openjdk-8-native.inc          |   6 +-
 recipes-core/openjdk/openjdk-8-release-162b12.inc  |   2 +
 ...dk-Allow-using-a-system-installed-libjpeg.patch | 262 +++++++++++++++++++++
 ...jdk-Allow-using-a-system-installed-libpng.patch | 148 ++++++++++++
 5 files changed, 420 insertions(+), 3 deletions(-)
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0003-jdk-Allow-using-a-system-installed-libjpeg.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0004-jdk-Allow-using-a-system-installed-libpng.patch

diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
index 3973fcf..40db2eb 100644
--- a/recipes-core/openjdk/openjdk-8-cross.inc
+++ b/recipes-core/openjdk/openjdk-8-cross.inc
@@ -3,7 +3,7 @@ JRE_HOME = "${libdir_jvm}/openjre-8"
 
 DEPENDS = "\
     openjdk-8-native zip-native ant-native libxslt \
-    jpeg libpng krb5 libffi fontconfig freetype \
+    krb5 libffi fontconfig freetype \
 "
 
 PRIVATE_LIBS = "\
@@ -19,6 +19,7 @@ PACKAGECONFIG ??= " \
     repack \
     ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11 cups', '', d)} \
     ${@bb.utils.contains('DISTRO_FEATURES', 'alsa', 'alsa', '', d)} \
+    jpeg png \
 "
 PACKAGECONFIG[x11] = "--with-x,,libx11 xproto libxt libxext libxrender libxtst"
 PACKAGECONFIG[cups] = "--with-cups,,cups"
@@ -28,6 +29,8 @@ PACKAGECONFIG[jce] = "--enable-unlimited-crypto,,"
 
 PACKAGECONFIG[zip] = "--with-zlib=system,--with-zlib=bundled,zlib,"
 PACKAGECONFIG[gif] = "--with-giflib=system,--with-giflib=bundled,giflib,"
+PACKAGECONFIG[jpeg] = "--with-libjpeg=system,--with-libjpeg=bundled,jpeg,"
+PACKAGECONFIG[png] = "--with-libpng=system,--with-libpng=bundled,libpng,"
 
 export WANT_LLVM_RELEASE = "3.5.2"
 PACKAGECONFIG[zero] = "--with-jvm-variants=zero,,,"
diff --git a/recipes-core/openjdk/openjdk-8-native.inc b/recipes-core/openjdk/openjdk-8-native.inc
index 20e1743..10b31bc 100644
--- a/recipes-core/openjdk/openjdk-8-native.inc
+++ b/recipes-core/openjdk/openjdk-8-native.inc
@@ -2,7 +2,7 @@ JDK_DIR = "openjdk-8-native"
 DEPENDS = "\
     icedtea7-native ant-native \
     libxslt-native attr-native \
-    giflib-native jpeg-native libpng-native \
+    giflib-native \
     glib-2.0-native freetype-native fontconfig-native \
     zlib-native zip-native \
     unzip-native make-native \
@@ -11,11 +11,13 @@ DEPENDS = "\
 
 SRC_URI_append += "file://handle_extra_output.patch"
 
-PACKAGECONFIG ??= ""
+PACKAGECONFIG ??= "jpeg png"
 PACKAGECONFIG[x11] = "--with-x,,libx11-native xproto-native libxt-native libxext-native libxrender-native"
 PACKAGECONFIG[cups] = "--with-cups,,cups"
 PACKAGECONFIG[alsa] = "--with-alsa,,alsa-lib-native"
 PACKAGECONFIG[jce] = "--enable-unlimited-crypto,,"
+PACKAGECONFIG[jpeg] = "--with-libjpeg=system,--with-libjpeg=bundled,jpeg-native"
+PACKAGECONFIG[png] = "--with-libpng=system,--with-libpng=bundled,libpng-native"
 
 EXTRA_OECONF_append = "\
     --with-jobs=${@java_get_parallel_make(d)} \
diff --git a/recipes-core/openjdk/openjdk-8-release-162b12.inc b/recipes-core/openjdk/openjdk-8-release-162b12.inc
index a36bc6a..d672148 100644
--- a/recipes-core/openjdk/openjdk-8-release-162b12.inc
+++ b/recipes-core/openjdk/openjdk-8-release-162b12.inc
@@ -8,6 +8,8 @@ PATCHES_URI = "\
     file://openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch;striplevel=0 \
     file://0001-jdk-comparison-between-pointer-and-integer.patch \
     file://0002-hotspot-fix-compilation-with-security-flags-enabled.patch \
+    file://0003-jdk-Allow-using-a-system-installed-libjpeg.patch \
+    file://0004-jdk-Allow-using-a-system-installed-libpng.patch \
 "
 # some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
 # reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
diff --git a/recipes-core/openjdk/patches-openjdk-8/0003-jdk-Allow-using-a-system-installed-libjpeg.patch b/recipes-core/openjdk/patches-openjdk-8/0003-jdk-Allow-using-a-system-installed-libjpeg.patch
new file mode 100644
index 0000000..a40e11f
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0003-jdk-Allow-using-a-system-installed-libjpeg.patch
@@ -0,0 +1,262 @@
+From a6746c1ee43a63e79b5405e40c463d00160bc02e Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 13:36:53 +0000
+Subject: [PATCH 3/8] jdk: Allow using a system-installed libjpeg
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Patch stolen (and some typos corrected) from debian patch,
+which itself was a backport from:
+  http://hg.openjdk.java.net/jdk9/client/rev/bfd9a3e1aeb5
+  http://hg.openjdk.java.net/jdk9/client/jdk/rev/320743f0b4fc
+
+Issues fixed on top of debian patch:
+  * imageIOJPEG.c -> imageioJPEG.c
+  * $(LIBJPEG_LIBS) must be added to LDFLAGS_SUFFIX, not
+    LDFLAGS as it otherwise doesn't make it into the linker
+    command line and then fails when using -Wl,-z,now in
+    LDFLAGS (as done when 'security' is enabled)
+
+Upstream-Status: Backport
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ common/autoconf/libraries.m4                       | 35 +++++++++--
+ jdk/make/lib/Awt2dLibraries.gmk                    | 69 +++++++++++++++-------
+ .../sun/imageio/plugins/jpeg/JPEGImageReader.java  |  2 +-
+ .../sun/imageio/plugins/jpeg/JPEGImageWriter.java  |  2 +-
+ .../classes/sun/awt/image/JPEGImageDecoder.java    |  2 +-
+ .../share/native/sun/awt/image/jpeg/imageioJPEG.c  |  2 +-
+ 6 files changed, 81 insertions(+), 31 deletions(-)
+
+diff --git a/common/autoconf/libraries.m4 b/common/autoconf/libraries.m4
+index 91b8ed7f..3f5f69b1 100644
+--- a/common/autoconf/libraries.m4
++++ b/common/autoconf/libraries.m4
+@@ -595,11 +595,36 @@ AC_DEFUN_ONCE([LIB_SETUP_MISC_LIBS],
+   # Check for the jpeg library
+   #
+ 
+-  USE_EXTERNAL_LIBJPEG=true
+-  AC_CHECK_LIB(jpeg, main, [],
+-      [ USE_EXTERNAL_LIBJPEG=false
+-      AC_MSG_NOTICE([Will use jpeg decoder bundled with the OpenJDK source])
+-  ])
++  AC_ARG_WITH(libjpeg, [AS_HELP_STRING([--with-libjpeg],
++      [use libjpeg from build system or OpenJDK source (system, bundled) @<:@bundled@:>@])])
++
++  AC_MSG_CHECKING([for which libjpeg to use])
++
++  # default is bundled
++  DEFAULT_LIBJPEG=bundled
++
++  #
++  # if user didn't specify, use DEFAULT_LIBJPEG
++  #
++  if test "x${with_libjpeg}" = "x"; then
++    with_libjpeg=${DEFAULT_LIBJPEG}
++  fi
++
++  AC_MSG_RESULT(${with_libjpeg})
++
++  if test "x${with_libjpeg}" = "xbundled"; then
++    USE_EXTERNAL_LIBJPEG=false
++  elif test "x${with_libjpeg}" = "xsystem"; then
++    AC_CHECK_HEADER(jpeglib.h, [],
++        [ AC_MSG_ERROR([--with-libjpeg=system specified, but jpeglib.h not found!])])
++    AC_CHECK_LIB(jpeg, jpeg_CreateDecompress, [],
++        [ AC_MSG_ERROR([--with-libjpeg=system specified, but no libjpeg found])])
++
++    USE_EXTERNAL_LIBJPEG=true
++  else
++    AC_MSG_ERROR([Invalid use of --with-libjpeg: ${with_libjpeg}, use 'system' or 'bundled'])
++  fi
++
+   AC_SUBST(USE_EXTERNAL_LIBJPEG)
+ 
+   ###############################################################################
+diff --git a/jdk/make/lib/Awt2dLibraries.gmk b/jdk/make/lib/Awt2dLibraries.gmk
+index aa7efc4a..8872a8e8 100644
+--- a/jdk/make/lib/Awt2dLibraries.gmk
++++ b/jdk/make/lib/Awt2dLibraries.gmk
+@@ -707,21 +707,24 @@ $(BUILD_LIBLCMS): $(BUILD_LIBAWT)
+ 
+ ##########################################################################################
+ 
++BUILD_LIBJAVAJPEG_DIR := $(JDK_TOPDIR)/src/share/native/sun/awt/image/jpeg
++
+ ifdef OPENJDK
+-  BUILD_LIBJPEG_MAPFILE := $(JDK_TOPDIR)/make/mapfiles/libjpeg/mapfile-vers
++  BUILD_LIBJAVAJPEG_MAPFILE := $(JDK_TOPDIR)/make/mapfiles/libjpeg/mapfile-vers
+ else
+-  BUILD_LIBJPEG_MAPFILE := $(JDK_TOPDIR)/make/mapfiles/libjpeg/mapfile-vers-closed
+-  BUILD_LIBJPEG_CLOSED_SRC := $(JDK_TOPDIR)/src/closed/share/native/sun/awt/image/jpeg
+-  BUILD_LIBJPEG_CLOSED_INCLUDES := -I$(BUILD_LIBJPEG_CLOSED_SRC)
++  BUILD_LIBJAVAJPEG_MAPFILE := $(JDK_TOPDIR)/make/mapfiles/libjpeg/mapfile-vers-closed
++  BUILD_LIBJAVAJPEG_CLOSED_SRC := $(JDK_TOPDIR)/src/closed/share/native/sun/awt/image/jpeg
++  BUILD_LIBJAVAJPEG_CLOSED_INCLUDES := -I$(BUILD_LIBJAVAJPEG_CLOSED_SRC)
+ endif
+ 
+-BUILD_LIBJPEG_REORDER :=
++BUILD_LIBJAVAJPEG_REORDER :=
+ ifeq ($(OPENJDK_TARGET_OS), solaris)
+   ifneq ($(OPENJDK_TARGET_CPU), x86_64)
+-    BUILD_LIBJPEG_REORDER := $(JDK_TOPDIR)/make/mapfiles/libjpeg/reorder-$(OPENJDK_TARGET_CPU)
++    BUILD_LIBJAVAJPEG_REORDER := $(JDK_TOPDIR)/make/mapfiles/libjpeg/reorder-$(OPENJDK_TARGET_CPU)
+   endif
+ endif
+ 
++
+ # Suppress gcc warnings like "variable might be clobbered by 'longjmp'
+ # or 'vfork'": this warning indicates that some variable is placed to
+ # a register by optimized compiler and it's value might be lost on longjmp().
+@@ -733,37 +736,50 @@ endif
+ #      $(shell $(EXPR) $(CC_MAJORVER) \> 4 \| \
+ #          \( $(CC_MAJORVER) = 4 \& $(CC_MINORVER) \>= 3 \) )
+ #  ifeq ($(CC_43_OR_NEWER), 1)
+-#    BUILD_LIBJPEG_CFLAGS_linux += -Wno-clobbered
++#    BUILD_LIBJAVAJPEG_CFLAGS_linux += -Wno-clobbered
+ #  endif
+ #endif
+ 
+-$(eval $(call SetupNativeCompilation,BUILD_LIBJPEG, \
+-    LIBRARY := jpeg, \
++ifeq ($(USE_EXTERNAL_LIBJPEG), true)
++  LIBJPEG_LIBS := -ljpeg
++  BUILD_LIBJAVAJPEG_INCLUDE_FILES := \
++      imageioJPEG.c \
++      jpegdecoder.c
++  BUILD_LIBJAVAJPEG_HEADERS :=
++else
++  LIBJPEG_LIBS :=
++  BUILD_LIBJAVAJPEG_INCLUDE_FILES :=
++  BUILD_LIBJAVAJPEG_HEADERS := -I$(BUILD_LIBJAVAJPEG_DIR)
++endif
++
++$(eval $(call SetupNativeCompilation,BUILD_LIBJAVAJPEG, \
++    LIBRARY := javajpeg, \
+     OUTPUT_DIR := $(INSTALL_LIBRARIES_HERE), \
+-    SRC := $(BUILD_LIBJPEG_CLOSED_SRC) \
+-        $(JDK_TOPDIR)/src/share/native/sun/awt/image/jpeg, \
++    SRC := $(BUILD_LIBJAVAJPEG_CLOSED_SRC) \
++        $(BUILD_LIBJAVAJPEG_DIR), \
++    INCLUDE_FILES := $(BUILD_LIBJAVAJPEG_INCLUDE_FILES), \
+     LANG := C, \
+     OPTIMIZATION := HIGHEST, \
+     CFLAGS := $(CFLAGS_JDKLIB) \
+-        $(BUILD_LIBJPEG_CLOSED_INCLUDES) \
+-        -I$(JDK_TOPDIR)/src/share/native/sun/awt/image/jpeg, \
+-    MAPFILE := $(BUILD_LIBJPEG_MAPFILE), \
++        $(BUILD_LIBJAVAJPEG_CLOSED_INCLUDES) \
++        $(BUILD_LIBJAVAJPEG_HEADERS), \
++    MAPFILE := $(BUILD_LIBJAVAJPEG_MAPFILE), \
+     LDFLAGS := $(LDFLAGS_JDKLIB) \
+         $(call SET_SHARED_LIBRARY_ORIGIN), \
+     LDFLAGS_windows := $(WIN_JAVA_LIB) jvm.lib, \
+-    LDFLAGS_SUFFIX := $(LDFLAGS_JDKLIB_SUFFIX), \
++    LDFLAGS_SUFFIX := $(LDFLAGS_JDKLIB_SUFFIX) $(LIBJPEG_LIBS), \
+     VERSIONINFO_RESOURCE := $(JDK_TOPDIR)/src/windows/resource/version.rc, \
+     RC_FLAGS := $(RC_FLAGS) \
+-        -D "JDK_FNAME=jpeg.dll" \
+-        -D "JDK_INTERNAL_NAME=jpeg" \
++        -D "JDK_FNAME=javajpeg.dll" \
++        -D "JDK_INTERNAL_NAME=javajpeg" \
+         -D "JDK_FTYPE=0x2L", \
+-    REORDER := $(BUILD_LIBJPEG_REORDER), \
++    REORDER := $(BUILD_LIBJAVAJPEG_REORDER), \
+     OBJECT_DIR := $(JDK_OUTPUTDIR)/objs/libjpeg, \
+     DEBUG_SYMBOLS := $(DEBUG_ALL_BINARIES)))
+ 
+-$(BUILD_LIBJPEG): $(BUILD_LIBJAVA)
++$(BUILD_LIBJAVAJPEG): $(BUILD_LIBJAVA)
+ 
+-BUILD_LIBRARIES += $(BUILD_LIBJPEG)
++BUILD_LIBRARIES += $(BUILD_LIBJAVAJPEG)
+ 
+ ##########################################################################################
+ 
+@@ -1213,6 +1229,13 @@ ifndef BUILD_HEADLESS_ONLY
+     GIFLIB_CFLAGS := -I$(JDK_TOPDIR)/src/share/native/sun/awt/giflib
+   endif
+ 
++  ifeq ($(USE_EXTERNAL_LIBJPEG), true)
++    LIBJPEG_LDFLAGS := -ljpeg
++  else
++    LIBSPLASHSCREEN_DIRS += $(JDK_TOPDIR)/src/share/native/sun/awt/image/jpeg
++    LIBJPEG_CFLAGS := -I$(JDK_TOPDIR)/src/share/native/sun/awt/image/jpeg
++  endif
++
+   ifneq ($(OPENJDK_TARGET_OS), macosx)
+     LIBSPLASHSCREEN_DIRS += $(JDK_TOPDIR)/src/$(OPENJDK_TARGET_OS_API_DIR)/native/sun/awt/splashscreen
+   else
+@@ -1273,11 +1296,13 @@ ifndef BUILD_HEADLESS_ONLY
+       EXCLUDE_FILES := imageioJPEG.c jpegdecoder.c pngtest.c, \
+       LANG := C, \
+       OPTIMIZATION := LOW, \
+-      CFLAGS := $(LIBSPLASHSCREEN_CFLAGS) $(CFLAGS_JDKLIB) $(GIFLIB_CFLAGS), \
++      CFLAGS := $(LIBSPLASHSCREEN_CFLAGS) $(CFLAGS_JDKLIB) \
++                $(GIFLIB_CFLAGS) $(LIBJPEG_CFLAGS), \
+       MAPFILE := $(JDK_TOPDIR)/make/mapfiles/libsplashscreen/mapfile-vers, \
+       LDFLAGS := $(LDFLAGS_JDKLIB) \
+           $(call SET_SHARED_LIBRARY_ORIGIN), \
+-      LDFLAGS_SUFFIX := $(LIBSPLASHSCREEN_LDFLAGS_SUFFIX) $(LIBZ) $(GIFLIB_LDFLAGS), \
++      LDFLAGS_SUFFIX := $(LIBSPLASHSCREEN_LDFLAGS_SUFFIX) $(LIBZ) \
++                        $(GIFLIB_LDFLAGS) $(LIBJPEG_LDFLAGS), \
+       LDFLAGS_SUFFIX_solaris := -lc, \
+       VERSIONINFO_RESOURCE := $(JDK_TOPDIR)/src/windows/resource/version.rc, \
+       RC_FLAGS := $(RC_FLAGS) \
+diff --git a/jdk/src/share/classes/com/sun/imageio/plugins/jpeg/JPEGImageReader.java b/jdk/src/share/classes/com/sun/imageio/plugins/jpeg/JPEGImageReader.java
+index 5c93d89e..5efc00a7 100644
+--- a/jdk/src/share/classes/com/sun/imageio/plugins/jpeg/JPEGImageReader.java
++++ b/jdk/src/share/classes/com/sun/imageio/plugins/jpeg/JPEGImageReader.java
+@@ -89,7 +89,7 @@ public class JPEGImageReader extends ImageReader {
+         java.security.AccessController.doPrivileged(
+             new java.security.PrivilegedAction<Void>() {
+                 public Void run() {
+-                    System.loadLibrary("jpeg");
++                    System.loadLibrary("javajpeg");
+                     return null;
+                 }
+             });
+diff --git a/jdk/src/share/classes/com/sun/imageio/plugins/jpeg/JPEGImageWriter.java b/jdk/src/share/classes/com/sun/imageio/plugins/jpeg/JPEGImageWriter.java
+index 6a33bd5a..dca189ed 100644
+--- a/jdk/src/share/classes/com/sun/imageio/plugins/jpeg/JPEGImageWriter.java
++++ b/jdk/src/share/classes/com/sun/imageio/plugins/jpeg/JPEGImageWriter.java
+@@ -177,7 +177,7 @@ public class JPEGImageWriter extends ImageWriter {
+         java.security.AccessController.doPrivileged(
+             new java.security.PrivilegedAction<Void>() {
+                 public Void run() {
+-                    System.loadLibrary("jpeg");
++                    System.loadLibrary("javajpeg");
+                     return null;
+                 }
+             });
+diff --git a/jdk/src/share/classes/sun/awt/image/JPEGImageDecoder.java b/jdk/src/share/classes/sun/awt/image/JPEGImageDecoder.java
+index 872ffc01..5965a186 100644
+--- a/jdk/src/share/classes/sun/awt/image/JPEGImageDecoder.java
++++ b/jdk/src/share/classes/sun/awt/image/JPEGImageDecoder.java
+@@ -56,7 +56,7 @@ public class JPEGImageDecoder extends ImageDecoder {
+         java.security.AccessController.doPrivileged(
+             new java.security.PrivilegedAction<Void>() {
+                 public Void run() {
+-                    System.loadLibrary("jpeg");
++                    System.loadLibrary("javajpeg");
+                     return null;
+                 }
+             });
+diff --git a/jdk/src/share/native/sun/awt/image/jpeg/imageioJPEG.c b/jdk/src/share/native/sun/awt/image/jpeg/imageioJPEG.c
+index 7e1d8c99..8cac61da 100644
+--- a/jdk/src/share/native/sun/awt/image/jpeg/imageioJPEG.c
++++ b/jdk/src/share/native/sun/awt/image/jpeg/imageioJPEG.c
+@@ -51,7 +51,7 @@
+ 
+ /* headers from the JPEG library */
+ #include <jpeglib.h>
+-#include "jerror.h"
++#include <jerror.h>
+ 
+ #undef MAX
+ #define MAX(a,b)        ((a) > (b) ? (a) : (b))
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/0004-jdk-Allow-using-a-system-installed-libpng.patch b/recipes-core/openjdk/patches-openjdk-8/0004-jdk-Allow-using-a-system-installed-libpng.patch
new file mode 100644
index 0000000..af00bef
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0004-jdk-Allow-using-a-system-installed-libpng.patch
@@ -0,0 +1,148 @@
+From 549100e3e687d2c844eeebe22a7dcbf7ed50406e Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 13:43:04 +0000
+Subject: [PATCH 4/8] jdk: Allow using a system-installed libpng
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Patch stolen (and some typos corrected) from debian patch,
+which itself was a backport from:
+  http://hg.openjdk.java.net/jdk9/jdk9/rev/bfc1c131e540
+  http://hg.openjdk.java.net/jdk9/jdk9/jdk/rev/5e503831b142
+
+Issues fixed on top of debian patch:
+  * the default when --with-libpng= is not given works
+  * using the bundled libpng works
+
+Upstream-Status: Backport
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ common/autoconf/libraries.m4                       | 41 ++++++++++++++++++++++
+ common/autoconf/spec.gmk.in                        |  1 +
+ jdk/make/lib/Awt2dLibraries.gmk                    | 12 +++++--
+ .../native/sun/awt/splashscreen/splashscreen_png.c |  3 +-
+ 4 files changed, 52 insertions(+), 5 deletions(-)
+
+diff --git a/common/autoconf/libraries.m4 b/common/autoconf/libraries.m4
+index 3f5f69b1..e419a050 100644
+--- a/common/autoconf/libraries.m4
++++ b/common/autoconf/libraries.m4
+@@ -664,6 +664,47 @@ AC_DEFUN_ONCE([LIB_SETUP_MISC_LIBS],
+   fi
+   AC_SUBST(USE_EXTERNAL_LIBGIF)
+ 
++  ###############################################################################
++  #
++  # Check for the png library
++  #
++
++  AC_ARG_WITH(libpng, [AS_HELP_STRING([--with-libpng],
++     [use libpng from build system or OpenJDK source (system, bundled) @<:@bundled@:>@])])
++
++  AC_CHECK_LIB(png, png_sig_cmp,
++               [ LIBPNG_FOUND=yes ],
++               [ LIBPNG_FOUND=no ])
++
++  AC_MSG_CHECKING([for which libpng to use])
++
++  # default is bundled
++  DEFAULT_LIBPNG=bundled
++
++  #
++  # if user didn't specify, use DEFAULT_LIBPNG
++  #
++  if test "x${with_libpng}" = "x"; then
++      with_libpng=${DEFAULT_LIBPNG}
++  fi
++
++
++  if test "x${with_libpng}" = "xbundled"; then
++      USE_EXTERNAL_LIBPNG=false
++      AC_MSG_RESULT([bundled])
++  elif test "x${with_libpng}" = "xsystem"; then
++      if test "x${LIBPNG_FOUND}" = "xyes"; then
++          USE_EXTERNAL_LIBPNG=true
++          AC_MSG_RESULT([system])
++      else
++          AC_MSG_RESULT([system not found])
++          AC_MSG_ERROR([--with-libpng=system specified, but no libpng found!])
++      fi
++  else
++      AC_MSG_ERROR([Invalid value of --with-libpng: ${with_libpng}, use 'system' or 'bundled'])
++  fi
++  AC_SUBST(USE_EXTERNAL_LIBPNG)
++
+   ###############################################################################
+   #
+   # Check for the zlib library
+diff --git a/common/autoconf/spec.gmk.in b/common/autoconf/spec.gmk.in
+index 1c418f29..2c802c0a 100644
+--- a/common/autoconf/spec.gmk.in
++++ b/common/autoconf/spec.gmk.in
+@@ -567,6 +567,7 @@ endif
+ ENABLE_JFR=@ENABLE_JFR@
+ ENABLE_INTREE_EC=@ENABLE_INTREE_EC@
+ USE_EXTERNAL_LIBJPEG:=@USE_EXTERNAL_LIBJPEG@
++USE_EXTERNAL_LIBPNG:=@USE_EXTERNAL_LIBPNG@
+ USE_EXTERNAL_LIBGIF:=@USE_EXTERNAL_LIBGIF@
+ USE_EXTERNAL_LIBZ:=@USE_EXTERNAL_LIBZ@
+ LIBZIP_CAN_USE_MMAP:=@LIBZIP_CAN_USE_MMAP@
+diff --git a/jdk/make/lib/Awt2dLibraries.gmk b/jdk/make/lib/Awt2dLibraries.gmk
+index 8872a8e8..c577951a 100644
+--- a/jdk/make/lib/Awt2dLibraries.gmk
++++ b/jdk/make/lib/Awt2dLibraries.gmk
+@@ -1219,7 +1219,6 @@ endif
+ ifndef BUILD_HEADLESS_ONLY
+   LIBSPLASHSCREEN_DIRS := \
+     $(JDK_TOPDIR)/src/share/native/sun/awt/image/jpeg \
+-    $(JDK_TOPDIR)/src/share/native/sun/awt/libpng \
+     $(JDK_TOPDIR)/src/share/native/sun/awt/splashscreen
+ 
+   ifeq ($(USE_EXTERNAL_LIBGIF), true)
+@@ -1236,6 +1235,13 @@ ifndef BUILD_HEADLESS_ONLY
+     LIBJPEG_CFLAGS := -I$(JDK_TOPDIR)/src/share/native/sun/awt/image/jpeg
+   endif
+ 
++  ifeq ($(USE_EXTERNAL_LIBPNG), true)
++    LIBPNG_LDFLAGS := -lpng
++  else
++    LIBSPLASHSCREEN_DIRS += $(JDK_TOPDIR)/src/share/native/sun/awt/libpng
++    LIBPNG_CFLAGS := -I$(JDK_TOPDIR)/src/share/native/sun/awt/libpng
++  endif
++
+   ifneq ($(OPENJDK_TARGET_OS), macosx)
+     LIBSPLASHSCREEN_DIRS += $(JDK_TOPDIR)/src/$(OPENJDK_TARGET_OS_API_DIR)/native/sun/awt/splashscreen
+   else
+@@ -1297,12 +1303,12 @@ ifndef BUILD_HEADLESS_ONLY
+       LANG := C, \
+       OPTIMIZATION := LOW, \
+       CFLAGS := $(LIBSPLASHSCREEN_CFLAGS) $(CFLAGS_JDKLIB) \
+-                $(GIFLIB_CFLAGS) $(LIBJPEG_CFLAGS), \
++                $(GIFLIB_CFLAGS) $(LIBJPEG_CFLAGS) $(LIBPNG_CFLAGS), \
+       MAPFILE := $(JDK_TOPDIR)/make/mapfiles/libsplashscreen/mapfile-vers, \
+       LDFLAGS := $(LDFLAGS_JDKLIB) \
+           $(call SET_SHARED_LIBRARY_ORIGIN), \
+       LDFLAGS_SUFFIX := $(LIBSPLASHSCREEN_LDFLAGS_SUFFIX) $(LIBZ) \
+-                        $(GIFLIB_LDFLAGS) $(LIBJPEG_LDFLAGS), \
++                        $(GIFLIB_LDFLAGS) $(LIBJPEG_LDFLAGS) $(LIBPNG_LDFLAGS), \
+       LDFLAGS_SUFFIX_solaris := -lc, \
+       VERSIONINFO_RESOURCE := $(JDK_TOPDIR)/src/windows/resource/version.rc, \
+       RC_FLAGS := $(RC_FLAGS) \
+diff --git a/jdk/src/share/native/sun/awt/splashscreen/splashscreen_png.c b/jdk/src/share/native/sun/awt/splashscreen/splashscreen_png.c
+index 3599433e..5bf002ea 100644
+--- a/jdk/src/share/native/sun/awt/splashscreen/splashscreen_png.c
++++ b/jdk/src/share/native/sun/awt/splashscreen/splashscreen_png.c
+@@ -25,8 +25,7 @@
+ 
+ #include "splashscreen_impl.h"
+ 
+-#include "../libpng/png.h"
+-
++#include <png.h>
+ #include <setjmp.h>
+ 
+ #define SIG_BYTES 8
+-- 
+2.16.2
+
-- 
2.16.2


