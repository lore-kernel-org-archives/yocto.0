Return-Path: <alaraij.shaikah@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D5DC2BD09
	for <webhook@archiver.kernel.org>; Mon,  1 Jul 2024 07:09:33 +0000 (UTC)
Subject: Re: [yocto] building core-image-minimal #bitbake #ubuntu #yocto
To: "Marco Cavallini" <koansoftware@gmail.com>, yocto@lists.yoctoproject.org
From: alaraij.shaikah@gmail.com
X-Originating-Location: Riyadh, Riyadh Region, SA (176.17.144.150)
X-Originating-Platform: Linux Firefox 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 01 Jul 2024 00:09:30 -0700
References: <25279.1719816633868138151@lists.yoctoproject.org>
In-Reply-To: <25279.1719816633868138151@lists.yoctoproject.org>
Message-ID: <25279.1719817770772518488@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="E2VGaLrp4bTSHJMbxqbH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Jul 2024 07:09:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63417

--E2VGaLrp4bTSHJMbxqbH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yes I did
Here they're:

Build Configuration:
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "1.46.0"
BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"
NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "arm-poky-linux-gnueabi"
MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "stm32mp1"
DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"
DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "3.1.33"
TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm vfp cortexa7 neon vfpv4 t=
humb callconvention-hard"
TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "hard"
meta
meta-poky
meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D "dunfell:63d05fc061006bf1a88630d6d9=
1cdc76ea33fbf2"
meta-oe
meta-python =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "dunfell:01358b6d705071cc=
0ac5aefa7670ab235709729a"
meta-st-stm32mp =C2=A0 =C2=A0 =C2=A0=3D "dunfell:a8d55e2fe13d6be03222f45b31=
15a96938b2553a"

Thank you

--E2VGaLrp4bTSHJMbxqbH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yes I did <br />Here they're: <br /><br />Build Configuration:<br />BB_VERS=
ION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "1.46.0"<br />BUILD_SYS &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "x86_64-linux"<br />NATIVELSBSTRING &n=
bsp; &nbsp; &nbsp;=3D "universal"<br />TARGET_SYS &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; =3D "arm-poky-linux-gnueabi"<br />MACHINE &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;=3D "stm32mp1"<br />DISTRO &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; =3D "poky"<br />DISTRO_VERSION &nbsp; &nbsp; &nbs=
p; =3D "3.1.33"<br />TUNE_FEATURES &nbsp; &nbsp; &nbsp; &nbsp;=3D "arm vfp =
cortexa7 neon vfpv4 thumb callconvention-hard"<br />TARGET_FPU &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; =3D "hard"<br />meta &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;&nbsp;<br />meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;<br />meta-yocto-bsp &nbsp; &nbsp; &nbsp; =3D "dunfell:63d05fc0=
61006bf1a88630d6d91cdc76ea33fbf2"<br />meta-oe &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;<br />meta-python &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D=
 "dunfell:01358b6d705071cc0ac5aefa7670ab235709729a"<br />meta-st-stm32mp &n=
bsp; &nbsp; &nbsp;=3D "dunfell:a8d55e2fe13d6be03222f45b3115a96938b2553a"<br=
 /><br />Thank you

--E2VGaLrp4bTSHJMbxqbH--

