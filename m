Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D240E01370
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2012 23:36:25 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so6904610pbb.35
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2012 23:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=mFJcC4u9AZ9ym9eLMlayvL6K7/sa74Trlk4JCkC0d74=;
	b=G2ZrBKtI5ULYeCd1grzRVNit8zuP9Qk9zZX0At/QJK9Q3gP9tIbseuQSMq39x6/lY3
	LoV9rWur4RdddiW6GdcQRUkR+FevO/iu4UJRBvWP8RnNWRjUBn75bNvtrMztQz1erFqp
	D1DWUDqprOUUg4m1hZhwJdjF9/uclEuavXeXKWo3NsRSMsCfLmKPqD+R/UqPnxqf8AhC
	6BuZ1oNdaj5+BVaQpNvqyitk2TTuG08R7DFk3yG+CHOhvA9PSCeW+wJiCPKyNuFvX/hu
	Yjb7Wua55Fwt1Q9Z4KGxA5ERZWoG/6/3X4A+3c1B82jh+HmlfFSOFjrtwEcvb5QZwT9R
	YIGw==
Received: by 10.68.224.133 with SMTP id rc5mr24277273pbc.130.1345358184761;
	Sat, 18 Aug 2012 23:36:24 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id iu10sm8458017pbc.45.2012.08.18.23.36.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 18 Aug 2012 23:36:23 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <E089A60B-5047-407B-9CD2-8764C5416DF0@gmail.com>
Date: Sun, 19 Aug 2012 10:36:17 +0400
Message-Id: <11205BCA-6B8D-41EC-AFE1-E61864B15277@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
	<CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
	<6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
	<4A5B27D0-AF2F-4FBE-B1DC-FEB002F80B76@gmail.com>
	<B3DEA1FA-A170-46D6-9BCA-82555C89523C@gmail.com>
	<4855B040-2194-4E0F-8B88-6C10385DBE8F@gmail.com>
	<CAMKF1sp19QKejvTx-qGQ0XpWomS67p-6D2ZS5NGe_L1hJ8Mz+w@mail.gmail.com>
	<AF18A8EF-44E8-4C11-B52B-D5C7E7B7FD85@gmail.com>
	<E089A60B-5047-407B-9CD2-8764C5416DF0@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 19 Aug 2012 06:36:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A0B37DC4-6337-41CC-84B5-944B06762364"

--Apple-Mail=_A0B37DC4-6337-41CC-84B5-944B06762364
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,
                  What should I do to enable multilib in gcc-4.7?=20

I think at the moment, in gcc-configure-common.inc, it is disabled.

If I were to re-enable it as follows, based on what I've diff'd from the =
Denx ELDK repo, what how does the GCCMULTILIB variable evaluate?

-GCCMULTILIB =3D "--disable-multilib"
+GCCMULTILIB =3D '${@base_contains("MULTILIB_ARCH_LIST", =
"${TARGET_ARCH}", "--enable-multilib", "--disable-multilib",d)}'

I think multilib has to be enabled, no?=20

In file gcc/config/rs6000/t-ppcos.c

# Multilibs for a powerpc hosted ELF target (linux, SVR4)

MULTILIB_OPTIONS	=3D msoft-float
MULTILIB_DIRNAMES	=3D nof
MULTILIB_EXTRA_OPTS	=3D fPIC mstrict-align
MULTILIB_EXCEPTIONS	=3D=20

MULTILIB_MATCHES	=3D ${MULTILIB_MATCHES_FLOAT}


Here is the full patch, which I am assuming enables multilib, and get =
libgcc to generate the nof libraries to the target:

diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc =
b/meta/recipes-devtools/gcc/gcc-configure-common.inc
index 908ad3e..a3fa294 100644
--- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
+++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
@@ -25,7 +25,7 @@ EXTRA_OECONF_PATHS ?=3D ""
 EXTRA_OECONF_INITIAL ?=3D ""
 EXTRA_OECONF_INTERMEDIATE ?=3D ""
=20
-GCCMULTILIB =3D "--disable-multilib"
+GCCMULTILIB =3D '${@base_contains("MULTILIB_ARCH_LIST", =
"${TARGET_ARCH}", "--enable-multilib", "--disable-multilib",d)}'
=20
 EXTRA_OECONF =3D "${@['--enable-clocale=3Dgeneric', =
