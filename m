Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34A0AEB64DA
	for <webhook@archiver.kernel.org>; Sat, 24 Jun 2023 22:03:41 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
 by mx.groups.io with SMTP id smtpd.web10.1736.1687644220464301280
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 15:03:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm2 header.b=hTrd90F9;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.24, mailfrom: manwag@fastmail.fm)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 83FC6320046F;
	Sat, 24 Jun 2023 18:03:39 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Sat, 24 Jun 2023 18:03:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1687644219; x=1687730619; bh=9t
	tqdBXirpHzdA5H5j6Lu/l5HupuXN1rf3nmslsy7dc=; b=hTrd90F9r8oInnU1L1
	vDOvAERt/vNoI2qBeEpiFP+JgByGNg30B8uKKRh8H/yJ/yh5PKgqKbSnMOiQ3y4d
	kyUKn2/cEMIczV1qn4Og5ARZHuCOFIUs50RphBbdgr2XWwy7akTBIRQBeGCXij5T
	h7fl29Tk3MqyKqQ/LPVD9mXY1/swXsvK+5i+Sm2ZL7T39RcKt1gKto0zPJOob+l0
	3vY6HGwHExSXPh6DPSSLQIxzhcQbalK9TOkbUz7pvEMrwUs/icuIvNK3mn4N5F95
	wEVgvug/TyRjfUtk0uIt0RwBdOC/hLyWo2784M59/NPxwU3EDsmKugYbbeNP6v7j
	I6xQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1687644219; x=1687730619; bh=9ttqdBXirpHzd
	A5H5j6Lu/l5HupuXN1rf3nmslsy7dc=; b=q26jeT1G1cO2Jmm0N+Bj9Xm4okn0E
	JgpeFjPM2sSbwqbFJbTjeXmfae5WpKbvZXqc03OHn1rxw5a6yfja9ywFMmPH/ksB
	NvJT+dk7+U9eWLRHk4YSp1mbwGPRmShPtTx8pC5+82r09hB3xVLM2/8v3Qkoq5Rm
	HkRDkh+/KJ1D2KoSAlT5oBGQJ7UZDtBAm6iM+UZdZcq81B9YK2f1YA/UuJ6yE/0k
	flZzW4ThL0tTdMroqJdnN9K8lW4PmSlyXBOyIayS+OOc0w061r5PlJoo4et+K9gE
	xhM5+twxCLyflytjoZBbf2XBYhdiZjMuml+C6rHpEXHYQ93TbAMjcCw/g==
X-ME-Sender: <xms:OmiXZItXp5lNS315NastmMt42iVfcN49i0mgEqjc1vwGCVNa78Bg4g>
    <xme:OmiXZFdEAUth9bbfCtpwI7gKsZ1exEu7B8tawQJBJs5IUbNSOniACjPYqn-KJIxfv
    UHjUELM0jZiBgA2>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeegkedgtdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsegrtderreerreejnecuhfhrohhmpedfofgr
    nhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilh
    drhffoqeenucggtffrrghtthgvrhhnpeejieehleffhfevveevveevheduieefjeejfeel
    kefgjeevjeefvefghfetffeltdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:OmiXZDybhHz_28Y18lWcC5PnFPAGMBTdba7iji1ZDhERrD3ZIug5jw>
    <xmx:OmiXZLNsIZBvieDbEcCLutv5yYmFFrFmepNnm2z_DAIorCrR0lHsIQ>
    <xmx:OmiXZI_eKxHbiKdcoDYzn1ojSNp2M6m-Y5KJUVgH_XvrSqdLfs79yQ>
    <xmx:O2iXZNFje0WiGypupej7_UBtSjvz7g4EPEAc6_Tx7cxUp6cUDeQV1w>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id CAEB02D4008E; Sat, 24 Jun 2023 18:03:38 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-499-gf27bbf33e2-fm-20230619.001-gf27bbf33
Mime-Version: 1.0
Message-Id: <aeab709e-20fa-4ae1-9f98-b103c05570f8@app.fastmail.com>
In-Reply-To: <S4PRWR.EOBJHV6AZG912@t-online.de>
References: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
 <CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com>
 <4ea51f16-6c49-47c8-8750-1db4a4b3733c@app.fastmail.com>
 <CAMKF1sonBWEduzrC5MmVD8_FcOEuekDLpBqJ0=47ED9W9dEReQ@mail.gmail.com>
 <f387de3c-883e-4eaa-842d-d665968d021a@app.fastmail.com>
 <S4PRWR.EOBJHV6AZG912@t-online.de>
