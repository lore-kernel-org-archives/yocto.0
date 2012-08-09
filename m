Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8702EE0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 11:14:07 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so412780pbb.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 11:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=FTTIHUwO0gpF4Z1YnvTKW+Nva2LBhv654Gh3Heqio48=;
	b=X+V5bKHalkZXtsTK7KJfLT4uPV6FX8UgYszr+1uRM9EdcA9wzl7uKVc/s0IokEfWp4
	tukwxR0x9v5jfHCm5Is8na8kuwJ1PbcdogiSPFUqxqReh32MngSShEwV3alKsOl7Vj5K
	pOyDejjiULtUFuWCWZw+ShKIufN1MjczLLjxgQ7G670h/VFP3DiKhBNVbFt89bpwpvoL
	a7Di40K2x0UZP5HWdsZ6Y8FMnV0CgK3QPvkowsNwLcOhM29LIknFCRPLOG1Fu0IJJXzy
	9cFdR9ymxKYi4zEMR9o9Nn9bsYrVhRp3Me/mx5/9NqQpLNn9Mbcnrrsv/7z+cRfZhDkP
	DDYw==
Received: by 10.68.134.105 with SMTP id pj9mr5848785pbb.136.1344536047315;
	Thu, 09 Aug 2012 11:14:07 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id wi6sm1579175pbc.35.2012.08.09.11.14.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 11:14:06 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Thu, 9 Aug 2012 22:14:00 +0400
In-Reply-To: <5023D02E.6060908@windriver.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <B35EAA35-E64A-42AE-A168-1F60424BE999@gmail.com>
	<5023CE44.4060406@windriver.com>
	<D67422E7-DD4C-432B-97EE-A15487BCCB46@gmail.com>
	<5023D02E.6060908@windriver.com>
Message-Id: <D8B825F7-AFEB-4F98-B3D4-AAE9CC62A85D@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: Incorrect warning: preferred version linux-libc-headers_3.3 of linux-libc-headers not available (for item linux-libc-headers)
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
X-List-Received-Date: Thu, 09 Aug 2012 18:14:07 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_892BF625-5BEC-4106-9460-582141B12BCE"

--Apple-Mail=_892BF625-5BEC-4106-9460-582141B12BCE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

HI,

On Aug 9, 2012, at 6:58 PM, Bruce Ashfield wrote:

>  In my experience .. it is always just the version, not the package =
that
> you want to specify, so from all of those, you'd drop the gcc_ .. etc,
> from the string.
>=20
> Bruce
>=20
>>=20
>> PREFERRED_VERSION_gcc =3D "gcc_4.6"
>> PREFERRED_VERSION_gcc-cross =3D "gcc-cross_4.6"
>> PREFERRED_VERSION_gcc-cross-initial =3D "gcc-cross-initial_4.6"
>> PREFERRED_VERSION_gcc-cross-intermediate =3D =
"gcc-cross-intermediate_4.6"
>> PREFERRED_VERSION_gcc-cross-canadian =3D "gcc-cross-canadian_4.6"
>> PREFERRED_VERSION_gcc-crosssdk=3D "gcc-crosssdk_4.6"
>> PREFERRED_VERSION_gcc-crosssdk-initial=3D "gcc-crosssdk-initial_4.6"
>> PREFERRED_VERSION_gcc-crosssdk-intermediate=3D =
"gcc-crosssdk-intermediate_4.6"
>> PREFERRED_VERSION_gcc-runtime =3D "gcc-runtime_4.6"
>> PREFERRED_VERSION_libgcc =3D "libgcc_4.6"

If I set the values as follows:

PREFERRED_VERSION_gcc =3D "4.5"
PREFERRED_VERSION_gcc-cross =3D "4.5"
PREFERRED_VERSION_gcc-cross-initial =3D "4.5"
PREFERRED_VERSION_gcc-cross-intermediate =3D "4.5"
PREFERRED_VERSION_gcc-cross-canadian =3D "4.5"
PREFERRED_VERSION_gcc-crosssdk=3D "4.5"
PREFERRED_VERSION_gcc-crosssdk-initial=3D "4.5"
PREFERRED_VERSION_gcc-crosssdk-intermediate=3D "4.5"
PREFERRED_VERSION_gcc-runtime =3D "4.5"
PREFERRED_VERSION_libgcc =3D "4.5"

