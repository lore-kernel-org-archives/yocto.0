Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 6E6C7E01485
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 01:07:12 -0800 (PST)
Received: by mail-pb0-f50.google.com with SMTP id up1so1051831pbc.9
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 01:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=O0863vdqmyoQH8RqUjvoEU2WA7BuKGot41MOPJnu9+8=;
	b=xp6yY2ck7SF5hRmL2BXHZj58NNJ6lCyjAFusJkd/pRb3m1Gy1DCOyTIUoTUXnx3OLl
	F0hUWyl3G4rdl4lugX9YcRwbW3wKgQg7mGp9pZ6l0PUdi4MwCedC0jQFRl5RFuzHokkT
	gTN/5SE6lgc52xuaxCL7tyc4wqyVEZVQzUxQOMTnRkarsk9ozMDpiWtEmWqq7spi+i88
	21FR/hfEVIg2zeFfVkP66RHnKaQgaIjD3IpeWATU+Tp2s444q/G/GjH4sxS6gQhMC3bf
	lX7cfPEoS1l8b5UVeboOkXZl04Ufu3ngTJT3W2UA1VN0r4mIKvMqXDZjeEUnRrUo66Xb
	uf3g==
X-Received: by 10.68.43.73 with SMTP id u9mr2067488pbl.218.1362733632209;
	Fri, 08 Mar 2013 01:07:12 -0800 (PST)
Received: from [192.168.1.91] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id qd8sm4907010pbc.29.2013.03.08.01.07.11
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 01:07:11 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFD161nCzH4RB-1dsa2Gy7wYgq0ytsFM-TqiwMCrOxLxKor7-A@mail.gmail.com>
Date: Fri, 8 Mar 2013 01:07:10 -0800
Message-Id: <D35479A6-3ED0-47B3-A523-B73CE36615CA@gmail.com>
References: <CAFD161nCzH4RB-1dsa2Gy7wYgq0ytsFM-TqiwMCrOxLxKor7-A@mail.gmail.com>
To: =?iso-8859-1?Q?Ismael_Barros=B2?= <ismael@imasdetres.com>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: Trying to bitbake core-image-minimal on Archlinux
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
X-List-Received-Date: Fri, 08 Mar 2013 09:07:12 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FD978080-E728-4467-9982-05FA24387502"

--Apple-Mail=_FD978080-E728-4467-9982-05FA24387502
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Mar 3, 2013, at 10:02 AM, Ismael Barros=B2 <ismael@imasdetres.com> =
wrote:

> Hi there,
>=20
> I'm new to Yocto, and I keep finding errors that prevent me from =
building a minimal image.
>=20
> I've just installed poky-danny-8.0, sourced oe-init-build-env, and =
bitbaked core-image-minimal. The first error is that bitbake sanity =
checks fail to detect the network access, while my network connectivity =
is perfect, and downloading packages seem to work if I disable this =
checks. Full log: http://pastebin.com/6jJCC1qp. I couldn't find any log =
that told me which piece of code was failing, so I jut disabled this =
check on ../meta-yocto/conf/distro/poky.conf
>=20
> Upon trying again, building started fine, but it started failing to =
build the documentation for some packages, i.e. binutils-cross. First =
off, I want to build a single mission appliance, I don't really want to =
build any documentation, is there any way I can disable it? Anyway, this =
is the build log: http://pastebin.com/n9U4GfjG. Looks like there are =
some texinfo commands my machine (texinfo 5.0) doesn't recognice. =
According to http://sourceware.org/bugzilla/show_bug.cgi?id=3D15183, =
it's a known bug on binuilts-2.22 and it's fixed on binuilts-2.23.

Archlinux version you might be using may not be one of sanitized distro =
for building danny
you could have upgrades to components that are pre-requisites for =
building binutils cross

if you can try to use one of sanitized distros on your build host that =
way you can avoid some
of these issues.

>=20
> Poking around, looks like "updating" to binutils-2.23 got it kind of =
working:

thats invasive change for danny to back port. May be you can try latest =
master and upcoming
release 1.4 if you can afford that

>=20
> mv ./meta/recipes-devtools/binutils/binutils-2.22.inc =
./meta/recipes-devtools/binutils/binutils-2.23.1.inc
> mv ./meta/recipes-devtools/binutils/binutils-cross-canadian_2.22.bb =
./meta/recipes-devtools/binutils/binutils-cross-canadian_2.23.1.bb
> mv ./meta/recipes-devtools/binutils/binutils_2.22.bb =
./meta/recipes-devtools/binutils/binutils_2.23.1.bb
> mv ./meta/recipes-devtools/binutils/binutils-crosssdk_2.22.bb =
./meta/recipes-devtools/binutils/binutils-crosssdk_2.23.1.bb
> mv ./meta/recipes-devtools/binutils/binutils-cross_2.22.bb =
./meta/recipes-devtools/binutils/binutils-cross_2.23.1.bb
>=20
> I also had to update the md5 and sha1 on =
./meta/recipes-devtools/binutils/binutils-2.23.1.inc. After that, some =
patches failed to apply: libtool-2.4-update.patch, =
binutils-2.19.1-ld-sysroot.patch, binutils-poison.patch, =
libtool-rpath-fix.patch, clone-shadow.patch... so gave up
> What would be the appropiate way to workaround this issue, besides not =
using Archlinux?
>=20
> Btw, if the bitbake core-image-minimal fails because there's not =
enough disk space, and the free disk in the partition is left to 0, =
after that even the bitbake clean command fails :\
>=20
>=20
> Anyway, thank you guys for what seems to be an excellent BSP factory, =
I'm really looking forward to start using it at our company :)
>=20
> Kind regards,
> Ismael
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_FD978080-E728-4467-9982-05FA24387502
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Mar 3, 2013, at 10:02 AM, Ismael Barros=B2 &lt;<a =
href=3D"mailto:ismael@imasdetres.com">ismael@imasdetres.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr">Hi there,<div><br></div><div style=3D"">I'm=
 new to Yocto, and I keep finding errors that prevent me from building a =
