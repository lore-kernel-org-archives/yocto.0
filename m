Return-Path: <radzy@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4052EE00838; Mon, 22 Feb 2016 06:51:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F014AE0079A
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 06:51:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u1MEpK6P002358
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 22 Feb 2016 06:51:20 -0800
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.1.108]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0248.002;
	Mon, 22 Feb 2016 06:51:19 -0800
From: "Radzykewycz, T (Radzy)" <radzy@windriver.com>
To: "Hatle, Mark" <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
Thread-Index: AQHRa2nD1CVCj7hxZ0uPOTIkpQxma584rSIA//98elg=
Date: Mon, 22 Feb 2016 14:51:18 +0000
Message-ID: <33006C99F5A5194A9B7A7715DFA3E383EB81AF8A@ALA-MBB.corp.ad.wrs.com>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>,
	<56CB1DC8.1030505@windriver.com>
In-Reply-To: <56CB1DC8.1030505@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.216.89]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 24 Feb 2016 09:01:13 -0800
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Mon, 22 Feb 2016 14:51:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It's easy enough to update the one in meta-selinux, if the decision is
to keep the duplicate.  I have a 3.0.6 =3D> 3.0.8 update ready to upload
to meta-oe, and I can do meta-selinux at the same time.


________________________________________
From: Mark Hatle [mark.hatle@windriver.com]
Sent: Monday, February 22, 2016 6:40 AM
To: Radzykewycz, T (Radzy); yocto@yoctoproject.org
Cc: joe_macdonald@mentor.com; Philip Tricca
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy

On 2/19/16 4:59 PM, T.O. Radzy Radzykewycz wrote:
> A more recent version of swig is in meta-oe, and the local
> version does not seem to provide any additional functionality or
> security features.  So best to just use the one in meta-oe and
> eliminate duplication.
>
> Signed-off-by: T.O. Radzy Radzykewycz <radzy@windriver.com>

In the past we carried our own version of swig to break any dependency on m=
eta-oe.

I'm not sure if we want to keep doing that or not -- but if we do keep our =
own
version, we need to make sure it stays in sync w/ meta-oe (and the needs of=
 the
selinux components).

Joe/Philip, any comments?

(I'm not against removing the local copy, but I want to make sure it makes =
sense
first.)

--Mark

