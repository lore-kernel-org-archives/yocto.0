Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30F76E00C4F; Mon, 22 Feb 2016 07:57:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id AF0D7E00C31
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:57:47 -0800 (PST)
Received: (qmail 22988 invoked by uid 1003); 22 Feb 2016 15:57:46 -0000
Received: from unknown (HELO ?192.168.11.140?)
	(philip@opensdr.com@71.171.13.83)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	22 Feb 2016 15:57:46 -0000
To: Joe MacDonald <Joe_MacDonald@mentor.com>,
	Mark Hatle <mark.hatle@windriver.com>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>
	<56CB1DC8.1030505@windriver.com> <20160222153336.GB2255@mentor.com>
From: Philip Balister <philip@balister.org>
Message-ID: <56CB2FF4.5040501@balister.org>
Date: Mon, 22 Feb 2016 10:57:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <20160222153336.GB2255@mentor.com>
Cc: "T.O. Radzy Radzykewycz" <radzy@windriver.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 22 Feb 2016 15:57:51 -0000
X-Groupsio-MsgNum: 28559
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="ibToQDvGEn2JNbfT3IRt6qUm6SFv2wCp3"

--ibToQDvGEn2JNbfT3IRt6qUm6SFv2wCp3
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 02/22/2016 10:33 AM, Joe MacDonald wrote:
> [Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy] On 16.=
02.22 (Mon 08:40) Mark Hatle wrote:
>=20
>> On 2/19/16 4:59 PM, T.O. Radzy Radzykewycz wrote:
>>> A more recent version of swig is in meta-oe, and the local
>>> version does not seem to provide any additional functionality or
>>> security features.  So best to just use the one in meta-oe and
>>> eliminate duplication.
>>>
>>> Signed-off-by: T.O. Radzy Radzykewycz <radzy@windriver.com>
>>
>> In the past we carried our own version of swig to break any dependency=
 on meta-oe.
>>
>> I'm not sure if we want to keep doing that or not -- but if we do keep=
 our own
>> version, we need to make sure it stays in sync w/ meta-oe (and the nee=
ds of the
>> selinux components).
>>
>> Joe/Philip, any comments?
>>
>> (I'm not against removing the local copy, but I want to make sure it m=
akes sense
>> first.)
>=20
> I'm also not against removing the local copy (I don't think it adds
> anything to the layer and occasionally causes headaches), but I really
> don't want to make meta-selinux dependent on meta-oe components, so I
> guess I'm voting for keeping it.

Should we talk about moving swig to oe-core then? GNURadio uses it in
meta-sdr, meta-selinux uses it, and several recipes in meta-oe do. If
layers are using a component from meta-oe, it is time to talk about
moving the recipe to oe-core.

Philip, the original one.