minimal image.</div><div style=3D""><br></div><div style=3D"">I've just =
installed&nbsp;poky-danny-8.0, sourced&nbsp;oe-init-build-env, and =
bitbaked&nbsp;core-image-minimal. The first error is that bitbake sanity =
checks fail to detect the network access, while my network connectivity =
is perfect, and downloading packages seem to work if I disable this =
checks. Full log:&nbsp;<a =
href=3D"http://pastebin.com/6jJCC1qp">http://pastebin.com/6jJCC1qp</a>. =
I couldn't find any log that told me which piece of code was failing, so =
I jut disabled this check =
on&nbsp;../meta-yocto/conf/distro/poky.conf</div>

<div style=3D""><br></div><div style=3D"">Upon trying again, building =
started fine, but it started failing to build the documentation for some =
packages, i.e. binutils-cross. First off, I want to build a single =
mission appliance, I don't really want to build any documentation, is =
there any way I can disable it? Anyway, this is the build log:&nbsp;<a =
href=3D"http://pastebin.com/n9U4GfjG">http://pastebin.com/n9U4GfjG</a>. =
Looks like there are some texinfo commands my machine (texinfo 5.0) =
doesn't recognice. According to&nbsp;<a =
href=3D"http://sourceware.org/bugzilla/show_bug.cgi?id=3D15183">http://sou=
rceware.org/bugzilla/show_bug.cgi?id=3D15183</a>, it's a known bug =
on&nbsp;binuilts-2.22 and it's fixed =
on&nbsp;binuilts-2.23.</div></div></blockquote><div><br></div><div>Archlin=
ux version you might be using may not be one of sanitized distro for =
building danny</div><div>you could have upgrades to components that are =
pre-requisites for building binutils cross</div><div><br></div><div>if =
you can try to use one of sanitized distros on your build host that way =
you can avoid some</div><div>of these issues.</div><br><blockquote =
type=3D"cite"><div dir=3D"ltr">

<div style=3D""><br></div><div style=3D"">Poking around, looks like =
"updating" to binutils-2.23 got it kind of =
working:</div></div></blockquote><div><br></div><div>thats invasive =
change for danny to back port. May be you can try latest master and =
upcoming</div><div>release 1.4 if you can afford =
that</div><br><blockquote type=3D"cite"><div dir=3D"ltr"><div =
style=3D""><br></div><div style=3D""><div>mv =
./meta/recipes-devtools/binutils/binutils-2.22.inc =
./meta/recipes-devtools/binutils/binutils-2.23.1.inc</div>

<div>mv ./meta/recipes-devtools/binutils/<a =
href=3D"http://binutils-cross-canadian_2.22.bb/">binutils-cross-canadian_2=
.22.bb</a> ./meta/recipes-devtools/binutils/<a =
href=3D"http://binutils-cross-canadian_2.23.1.bb/">binutils-cross-canadian=
_2.23.1.bb</a></div>

<div>mv ./meta/recipes-devtools/binutils/<a =
href=3D"http://binutils_2.22.bb/">binutils_2.22.bb</a> =
./meta/recipes-devtools/binutils/<a =
href=3D"http://binutils_2.23.1.bb/">binutils_2.23.1.bb</a></div><div>mv =
./meta/recipes-devtools/binutils/<a =
href=3D"http://binutils-crosssdk_2.22.bb/">binutils-crosssdk_2.22.bb</a> =
./meta/recipes-devtools/binutils/<a =
href=3D"http://binutils-crosssdk_2.23.1.bb/">binutils-crosssdk_2.23.1.bb</=
a></div>

<div>mv ./meta/recipes-devtools/binutils/<a =
href=3D"http://binutils-cross_2.22.bb/">binutils-cross_2.22.bb</a> =
./meta/recipes-devtools/binutils/<a =
href=3D"http://binutils-cross_2.23.1.bb/">binutils-cross_2.23.1.bb</a></di=
v><div>

<br></div><div style=3D"">I also had to update the md5 and sha1 =
on&nbsp;./meta/recipes-devtools/binutils/binutils-2.23.1.inc. After =
that, some patches failed to apply: =
libtool-2.4-update.patch,&nbsp;binutils-2.19.1-ld-sysroot.patch,&nbsp;binu=
tils-poison.patch, libtool-rpath-fix.patch,&nbsp;clone-shadow.patch... =
so gave up</div>

<div style=3D"">What would be the appropiate way to workaround this =
issue, besides not using Archlinux?</div></div><div =
style=3D""><br></div><div style=3D"">Btw, if the bitbake =
core-image-minimal fails because there's not enough disk space, and the =
free disk in the partition is left to 0, after that even the bitbake =
clean command fails :\</div>

<div style=3D""><br></div><div style=3D""><br></div><div =
style=3D"">Anyway, thank you guys for what seems to be an excellent BSP =
factory, I'm really looking forward to start using it at our company =
:)</div><div style=3D""><br></div><div style=3D"">

Kind regards,</div><div style=3D"">Ismael</div></div>
_______________________________________________<br>yocto mailing =
list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body>=
</html>=

--Apple-Mail=_FD978080-E728-4467-9982-05FA24387502--