Date: Sun, 25 Jun 2023 00:01:29 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Markus Volk" <f_l_k@t-online.de>
Cc: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
Content-Type: multipart/alternative;
 boundary=a30a8b305cb34532b17486b1378ac48e
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Jun 2023 22:03:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60428

--a30a8b305cb34532b17486b1378ac48e
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

Am Sa, 24. Jun 2023, um 19:12, schrieb Markus Volk:
> Two pitfalls come to mind here
>=20
> It used to be necessary to use vc4-kms-v3d-pi4 dtbo. At some point thi=
s was changed so that even for the rpi4 only vc4-kms-v3d overlay had to =
be loaded and vc4-kms-v3d-pi4 was automatically reloaded. If your softwa=
re version is old enough, using vc4-kms-v3d-pi4 dtoverlay might be neces=
sary.
>=20
> kms relies completely on edid. fkms is more tolerant and often display=
s an image without a valid edid. I would therefore most likely guess a p=
roblem reading the edit information. Things I would try first are using =
 a different HDMI cable or switching the hdmi port.
>=20
> On Sat, Jun 24 2023 at 06:02:52 PM +0200, Manuel Wagesreither <ManWag@=
FastMail.FM> wrote:
>> Am Sa, 24. Jun 2023, um 17:25, schrieb Khem Raj:
>>> On Sat, Jun 24, 2023 at 7:47 AM Manuel Wagesreither <ManWag@fastmail=
.fm> wrote:
>>>> Am Sa, 24. Jun 2023, um 00:04, schrieb Khem Raj:
>>>> > On Fri, Jun 23, 2023 at 2:39=E2=80=AFPM Manuel Wagesreither <ManW=
ag@fastmail.fm> wrote:
>>>> >>
>>>> >> Hi users of meta-raspberrypi,
>>>> >>
>>>> >> I'd like to ask around if for you people vc4-kms-v3d (opposed to=
 vc4-fkms-v3d) *really* is the working way to get vc4 support on a Raspb=
erry Pi 4 Model B.
>>>> >>
>>>> >> Both on master and kirkstone, vc4-kms-v3d is the default. It's d=
efined in /conf/machine/raspberrypi4-64.conf:
>>>> >>
>>>> >> VC4DTBO ?=3D "vc4-kms-v3d"
>>>> >>
>>>> >> I was mildly surprised to find this, because on my system (runni=
ng Kirkstone) I can get the screen to work only if I specify vc4-fkms-v3=
d.
>>>> >>
>>>> >> Commit a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my bui=
ld. The commit message further suggests that vc4-Fkms-v3d is broken, whi=
le vc4-kms-v3d is not. So I'm wondering:hy is it exactly the other way r=
ound on my machine?
>>>> >>
>>>> >>     raspberrypi4: Use full kms (vc4-kms-v3d) DT overlay
>>>> >>
>>>> >>     With latest 5.10 kernel fkms version fails to bring up VC4 a=
nd we do not
>>>> >>     get dri device initialized ( /dev/dri ) is empty, which mean=
s we can not
>>>> >>     launch wayland componsitors.
>>>> >>
>>>> >
>>>> > We have moved away from 5.10 kernel to 5.15 and then 6.1, so its
>>>> > possible that fkms is working fine again.
>>>> > If you test it with both vc4graphics and userland graphics do bot=
h work ?
>>>>=20
>>>> The meta-raspberrypi commit I'm on (a6fa6b3aec36b92c3750852dd6788af=
9d2ce08f6) has recipes for Linux 5.10.110 and 5.15.34 and on both of the=
m vc4-fkms-v3d works while vc4-kms-v3d does not.
>>>>=20
>>>> * When using vc4-kms-v3d, the screen goes dark very early in the bo=
ot process.
>>>> * When using vc4-kms-v3d, kmscube and weston-wayland both work.
>>>=20
>>> Which release branch are you using for
>>> Your project=20
>>=20
>> I'm two commits behind kirkstone, on meta-raspberrypi.


The HDMI port is unused on my raspi. I'm using the official Raspberry Pi=
 7" Touchscreen connected via DSI.

Specifiying...

    dtoverlay=3Dvc4-kms-v3d
    dtoverlay=3Dvc4-kms-v3d-pi4

in config.txt doesn't change anything.

