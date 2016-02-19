Return-Path: <radzy@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8E26E00CB6; Fri, 19 Feb 2016 15:03:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD34E00C6B
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 15:03:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u1JN3aCh010724
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 19 Feb 2016 15:03:37 -0800 (PST)
Received: from ala-d3039.corp.ad.wrs.com (147.11.216.93) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Fri, 19 Feb 2016 15:03:36 -0800
From: "T.O. Radzy Radzykewycz" <radzy@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 19 Feb 2016 14:59:01 -0800
Message-ID: <1455922741-3342-1-git-send-email-radzy@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 24 Feb 2016 09:01:13 -0800
Cc: xin.ouyang@windriver.com
Subject: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Fri, 19 Feb 2016 23:03:41 -0000
Content-Type: text/plain

A more recent version of swig is in meta-oe, and the local
version does not seem to provide any additional functionality or
security features.  So best to just use the one in meta-oe and
eliminate duplication.

Signed-off-by: T.O. Radzy Radzykewycz <radzy@windriver.com>
---
 recipes-devtools/swig/swig.inc                     | 59 ------------------
 ...lf-exe-for-swig-swiglib-on-non-Win32-plat.patch | 69 ----------------------
 ...nfigure-use-pkg-config-for-pcre-detection.patch | 65 --------------------
 recipes-devtools/swig/swig_2.0.10.bb               | 11 ----
 4 files changed, 204 deletions(-)
 delete mode 100644 recipes-devtools/swig/swig.inc
 delete mode 100644 recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch
 delete mode 100644 recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch
 delete mode 100644 recipes-devtools/swig/swig_2.0.10.bb

