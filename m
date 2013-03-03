Return-Path: <ismael@imasdetres.com>
Received: from servidor1.dominiodns.com (servidor1.dominiodns.com
	[89.207.232.12])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3D79BE014B4
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2013 10:02:32 -0800 (PST)
Received: from mail-qe0-f53.google.com ([209.85.128.53])
	by servidor1.dominiodns.com with esmtpa (Exim 4.80.1)
	(envelope-from <ismael@imasdetres.com>) id 1UCDAi-0007un-Hf
	for yocto@yoctoproject.org; Sun, 03 Mar 2013 18:58:04 +0100
Received: by mail-qe0-f53.google.com with SMTP id cz11so3363382qeb.26
	for <yocto@yoctoproject.org>; Sun, 03 Mar 2013 10:02:27 -0800 (PST)
X-Received: by 10.49.5.7 with SMTP id o7mr30670506qeo.30.1362333747814; Sun,
	03 Mar 2013 10:02:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.39.226 with HTTP; Sun, 3 Mar 2013 10:02:07 -0800 (PST)
From: =?UTF-8?Q?Ismael_Barros=C2=B2?= <ismael@imasdetres.com>
Date: Sun, 3 Mar 2013 19:02:07 +0100
Message-ID: <CAFD161nCzH4RB-1dsa2Gy7wYgq0ytsFM-TqiwMCrOxLxKor7-A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Trying to bitbake core-image-minimal on Archlinux
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
X-List-Received-Date: Sun, 03 Mar 2013 18:02:32 -0000
Content-Type: multipart/alternative; boundary=047d7bdc06b81ab69904d7090b1f

--047d7bdc06b81ab69904d7090b1f
Content-Type: text/plain; charset=UTF-8

Hi there,

I'm new to Yocto, and I keep finding errors that prevent me from building a
minimal image.

I've just installed poky-danny-8.0, sourced oe-init-build-env, and
bitbaked core-image-minimal. The first error is that bitbake sanity checks
fail to detect the network access, while my network connectivity is
perfect, and downloading packages seem to work if I disable this checks.
Full log: http://pastebin.com/6jJCC1qp. I couldn't find any log that told
me which piece of code was failing, so I jut disabled this check
on ../meta-yocto/conf/distro/poky.conf

Upon trying again, building started fine, but it started failing to build
the documentation for some packages, i.e. binutils-cross. First off, I want
to build a single mission appliance, I don't really want to build any
documentation, is there any way I can disable it? Anyway, this is the build
log: http://pastebin.com/n9U4GfjG. Looks like there are some texinfo
commands my machine (texinfo 5.0) doesn't recognice. According to
http://sourceware.org/bugzilla/show_bug.cgi?id=15183, it's a known bug
on binuilts-2.22 and it's fixed on binuilts-2.23.

Poking around, looks like "updating" to binutils-2.23 got it kind of
working:

mv ./meta/recipes-devtools/binutils/binutils-2.22.inc
./meta/recipes-devtools/binutils/binutils-2.23.1.inc
mv ./meta/recipes-devtools/binutils/binutils-cross-canadian_2.22.bb./meta/recipes-devtools/binutils/
binutils-cross-canadian_2.23.1.bb
mv ./meta/recipes-devtools/binutils/binutils_2.22.bb./meta/recipes-devtools/binutils/
binutils_2.23.1.bb
mv ./meta/recipes-devtools/binutils/binutils-crosssdk_2.22.bb./meta/recipes-devtools/binutils/
binutils-crosssdk_2.23.1.bb
mv ./meta/recipes-devtools/binutils/binutils-cross_2.22.bb./meta/recipes-devtools/binutils/
binutils-cross_2.23.1.bb

I also had to update the md5 and sha1
on ./meta/recipes-devtools/binutils/binutils-2.23.1.inc. After that, some
patches failed to apply:
libtool-2.4-update.patch, binutils-2.19.1-ld-sysroot.patch,
binutils-poison.patch,
libtool-rpath-fix.patch, clone-shadow.patch... so gave up
What would be the appropiate way to workaround this issue, besides not
using Archlinux?

Btw, if the bitbake core-image-minimal fails because there's not enough
disk space, and the free disk in the partition is left to 0, after that
even the bitbake clean command fails :\


Anyway, thank you guys for what seems to be an excellent BSP factory, I'm
really looking forward to start using it at our company :)

Kind regards,
Ismael