I get the following warnings:

NOTE: preferred version 4.5 of gcc not available (for item gcc)
NOTE: versions of gcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 4.5 of gcc-cross not available (for item =
virtual/powerpc-poky-linux-gcc)
NOTE: versions of gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc-runtime not available (for item =
virtual/powerpc-poky-linux-compilerlibs)
NOTE: versions of gcc-runtime available: 4.5.4+svnr189152 =
4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc not available (for item gcc)
NOTE: versions of gcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc-cross not available (for item =
virtual/powerpc-poky-linux-g++)
NOTE: versions of gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of libgcc not available (for item libgcc)
NOTE: versions of libgcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc-cross-intermediate not available (for =
item virtual/powerpc-poky-linux-gcc-intermediate)
NOTE: versions of gcc-cross-intermediate available: 4.5.4+svnr189152 =
4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of libgcc not available (for item libgcc)
NOTE: versions of libgcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc-cross-initial not available (for item =
virtual/powerpc-poky-linux-gcc-initial)
NOTE: versions of gcc-cross-initial available: 4.5.4+svnr189152 =
4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648

I've now got 3 gcc variants, 4.7 (in poky), 4.6 and 4.5 (in =
meta-openembedded), and it's automatically picking up 4.6, from the =
meta-openembedded/toolchain-layer.

After gcc_4.6 recipe builds, and I attempt to re-run gcc_4.5, I get the =
following output:

NOTE: preferred version 4.5 of gcc not available (for item gcc)
NOTE: versions of gcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 4.5 of gcc-cross not available (for item =
virtual/powerpc-poky-linux-gcc)
NOTE: versions of gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc-runtime not available (for item =
virtual/powerpc-poky-linux-compilerlibs)
NOTE: versions of gcc-runtime available: 4.5.4+svnr189152 =
4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc not available (for item gcc)
NOTE: versions of gcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc-cross not available (for item =
virtual/powerpc-poky-linux-g++)
NOTE: versions of gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of libgcc not available (for item libgcc)
NOTE: versions of libgcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc-cross-intermediate not available (for =
item virtual/powerpc-poky-linux-gcc-intermediate)
NOTE: versions of gcc-cross-intermediate available: 4.5.4+svnr189152 =
4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of libgcc not available (for item libgcc)
NOTE: versions of libgcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: preferred version 4.5 of gcc-cross-initial not available (for item =
virtual/powerpc-poky-linux-gcc-initial)
NOTE: versions of gcc-cross-initial available: 4.5.4+svnr189152 =
4.6.3+svnr184847 4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 938 tasks of which 938 didn't need to be =
rerun and all succeeded.
elvis@eos:/tool/yocto/poky/build$=20


At this stage, 4.7.1, 4.6.3 have been built, but it doesn't allow me to =
build gcc_4.5 recipe.


Best regards,

Elvis Dowson=

