Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16C53E0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 10:14:25 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so2430358pbb.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 10:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=FvuDoDKFbltpZTOt26miq77tOoNDOTAEP78jnTJ25Lk=;
	b=HXDkBTIUi5/hVU8DOysNBq3UaGQz/Lev4pSiXgjzvqZymCKULH5qW8wIMVcrTyIT1b
	z03BapAQdQs+cg3enlzTXCoKGwrbA9gTTij459g8YR6sizDSZVmeLvwJ+b4S9rYa4fhb
	YUY89pzFwCpCCHEBYwTwbZHxlFaYc3Qab5bcnhaYiRbF0rSeHBu9JX4mUuIXMqGyTidY
	EPCqmm/acxHlLfh/Cw4VUWSujbG8ugpj/20JpwAIwMXS8x2Iy+GBXqfMMXkaO40KQ7ju
	AtsuHTg+mRapP39CoAkXI/pIsa+7HYC7Oc01fAN+bz395HjACuDuQzhp68HSfBcB3lcp
	Z4oQ==
Received: by 10.68.197.70 with SMTP id is6mr13975722pbc.64.1344618864826;
	Fri, 10 Aug 2012 10:14:24 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id ru4sm3686310pbc.66.2012.08.10.10.14.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 10:14:24 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Fri, 10 Aug 2012 21:14:19 +0400
In-Reply-To: <4B80D47F-708F-4D80-969D-881404063793@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <4B80D47F-708F-4D80-969D-881404063793@gmail.com>
Message-Id: <9108EB23-A0F9-4A6E-A051-C7CDC366AAB0@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: external-sourcery-toolchain: cp: cannot stat `/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share/gettext/config.rpath': No such file or directory
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
X-List-Received-Date: Fri, 10 Aug 2012 17:14:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_781114CE-F025-4BF2-BA24-9BD016FD37F8"

--Apple-Mail=_781114CE-F025-4BF2-BA24-9BD016FD37F8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 10, 2012, at 9:07 PM, Elvis Dowson wrote:

> When using the mentor external-sourcery-toolchain, I get the following =
error:
>=20
> NOTE: package gdbm-1.10-r3: task do_configure: Started
> ERROR: Function failed: do_configure (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409 for further information)
> ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: SITE files ['endian-big', 'bit-32', 'powerpc-common', =
'common-linux', 'common-glibc', 'powerpc32-linux', 'powerpc-linux', =
'common']
> | DEBUG: Executing shell function do_configure
> | automake (GNU automake) 1.12.1
> | Copyright (C) 2012 Free Software Foundation, Inc.
> | License GPLv2+: GNU GPL version 2 or later =
<http://gnu.org/licenses/gpl-2.0.html>
> | This is free software: you are free to change and redistribute it.
> | There is NO WARRANTY, to the extent permitted by law.
> |=20
> | Written by Tom Tromey <tromey@redhat.com>
> |        and Alexandre Duret-Lutz <adl@gnu.org>.
> | AUTOV is 1.12
> | cp: cannot stat =
`/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share/gettext/config.rpat=
h': No such file or directory
> | ERROR: Function failed: do_configure (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409 for further information)
> NOTE: package gdbm-1.10-r3: task do_configure: Failed
> ERROR: Task 541 =
(/tool/yocto/poky/meta/recipes-support/gdbm/gdbm_1.10.bb, do_configure) =
failed with exit code '1'
>=20

I solved the problem, I ignored a warning saying that there were =
multiple providers for virtual/gettext.=20

When I looked at the target folder, gettext was missing.=20

I added the following entry to my local.conf file, and the build is now =
progressing :

PREFERRED_PROVIDER_virtual/gettext =3D "gettext"

Elvis Dowson



--Apple-Mail=_781114CE-F025-4BF2-BA24-9BD016FD37F8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 10, 2012, at 9:07 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>When using&nbsp;the =
mentor external-sourcery-toolchain,&nbsp;I get the following =
error:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package gdbm-1.10-r3: task =
do_configure: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function failed: do_configure (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409 for further information)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Logfile of =
failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Log data follows:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| DEBUG: Executing =
python function sysroot_cleansstate</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| DEBUG: Python =
function sysroot_cleansstate finished</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| DEBUG: SITE =
files ['endian-big', 'bit-32', 'powerpc-common', 'common-linux', =
'common-glibc', 'powerpc32-linux', 'powerpc-linux', =
'common']</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| DEBUG: Executing shell function =
do_configure</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| automake (GNU automake) =
1.12.1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| Copyright (C) 2012 Free Software Foundation, =
Inc.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| License GPLv2+: GNU GPL version 2 or later &lt;<a =
href=3D"http://gnu.org/licenses/gpl-2.0.html">http://gnu.org/licenses/gpl-=
2.0.html</a>&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| This is free software: you are free to =
change and redistribute it.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| There is NO =
WARRANTY, to the extent permitted by law.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">|&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| Written by Tom Tromey &lt;<a =
href=3D"mailto:tromey@redhat.com">tromey@redhat.com</a>&gt;</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; =
&nbsp; &nbsp; &nbsp;and Alexandre Duret-Lutz &lt;<a =
href=3D"mailto:adl@gnu.org">adl@gnu.org</a>&gt;.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| AUTOV is =
1.12</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <font class=3D"Apple-style-span" color=3D"#ff2a1a">cp: =
cannot stat =
`/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share/gettext/config.rpat=
h': No such file or directory</font></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: Function =
failed: do_configure (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/gdbm-1.10-r3/temp/log.do=
_configure.53409 for further information)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: package =
gdbm-1.10-r3: task do_configure: Failed</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Task 541 =
(/tool/yocto/poky/meta/recipes-support/gdbm/gdbm_1.10.bb, do_configure) =
failed with exit code =
'1'</font></div></div><div><br></div></div></blockquote><br></div><div>I =
solved the problem, I ignored a warning saying that there were multiple =
providers for virtual/gettext.&nbsp;</div><div><br></div><div>When I =
looked at the target folder, gettext was =
missing.&nbsp;</div><div><br></div><div>I added the following entry to =
my local.conf file, and the build is now progressing =
:</div><div><br></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_PROVIDER_virtual/gettext =3D =
"gettext"</font></div><div><br></div><div>Elvis =
Dowson</div><div><br></div><br></div></body></html>=

--Apple-Mail=_781114CE-F025-4BF2-BA24-9BD016FD37F8--
