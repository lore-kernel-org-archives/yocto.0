Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0665EB64DA
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 00:47:41 +0000 (UTC)
Received: from mailout08.t-online.de (mailout08.t-online.de [194.25.134.20])
 by mx.groups.io with SMTP id smtpd.web10.4003.1687654056772096718
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 17:47:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.20, mailfrom: f_l_k@t-online.de)
Received: from fwd72.dcpf.telekom.de (fwd72.aul.t-online.de [10.223.144.98])
	by mailout08.t-online.de (Postfix) with SMTP id 9078A22D7;
	Sun, 25 Jun 2023 02:47:34 +0200 (CEST)
Received: from [192.168.0.80] ([24.134.105.89]) by fwd72.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1qDDuc-1LQPwm0; Sun, 25 Jun 2023 02:47:31 +0200
Date: Sun, 25 Jun 2023 02:47:23 +0200
From: f_l_k@t-online.de
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
To: Manuel Wagesreither <ManWag@FastMail.FM>
Cc: Markus Volk <f_l_k@t-online.de>, Khem Raj <raj.khem@gmail.com>,
	yocto@lists.yoctoproject.org
Message-Id: <Z6ASWR.R5G5DV4V5AS73@t-online.de>
In-Reply-To: <aeab709e-20fa-4ae1-9f98-b103c05570f8@app.fastmail.com>
References: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
	<CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com>
	<4ea51f16-6c49-47c8-8750-1db4a4b3733c@app.fastmail.com>
	<CAMKF1sonBWEduzrC5MmVD8_FcOEuekDLpBqJ0=47ED9W9dEReQ@mail.gmail.com>
	<f387de3c-883e-4eaa-842d-d665968d021a@app.fastmail.com>
	<S4PRWR.EOBJHV6AZG912@t-online.de>
	<aeab709e-20fa-4ae1-9f98-b103c05570f8@app.fastmail.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-REEgfMHuZ6wOa1Mz0FsB"
X-TOI-EXPURGATEID: 150726::1687654051-73FFC980-2DAA7AF6/0/0 CLEAN NORMAL
X-TOI-MSGID: 9062da04-d62f-4f1e-9172-c7c57647fc22
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 00:47:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60429

--=-REEgfMHuZ6wOa1Mz0FsB
Content-Type: text/plain; charset=us-ascii; format=flowed

On Sun, Jun 25 2023 at 12:01:29 AM +0200, Manuel Wagesreither 
<ManWag@FastMail.FM> wrote:
> The HDMI port is unused on my raspi. I'm using the official Raspberry 
> Pi 7" Touchscreen connected via DSI.

Have you also added ?

dtoverlay=vc4-kms-dsi-7inch
dtoverlay=rpi-ft5406

I never dealt with the 7'' Display but i guess they are needed for kms

hdmi_force_hotplug=1

may also be needed


--=-REEgfMHuZ6wOa1Mz0FsB
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto">On Sun, Jun 25 2023 at 12:01:29 AM +020=
0, Manuel Wagesreither &lt;ManWag@FastMail.FM&gt; wrote:<br><blockquote typ=
e=3D"cite">The HDMI port is unused on my raspi. I'm using the official Rasp=
berry Pi 7" Touchscreen connected via DSI.</blockquote><div><br></div><div>=
Have you also added ?</div><div><br></div><div><span style=3D"color: rgb(85=
, 85, 85); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 13=
.585px; font-variant-ligatures: normal; orphans: 2; widows: 2; background-c=
olor: rgba(0, 0, 0, 0.024); text-decoration-thickness: initial; text-decora=
tion-style: initial; text-decoration-color: initial;">dtoverlay=3Dvc4-kms-d=
si-7inch</span></div><div><span style=3D"color: rgb(85, 85, 85); font-famil=
y: Roboto, Arial, Helvetica, sans-serif; font-size: 13.585px; font-variant-=
ligatures: normal; orphans: 2; widows: 2; background-color: rgba(0, 0, 0, 0=
.024); text-decoration-thickness: initial; text-decoration-style: initial; =
text-decoration-color: initial;"><span style=3D"font-size: 13.585px; font-v=
ariant-ligatures: normal; text-decoration-thickness: initial; text-decorati=
on-style: initial; text-decoration-color: initial;">dtoverlay=3Drpi-ft5406<=
/span><br style=3D"border: medium; box-sizing: border-box; margin: 0px; pad=
ding: 0px; font-size: 13.585px; font-variant-ligatures: normal; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial;"></span></div><div><span style=3D"color: rgb(85, 85, 85); fon=
t-family: Roboto, Arial, Helvetica, sans-serif; font-size: 13.585px; font-v=
ariant-ligatures: normal; orphans: 2; widows: 2; background-color: rgba(0, =
0, 0, 0.024); text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial;"><span style=3D"font-size: 13.585px;=
 font-variant-ligatures: normal; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial;"><br></span></spa=
