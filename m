Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14285C4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 09:35:46 +0000 (UTC)
Subject: Including Python3 modules in generated SDK do not work (python3-node-semver, kirkstone)
To: yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.229.170)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Feb 2024 23:27:35 -0800
Message-ID: <Nqcj.1707982055776102640.IF0n@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jC11QaKliP6NJJ3K4vsV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 09:35:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62493

--jC11QaKliP6NJJ3K4vsV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am using one application which is using a python3 module (python3-node-se=
mver), I was trying to provide the application developer with the yocto SDK=
 but I cannot locate this module in the new generate SDK, I have tried to a=
dd this manually by adding these lines to machine config like this

IMAGE_INSTALL:append =3D " python3-node-semver"
TOOLCHAIN_HOST_TASK +=3D " python3-node-semver "

https://layers.openembedded.org/layerindex/recipe/333689/

but still not working, python3-node-semver is available on the target but n=
ot in the host SDK!! Any idea what this happening?

Regards,
Salahaldeen

--jC11QaKliP6NJJ3K4vsV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"UniqueMessageBody" class=3D"XbIp4 jmmB7 GNqVo allowTextSelection=
 OuGoX" tabindex=3D"-1" role=3D"document" aria-label=3D"Message body">
<div>
<div>
<div dir=3D"ltr">
<div style=3D"direction: ltr;"><span style=3D"color: black; font-size: 12pt=
; font-family: Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helveti=
ca,sans-serif;">Hello,<br aria-hidden=3D"true" /><br aria-hidden=3D"true" /=
>I am using one application which is using a python3 module (python3-node-s=
emver), I was trying to provide the application developer with the yocto SD=
K but I cannot locate this module in the new generate SDK, I have tried to =
add this manually by adding these lines to machine config like this<br aria=
-hidden=3D"true" /><br aria-hidden=3D"true" />IMAGE_INSTALL:append =3D " py=
thon3-node-semver"<br aria-hidden=3D"true" />TOOLCHAIN_HOST_TASK +=3D " pyt=
hon3-node-semver "<br aria-hidden=3D"true" /><br aria-hidden=3D"true" /><a =
id=3D"LPlnkOWA453bec22-b037-1cf8-6e01-ee2c553f257b" href=3D"https://layers.=
openembedded.org/layerindex/recipe/333689/" target=3D"_blank" rel=3D"noopen=
er noreferrer" data-auth=3D"NotApplicable" data-loopstyle=3D"linkonly" data=
-linkindex=3D"0">https://layers.openembedded.org/layerindex/recipe/333689/<=
/a></span></div>
<div style=3D"direction: ltr;"><span style=3D"color: black; font-size: 12pt=
; font-family: Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helveti=
ca,sans-serif;"><br aria-hidden=3D"true" />but still not working, python3-n=
ode-semver is available on the target but not in the host SDK!! Any idea wh=
at this happening?</span></div>
<div style=3D"direction: ltr;"><span style=3D"color: black; font-size: 12pt=
; font-family: Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helveti=
ca,sans-serif;"><br aria-hidden=3D"true" />Regards,</span></div>
<div style=3D"direction: ltr;"><span style=3D"color: black; font-size: 12pt=
; font-family: Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helveti=
ca,sans-serif;">Salahaldeen</span></div>
</div>
</div>
</div>
</div>

--jC11QaKliP6NJJ3K4vsV--

