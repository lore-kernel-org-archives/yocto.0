Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF18E013F7
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 03:42:10 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so3920010pbb.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 03:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=xQEcWJkXLRFdIzOFoDuSjBJeHWjtPfE9RzHZgGABQl8=;
	b=Rpl8nVSC/ENPF4EsNgssTK/OY/3fRaBeslMtH9rXRbRn9ICjrMbLN0hT9+iHbFp5Dk
	gwssiQN98RxpIC3Ok84Azj3WMPnejvCfwECYhMKB4S+DimRnDk3mZeMS8Tt7kciZkHFR
	AOhAfLb8bBLruI3xeXWzwXhmeGD3Do/RsvBSvxtzyNeLUE8ojG0DUOW2ClKrR2ktqJSR
	Mgy5Ty3q4cPMMauCcjigmG7Dp2V7WfPfmdfrB3LsDUT+6Yls2A4D/QAj3u6PydN/gGQT
	C+3akb9HaZJlroa79mec32bOG0wWH8DqyniBXkD1C+QWe75+vhwazZQCKFFD5SgQ7XKL
	3Xfg==
Received: by 10.68.226.193 with SMTP id ru1mr4903152pbc.157.1344681730378;
	Sat, 11 Aug 2012 03:42:10 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id op10sm1168971pbc.75.2012.08.11.03.42.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 11 Aug 2012 03:42:09 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 11 Aug 2012 14:42:05 +0400
Message-Id: <69899E75-819B-481C-BEDD-949A5490F1E4@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: gcc virtual provider settings
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
X-List-Received-Date: Sat, 11 Aug 2012 10:42:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_33F526CF-85ED-4A29-AFC0-05A036392297"

--Apple-Mail=_33F526CF-85ED-4A29-AFC0-05A036392297
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       Where can I find the "virtual provides" for gcc?

I'd like to properly fill the following values in my local.conf file, to =
point it to a locally created gcc_4.5.bb recipe, along with rest, for =
gcc-cross_4.5.bb, gcc-cross-canadian_4.5.bb, etc.

PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc =3D ""
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial =3D ""
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate =3D ""
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++ =3D ""
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binutils =3D ""
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc =3D ""
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs =3D ""
PREFERRED_PROVIDER_libgcc =3D ""
PREFERRED_PROVIDER_eglibc =3D ""
PREFERRED_PROVIDER_virtual/libc =3D ""
PREFERRED_PROVIDER_virtual/libintl =3D ""
PREFERRED_PROVIDER_virtual/libiconv =3D ""
PREFERRED_PROVIDER_gdbserver =3D ""
PREFERRED_PROVIDER_virtual/gettext =3D ""

Best regards,

Elvis=

--Apple-Mail=_33F526CF-85ED-4A29-AFC0-05A036392297
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;Where can I find the "virtual =
provides" for gcc?</div><div><br></div><div>I'd like to properly fill =
the following values in my local.conf file, to point it to a locally =
created gcc_4.5.bb recipe, along with rest, for gcc-cross_4.5.bb, =
gcc-cross-canadian_4.5.bb, etc.</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
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
""</font></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis</div></body></html>=

--Apple-Mail=_33F526CF-85ED-4A29-AFC0-05A036392297--