''][d.getVar('USE_NLS', True) !=3D 'no']} \
                 --with-gnu-ld \
diff --git a/meta/recipes-devtools/gcc/libgcc_4.7.bb =
b/meta/recipes-devtools/gcc/libgcc_4.7.bb
index c796253..aac81f6 100644
--- a/meta/recipes-devtools/gcc/libgcc_4.7.bb
+++ b/meta/recipes-devtools/gcc/libgcc_4.7.bb
@@ -18,7 +18,9 @@ FILES_${PN} =3D "${base_libdir}/libgcc*.so.*"
 FILES_${PN}-dev =3D " \
   ${base_libdir}/libgcc*.so \
   ${libdir}/${TARGET_SYS}/${BINV}/*crt* \
-  ${libdir}/${TARGET_SYS}/${BINV}/libgcc*"
+  ${libdir}/${TARGET_SYS}/${BINV}/libgcc* \
+  ${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \
+  ${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"
 FILES_libgcov${PKGSUFFIX}-dev =3D " \
   ${libdir}/${TARGET_SYS}/${BINV}/libgcov.a \
   "

Best regards,

Elvis Dowson=

--Apple-Mail=_A0B37DC4-6337-41CC-84B5-944B06762364
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
What should I do to enable multilib in =
gcc-4.7?&nbsp;</div><div><br></div><div>I think at the moment, in =
gcc-configure-common.inc, it is disabled.</div><div><br></div><div>If I =
were to re-enable it as follows, based on what I've diff'd from the Denx =
ELDK repo, what how does the GCCMULTILIB variable =
evaluate?</div><div><br></div><div><div>-GCCMULTILIB =3D =
"--disable-multilib"</div><div>+GCCMULTILIB =3D =
'${@base_contains("MULTILIB_ARCH_LIST", "${TARGET_ARCH}", =
"--enable-multilib", =
"--disable-multilib",d)}'</div></div><div><br></div><div>I think =
multilib has to be enabled, no?&nbsp;</div><div><br></div><div>In file =
gcc/config/rs6000/t-ppcos.c</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># Multilibs for a =
powerpc hosted ELF target (linux, SVR4)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MULTILIB_OPTIONS<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=3D =
msoft-float</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MULTILIB_DIRNAMES<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>=3D nof</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">MULTILIB_EXTRA_OPTS<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=3D fPIC =
mstrict-align</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MULTILIB_EXCEPTIONS<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>=3D&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">MULTILIB_MATCHES<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=3D =
${MULTILIB_MATCHES_FLOAT}</font></div></div><div><br></div><div><br></div>=
<div>Here is the full patch, which I am assuming enables multilib, and =
get libgcc to generate the nof libraries to the =
target:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/meta/recipes-devtools/gcc/gcc-configure-common.inc =
b/meta/recipes-devtools/gcc/gcc-configure-common.inc</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
908ad3e..a3fa294 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/meta/recipes-devtools/gcc/gcc-configure-common.inc</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/meta/recipes-devtools/gcc/gcc-configure-common.inc</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -25,7 +25,7 =
@@ EXTRA_OECONF_PATHS ?=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;EXTRA_OECONF_INITIAL ?=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;EXTRA_OECONF_INTERMEDIATE ?=3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-GCCMULTILIB =3D =
"--disable-multilib"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+GCCMULTILIB =3D =
'${@base_contains("MULTILIB_ARCH_LIST", "${TARGET_ARCH}", =
"--enable-multilib", "--disable-multilib",d)}'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;EXTRA_OECONF =3D =
"${@['--enable-clocale=3Dgeneric', ''][d.getVar('USE_NLS', True) !=3D =
'no']} \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;--with-gnu-ld \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/meta/recipes-devtools/gcc/libgcc_4.7.bb =
b/meta/recipes-devtools/gcc/libgcc_4.7.bb</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
c796253..aac81f6 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/meta/recipes-devtools/gcc/libgcc_4.7.bb</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/meta/recipes-devtools/gcc/libgcc_4.7.bb</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -18,7 +18,9 @@ =
FILES_${PN} =3D "${base_libdir}/libgcc*.so.*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_${PN}-dev =3D " \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${base_libdir}/libgcc*.so \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/*crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_libgcov${PKGSUFFIX}-dev =3D " =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcov.a =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp;"</font></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_A0B37DC4-6337-41CC-84B5-944B06762364--
