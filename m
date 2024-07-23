Return-Path: <karn.jye.lau@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44B05C3DA63
	for <webhook@archiver.kernel.org>; Tue, 23 Jul 2024 11:26:21 +0000 (UTC)
Subject: ${IMAGE_NAME}-${MACHINE}.spdx.json is missing  in scargapth  #scarthgap #yocto
To: yocto@lists.yoctoproject.org
From: "Lau, Karn Jye" <karn.jye.lau@intel.com>
X-Originating-Location: Bayan Lepas, Penang, MY (192.198.147.183)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Jul 2024 04:26:20 -0700
Message-ID: <B1Ma.1721733980860262796.Sb0n@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="i0nhUJPOW83kRmwJ66AH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jul 2024 11:26:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63558

--i0nhUJPOW83kRmwJ66AH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi folks,

When enabled INHERIT +=3D "create-spdx" in local.conf , it is expect the fo=
llowing files to be available.

Build =C2=A0tmp directory/

=E2=94=9C=E2=94=80=E2=94=80 images # Outputs

=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 ${MACHINE}

=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ${IMAGE_NAME}-${MACHINE}.spdx.json

However I only observed =C2=A0${IMAGE_NAME}-${MACHINE}.spdx.tar.zst in scar=
gapth build , I tried to build in latest master branch , ${IMAGE_NAME}-${MA=
CHINE}.spdx.json is available upon build. I thing this create-spdc feature =
maybe broken.

KJ

--i0nhUJPOW83kRmwJ66AH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">Hi folks, </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">When enabled INHERIT +=3D &#34;create-spdx&#34; in local.conf =
, it is expect the following files to be available.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">Build =C2=A0tmp directory/</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"ZH-CN" s=
tyle=3D"font-size: 11.0pt; font-family: DengXian;">=E2=94=9C=E2=94=80=E2=94=
=80</span><span style=3D"font-size: 11.0pt;"> images # Outputs</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"ZH-CN" s=
tyle=3D"font-size: 11.0pt; font-family: DengXian;">=E2=94=82</span><span st=
yle=3D"font-size: 11.0pt;">=C2=A0=C2=A0 </span><span lang=3D"ZH-CN" style=
=3D"font-size: 11.0pt; font-family: DengXian;">=E2=94=94=E2=94=80=E2=94=80<=
/span><span style=3D"font-size: 11.0pt;"> ${MACHINE}</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"ZH-CN" s=
tyle=3D"font-size: 11.0pt; font-family: DengXian;">=E2=94=82</span><span st=
yle=3D"font-size: 11.0pt;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><spa=
n lang=3D"ZH-CN" style=3D"font-size: 11.0pt; font-family: DengXian;">=E2=94=
=9C=E2=94=80=E2=94=80</span><span style=3D"font-size: 11.0pt;"> ${IMAGE_NAM=
E}-${MACHINE}.spdx.json</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">However I only observed =C2=A0${IMAGE_NAME}-${MACHINE}.spdx.ta=
r.zst in scargapth build , I tried to build in latest master branch , ${IMA=
GE_NAME}-${MACHINE}.spdx.json is available upon build. I thing this create-=
spdc feature maybe broken.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">KJ</span></p>
</div>

--i0nhUJPOW83kRmwJ66AH--

