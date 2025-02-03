Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84AB6C02196
	for <webhook@archiver.kernel.org>; Mon,  3 Feb 2025 13:22:09 +0000 (UTC)
Subject: Re: [yocto] [scarthgap] circular dependency issue #kernel #rpi #scarthgap #yocto
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: Pune, Maharashtra, IN (165.225.120.182)
X-Originating-Platform: Windows Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Feb 2025 05:22:02 -0800
References: <3173826e-18ba-4b1e-9db3-0e0cd4d3f027@gmail.com>
In-Reply-To: <3173826e-18ba-4b1e-9db3-0e0cd4d3f027@gmail.com>
Message-ID: <32276.1738588922552068848@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="soqJYwh0HnBsB3Qm7YWc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 13:22:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64700

--soqJYwh0HnBsB3Qm7YWc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Gyorgy,

Thanks it worked was able to built image for *raspberrypi4*
As you suggested i did remove my custom layer and tried to build for *MACHI=
NE =3D raspberrypi4* it built successfully.
And i started to add in layer by layer and recipe by recipe but when i add =
recipe named recipes-security i get circular dependency issue.

ERROR: Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux=
-raspberrypi_6.6.bb:do_package has circular dependency on /home/build/proje=
ct/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packag=
edata
ERROR: Command execution failed: 1

Ganesh Mahajan

--soqJYwh0HnBsB3Qm7YWc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">Hi<span>&nbsp;</span></span><span style=3D"box-sizing: border-=
box; overflow-wrap: break-word !important; color: #333333; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; white-space: normal; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
 font-family: system-ui, Roboto, Arial, sans-serif; background-color: #ffff=
ff; display: inline;"><span style=3D"box-sizing: border-box; overflow-wrap:=
 break-word !important; color: #333333; font-family: system-ui, Roboto, Ari=
al, sans-serif; font-size: 16px; font-style: normal; font-weight: 400; lett=
er-spacing: normal; text-align: start; text-transform: none; word-spacing: =
0px; background-color: #ffffff; display: inline;">Gyorgy,</span></span></di=
v>
<div><span style=3D"box-sizing: border-box; overflow-wrap: break-word !impo=
rtant; color: #333333; font-size: 16px; font-style: normal; font-variant-li=
gatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-=
space: normal; text-decoration-thickness: initial; text-decoration-style: i=
nitial; text-decoration-color: initial; font-family: system-ui, Roboto, Ari=
al, sans-serif; background-color: #ffffff; display: inline;"><br />Thanks i=
t worked was able to built image for <span style=3D"box-sizing: border-box;=
 overflow-wrap: break-word !important; color: #333333; font-size: 16px; fon=
t-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial; fon=
t-family: system-ui, Roboto, Arial, sans-serif; background-color: #ffffff; =
display: inline;"><strong>raspberrypi4&nbsp;</strong></span><br />As you su=
ggested i did remove my custom layer and tried to build for <strong>MACHINE=
 =3D raspberrypi4&nbsp; &nbsp;</strong>it built successfully.&nbsp;<br />An=
d i started to add in layer by layer and recipe by recipe but when i add re=
cipe named recipes-security i get circular dependency issue.<br /><br />ERR=
OR: Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-ra=
spberrypi_6.6.bb:do_package has circular dependency on /home/build/project/=
meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packageda=
ta<br />ERROR: Command execution failed: 1<br /><br />Ganesh Mahajan<br /><=
br /><br /></span></div>

--soqJYwh0HnBsB3Qm7YWc--

