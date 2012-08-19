Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EDF3E01370
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2012 23:13:45 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so6884596pbb.35
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2012 23:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=RocMwFV6w49V0PV2ijvjNkOKHSJTShyQcopbClAXNH4=;
	b=CX0tN1odvj7x6j3rOiym9ukMpLoarRDmC1iDrHgCz17WjJw9jQOuG/shAxNawnilU7
	CNc34CQ0WKiZwC0WF/7lqkwoJUlgLUp9svvTzRhmxA5avYcTb5wPwzBFHob+KcY2qlko
	neYLDPkmZDeufYwMY867v+E6VwKSBwUNEYsAs4iov34JiLpYXrsRR/mCK3RLC/qrVsqM
	Z8AGIVBBce8TUtG6YPkNdeNj5iKtMOYi7vnd4169l4FqfdIH9wNBl/6Nm/Un+FtfJ0lC
	WsVMh5AxxqMhpORXI4vhRLKMUQvSCZ+Fi8ogbmh/rB8yb8uVdc8yDgL1LePfKsFpRGw2
	LHiw==
Received: by 10.68.238.138 with SMTP id vk10mr24716813pbc.75.1345356824975;
	Sat, 18 Aug 2012 23:13:44 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pq1sm8445358pbb.3.2012.08.18.23.13.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 18 Aug 2012 23:13:43 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <AF18A8EF-44E8-4C11-B52B-D5C7E7B7FD85@gmail.com>
Date: Sun, 19 Aug 2012 10:13:37 +0400
Message-Id: <E089A60B-5047-407B-9CD2-8764C5416DF0@gmail.com>
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
X-List-Received-Date: Sun, 19 Aug 2012 06:13:45 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_78AEC9ED-7817-4881-87A7-0DBE5E179F6D"

--Apple-Mail=_78AEC9ED-7817-4881-87A7-0DBE5E179F6D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

hi Khem,

On Aug 19, 2012, at 10:08 AM, Elvis Dowson wrote:

> I'll now, make the necessary changes to eglibc-2.13, in poky/master, =
with gcc-4.7, and see if it works.

Sorry, I meant to say libgcc-4.7

diff --git a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb
index 9a8b20d..f75ca34 100644
--- a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb
+++ b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb
@@ -16,8 +16,10 @@ PACKAGES =3D "\
 FILES_${PN} =3D "${base_libdir}/libgcc*.so.*"
 FILES_${PN}-dev =3D " \
   ${base_libdir}/libgcc*.so \
-  ${libdir}/${TARGET_SYS}/${BINV}/*crt* \
-  ${libdir}/${TARGET_SYS}/${BINV}/libgcc*"
+  ${libdir}/${TARGET_SYS}/${BINV}/crt* \
+  ${libdir}/${TARGET_SYS}/${BINV}/libgcc* \
+  ${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \
+  ${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"
 FILES_libgcov${PKGSUFFIX}-dev =3D " \
   ${libdir}/${TARGET_SYS}/${BINV}/libgcov.a"

Best regards,

Elvis Dowson=

--Apple-Mail=_78AEC9ED-7817-4881-87A7-0DBE5E179F6D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">hi =
Khem,<div><br><div><div>On Aug 19, 2012, at 10:08 AM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>I'll now, make the necessary changes to eglibc-2.13, =
in poky/master, with gcc-4.7, and see if it =
works.<br></div></blockquote></div><br><div>Sorry, I meant to say =
libgcc-4.7</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
9a8b20d..f75ca34 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -16,8 +16,10 =
@@ PACKAGES =3D "\</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILES_${PN} =3D =
"${base_libdir}/libgcc*.so.*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_${PN}-dev =3D " \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${base_libdir}/libgcc*.so \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/*crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_libgcov${PKGSUFFIX}-dev =3D " =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcov.a"</font></div></div><div><b=
r></div><div>Best regards,</div><div><br></div><div>Elvis =
Dowson</div></div></body></html>=

--Apple-Mail=_78AEC9ED-7817-4881-87A7-0DBE5E179F6D--
