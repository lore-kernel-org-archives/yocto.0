Return-Path: <haimbachar2008@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1824D43376
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 16:20:15 +0000 (UTC)
Subject: Re: [yocto] exclude layer from specific image when have multiple images
To: "Quentin Schulz" <quentin.schulz@cherry.de>, yocto@lists.yoctoproject.org
From: "Haimbach" <haimbachar2008@gmail.com>
X-Originating-Location: Shelomi, Northern District, IL (193.169.71.243)
X-Originating-Platform: Linux Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 07 Nov 2024 08:20:13 -0800
References: <c9c47880-69c6-4f9a-86b3-d2d935d21b72@cherry.de>
In-Reply-To: <c9c47880-69c6-4f9a-86b3-d2d935d21b72@cherry.de>
Message-ID: <26692.1730996413197901229@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1WKEFTVfAlJws5tVIZB8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 16:20:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64234

--1WKEFTVfAlJws5tVIZB8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I don't want to specify those files which are inside the same layer, *becau=
se they can be changed.(this is layer I maintain)*

for an example, *first version* of the layer have the file *rt.patch,*
but the *second version* of the layer have the file *rt1.patch*

And if they changed I don't want to change it in inside my build system IDE=
, SRC_URI:append:mydistro-rt =3D *" file://rt.patch"* to
SRC_URI:append:mydistro-rt =3D *" file://rt1.patch"*

Regards,
Haim

--1WKEFTVfAlJws5tVIZB8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I don't want to specify those files which are inside the same layer, <=
strong>because they can be changed.(this is layer I maintain)</strong></div=
>
<div>&nbsp;</div>
<div>for an example, <strong>first version</strong> of the layer have the f=
ile <strong><span style=3D"color: #333333; font-family: system-ui, 'Segoe U=
I', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-s=
erif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color=
 Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-colo=
r: #ffffff; text-decoration-thickness: initial; text-decoration-style: init=
ial; text-decoration-color: initial; float: none; display: inline !importan=
t;">rt.patch,</span></strong></div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial; float: none; display: inline !important;">but=
 the <strong>second version</strong> of the layer have the file <strong>rt1=
.patch</strong></span></div>
<div>&nbsp;</div>
<div>And if they changed I don't want to change it in inside my build syste=
m IDE, <span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', R=
oboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif,=
 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoj=
i'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: start; text-indent: 0px; text-transform: none; white-space:=
 pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; ba=
ckground-color: #ffffff; text-decoration-thickness: initial; text-decoratio=
n-style: initial; text-decoration-color: initial; display: inline !importan=
t; float: none;">SRC_URI:append:mydistro-rt =3D <strong>" file://rt.patch"<=
/strong> to</span></div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; white-space: p=
re-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;"><span style=3D"color: #333333; font-family: system-ui, 'Sego=
e UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, san=
s-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Co=
lor Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial; display: inline !=
important; float: none;">SRC_URI:append:mydistro-rt =3D <strong>" file://rt=
1.patch"</strong></span></span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; white-space: p=
re-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;"><span style=3D"color: #333333; font-family: system-ui, 'Sego=
e UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, san=
s-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Co=
lor Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial; display: inline !=
important; float: none;">Regards,</span></span></div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; white-space: p=
re-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;"><span style=3D"color: #333333; font-family: system-ui, 'Sego=
e UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, san=
s-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Co=
lor Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial; display: inline !=
important; float: none;">Haim</span></span></div>

--1WKEFTVfAlJws5tVIZB8--

