Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF57AEB64DA
	for <webhook@archiver.kernel.org>; Sat, 24 Jun 2023 17:12:50 +0000 (UTC)
Received: from mailout01.t-online.de (mailout01.t-online.de [194.25.134.80])
 by mx.groups.io with SMTP id smtpd.web10.20554.1687626767919949052
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 10:12:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.80, mailfrom: f_l_k@t-online.de)
Received: from fwd87.dcpf.telekom.de (fwd87.aul.t-online.de [10.223.144.113])
	by mailout01.t-online.de (Postfix) with SMTP id 8007327FE6;
	Sat, 24 Jun 2023 19:12:44 +0200 (CEST)
Received: from [192.168.178.156] ([84.154.170.124]) by fwd87.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1qD6oL-2wT3680; Sat, 24 Jun 2023 19:12:33 +0200
Date: Sat, 24 Jun 2023 19:12:28 +0200
From: f_l_k@t-online.de
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
To: Manuel Wagesreither <ManWag@FastMail.FM>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Message-Id: <S4PRWR.EOBJHV6AZG912@t-online.de>
In-Reply-To: <f387de3c-883e-4eaa-842d-d665968d021a@app.fastmail.com>
References: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
	<CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com>
	<4ea51f16-6c49-47c8-8750-1db4a4b3733c@app.fastmail.com>
	<CAMKF1sonBWEduzrC5MmVD8_FcOEuekDLpBqJ0=47ED9W9dEReQ@mail.gmail.com>
	<f387de3c-883e-4eaa-842d-d665968d021a@app.fastmail.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-SptyBfjWiFM8btdzv0WX"
X-TOI-EXPURGATEID: 150726::1687626753-FCEFC704-22E9C54D/0/0 CLEAN NORMAL
X-TOI-MSGID: 07ec5ec9-c1ee-444b-8cb7-33a062f60143
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Jun 2023 17:12:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60426

--=-SptyBfjWiFM8btdzv0WX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Two pitfalls come to mind here

It used to be necessary to use vc4-kms-v3d-pi4 dtbo. At some point this=20
was changed so that even for the rpi4 only vc4-kms-v3d overlay had to=20
be loaded and vc4-kms-v3d-pi4 was automatically reloaded. If your=20
software version is old enough, using vc4-kms-v3d-pi4 dtoverlay might=20
be necessary.

kms relies completely on edid. fkms is more tolerant and often displays=20
an image without a valid edid. I would therefore most likely guess a=20
problem reading the edit information. Things I would try first are=20
using  a different HDMI cable or switching the hdmi port.

On Sat, Jun 24 2023 at 06:02:52 PM +0200, Manuel Wagesreither=20
<ManWag@FastMail.FM> wrote:
> Am Sa, 24. Jun 2023, um 17:25, schrieb Khem Raj:
>> On Sat, Jun 24, 2023 at 7:47 AM Manuel Wagesreither=20
>> <ManWag@fastmail.fm <mailto:ManWag@fastmail.fm>> wrote:
>>> Am Sa, 24. Jun 2023, um 00:04, schrieb Khem Raj:
>>> > On Fri, Jun 23, 2023 at 2:39=E2=80=AFPM Manuel Wagesreither=20
>>> <ManWag@fastmail.fm <mailto:ManWag@fastmail.fm>> wrote:
>>> >>
>>> >> Hi users of meta-raspberrypi,
>>> >>
>>> >> I'd like to ask around if for you people vc4-kms-v3d (opposed to=20
>>> vc4-fkms-v3d) *really* is the working way to get vc4 support on a=20
>>> Raspberry Pi 4 Model B.
>>> >>
>>> >> Both on master and kirkstone, vc4-kms-v3d is the default. It's=20
>>> defined in /conf/machine/raspberrypi4-64.conf:
>>> >>
>>> >> VC4DTBO ?=3D "vc4-kms-v3d"
>>> >>
>>> >> I was mildly surprised to find this, because on my system=20
>>> (running Kirkstone) I can get the screen to work only if I specify=20
>>> vc4-fkms-v3d.
>>> >>
>>> >> Commit a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my=20
>>> build. The commit message further suggests that vc4-Fkms-v3d is=20
>>> broken, while vc4-kms-v3d is not. So I'm wondering:hy is it exactly=20
>>> the other way round on my machine?
>>> >>
>>> >>     raspberrypi4: Use full kms (vc4-kms-v3d) DT overlay
>>> >>
>>> >>     With latest 5.10 kernel fkms version fails to bring up VC4=20
>>> and we do not
>>> >>     get dri device initialized ( /dev/dri ) is empty, which=20
>>> means we can not
>>> >>     launch wayland componsitors.
>>> >>
>>> >
>>> > We have moved away from 5.10 kernel to 5.15 and then 6.1, so its
>>> > possible that fkms is working fine again.
>>> > If you test it with both vc4graphics and userland graphics do=20
>>> both work ?
>>>=20
>>> The meta-raspberrypi commit I'm on=20
>>> (a6fa6b3aec36b92c3750852dd6788af9d2ce08f6) has recipes for Linux=20
>>> 5.10.110 and 5.15.34 and on both of them vc4-fkms-v3d works while=20
>>> vc4-kms-v3d does not.
>>>=20
>>> * When using vc4-kms-v3d, the screen goes dark very early in the=20
>>> boot process.
>>> * When using vc4-kms-v3d, kmscube and weston-wayland both work.
>>=20
>> Which release branch are you using for
>> Your project
>=20
> I'm two commits behind kirkstone, on meta-raspberrypi.