This is  what both Linux 5.10.110 and 5.15.34 prints on the serial line:=
 (Screen is not working then.)

[    1.400937] fb0: switching to vc4drmfb from simple
[    1.402332] Console: switching to colour dummy device 80x25
[    1.440694] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)


When specifying

    dtoverlay=3Dvc4-fkms-v3d

both Linux versions emit:

[    1.387428] fb0: switching to vc4drmfb from simple
[    1.388812] Console: switching to colour dummy device 80x25
[    1.390196] vc4-drm gpu: bound fe600000.firmwarekms (ops vc4_fkms_ops)
[    1.391001] [drm] Initialized vc4 0.0.0 20140616 for gpu on minor 0
[    1.417292] Console: switching to colour frame buffer device 100x30
[    1.433224] vc4-drm gpu: [drm] fb0: vc4drmfb frame buffer device

and provide a working screen.
--a30a8b305cb34532b17486b1378ac48e
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">
p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div>Am Sa, 24.=
 Jun 2023, um 19:12, schrieb Markus Volk:<br></div><blockquote type=3D"c=
ite" id=3D"qt" style=3D""><div id=3D"qt-geary-body" dir=3D"auto"><div>Tw=
o pitfalls come to mind here<br></div><div><br></div><div>It used to be =
necessary to use vc4-kms-v3d-pi4 dtbo. At some point this was changed so=
 that even for the rpi4 only vc4-kms-v3d overlay had to be loaded and vc=
4-kms-v3d-pi4 was automatically reloaded. If your software version is ol=
d enough, using vc4-kms-v3d-pi4 dtoverlay might be necessary.<br></div><=
div><br></div><div>kms relies completely on edid. fkms is more tolerant =
and often displays an image without a valid edid. I would therefore most=
 likely guess a problem reading the edit information. Things I would try=
 first are using &nbsp;a different HDMI cable or switching the hdmi port=
.<br></div></div><div id=3D"qt-geary-quote" dir=3D"auto"><div><br></div>=
<div>On Sat, Jun 24 2023 at 06:02:52 PM +0200, Manuel Wagesreither &lt;M=
anWag@FastMail.FM&gt; wrote:<br></div><blockquote type=3D"cite"><div>Am =
Sa, 24. Jun 2023, um 17:25, schrieb Khem Raj:<br></div><blockquote type=3D=
"cite" id=3D"qt-qt" style=3D""><div><div class=3D"qt-qt-gmail_quote"><di=
v dir=3D"ltr" class=3D"qt-qt-gmail_attr">On Sat, Jun 24, 2023 at 7:47 AM=
 Manuel Wagesreither &lt;<a href=3D"mailto:ManWag@fastmail.fm">ManWag@fa=
stmail.fm</a>&gt; wrote:<br></div><blockquote class=3D"qt-qt-gmail_quote=
" style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left=
:0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:r=
gb(204, 204, 204);padding-left:1ex;"><div>Am Sa, 24. Jun 2023, um 00:04,=
 schrieb Khem Raj:<br></div><div>&gt; On Fri, Jun 23, 2023 at 2:39=E2=80=
=AFPM Manuel Wagesreither &lt;<a href=3D"mailto:ManWag@fastmail.fm" targ=
et=3D"_blank">ManWag@fastmail.fm</a>&gt; wrote:<br></div><div>&gt;&gt;<b=
r></div><div>&gt;&gt; Hi users of meta-raspberrypi,<br></div><div>&gt;&g=
t;<br></div><div>&gt;&gt; I'd like to ask around if for you people vc4-k=
ms-v3d (opposed to vc4-fkms-v3d) *really* is the working way to get vc4 =
support on a Raspberry Pi 4 Model B.<br></div><div>&gt;&gt;<br></div><di=
v>&gt;&gt; Both on master and kirkstone, vc4-kms-v3d is the default. It'=
s defined in /conf/machine/raspberrypi4-64.conf:<br></div><div>&gt;&gt;<=
br></div><div>&gt;&gt; VC4DTBO ?=3D "vc4-kms-v3d"<br></div><div>&gt;&gt;=
<br></div><div>&gt;&gt; I was mildly surprised to find this, because on =
my system (running Kirkstone) I can get the screen to work only if I spe=
cify vc4-fkms-v3d.<br></div><div>&gt;&gt;<br></div><div>&gt;&gt; Commit =
a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my build. The commit =
message further suggests that vc4-Fkms-v3d is broken, while vc4-kms-v3d =
is not. So I'm wondering:hy is it exactly the other way round on my mach=
ine?<br></div><div>&gt;&gt;<br></div><div>&gt;&gt;&nbsp; &nbsp; &nbsp;ra=
spberrypi4: Use full kms (vc4-kms-v3d) DT overlay<br></div><div>&gt;&gt;=
<br></div><div>&gt;&gt;&nbsp; &nbsp; &nbsp;With latest 5.10 kernel fkms =
version fails to bring up VC4 and we do not<br></div><div>&gt;&gt;&nbsp;=
 &nbsp; &nbsp;get dri device initialized ( /dev/dri ) is empty, which me=
