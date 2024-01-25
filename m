Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D7CC48260
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 09:38:43 +0000 (UTC)
Subject: Multiple images on the same hardware
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <an010@live.com>
X-Originating-Location: DE (147.161.169.87)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Jan 2024 01:38:35 -0800
Message-ID: <jhZy.1706175515414204391.TrnM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Lvar2Lbh1kceXEdW7cPZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 09:38:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62283

--Lvar2Lbh1kceXEdW7cPZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I know similar questions have been posted before, but still I have a few th=
ings to clarify.

We are using the same hardware for multiple projects, which means some proj=
ects support some interfaces (e.g. bluetooth - Y, WiFi - N), while others s=
ome other interfaces=C2=A0(e.g. bluetooth - N, WiFi - Y). Of course I don't=
 want support for bluetooth in case we don't need it.

AFAIK there are (at least) two ways to address this: [1] with multiple MACH=
INE configs and [2] with multiple IMAGE recipes.

F or MACHINE_FEATURES the Yocto documentation states the following: Specifi=
es the list of hardware features the MACHINE ( https://docs.yoctoproject.or=
g/4.0.15/ref-manual/variables.html?highlight=3Dmachine_features#term-MACHIN=
E ) is capable of supporting. I am reading as: [1] there is only one MACHIN=
E conf per target and [2] MACHINE_FEATURES does not change. This leaves us =
with the second option: we should have multiple image recipes and each reci=
pe should define for itself what package groups it will include (e.g. bluet=
ooth support, wifi support, etc.). However, this doesn't play nicely with e=
.g. kernel fragments. If the product does not need to support bluetooth, I =
also don't want the software stack compiled in my kernel, however, I don't =
have a variable to use in my kernel recipe. Any thoughts to this?

Aleksandar

--Lvar2Lbh1kceXEdW7cPZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I know similar questions have been posted before, but still =
I have a few things to clarify. <br /><br />We are using the same hardware =
for multiple projects, which means some projects support some interfaces (e=
.g. bluetooth - Y, WiFi - N), while others some other interfaces&nbsp;(e.g.=
 bluetooth - N, WiFi - Y). Of course I don't want support for bluetooth in =
case we don't need it. <br /><br />AFAIK there are (at least) two ways to a=
ddress this: [1] with multiple MACHINE configs and [2] with multiple IMAGE =
recipes.&nbsp;<br /><br />F<span style=3D"font-family: helvetica; font-size=
: 14.6667px;">or MACHINE_FEATURES</span><span style=3D"font-family: helveti=
ca; font-size: 11pt;">&nbsp;the Yocto documentation states the following:&n=
bsp;<span style=3D"background-color: #fcfcfc;">Specifies the list of hardwa=
re features the&nbsp;</span><a class=3D"reference internal" style=3D"color:=
 #444444; text-decoration-line: underline; cursor: pointer; background: #fc=
fcfc;" href=3D"https://docs.yoctoproject.org/4.0.15/ref-manual/variables.ht=
ml?highlight=3Dmachine_features#term-MACHINE"><span class=3D"xref std std-t=
erm">MACHINE</span></a><span style=3D"background-color: #fcfcfc;">&nbsp;is =
capable of supporting. I am reading as: [1] there is only one MACHINE conf =
per target and [2] MACHINE_FEATURES does not change. This leaves us with th=
e second option: we should have multiple image recipes and each recipe shou=
ld define for itself what package groups it will include (e.g. bluetooth su=
pport, wifi support, etc.). However, this doesn't play nicely with e.g. ker=
nel fragments. If the product does not need to support bluetooth, I also do=
n't want the software stack compiled in my kernel, however, I don't have a =
variable to use in my kernel recipe. Any thoughts to this?<br /><br />Aleks=
andar</span></span>

--Lvar2Lbh1kceXEdW7cPZ--