>=20
> -J.
>=20
>>
>> --Mark
>>
>>> ---
>>>  recipes-devtools/swig/swig.inc                     | 59 ------------=
------
>>>  ...lf-exe-for-swig-swiglib-on-non-Win32-plat.patch | 69 ------------=
----------
>>>  ...nfigure-use-pkg-config-for-pcre-detection.patch | 65 ------------=
--------
>>>  recipes-devtools/swig/swig_2.0.10.bb               | 11 ----
>>>  4 files changed, 204 deletions(-)
>>>  delete mode 100644 recipes-devtools/swig/swig.inc
>>>  delete mode 100644 recipes-devtools/swig/swig/0001-Use-proc-self-exe=
-for-swig-swiglib-on-non-Win32-plat.patch
>>>  delete mode 100644 recipes-devtools/swig/swig/0001-configure-use-pkg=
-config-for-pcre-detection.patch
>>>  delete mode 100644 recipes-devtools/swig/swig_2.0.10.bb
>>>
>>> diff --git a/recipes-devtools/swig/swig.inc b/recipes-devtools/swig/s=
wig.inc
>>> deleted file mode 100644
>>> index 74ce5064fe37..000000000000
>>> --- a/recipes-devtools/swig/swig.inc
>>> +++ /dev/null
>>> @@ -1,59 +0,0 @@
>>> -DESCRIPTION =3D "SWIG - Simplified Wrapper and Interface Generator"
>>> -HOMEPAGE =3D "http://swig.sourceforge.net/"
>>> -LICENSE =3D "BSD & GPLv3"
>>> -LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3De7807a6282784a7dde4c84662=
6b08fc6 \
>>> -                    file://LICENSE-GPL;md5=3Dd32239bcb673463ab874e80=
d47fae504 \
>>> -                    file://LICENSE-UNIVERSITIES;md5=3D8ce9dcc8f7c994=
de4a408b205c72ba08"
>>> -
>>> -SECTION =3D "devel"
>>> -INC_PR =3D "r3"
>>> -
>>> -DEPENDS =3D "libpcre python"
>>> -
>>> -SRC_URI =3D "${SOURCEFORGE_MIRROR}/${BPN}/${BPN}-${PV}.tar.gz"
>>> -
>>> -inherit autotools pythonnative
>>> -
>>> -EXTRA_OECONF =3D " \
>>> -    --with-python=3D${PYTHON} \
>>> -    --without-allegrocl \
>>> -    --without-android \
>>> -    --without-boost \
>>> -    --without-chicken \
>>> -    --without-clisp \
>>> -    --without-csharp \
>>> -    --without-d \
>>> -    --without-gcj \
>>> -    --without-go \
>>> -    --without-guile \
>>> -    --without-java \
>>> -    --without-lua \
>>> -    --without-mzscheme \
>>> -    --without-ocaml \
>>> -    --without-octave \
>>> -    --without-perl5 \
>>> -    --without-pike \
>>> -    --without-php \
>>> -    --without-python3 \
>>> -    --without-r \
>>> -    --without-ruby \
>>> -    --without-tcl \
>>> -"
>>> -
>>> -BBCLASSEXTEND =3D "native nativesdk"
>>> -
>>> -do_configure() {
>>> -    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.gues=
s ${S}/Tools/config
>>> -    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.sub =
${S}/Tools/config
>>> -    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.gues=
s ${S}
>>> -    install -m 0755 ${STAGING_DATADIR_NATIVE}/gnu-config/config.sub =
${S}
>>> -    oe_runconf
>>> -}
>>> -
>>> -def swiglib_relpath(d):
>>> -    swiglib =3D d.getVar('datadir', True) + "/" + d.getVar('BPN', Tr=
ue) + "/" + d.getVar('PV', True)
>>> -    return os.path.relpath(swiglib, d.getVar('bindir', True))
>>> -
>>> -do_install_append_class-native() {
>>> -	create_wrapper ${D}${bindir}/swig SWIG_LIB=3D'`dirname $''realpath`=
'/${@swiglib_relpath(d)}
>>> -}
>>> diff --git a/recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-sw=
ig-swiglib-on-non-Win32-plat.patch b/recipes-devtools/swig/swig/0001-Use-=
proc-self-exe-for-swig-swiglib-on-non-Win32-plat.patch
>>> deleted file mode 100644
>>> index 81df3e264f52..000000000000
>>> --- a/recipes-devtools/swig/swig/0001-Use-proc-self-exe-for-swig-swig=
lib-on-non-Win32-plat.patch
>>> +++ /dev/null
>>> @@ -1,69 +0,0 @@
>>> -From a4a0440a644c6c5e5da096efe3cf05ba309a284f Mon Sep 17 00:00:00 20=
01
>>> -From: "NODA, Kai" <nodakai@gmail.com>
>>> -Date: Sun, 22 Apr 2012 17:01:02 +0900
>>> -Subject: [PATCH] Use /proc/self/exe for "swig -swiglib" on non-Win32=

>>> - platforms.
>>> -
>>> -If it wasn't found, then fall back to a fixed string just as before.=