n></div><div><span style=3D"color: rgb(85, 85, 85); font-family: Roboto, Ar=
ial, Helvetica, sans-serif; font-size: 13.585px; font-variant-ligatures: no=
rmal; orphans: 2; widows: 2; background-color: rgba(0, 0, 0, 0.024); text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial;"><span style=3D"font-size: 13.585px; font-variant-ligatu=
res: normal; text-decoration-thickness: initial; text-decoration-style: ini=
tial; text-decoration-color: initial;">I never dealt with the 7'' Display b=
ut i guess they are needed for kms</span></span></div><div><span style=3D"c=
olor: rgb(85, 85, 85); font-family: Roboto, Arial, Helvetica, sans-serif; f=
ont-size: 13.585px; font-variant-ligatures: normal; orphans: 2; widows: 2; =
background-color: rgba(0, 0, 0, 0.024); text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial;"><span sty=
le=3D"font-size: 13.585px; font-variant-ligatures: normal; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color: =
initial;"><br></span></span></div><div><span style=3D"color: rgb(85, 85, 85=
); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 13.585px; =
font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rg=
ba(0, 0, 0, 0.024); text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial;"><span style=3D"font-size: 13.=
585px; font-variant-ligatures: normal; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial;"><span styl=
e=3D"font-size: 13.585px; font-variant-ligatures: normal; text-decoration-t=
hickness: initial; text-decoration-style: initial; text-decoration-color: i=
nitial;">hdmi_force_hotplug=3D1</span><br style=3D"border: medium; box-sizi=
ng: border-box; margin: 0px; padding: 0px; font-size: 13.585px; font-varian=
t-ligatures: normal; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial;"></span></span></div><div><sp=
an style=3D"color: rgb(85, 85, 85); font-family: Roboto, Arial, Helvetica, =
sans-serif; font-size: 13.585px; font-variant-ligatures: normal; orphans: 2=
; widows: 2; background-color: rgba(0, 0, 0, 0.024); text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l;"><span style=3D"font-size: 13.585px; font-variant-ligatures: normal; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial;"><span style=3D"font-size: 13.585px; font-variant-lig=
atures: normal; text-decoration-thickness: initial; text-decoration-style: =
initial; text-decoration-color: initial;"><br></span></span></span></div><d=
iv><span style=3D"color: rgb(85, 85, 85); font-family: Roboto, Arial, Helve=
tica, sans-serif; font-size: 13.585px; font-variant-ligatures: normal; orph=
ans: 2; widows: 2; background-color: rgba(0, 0, 0, 0.024); text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color: =
initial;"><span style=3D"font-size: 13.585px; font-variant-ligatures: norma=
l; text-decoration-thickness: initial; text-decoration-style: initial; text=
-decoration-color: initial;"><span style=3D"font-size: 13.585px; font-varia=
nt-ligatures: normal; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial;">may also be needed</span></=
span></span></div></div>
--=-REEgfMHuZ6wOa1Mz0FsB--


