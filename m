Return-Path: <283982@ust.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE498C28B30
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 13:15:58 +0000 (UTC)
Subject: Re: [yocto] How to build a yocto image with two different python3 versions ? #yocto #python #scarthgap #sdk #toolchain
To: "Leon Anavi" <leon.anavi@konsulko.com>, yocto@lists.yoctoproject.org
From: 283982@ust.com
X-Originating-Location: US (136.226.244.103)
X-Originating-Platform: Linux Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 20 Mar 2025 06:15:56 -0700
References: <9eadbb33-7272-413d-9610-7bd9bc9bb050@konsulko.com>
In-Reply-To: <9eadbb33-7272-413d-9610-7bd9bc9bb050@konsulko.com>
Message-ID: <20431.1742476556736758958@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kVDIGaeOfleGx3bhWMQj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 13:15:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64990

--kVDIGaeOfleGx3bhWMQj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Leon,

When I try to run pip install scipy , it attempts to build the package from=
 source because a wheel file for the ARMV7L architecture isn't available. S=
ince the team has decided to move forward with the RZ/V2L, I am currently u=
sing the STM32MPU157F to learn how to build packages with Yocto.

As Python 3.8 is the default version available for RZ/V2L, I need to instal=
l Python 3.11.5 to run the application I need. Since I don't have the RZ/V2=
L board yet, I am using the STM32MPU157F learn on how to build an image wit=
h Python 3.11.5. This will allow me to apply the same process when building=
 a Yocto image with Python 3.11.5 for the RZ/V2L.

--kVDIGaeOfleGx3bhWMQj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Leon,<br /><br />
<p data-start=3D"58" data-end=3D"348">When I try to run <code data-start=3D=
"76" data-end=3D"95">pip install scipy</code>, it attempts to build the pac=
kage from source because a wheel file for the ARMV7L architecture isn't ava=
ilable. Since the team has decided to move forward with the RZ/V2L, I am cu=
rrently using the STM32MPU157F to learn how to build packages with Yocto.</=
p>
<p data-start=3D"350" data-end=3D"709">As Python 3.8 is the default version=
 available for RZ/V2L, I need to install Python 3.11.5 to run the applicati=
on I need. Since I don't have the RZ/V2L board yet, I am using the STM32MPU=
157F learn on how to build an image with Python 3.11.5. This will allow me =
to apply the same process when building a Yocto image with Python 3.11.5 fo=
r the RZ/V2L.</p>
<span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, =
'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple=
 Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; fon=
t-size: 16px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-=
color: #ffffff; text-decoration-thickness: initial; text-decoration-style: =
initial; text-decoration-color: initial; display: inline !important; float:=
 none;"><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', =
Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif=
, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emo=
ji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !important=
; float: none;"><span style=3D"color: #333333; font-family: system-ui, 'Seg=
oe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sa=
ns-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto C=
olor Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wid=
ows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: nor=
mal; background-color: #ffffff; text-decoration-thickness: initial; text-de=
coration-style: initial; text-decoration-color: initial; display: inline !i=
mportant; float: none;"><br /></span></span></span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--kVDIGaeOfleGx3bhWMQj--