diff --git a/recipes-devtools/swig/swig.inc b/recipes-devtools/swig/swig.inc
deleted file mode 100644
index 74ce5064fe37..000000000000
--- a/recipes-devtools/swig/swig.inc
+++ /dev/null
@@ -1,59 +0,0 @@
-DESCRIPTION = "SWIG - Simplified Wrapper and Interface Generator"
-HOMEPAGE = "http://swig.sourceforge.net/"
-LICENSE = "BSD & GPLv3"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=e7807a6282784a7dde4c846626b08fc6 \
-                    file://LICENSE-GPL;md5=d32239bcb673463ab874e80d47fae504 \
-                    file://LICENSE-UNIVERSITIES;md5=8ce9dcc8f7c994de4a408b205c72ba08"
-
-SECTION = "devel"
-INC_PR = "r3"
-
-DEPENDS = "libpcre python"
-
-SRC_URI = "${SOURCEFORGE_MIRROR}/${BPN}/${BPN}-${PV}.tar.gz"
-
-inherit autotools pythonnative
-
-EXTRA_OECONF = " \
-    --with-python=${PYTHON} \
-    --without-allegrocl \
-    --without-android \
-    --without-boost \
-    --without-chicken \
-    --without-clisp \
-    --without-csharp \
-    --without-d \
-    --without-gcj \
-    --without-go \
-    --without-guile \
-    --without-java \
-    --without-lua \
-    --without-mzscheme \
-    --without-ocaml \
-    --without-octave \
-    --without-perl5 \
-    --without-pike \
-    --without-php \
-    --without-python3 \
-    --without-r \
-    --without-ruby \
-    --without-tcl \
-"
-
-BBCLASSEXTEND = "native nativesdk"
-
-do_configure() {
-    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.guess ${S}/Tools/config
-    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.sub ${S}/Tools/config
-    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.guess ${S}
-    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.sub ${S}
-    oe_runconf
-}
-
-def swiglib_relpath(d):
-    swiglib = d.getVar('datadir', True) + "/" + d.getVar('BPN', True) + "/" + d.getVar('PV', True)
-    return os.path.relpath(swiglib, d.getVar('bindir', True))
-
-do_install_append_class-native() {
-	create_wrapper ${D}${bindir}/swig SWIG_LIB='`dirname $''realpath`'/${@swiglib_relpath(d)}
-}
diff --git a/recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch b/recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch
deleted file mode 100644
index 81df3e264f52..000000000000
--- a/recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch
+++ /dev/null
@@ -1,69 +0,0 @@
-From a4a0440a644c6c5e5da096efe3cf05ba309a284f Mon Sep 17 00:00:00 2001
-From: "NODA, Kai" <nodakai@gmail.com>
-Date: Sun, 22 Apr 2012 17:01:02 +0900
-Subject: [PATCH] Use /proc/self/exe for "swig -swiglib" on non-Win32
- platforms.
-
-If it wasn't found, then fall back to a fixed string just as before.
-
-Upstream-Status: Submitted
-http://sourceforge.net/mailarchive/message.php?msg_id=29179733
-
----
- Source/Modules/main.cxx |   24 ++++++++++++++++++++++--
- 1 file changed, 22 insertions(+), 2 deletions(-)
-
-diff --git a/Source/Modules/main.cxx b/Source/Modules/main.cxx
-index d2f5d3b..cbb0a12 100644
---- a/Source/Modules/main.cxx
-+++ b/Source/Modules/main.cxx
-@@ -26,6 +26,11 @@ char cvsroot_main_cxx[] = "$Id$";
- #include "cparse.h"
- #include <ctype.h>
- #include <limits.h>		// for INT_MAX
-+#ifndef _WIN32
-+#include <cstddef>
-+#include <unistd.h>		// for readlink
-+#include <sys/stat.h>		// for stat
-+#endif
- 
- // Global variables
- 
-@@ -902,9 +907,9 @@ int SWIG_main(int argc, char *argv[], Language *l) {
- 
-   // Check for SWIG_LIB environment variable
-   if ((c = getenv("SWIG_LIB")) == (char *) 0) {
-+    char *p;
- #if defined(_WIN32)
-     char buf[MAX_PATH];
--    char *p;
-     if (!(GetModuleFileName(0, buf, MAX_PATH) == 0 || (p = strrchr(buf, '\\')) == 0)) {
-       *(p + 1) = '\0';
-       SwigLib = NewStringf("%sLib", buf); // Native windows installation path
-@@ -914,7 +919,22 @@ int SWIG_main(int argc, char *argv[], Language *l) {
-     if (Len(SWIG_LIB_WIN_UNIX) > 0)
-       SwigLibWinUnix = NewString(SWIG_LIB_WIN_UNIX); // Unix installation path using a drive letter (for msys/mingw)
- #else
--    SwigLib = NewString(SWIG_LIB);
-+    char buf[PATH_MAX];
-+    if (0 < ::readlink("/proc/self/exe", buf, sizeof(buf)) &&
-+        (p = ::strstr(buf, "/bin/swig"))) {
-+        int major, minor, patch;
-+        const int ret = ::sscanf(VERSION, "%d.%d.%d", &major, &minor, &patch);
-+        if (3 == ret) {
-+            const ::ptrdiff_t dir_part_len = p - buf;
-+            ::snprintf(p, PATH_MAX - dir_part_len, "/share/swig/%d.%d.%d", major, minor, patch);
-+            struct ::stat stat_res;
-+            if (0 == ::stat(buf, &stat_res) && S_ISDIR(stat_res.st_mode)) {
-+                SwigLib = NewString(buf);
-+            }
-+        }
-+    }
-+    if (NULL == SwigLib)
-+        SwigLib = NewString(SWIG_LIB);
- #endif
-   } else {
-     SwigLib = NewString(c);
--- 
-1.7.9.5
-
diff --git a/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch b/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch
deleted file mode 100644
index 5644b1531f19..000000000000
--- a/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-From cd596816f28407ac403bcb2249f964cefd81f22a Mon Sep 17 00:00:00 2001
-From: Koen Kooi <koen.kooi@linaro.org>
-Date: Tue, 17 Jun 2014 08:18:17 +0200
-Subject: [PATCH] configure: use pkg-config for pcre detection
-
-Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
-Upstream-Status: pending
----
- configure.ac |   39 +++++++--------------------------------
- 1 file changed, 7 insertions(+), 32 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index c94c2e9..24420c5 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -70,39 +70,14 @@ AC_MSG_RESULT([$with_pcre])
- 
- dnl To make configuring easier, check for a locally built PCRE using the Tools/pcre-build.sh script
- if test x"${with_pcre}" = xyes ; then 
--  AC_MSG_CHECKING([whether to use local PCRE])
--  local_pcre_config=no
--  if test -z $PCRE_CONFIG; then
--    if test -f `pwd`/pcre/pcre-swig-install/bin/pcre-config; then
--      PCRE_CONFIG=`pwd`/pcre/pcre-swig-install/bin/pcre-config
--      local_pcre_config=$PCRE_CONFIG
--    fi
--  fi
--  AC_MSG_RESULT([$local_pcre_config])
--fi
--AS_IF([test "x$with_pcre" != xno],
--  [AX_PATH_GENERIC([pcre],
--    [], dnl Minimal version of PCRE we need -- accept any
--    [], dnl custom sed script for version parsing is not needed
--    [AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
--     LIBS="$LIBS $PCRE_LIBS"
--     CPPFLAGS="$CPPFLAGS $PCRE_CFLAGS"
--    ],
--    [AC_MSG_FAILURE([
--        Cannot find pcre-config script from PCRE (Perl Compatible Regular Expressions)
--        library package. This dependency is needed for configure to complete,
--        Either:
--        - Install the PCRE developer package on your system (preferred approach).
--        - Download the PCRE source tarball, build and install on your system
--          as you would for any package built from source distribution.
--        - Use the Tools/pcre-build.sh script to build PCRE just for SWIG to statically
--          link against. Run 'Tools/pcre-build.sh --help' for instructions.
--          (quite easy and does not require privileges to install PCRE on your system)
--        - Use configure --without-pcre to disable regular expressions support in SWIG
--          (not recommended).])
--    ])
-+  PKG_CHECK_MODULES([PCRE], [libpcre], [
-+    AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
-+    LIBS="$LIBS $PCRE_LIBS"
-+    CPPFLAGS="$CPPFLAGS $PCRE_CFLAGS"
-+  ], [
-+    AC_MSG_WARN([$PCRE_PKG_ERRORS])
-   ])
--
-+fi
- 
- dnl CCache
- AC_ARG_ENABLE([ccache], AS_HELP_STRING([--disable-ccache], [disable building and installation of ccache-swig executable (default enabled)]), [enable_ccache=$enableval], [enable_ccache=yes])
--- 
-1.7.9.5
-
diff --git a/recipes-devtools/swig/swig_2.0.10.bb b/recipes-devtools/swig/swig_2.0.10.bb
deleted file mode 100644
index 5f1ff5992359..000000000000
--- a/recipes-devtools/swig/swig_2.0.10.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-require ${BPN}.inc
-
-PR = "${INC_PR}.0"
-
-SRC_URI += "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch \
-            file://0001-configure-use-pkg-config-for-pcre-detection.patch \
-           "
-
-SRC_URI[md5sum] = "6d5e7ad05b4a404e5e85db9befb70c9a"
-SRC_URI[sha256sum] = "d1eef329e867124ce60838b5ad07c763146b6c8f250dd22a861ead7406f78e63"
-
-- 
1.9.1