--047d7bdc06b81ab69904d7090b1f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div style>I&#39;m new to Yocto, a=
nd I keep finding errors that prevent me from building a minimal image.</di=
v><div style><br></div><div style>I&#39;ve just installed=C2=A0poky-danny-8=
.0, sourced=C2=A0oe-init-build-env, and bitbaked=C2=A0core-image-minimal. T=
he first error is that bitbake sanity checks fail to detect the network acc=
ess, while my network connectivity is perfect, and downloading packages see=
m to work if I disable this checks. Full log:=C2=A0<a href=3D"http://pasteb=
in.com/6jJCC1qp">http://pastebin.com/6jJCC1qp</a>. I couldn&#39;t find any =
log that told me which piece of code was failing, so I jut disabled this ch=
eck on=C2=A0../meta-yocto/conf/distro/poky.conf</div>

<div style><br></div><div style>Upon trying again, building started fine, b=
ut it started failing to build the documentation for some packages, i.e. bi=
nutils-cross. First off, I want to build a single mission appliance, I don&=
#39;t really want to build any documentation, is there any way I can disabl=
e it? Anyway, this is the build log:=C2=A0<a href=3D"http://pastebin.com/n9=
U4GfjG">http://pastebin.com/n9U4GfjG</a>. Looks like there are some texinfo=
 commands my machine (texinfo 5.0) doesn&#39;t recognice. According to=C2=
=A0<a href=3D"http://sourceware.org/bugzilla/show_bug.cgi?id=3D15183">http:=
//sourceware.org/bugzilla/show_bug.cgi?id=3D15183</a>, it&#39;s a known bug=
 on=C2=A0binuilts-2.22 and it&#39;s fixed on=C2=A0binuilts-2.23.</div>

<div style><br></div><div style>Poking around, looks like &quot;updating&qu=
ot; to binutils-2.23 got it kind of working:</div><div style><br></div><div=
 style><div>mv ./meta/recipes-devtools/binutils/binutils-2.22.inc ./meta/re=
cipes-devtools/binutils/binutils-2.23.1.inc</div>

<div>mv ./meta/recipes-devtools/binutils/<a href=3D"http://binutils-cross-c=
anadian_2.22.bb">binutils-cross-canadian_2.22.bb</a> ./meta/recipes-devtool=
s/binutils/<a href=3D"http://binutils-cross-canadian_2.23.1.bb">binutils-cr=
oss-canadian_2.23.1.bb</a></div>

<div>mv ./meta/recipes-devtools/binutils/<a href=3D"http://binutils_2.22.bb=
">binutils_2.22.bb</a> ./meta/recipes-devtools/binutils/<a href=3D"http://b=
inutils_2.23.1.bb">binutils_2.23.1.bb</a></div><div>mv ./meta/recipes-devto=
ols/binutils/<a href=3D"http://binutils-crosssdk_2.22.bb">binutils-crosssdk=
_2.22.bb</a> ./meta/recipes-devtools/binutils/<a href=3D"http://binutils-cr=
osssdk_2.23.1.bb">binutils-crosssdk_2.23.1.bb</a></div>

<div>mv ./meta/recipes-devtools/binutils/<a href=3D"http://binutils-cross_2=
.22.bb">binutils-cross_2.22.bb</a> ./meta/recipes-devtools/binutils/<a href=
=3D"http://binutils-cross_2.23.1.bb">binutils-cross_2.23.1.bb</a></div><div=
>

<br></div><div style>I also had to update the md5 and sha1 on=C2=A0./meta/r=
ecipes-devtools/binutils/binutils-2.23.1.inc. After that, some patches fail=
ed to apply: libtool-2.4-update.patch,=C2=A0binutils-2.19.1-ld-sysroot.patc=
h,=C2=A0binutils-poison.patch, libtool-rpath-fix.patch,=C2=A0clone-shadow.p=
atch... so gave up</div>

<div style>What would be the appropiate way to workaround this issue, besid=
es not using Archlinux?</div></div><div style><br></div><div style>Btw, if =
the bitbake core-image-minimal fails because there&#39;s not enough disk sp=
ace, and the free disk in the partition is left to 0, after that even the b=
itbake clean command fails :\</div>

<div style><br></div><div style><br></div><div style>Anyway, thank you guys=
 for what seems to be an excellent BSP factory, I&#39;m really looking forw=
ard to start using it at our company :)</div><div style><br></div><div styl=
e>

Kind regards,</div><div style>Ismael</div></div>

--047d7bdc06b81ab69904d7090b1f--