>>> -
>>> -Upstream-Status: Submitted
>>> -http://sourceforge.net/mailarchive/message.php?msg_id=3D29179733
>>> -
>>> ----
>>> - Source/Modules/main.cxx |   24 ++++++++++++++++++++++--
>>> - 1 file changed, 22 insertions(+), 2 deletions(-)
>>> -
>>> -diff --git a/Source/Modules/main.cxx b/Source/Modules/main.cxx
>>> -index d2f5d3b..cbb0a12 100644
>>> ---- a/Source/Modules/main.cxx
>>> -+++ b/Source/Modules/main.cxx
>>> -@@ -26,6 +26,11 @@ char cvsroot_main_cxx[] =3D "$Id$";
>>> - #include "cparse.h"
>>> - #include <ctype.h>
>>> - #include <limits.h>		// for INT_MAX
>>> -+#ifndef _WIN32
>>> -+#include <cstddef>
>>> -+#include <unistd.h>		// for readlink
>>> -+#include <sys/stat.h>		// for stat
>>> -+#endif
>>> -=20
>>> - // Global variables
>>> -=20
>>> -@@ -902,9 +907,9 @@ int SWIG_main(int argc, char *argv[], Language *=
l) {
>>> -=20
>>> -   // Check for SWIG_LIB environment variable
>>> -   if ((c =3D getenv("SWIG_LIB")) =3D=3D (char *) 0) {
>>> -+    char *p;
>>> - #if defined(_WIN32)
>>> -     char buf[MAX_PATH];
>>> --    char *p;
>>> -     if (!(GetModuleFileName(0, buf, MAX_PATH) =3D=3D 0 || (p =3D st=
rrchr(buf, '\\')) =3D=3D 0)) {
>>> -       *(p + 1) =3D '\0';
>>> -       SwigLib =3D NewStringf("%sLib", buf); // Native windows insta=
llation path
>>> -@@ -914,7 +919,22 @@ int SWIG_main(int argc, char *argv[], Language =
*l) {
>>> -     if (Len(SWIG_LIB_WIN_UNIX) > 0)
>>> -       SwigLibWinUnix =3D NewString(SWIG_LIB_WIN_UNIX); // Unix inst=
allation path using a drive letter (for msys/mingw)
>>> - #else
>>> --    SwigLib =3D NewString(SWIG_LIB);
>>> -+    char buf[PATH_MAX];
>>> -+    if (0 < ::readlink("/proc/self/exe", buf, sizeof(buf)) &&
>>> -+        (p =3D ::strstr(buf, "/bin/swig"))) {
>>> -+        int major, minor, patch;
>>> -+        const int ret =3D ::sscanf(VERSION, "%d.%d.%d", &major, &mi=
nor, &patch);
>>> -+        if (3 =3D=3D ret) {
>>> -+            const ::ptrdiff_t dir_part_len =3D p - buf;
>>> -+            ::snprintf(p, PATH_MAX - dir_part_len, "/share/swig/%d.=
%d.%d", major, minor, patch);
>>> -+            struct ::stat stat_res;
>>> -+            if (0 =3D=3D ::stat(buf, &stat_res) && S_ISDIR(stat_res=
=2Est_mode)) {
>>> -+                SwigLib =3D NewString(buf);
>>> -+            }
>>> -+        }
>>> -+    }
>>> -+    if (NULL =3D=3D SwigLib)
>>> -+        SwigLib =3D NewString(SWIG_LIB);
>>> - #endif
>>> -   } else {
>>> -     SwigLib =3D NewString(c);
>>> ---=20
>>> -1.7.9.5
>>> -
>>> diff --git a/recipes-devtools/swig/swig/0001-configure-use-pkg-config=
-for-pcre-detection.patch b/recipes-devtools/swig/swig/0001-configure-use=
-pkg-config-for-pcre-detection.patch
>>> deleted file mode 100644
>>> index 5644b1531f19..000000000000
>>> --- a/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pc=
re-detection.patch
>>> +++ /dev/null
>>> @@ -1,65 +0,0 @@
>>> -From cd596816f28407ac403bcb2249f964cefd81f22a Mon Sep 17 00:00:00 20=
01
>>> -From: Koen Kooi <koen.kooi@linaro.org>
>>> -Date: Tue, 17 Jun 2014 08:18:17 +0200
>>> -Subject: [PATCH] configure: use pkg-config for pcre detection
>>> -
>>> -Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
>>> -Upstream-Status: pending
>>> ----
>>> - configure.ac |   39 +++++++--------------------------------
>>> - 1 file changed, 7 insertions(+), 32 deletions(-)
>>> -
>>> -diff --git a/configure.ac b/configure.ac
>>> -index c94c2e9..24420c5 100644
>>> ---- a/configure.ac
>>> -+++ b/configure.ac
>>> -@@ -70,39 +70,14 @@ AC_MSG_RESULT([$with_pcre])
>>> -=20
>>> - dnl To make configuring easier, check for a locally built PCRE usin=
g the Tools/pcre-build.sh script
>>> - if test x"${with_pcre}" =3D xyes ; then=20
>>> --  AC_MSG_CHECKING([whether to use local PCRE])
>>> --  local_pcre_config=3Dno
>>> --  if test -z $PCRE_CONFIG; then
>>> --    if test -f `pwd`/pcre/pcre-swig-install/bin/pcre-config; then
>>> --      PCRE_CONFIG=3D`pwd`/pcre/pcre-swig-install/bin/pcre-config
>>> --      local_pcre_config=3D$PCRE_CONFIG
>>> --    fi
>>> --  fi
>>> --  AC_MSG_RESULT([$local_pcre_config])
>>> --fi
>>> --AS_IF([test "x$with_pcre" !=3D xno],
>>> --  [AX_PATH_GENERIC([pcre],
>>> --    [], dnl Minimal version of PCRE we need -- accept any
>>> --    [], dnl custom sed script for version parsing is not needed
>>> --    [AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])=

>>> --     LIBS=3D"$LIBS $PCRE_LIBS"
>>> --     CPPFLAGS=3D"$CPPFLAGS $PCRE_CFLAGS"
>>> --    ],
>>> --    [AC_MSG_FAILURE([
>>> --        Cannot find pcre-config script from PCRE (Perl Compatible R=
egular Expressions)
>>> --        library package. This dependency is needed for configure to=
 complete,
>>> --        Either:
>>> --        - Install the PCRE developer package on your system (prefer=
red approach).
>>> --        - Download the PCRE source tarball, build and install on yo=
ur system
>>> --          as you would for any package built from source distributi=
on.
>>> --        - Use the Tools/pcre-build.sh script to build PCRE just for=
 SWIG to statically
>>> --          link against. Run 'Tools/pcre-build.sh --help' for instru=
ctions.
>>> --          (quite easy and does not require privileges to install PC=
RE on your system)
>>> --        - Use configure --without-pcre to disable regular expressio=
ns support in SWIG
>>> --          (not recommended).])
>>> --    ])
>>> -+  PKG_CHECK_MODULES([PCRE], [libpcre], [
>>> -+    AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
>>> -+    LIBS=3D"$LIBS $PCRE_LIBS"
>>> -+    CPPFLAGS=3D"$CPPFLAGS $PCRE_CFLAGS"
>>> -+  ], [
>>> -+    AC_MSG_WARN([$PCRE_PKG_ERRORS])
>>> -   ])
>>> --
>>> -+fi
>>> -=20
>>> - dnl CCache
>>> - AC_ARG_ENABLE([ccache], AS_HELP_STRING([--disable-ccache], [disable=
 building and installation of ccache-swig executable (default enabled)]),=
 [enable_ccache=3D$enableval], [enable_ccache=3Dyes])
>>> ---=20
>>> -1.7.9.5
>>> -
>>> diff --git a/recipes-devtools/swig/swig_2.0.10.bb b/recipes-devtools/=
swig/swig_2.0.10.bb
>>> deleted file mode 100644
>>> index 5f1ff5992359..000000000000
>>> --- a/recipes-devtools/swig/swig_2.0.10.bb
>>> +++ /dev/null
>>> @@ -1,11 +0,0 @@
>>> -require ${BPN}.inc
>>> -
>>> -PR =3D "${INC_PR}.0"
>>> -
>>> -SRC_URI +=3D "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-=
Win32-plat.patch \
>>> -            file://0001-configure-use-pkg-config-for-pcre-detection.=
patch \
>>> -           "
>>> -
>>> -SRC_URI[md5sum] =3D "6d5e7ad05b4a404e5e85db9befb70c9a"
>>> -SRC_URI[sha256sum] =3D "d1eef329e867124ce60838b5ad07c763146b6c8f250d=
d22a861ead7406f78e63"
>>> -
>>>
>>
>=20
>=20
>=20


--ibToQDvGEn2JNbfT3IRt6qUm6SFv2wCp3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWyy/5AAoJEMDJd4rr0merUo0H/A2wdUpeTO6xD3bI28yB9d7q
+EumQqQNYB0agSpOW2LejPDk6qtYtLdq33RuKQVtvnKC/CsjGlqXqP3ZTawydTED
6H+GZVAskh9vdOMldgOYtYSn1uBJNh0/r0GWvTrt+rJlEfehAwGkPjc2A7u5OIPW
DkXPO7bQox+3STBnZQnXNMPpYU143ZFTRtoW3DIjIOVKhfI9uka1sVUms8g1LHS2
G/To+Swm4M5r6r8i9weKT1zS3daU6Etot+8D2RrGaYf0vLCny4tUkRPXmvOAnsko
4hf6+y0DLewxfdrsBv+qaWmOuBizvslf/iXxGZ+Rzs2qC5EzefzHNAfR2em8Y2M=
=G1mJ
-----END PGP SIGNATURE-----

--ibToQDvGEn2JNbfT3IRt6qUm6SFv2wCp3--