--=-SptyBfjWiFM8btdzv0WX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto"><div>Two pitfalls come to mind here</di=
v><div><br></div><div>It used to be necessary to use vc4-kms-v3d-pi4 dtbo. =
At some point this was changed so that even for the rpi4 only vc4-kms-v3d o=
verlay had to be loaded and vc4-kms-v3d-pi4 was automatically reloaded. If =
your software version is old enough, using vc4-kms-v3d-pi4 dtoverlay might =
be necessary.</div><div><br></div><div>kms relies completely on edid. fkms =
is more tolerant and often displays an image without a valid edid. I would =
therefore most likely guess a problem reading the edit information. Things =
I would try first are using &nbsp;a different HDMI cable or switching the h=
dmi port.</div></div><div id=3D"geary-quote" dir=3D"auto"><br>On Sat, Jun 2=
4 2023 at 06:02:52 PM +0200, Manuel Wagesreither &lt;ManWag@FastMail.FM&gt;=
 wrote:<br><blockquote type=3D"cite"><title></title><style type=3D"text/css=
">p.MsoNormal,p.MsoNoSpacing{margin:0}</style><div>Am Sa, 24. Jun 2023, um =
17:25, schrieb Khem Raj:<br></div><blockquote type=3D"cite" id=3D"qt" style=
=3D""><div><div class=3D"qt-gmail_quote"><div dir=3D"ltr" class=3D"qt-gmail=
_attr">On Sat, Jun 24, 2023 at 7:47 AM Manuel Wagesreither &lt;<a href=3D"m=
ailto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wrote:<br></div><block=
quote class=3D"qt-gmail_quote" style=3D"margin-top:0px;margin-right:0px;mar=
gin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-style:so=
lid;border-left-color:rgb(204, 204, 204);padding-left:1ex;"><div>Am Sa, 24.=
 Jun 2023, um 00:04, schrieb Khem Raj:<br></div><div> &gt; On Fri, Jun 23, =
2023 at 2:39=E2=80=AFPM Manuel Wagesreither &lt;<a href=3D"mailto:ManWag@fa=
stmail.fm" target=3D"_blank">ManWag@fastmail.fm</a>&gt; wrote:<br></div><di=
v> &gt;&gt;<br></div><div> &gt;&gt; Hi users of meta-raspberrypi,<br></div>=
<div> &gt;&gt;<br></div><div> &gt;&gt; I'd like to ask around if for you pe=
ople vc4-kms-v3d (opposed to vc4-fkms-v3d) *really* is the working way to g=
et vc4 support on a Raspberry Pi 4 Model B.<br></div><div> &gt;&gt;<br></di=
v><div> &gt;&gt; Both on master and kirkstone, vc4-kms-v3d is the default. =
It's defined in /conf/machine/raspberrypi4-64.conf:<br></div><div> &gt;&gt;=
<br></div><div> &gt;&gt; VC4DTBO ?=3D "vc4-kms-v3d"<br></div><div> &gt;&gt;=
<br></div><div> &gt;&gt; I was mildly surprised to find this, because on my=
 system (running Kirkstone) I can get the screen to work only if I specify =
vc4-fkms-v3d.<br></div><div> &gt;&gt;<br></div><div> &gt;&gt; Commit a6fa6b=
3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my build. The commit message f=
urther suggests that vc4-Fkms-v3d is broken, while vc4-kms-v3d is not. So I=
'm wondering:hy is it exactly the other way round on my machine?<br></div><=
div> &gt;&gt;<br></div><div> &gt;&gt;&nbsp; &nbsp; &nbsp;raspberrypi4: Use =
full kms (vc4-kms-v3d) DT overlay<br></div><div> &gt;&gt;<br></div><div> &g=
t;&gt;&nbsp; &nbsp; &nbsp;With latest 5.10 kernel fkms version fails to bri=
ng up VC4 and we do not<br></div><div> &gt;&gt;&nbsp; &nbsp; &nbsp;get dri =
device initialized ( /dev/dri ) is empty, which means we can not<br></div><=
div> &gt;&gt;&nbsp; &nbsp; &nbsp;launch wayland componsitors.<br></div><div=
> &gt;&gt;<br></div><div> &gt;<br></div><div> &gt; We have moved away from =
5.10 kernel to 5.15 and then 6.1, so its<br></div><div> &gt; possible that =
fkms is working fine again.<br></div><div> &gt; If you test it with both vc=
4graphics and userland graphics do both work ?<br></div><div> <br></div><di=
v> The meta-raspberrypi commit I'm on (a6fa6b3aec36b92c3750852dd6788af9d2ce=
08f6) has recipes for Linux 5.10.110 and 5.15.34 and on both of them vc4-fk=
ms-v3d works while vc4-kms-v3d does not.<br></div><div> <br></div><div> * W=
hen using vc4-kms-v3d, the screen goes dark very early in the boot process.=
<br></div><div> * When using vc4-kms-v3d, kmscube and weston-wayland both w=
ork.<br></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Wh=
ich release branch are you using for<br></div><div dir=3D"auto">Your projec=
t&nbsp;<br></div></div></div></blockquote><div><br></div><div>I'm two commi=
ts behind kirkstone, on&nbsp;meta-raspberrypi.</div>
</blockquote></div>
--=-SptyBfjWiFM8btdzv0WX--