ans we can not<br></div><div>&gt;&gt;&nbsp; &nbsp; &nbsp;launch wayland =
componsitors.<br></div><div>&gt;&gt;<br></div><div>&gt;<br></div><div>&g=
t; We have moved away from 5.10 kernel to 5.15 and then 6.1, so its<br><=
/div><div>&gt; possible that fkms is working fine again.<br></div><div>&=
gt; If you test it with both vc4graphics and userland graphics do both w=
ork ?<br></div><div><br></div><div>The meta-raspberrypi commit I'm on (a=
6fa6b3aec36b92c3750852dd6788af9d2ce08f6) has recipes for Linux 5.10.110 =
and 5.15.34 and on both of them vc4-fkms-v3d works while vc4-kms-v3d doe=
s not.<br></div><div><br></div><div>* When using vc4-kms-v3d, the screen=
 goes dark very early in the boot process.<br></div><div>* When using vc=
4-kms-v3d, kmscube and weston-wayland both work.<br></div></blockquote><=
div dir=3D"auto"><br></div><div dir=3D"auto">Which release branch are yo=
u using for<br></div><div dir=3D"auto">Your project&nbsp;<br></div></div=
></div></blockquote><div><br></div><div>I'm two commits behind kirkstone=
, on&nbsp;meta-raspberrypi.<br></div></blockquote></div></blockquote><di=
v><br></div><div><br></div><div>The HDMI port is unused on my raspi. I'm=
 using the official Raspberry Pi 7" Touchscreen connected via DSI.<br></=
div><div><br></div><div>Specifiying...</div><div><br></div><div>&nbsp; &=
nbsp; dtoverlay=3Dvc4-kms-v3d<br></div><div>&nbsp; &nbsp; dtoverlay=3Dvc=
4-kms-v3d-pi4<br></div><div><br></div><div>in config.txt doesn't change =
anything.<br></div><div><br></div><div>This is&nbsp; what both Linux 5.1=
0.110 and 5.15.34 prints on the serial line: (Screen is not working then=
.)<br></div><div><br></div><div>[&nbsp;&nbsp;&nbsp; 1.400937] fb0: switc=
hing to vc4drmfb from simple<br></div><div>[&nbsp;&nbsp;&nbsp; 1.402332]=
 Console: switching to colour dummy device 80x25<br></div><div>[&nbsp;&n=
bsp;&nbsp; 1.440694] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<b=
r></div><div><br></div><div><br></div><div>When specifying<br></div><div=
><br></div><div>&nbsp; &nbsp; dtoverlay=3Dvc4-fkms-v3d<br></div><div><br=
></div><div>both Linux versions emit:</div><div><br></div><div>[&nbsp;&n=
bsp;&nbsp; 1.387428] fb0: switching to vc4drmfb from simple<br></div><di=
v>[&nbsp;&nbsp;&nbsp; 1.388812] Console: switching to colour dummy devic=
e 80x25<br></div><div>[&nbsp;&nbsp;&nbsp; 1.390196] vc4-drm gpu: bound f=
e600000.firmwarekms (ops vc4_fkms_ops)<br></div><div>[&nbsp;&nbsp;&nbsp;=
 1.391001] [drm] Initialized vc4 0.0.0 20140616 for gpu on minor 0<br></=
div><div>[&nbsp;&nbsp;&nbsp; 1.417292] Console: switching to colour fram=
e buffer device 100x30<br></div><div>[&nbsp;&nbsp;&nbsp; 1.433224] vc4-d=
rm gpu: [drm] fb0: vc4drmfb frame buffer device<br></div><div><br></div>=
<div>and provide a working screen.</div></body></html>
--a30a8b305cb34532b17486b1378ac48e--

