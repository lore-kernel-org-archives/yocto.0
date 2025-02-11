Return-Path: <Ankita.AN@exaleapsemi.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC8AC0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 12:38:00 +0000 (UTC)
Subject: Re: [yocto] gnome desktop with kirkstone #kirkstone #gnome
To: "Markus Volk" <f_l_k@t-online.de>, yocto@lists.yoctoproject.org
From: Ankita.AN@exaleapsemi.com
X-Originating-Location: Bengaluru, Karnataka, IN (171.76.82.210)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Feb 2025 04:37:55 -0800
References: <858IRS.YAZ7V09LQ36C3@t-online.de>
In-Reply-To: <858IRS.YAZ7V09LQ36C3@t-online.de>
Message-ID: <24986.1739277475407711524@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XFHB3HFnNt2KPbT53p2k"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 12:38:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64763

--XFHB3HFnNt2KPbT53p2k
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
As per https://github.com/WebKit/WebKit/blob/webkitgtk-2.36.8/Source/ThirdP=
arty/ANGLE/include/GLSLANG/ShaderVars.h there is no #include <cstdint> adde=
d in the source.
If I add it to /home/integration-team/webkit/sources/build/tmp-glibc/work/r=
iscv64-oe-linux/webkitgtk/2.36.8-r0/webkitgtk-2.36.8/Source/ThirdParty/ANGL=
E/include/GLSLANG/ShaderVars.h the recipe gets build.

How do I use it from https://www.webkitgtk.org/releases/webkitgtk-2.36.8.ta=
r.xz directly?

Thanks

--XFHB3HFnNt2KPbT53p2k
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>As per <a href=3D"https://github.com/WebKit/WebKit/blob/webkitgtk-2.36=
.8/Source/ThirdParty/ANGLE/include/GLSLANG/ShaderVars.h" target=3D"_blank" =
rel=3D"noopener">https://github.com/WebKit/WebKit/blob/webkitgtk-2.36.8/Sou=
rce/ThirdParty/ANGLE/include/GLSLANG/ShaderVars.h</a> there is no <span sty=
le=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetic=
a Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Em=
oji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 1=
6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #f=
fffff; text-decoration-thickness: initial; text-decoration-style: initial; =
text-decoration-color: initial; display: inline !important; float: none;">#=
include &lt;cstdint&gt; added in the source.</span></div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">If I add it to <span style=3D"color: #333333; font-family: sys=
tem-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans=
', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symb=
ol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-=
ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: normal; background-color: #ffffff; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial; displa=
y: inline !important; float: none;">/home/integration-team/webkit/sources/b=
uild/tmp-glibc/work/riscv64-oe-linux/webkitgtk/2.36.8-r0/webkitgtk-2.36.8/S=
ource/ThirdParty/ANGLE/include/GLSLANG/ShaderVars.h the recipe gets build.<=
/span></span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;"><span style=3D"color: #333333; font-family: system-ui, 'Segoe =
UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-=
serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Colo=
r Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; or=
phans: 2; text-align: start; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal=
; background-color: #ffffff; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial; display: inline !impo=
rtant; float: none;">How do I use it from <a href=3D"https://www.webkitgtk.=
org/releases/webkitgtk-2.36.8.tar.xz" target=3D"_blank" rel=3D"noopener">ht=
tps://www.webkitgtk.org/releases/webkitgtk-2.36.8.tar.xz</a> directly?</spa=
n></span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;"><span style=3D"color: #333333; font-family: system-ui, 'Segoe =
UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-=
serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Colo=
r Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norm=
al; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; or=
phans: 2; text-align: start; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal=
; background-color: #ffffff; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial; display: inline !impo=
rtant; float: none;">Thanks</span></span></div>

--XFHB3HFnNt2KPbT53p2k--

