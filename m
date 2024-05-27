Return-Path: <jonas.fredriksson92@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F02C25B79
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 06:35:21 +0000 (UTC)
Subject: How to include full Golang build support in SDK?
To: yocto@lists.yoctoproject.org
From: "Jonas Fredriksson" <jonas.fredriksson92@gmail.com>
X-Originating-Location: =?UTF-8?B?TGFuZHZldHRlciwgVsOkc3RyYSBHw7Z0YWxhbmQgQ291bnR5LCBTRQ==?= (136.163.208.2)
X-Originating-Platform: Linux Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 26 May 2024 23:35:19 -0700
Message-ID: <Hm8U.1716791719153851376.1lBm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wJH0mYs9oq2jgy9ARA9N"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 06:35:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63198

--wJH0mYs9oq2jgy9ARA9N
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I'm trying to create an SDK that has support for cross-compiling Gol=
ang applications. I know that Golang supports this out-of-the-box via *"env=
 GOOS=3Dlinux GOARCH=3Darm64 go build"* but I am linking against CGO which =
proved difficult this way.

What I have:

>=20
>=20
>=20
> TOOLCHAIN_HOST_TASK:append =3D " \
> nativesdk-go \
> packagegroup-go-cross-canadian-${MACHINE} \
> "
>=20
> TOOLCHAIN_TARGET_TASK:append =3D " \
> ${@multilib_pkg_extend(d, 'packagegroup-go-sdk-target')} \
> "
>=20
> IMAGE_INSTALL:append =3D " go"
>=20
>=20

When this SDK is built and installed, it only gives me this directory tree:

>=20
>=20
>=20
> $ ls -lah x86_64-pokysdk-linux/usr/lib/go/
> bin
> pkg
>=20
>=20

What I specifically need is the " *src* " directory, because the packages a=
re in there.

What do I need to add to my sdk, and how?

--wJH0mYs9oq2jgy9ARA9N
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello, I'm trying to create an SDK that has support for cross-compiling =
Golang applications. I know that Golang supports this out-of-the-box via <s=
trong>"env GOOS=3Dlinux GOARCH=3Darm64 go build"</strong> but I am linking =
against CGO which proved difficult this way.</p>
<p>&nbsp;</p>
<p>What I have:</p>
<blockquote>
<p>TOOLCHAIN_HOST_TASK:append =3D " \<br />&nbsp; &nbsp; nativesdk-go \<br =
/>&nbsp; &nbsp; packagegroup-go-cross-canadian-${MACHINE} \<br />"<br /><br=
 />TOOLCHAIN_TARGET_TASK:append =3D " \<br />&nbsp; &nbsp; ${@multilib_pkg_=
extend(d, 'packagegroup-go-sdk-target')} \<br />"<br /><br />IMAGE_INSTALL:=
append =3D " go"</p>
</blockquote>
<p>When this SDK is built and installed, it only gives me this directory tr=
ee:</p>
<blockquote>
<p>$ ls -lah x86_64-pokysdk-linux/usr/lib/go/<br />bin<br />pkg</p>
</blockquote>
<p>What I specifically need is the "<strong>src</strong>" directory, becaus=
e the packages are in there.&nbsp;</p>
<p>What do I need to add to my sdk, and how?</p>

--wJH0mYs9oq2jgy9ARA9N--

