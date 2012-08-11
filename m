Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC6A6E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 06:58:46 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so4171561pbb.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 06:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=9NDQDh58q1OK6w3WSpgX1ePYyYZLBuaYcY0pHqvQxNE=;
	b=tWwzahQvSi5cvx66oaQhN1xAOBObe/xWF6y/UrBTYbOKS+3EYLwiirvrkYYz0nrhcp
	4yA9KeqDqGYjbA1fkH71+cpYEO1KderilmZLUXdS3lDsGq2USAFCwIwMxWPlMM7eJftE
	61SldYSxUluPkWm+Ze195itFhfr17Qen1xikXlVzrNceJM62me39CAvBkb2CMi+44pSn
	vk8nz2lX07SBCOITKWIuEG4H4VH6eUjHgTMJx2susrET5Oqf+RJu252h6fPxkd1UDdPU
	dlBEvK53dtz/bTfAQzmk9Z7Sxb6PQvuXMgaM1CJT21oiUKU6JdJCLEm8YPWkyfdx6VdS
	yFbw==
Received: by 10.68.224.70 with SMTP id ra6mr20679120pbc.11.1344693526360;
	Sat, 11 Aug 2012 06:58:46 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id ka9sm1435424pbb.59.2012.08.11.06.58.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 11 Aug 2012 06:58:45 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Sat, 11 Aug 2012 17:58:39 +0400
In-Reply-To: <69899E75-819B-481C-BEDD-949A5490F1E4@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <69899E75-819B-481C-BEDD-949A5490F1E4@gmail.com>
Message-Id: <96DDFE0F-EA2B-475D-A29F-A7328A0A7D29@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: gcc virtual provider settings
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
X-List-Received-Date: Sat, 11 Aug 2012 13:58:46 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_165BA026-443C-4119-89E6-3D9BD4FA442D"

--Apple-Mail=_165BA026-443C-4119-89E6-3D9BD4FA442D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 11, 2012, at 2:42 PM, Elvis Dowson wrote:

> Where can I find the "virtual provides" for gcc?
>=20
> I'd like to properly fill the following values in my local.conf file, =
to point it to a locally created gcc_4.5.bb recipe, along with rest, for =
gcc-cross_4.5.bb, gcc-cross-canadian_4.5.bb, etc.
>=20
> PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc =3D ""
> PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial =3D ""
> PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate =3D ""
> PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++ =3D ""
> PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binutils =3D ""
> PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc =3D ""
> PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs =3D ""
> PREFERRED_PROVIDER_libgcc =3D ""
> PREFERRED_PROVIDER_eglibc =3D ""
> PREFERRED_PROVIDER_virtual/libc =3D ""
> PREFERRED_PROVIDER_virtual/libintl =3D ""
> PREFERRED_PROVIDER_virtual/libiconv =3D ""
> PREFERRED_PROVIDER_gdbserver =3D ""
> PREFERRED_PROVIDER_virtual/gettext =3D ""
>=20

I found the solution for this one.=20

The defaults are specified in the =
poky/meta/conf/distro/include/tcmode-default.inc file.

What was happening is that when I set a couple of virual providers =
explicitly, I always ended up missing a couple, and it was taking the =
gcc-4.7.1 related recipes, because the over-rides weren't complete. the =
tcmode-default.inc file has the full list of virtual providers for the =
toolchain, and the best way to set up for an older version of the gcc =
compiler is to specify just a few variables in the local.conf file as =
follows:

# Set the gcc toolchain version.
# Use wildcards %, to match the actual versions.
GCCVERSION =3D "4.5%"
SDKGCCVERSION =3D "${GCCVERSION}"
BINUVERSION =3D "2.22"
EGLIBCVERSION =3D "2.16"
UCLIBCVERSION =3D "0.9.33"
LINUXLIBCVERSION =3D "3.3.3"

Best regards,

Elvis Dowson


--Apple-Mail=_165BA026-443C-4119-89E6-3D9BD4FA442D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 11, 2012, at 2:42 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>Where can I find =
the "virtual provides" for gcc?</div><div><br></div><div>I'd like to =
properly fill the following values in my local.conf file, to point it to =
a locally created gcc_4.5.bb recipe, along with rest, for =
gcc-cross_4.5.bb, gcc-cross-canadian_4.5.bb, =
etc.</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc =
=3D ""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate =3D=
 ""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++ =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binutils =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_libgcc =3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_eglibc =3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/libc =3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/libintl =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/libiconv =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_gdbserver =3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/gettext =3D =
""</font></div></div><div><br></div></div></blockquote><br></div><div>I =
found the solution for this one.&nbsp;</div><div><br></div><div>The =
defaults are specified in the =
poky/meta/conf/distro/include/tcmode-default.inc =
file.</div><div><br></div><div>What was happening is that when I set a =
couple of virual providers explicitly, I always ended up missing a =
couple, and it was taking the gcc-4.7.1 related recipes, because the =
over-rides weren't complete. the tcmode-default.inc file has the full =
list of virtual providers for the toolchain, and the best way to set up =
for an older version of the gcc compiler is to specify just a few =
variables in the local.conf file as =
follows:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># Set the gcc toolchain =
version.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2"># Use wildcards %, to match the actual =
versions.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">GCCVERSION =3D "4.5%"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">SDKGCCVERSION =3D =
"${GCCVERSION}"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">BINUVERSION =3D "2.22"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">EGLIBCVERSION =3D =
"2.16"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">UCLIBCVERSION =3D "0.9.33"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">LINUXLIBCVERSION =3D=
 "3.3.3"</font></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><br></div></body></html>=

--Apple-Mail=_165BA026-443C-4119-89E6-3D9BD4FA442D--
