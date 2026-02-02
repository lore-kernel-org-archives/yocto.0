Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11008E7DEF3
	for <webhook@archiver.kernel.org>; Mon,  2 Feb 2026 15:08:59 +0000 (UTC)
Subject: Re: [yocto] packages aren't added to eSDK sysroot
To: "Andre" <an_aire@yahoo.com>, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: California, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 02 Feb 2026 07:08:49 -0800
References: <Wbln.1751977218969341818.0K3Y@lists.yoctoproject.org>
In-Reply-To: <Wbln.1751977218969341818.0K3Y@lists.yoctoproject.org>
Message-ID: <442096.1770044929200154282@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HTo58NRbsHWfaT3D9oJX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Feb 2026 15:08:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66208

--HTo58NRbsHWfaT3D9oJX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm building obmc-phosphor-image for example, and what I found I had to do =
was to go to obmc-phosphor-image-base.inc, for me I was trying to use the e=
SDK exactly as it's described, building application level programs, so for =
me I needed curl, libz, etc.

What I found that I had to do(open to a better, more good practice way...) =
:

1) Modify DEPENDS:append =3D " obmc-phosphor-nor-image" into DEPENDS:append=
 =3D " obmc-phosphor-nor-image openssl zlib curl libxcrypt "

2) Add TOOLCHAIN_TARGET_TASK:append =3D " libxcrypt libxcrypt-dev"

I could then build the eSDK, build my applications, and the linker found ev=
erything it needed to complete. This is a bit of a conflated example becaus=
e libcrypt(yes, libcrypt without the x) is just weird, but it shows that ev=
en adding a library is not straight forward in yocto. So don't be frustrate=
d if you are.

--HTo58NRbsHWfaT3D9oJX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm building obmc-phosphor-image for example, and what I found I had t=
o do was to go to obmc-phosphor-image-base.inc, for me I was trying to use =
the eSDK exactly as it's described, building application level programs, so=
 for me I needed curl, libz, etc.</div>
<div>&nbsp;</div>
<div>What I found that I had to do(open to a better, more good practice way=
...) :</div>
<div>&nbsp;</div>
<div>1) Modify DEPENDS:append =3D " obmc-phosphor-nor-image" into DEPENDS:a=
ppend =3D " obmc-phosphor-nor-image openssl zlib curl libxcrypt "<br /><br =
/>2) Add TOOLCHAIN_TARGET_TASK:append =3D " libxcrypt libxcrypt-dev"</div>
<div>&nbsp;</div>
<div>I could then build the eSDK, build my applications, and the linker fou=
nd everything it needed to complete. This is a bit of a conflated example b=
ecause libcrypt(yes, libcrypt without the x) is just weird, but it shows th=
at even adding a library is not straight forward in yocto. So don't be frus=
trated if you are.</div>

--HTo58NRbsHWfaT3D9oJX--