> ---
>  recipes-devtools/swig/swig.inc                     | 59 ----------------=
--
>  ...lf-exe-for-swig-swiglib-on-non-Win32-plat.patch | 69 ----------------=
------
>  ...nfigure-use-pkg-config-for-pcre-detection.patch | 65 ----------------=
----
>  recipes-devtools/swig/swig_2.0.10.bb               | 11 ----
>  4 files changed, 204 deletions(-)
>  delete mode 100644 recipes-devtools/swig/swig.inc
>  delete mode 100644 recipes-devtools/swig/swig/0001-Use-proc-self-exe-for=
-swig-swiglib-on-non-Win32-plat.patch
>  delete mode 100644 recipes-devtools/swig/swig/0001-configure-use-pkg-con=
fig-for-pcre-detection.patch
>  delete mode 100644 recipes-devtools/swig/swig_2.0.10.bb
>
> diff --git a/recipes-devtools/swig/swig.inc b/recipes-devtools/swig/swig.=
inc
> deleted file mode 100644
> index 74ce5064fe37..000000000000
> --- a/recipes-devtools/swig/swig.inc
> +++ /dev/null
> @@ -1,59 +0,0 @@
> -DESCRIPTION =3D "SWIG - Simplified Wrapper and Interface Generator"
> -HOMEPAGE =3D "http://swig.sourceforge.net/"
> -LICENSE =3D "BSD & GPLv3"
> -LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3De7807a6282784a7dde4c846626b08=
fc6 \
> -                    file://LICENSE-GPL;md5=3Dd32239bcb673463ab874e80d47f=
ae504 \
> -                    file://LICENSE-UNIVERSITIES;md5=3D8ce9dcc8f7c994de4a=
408b205c72ba08"
> -
> -SECTION =3D "devel"
> -INC_PR =3D "r3"
> -
> -DEPENDS =3D "libpcre python"
> -
> -SRC_URI =3D "${SOURCEFORGE_MIRROR}/${BPN}/${BPN}-${PV}.tar.gz"
> -
> -inherit autotools pythonnative
> -
> -EXTRA_OECONF =3D " \
> -    --with-python=3D${PYTHON} \
> -    --without-allegrocl \
> -    --without-android \
> -    --without-boost \
> -    --without-chicken \
> -    --without-clisp \
> -    --without-csharp \
> -    --without-d \
> -    --without-gcj \
> -    --without-go \
> -    --without-guile \
> -    --without-java \
> -    --without-lua \
> -    --without-mzscheme \
> -    --without-ocaml \
> -    --without-octave \
> -    --without-perl5 \
> -    --without-pike \
> -    --without-php \
> -    --without-python3 \
> -    --without-r \
> -    --without-ruby \
> -    --without-tcl \
> -"
> -
> -BBCLASSEXTEND =3D "native nativesdk"
> -
> -do_configure() {
> -    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.guess ${=
S}/Tools/config
> -    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.sub ${S}=
/Tools/config
> -    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.guess ${=
S}
> -    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.sub ${S}
> -    oe_runconf
> -}
> -
> -def swiglib_relpath(d):
> -    swiglib =3D d.getVar('datadir', True) + "/" + d.getVar('BPN', True) =
+ "/" + d.getVar('PV', True)
> -    return os.path.relpath(swiglib, d.getVar('bindir', True))
> -
> -do_install_append_class-native() {
> -     create_wrapper ${D}${bindir}/swig SWIG_LIB=3D'`dirname $''realpath`=
'/${@swiglib_relpath(d)}
> -}
> diff --git a/recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-swig-s=
wiglib-on-non-Win32-plat.patch b/recipes-devtools/swig/swig/0001-Use-proc-s=
elf-exe-for-swig-swiglib-on-non-Win32-plat.patch
> deleted file mode 100644
> index 81df3e264f52..000000000000
> --- a/recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-swig-swiglib-=
on-non-Win32-plat.patch
> +++ /dev/null
> @@ -1,69 +0,0 @@
> -From a4a0440a644c6c5e5da096efe3cf05ba309a284f Mon Sep 17 00:00:00 2001
> -From: "NODA, Kai" <nodakai@gmail.com>
> -Date: Sun, 22 Apr 2012 17:01:02 +0900
> -Subject: [PATCH] Use /proc/self/exe for "swig -swiglib" on non-Win32
> - platforms.
> -
> -If it wasn't found, then fall back to a fixed string just as before.
> -
> -Upstream-Status: Submitted
> -http://sourceforge.net/mailarchive/message.php?msg_id=3D29179733
> -
> ----
> - Source/Modules/main.cxx |   24 ++++++++++++++++++++++--
> - 1 file changed, 22 insertions(+), 2 deletions(-)
> -
> -diff --git a/Source/Modules/main.cxx b/Source/Modules/main.cxx
> -index d2f5d3b..cbb0a12 100644
> ---- a/Source/Modules/main.cxx
> -+++ b/Source/Modules/main.cxx
> -@@ -26,6 +26,11 @@ char cvsroot_main_cxx[] =3D "$Id$";
> - #include "cparse.h"
> - #include <ctype.h>
> - #include <limits.h>         // for INT_MAX
> -+#ifndef _WIN32
> -+#include <cstddef>
> -+#include <unistd.h>         // for readlink
> -+#include <sys/stat.h>               // for stat
> -+#endif
> -
> - // Global variables
> -
> -@@ -902,9 +907,9 @@ int SWIG_main(int argc, char *argv[], Language *l) {
> -
> -   // Check for SWIG_LIB environment variable
> -   if ((c =3D getenv("SWIG_LIB")) =3D=3D (char *) 0) {
> -+    char *p;
> - #if defined(_WIN32)
> -     char buf[MAX_PATH];
> --    char *p;
> -     if (!(GetModuleFileName(0, buf, MAX_PATH) =3D=3D 0 || (p =3D strrch=
r(buf, '\\')) =3D=3D 0)) {
> -       *(p + 1) =3D '\0';
> -       SwigLib =3D NewStringf("%sLib", buf); // Native windows installat=
ion path
> -@@ -914,7 +919,22 @@ int SWIG_main(int argc, char *argv[], Language *l) =
{
> -     if (Len(SWIG_LIB_WIN_UNIX) > 0)
> -       SwigLibWinUnix =3D NewString(SWIG_LIB_WIN_UNIX); // Unix installa=
tion path using a drive letter (for msys/mingw)
> - #else
> --    SwigLib =3D NewString(SWIG_LIB);
> -+    char buf[PATH_MAX];
> -+    if (0 < ::readlink("/proc/self/exe", buf, sizeof(buf)) &&
> -+        (p =3D ::strstr(buf, "/bin/swig"))) {
> -+        int major, minor, patch;
> -+        const int ret =3D ::sscanf(VERSION, "%d.%d.%d", &major, &minor,=
 &patch);
> -+        if (3 =3D=3D ret) {
> -+            const ::ptrdiff_t dir_part_len =3D p - buf;
> -+            ::snprintf(p, PATH_MAX - dir_part_len, "/share/swig/%d.%d.%=
d", major, minor, patch);
> -+            struct ::stat stat_res;
> -+            if (0 =3D=3D ::stat(buf, &stat_res) && S_ISDIR(stat_res.st_=
mode)) {
> -+                SwigLib =3D NewString(buf);
> -+            }
> -+        }
> -+    }
> -+    if (NULL =3D=3D SwigLib)
> -+        SwigLib =3D NewString(SWIG_LIB);
> - #endif
> -   } else {
> -     SwigLib =3D NewString(c);
> ---
> -1.7.9.5
> -
> diff --git a/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for=
-pcre-detection.patch b/recipes-devtools/swig/swig/0001-configure-use-pkg-c=
onfig-for-pcre-detection.patch
> deleted file mode 100644
> index 5644b1531f19..000000000000
> --- a/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-d=
etection.patch
> +++ /dev/null
> @@ -1,65 +0,0 @@
> -From cd596816f28407ac403bcb2249f964cefd81f22a Mon Sep 17 00:00:00 2001
> -From: Koen Kooi <koen.kooi@linaro.org>
> -Date: Tue, 17 Jun 2014 08:18:17 +0200
> -Subject: [PATCH] configure: use pkg-config for pcre detection
> -
> -Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
> -Upstream-Status: pending
> ----
> - configure.ac |   39 +++++++--------------------------------
> - 1 file changed, 7 insertions(+), 32 deletions(-)
> -
> -diff --git a/configure.ac b/configure.ac
> -index c94c2e9..24420c5 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -70,39 +70,14 @@ AC_MSG_RESULT([$with_pcre])
> -
> - dnl To make configuring easier, check for a locally built PCRE using th=
e Tools/pcre-build.sh script
> - if test x"${with_pcre}" =3D xyes ; then
> --  AC_MSG_CHECKING([whether to use local PCRE])
> --  local_pcre_config=3Dno
> --  if test -z $PCRE_CONFIG; then
> --    if test -f `pwd`/pcre/pcre-swig-install/bin/pcre-config; then
> --      PCRE_CONFIG=3D`pwd`/pcre/pcre-swig-install/bin/pcre-config
> --      local_pcre_config=3D$PCRE_CONFIG
> --    fi
> --  fi
> --  AC_MSG_RESULT([$local_pcre_config])
> --fi
> --AS_IF([test "x$with_pcre" !=3D xno],
> --  [AX_PATH_GENERIC([pcre],
> --    [], dnl Minimal version of PCRE we need -- accept any
> --    [], dnl custom sed script for version parsing is not needed
> --    [AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
> --     LIBS=3D"$LIBS $PCRE_LIBS"
> --     CPPFLAGS=3D"$CPPFLAGS $PCRE_CFLAGS"
> --    ],
> --    [AC_MSG_FAILURE([
> --        Cannot find pcre-config script from PCRE (Perl Compatible Regul=
ar Expressions)
> --        library package. This dependency is needed for configure to com=
plete,
> --        Either:
> --        - Install the PCRE developer package on your system (preferred =
approach).
> --        - Download the PCRE source tarball, build and install on your s=
ystem
> --          as you would for any package built from source distribution.
> --        - Use the Tools/pcre-build.sh script to build PCRE just for SWI=
G to statically
> --          link against. Run 'Tools/pcre-build.sh --help' for instructio=
ns.
> --          (quite easy and does not require privileges to install PCRE o=
n your system)
> --        - Use configure --without-pcre to disable regular expressions s=
upport in SWIG
> --          (not recommended).])
> --    ])
> -+  PKG_CHECK_MODULES([PCRE], [libpcre], [
> -+    AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
> -+    LIBS=3D"$LIBS $PCRE_LIBS"
> -+    CPPFLAGS=3D"$CPPFLAGS $PCRE_CFLAGS"
> -+  ], [
> -+    AC_MSG_WARN([$PCRE_PKG_ERRORS])
> -   ])
> --
> -+fi
> -
> - dnl CCache
> - AC_ARG_ENABLE([ccache], AS_HELP_STRING([--disable-ccache], [disable bui=
lding and installation of ccache-swig executable (default enabled)]), [enab=
le_ccache=3D$enableval], [enable_ccache=3Dyes])
> ---
> -1.7.9.5
> -
> diff --git a/recipes-devtools/swig/swig_2.0.10.bb b/recipes-devtools/swig=
/swig_2.0.10.bb
> deleted file mode 100644
> index 5f1ff5992359..000000000000
> --- a/recipes-devtools/swig/swig_2.0.10.bb
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -require ${BPN}.inc
> -
> -PR =3D "${INC_PR}.0"
> -
> -SRC_URI +=3D "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win3=
2-plat.patch \
> -            file://0001-configure-use-pkg-config-for-pcre-detection.patc=
h \
> -           "
> -
> -SRC_URI[md5sum] =3D "6d5e7ad05b4a404e5e85db9befb70c9a"
> -SRC_URI[sha256sum] =3D "d1eef329e867124ce60838b5ad07c763146b6c8f250dd22a=
861ead7406f78e63"
> -
>