--Apple-Mail=_892BF625-5BEC-4106-9460-582141B12BCE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">HI,<div><br><div><div>On Aug 9, 2012, at 6:58 PM, Bruce Ashfield =
wrote:</div><div><br></div><blockquote type=3D"cite"><div><font =
class=3D"Apple-style-span" color=3D"#000000">&nbsp;</font>In my =
experience .. it is always just the version, not the package that<br>you =
want to specify, so from all of those, you'd drop the gcc_ .. =
etc,<br>from the string.<br><br>Bruce<br><br><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc =3D =
"gcc_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc-cross =3D =
"gcc-cross_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc-cross-initial =3D =
"gcc-cross-initial_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc-cross-intermediate =3D =
"gcc-cross-intermediate_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc-cross-canadian =3D =
"gcc-cross-canadian_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc-crosssdk=3D =
"gcc-crosssdk_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc-crosssdk-initial=3D =
"gcc-crosssdk-initial_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc-crosssdk-intermediate=3D =
"gcc-crosssdk-intermediate_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_gcc-runtime =3D =
"gcc-runtime_4.6"<br></blockquote><blockquote =
type=3D"cite">PREFERRED_VERSION_libgcc =3D =
"libgcc_4.6"<br></blockquote></div></blockquote><br></div><div>If I set =
the values as follows:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc =3D "4.5"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-cross =3D "4.5"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-cross-initial =3D =
"4.5"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-cross-intermediate =3D =
"4.5"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-cross-canadian =3D =
"4.5"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-crosssdk=3D =
"4.5"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-crosssdk-initial=3D =
"4.5"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-crosssdk-intermediate=3D =
"4.5"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_gcc-runtime =3D =
"4.5"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_VERSION_libgcc =3D =
"4.5"</font></div><div><br></div><div>I get the following =
warnings:</div></div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc not available (for item gcc)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Resolving =
any missing task queue dependencies</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-cross not available (for item =
virtual/powerpc-poky-linux-gcc)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-runtime not available (for item =
virtual/powerpc-poky-linux-compilerlibs)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-runtime available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc not available (for item gcc)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-cross not available (for item =
virtual/powerpc-poky-linux-g++)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of libgcc not available (for item =
libgcc)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: versions of libgcc available: 4.5.4+svnr189152 =
4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-cross-intermediate not available (for item =
virtual/powerpc-poky-linux-gcc-intermediate)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-cross-intermediate available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of libgcc not available (for item =
libgcc)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: versions of libgcc available: 4.5.4+svnr189152 =
4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-cross-initial not available (for item =
virtual/powerpc-poky-linux-gcc-initial)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-cross-initial available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><br=
></div><div>I've now got 3 gcc variants, 4.7 (in poky), 4.6 and =
4.5&nbsp;(in meta-openembedded), and it's automatically picking up 4.6, =
from the =
meta-openembedded/toolchain-layer.</div><div><br></div><div>After =
gcc_4.6 recipe builds, and I attempt to re-run gcc_4.5, I get the =
following output:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc not available (for item gcc)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Resolving =
any missing task queue dependencies</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-cross not available (for item =
virtual/powerpc-poky-linux-gcc)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-runtime not available (for item =
virtual/powerpc-poky-linux-compilerlibs)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-runtime available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc not available (for item gcc)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-cross not available (for item =
virtual/powerpc-poky-linux-g++)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-cross available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of libgcc not available (for item =
libgcc)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: versions of libgcc available: 4.5.4+svnr189152 =
4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-cross-intermediate not available (for item =
virtual/powerpc-poky-linux-gcc-intermediate)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-cross-intermediate available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of libgcc not available (for item =
libgcc)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: versions of libgcc available: 4.5.4+svnr189152 =
4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: preferred =
version 4.5 of gcc-cross-initial not available (for item =
virtual/powerpc-poky-linux-gcc-initial)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: versions of =
gcc-cross-initial available: 4.5.4+svnr189152 4.6.3+svnr184847 =
4.7.1.0+git1+1653160670db186c6243997447ecbe6ce5056648</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Preparing =
runqueue</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">NOTE: Executing SetScene Tasks</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Executing =
RunQueue Tasks</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Tasks Summary: Attempted 938 tasks of =
which 938 didn't need to be rerun and all =
succeeded.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" =
size=3D"2">elvis@eos:/tool/yocto/poky/build$&nbsp;</font></div></div><div>=
<br></div><div><br></div><div>At this stage, 4.7.1, 4.6.3 have been =
built, but it doesn't allow me to build gcc_4.5 =
recipe.</div><div><br></div><div><br></div></div>Best =
regards,<div><br></div><div>Elvis Dowson</div></div></body></html>=

--Apple-Mail=_892BF625-5BEC-4106-9460-582141B12BCE--
