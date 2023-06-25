Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5906AEB64DD
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 13:21:55 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web11.11166.1687699305800725254
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Jun 2023 06:21:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm2 header.b=pQMpojro;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.28, mailfrom: manwag@fastmail.fm)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 01A425C009C;
	Sun, 25 Jun 2023 09:21:43 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Sun, 25 Jun 2023 09:21:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1687699302; x=1687785702; bh=cR
	fdsSaDpnFDg7l6BXYtuaWByvU9e7Iln9bBzc1hW28=; b=pQMpojrovfes9Sqwr8
	pf/EU2fDQRZQVaK/ZmtHMFxbfdbsFK9E9MVIM0e3T+5B6IavO+PjbivbBksuyP6x
	bfAnXJocAXU/zqd2MJOKQcdwbzxDSmHk9QLEHwNzPFj8oKtTGQW/dEI8MECFIChA
	irpAZ/PFm58lg80wcC4OzgIMCRN31xoWInmcpKeIiuMFSuoDO02GGVdJ9sCXdupY
	rP4jCtlpag2fahoMU28dVPu3YkhoEfzdOb2/4JoHEdRAk0N81oT6SiLtiUcnMDH3
	YeLA7gHwz/TNeBXEB6utdceZ6TArfHpAoiHH+CTWMG30ftaH8lEFL2QYvcTFuLz9
	/mmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1687699302; x=1687785702; bh=cRfdsSaDpnFDg
	7l6BXYtuaWByvU9e7Iln9bBzc1hW28=; b=MasWuvRfzO7k5C6ez8+2MKZ/yPokM
	qUVbSmnRlg9GQBShzHJkAYcP5Xd313errjxWAQzTaLehgYwo2fD5KOsUI+XkJ3gL
	W0HFkFps2wTn47dwDteqN38hVL2J8UnqV0Z2inS0AqGbHVF87Oy5LYnjtQn4T8CJ
	S5uvk8uriWhjygaHz7Ef4KgQLbgTtnFe1iR/UF+zpKPKUB+AfDNwa7+qxHJIfzzV
	ezWgYDFe/SU2tCcgF5iE7pLMsqIvMuzMKDFsVUkH8pL5jYrvmAul2vYxBLrky0Sc
	Wvn47Y4vZhqhyynEEnBLRpxhMc1YYoP0vEoDLvz7QyD/KDHTss2BIdjnA==
X-ME-Sender: <xms:Zj-YZOVN4KOaCkzZ-_BB779bXDp6RI_jtbGjSN_59QBAyfRR4-kt5g>
    <xme:Zj-YZKkEj_mpU4ncK6JcZmdrvtARiWfGdH_zdkECvTfnRZDos8gjBgWRC4DKhoWUm
    aoJOQ3MboddFvdU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeehtddgieduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvvefutgesrg
    dtreerreertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcu
    oeforghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepveelhf
    evueduveeuhfegkeekveeujeelgfegteelkefgkeejveevgfejiefftedvnecuffhomhgr
    ihhnpehrrghsphgsvghrrhihphhirdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:Zj-YZCYqQZFgiuNVmkophUPCJcVsytBFe4641xQvGPt4-uXWUx1ZyA>
    <xmx:Zj-YZFWCiHgMQD3dCZ6y566urgoPYn71Ze0INtfL5mpLQd2pOmVDSg>
    <xmx:Zj-YZImg1w_9nIrx-OYqhse6qWIEBaRFVQL4coQ8TcC-J81uGA94jQ>
    <xmx:Zj-YZKTDhRK1jJNOHclWAl7MYE8TNysFYUuAXqEfWsqixnICZwh6BA>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id A3D4E2D400A4; Sun, 25 Jun 2023 09:21:42 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-499-gf27bbf33e2-fm-20230619.001-gf27bbf33
Mime-Version: 1.0
Message-Id: <2782515b-bfe6-4507-b6cc-9b5050e64bc8@app.fastmail.com>
In-Reply-To: <Z6ASWR.R5G5DV4V5AS73@t-online.de>
References: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
 <CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com>
 <4ea51f16-6c49-47c8-8750-1db4a4b3733c@app.fastmail.com>
 <CAMKF1sonBWEduzrC5MmVD8_FcOEuekDLpBqJ0=47ED9W9dEReQ@mail.gmail.com>
 <f387de3c-883e-4eaa-842d-d665968d021a@app.fastmail.com>
 <S4PRWR.EOBJHV6AZG912@t-online.de>
 <aeab709e-20fa-4ae1-9f98-b103c05570f8@app.fastmail.com>
 <Z6ASWR.R5G5DV4V5AS73@t-online.de>
Date: Sun, 25 Jun 2023 15:21:21 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Markus Volk" <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
Content-Type: multipart/alternative;
 boundary=2fea0b02ba79498884e76ea4a7db2e92
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 13:21:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60433

--2fea0b02ba79498884e76ea4a7db2e92
Content-Type: text/plain

dtoverlay=vc4-kms-dsi-7inch does indeed improve things for the better. Both console output and wayland-weston now work.
I had to specify it together with dtoverlay=vc4-kms-v3d-pi4, which confirm the observations you posted in some previous mail.

Caveats:
* wayland-weston does no longer deactivate the backlight when locking the screen.
* The following messages are posted into the kernel log at irregular intervals: (10 seconds to 5 minutes)

[ 1268.647667] edt_ft5x06 10-0038: Unable to fetch data, error: -121
[ 1269.694193] i2c-bcm2835 fe205000.i2c: i2c transfer timed out
[ 1269.700866] edt_ft5x06 10-0038: Unable to fetch data, error: -110
[ 1269.708008] edt_ft5x06 10-0038: Unable to fetch data, error: -5

I was completely unaware of the vc4-kms-dsi-7inch configuration option -- neither [1] nor [2] mention it.

[1] https://www.raspberrypi.com/documentation/computers/config_txt.html
[2] https://www.raspberrypi.com/documentation/accessories/display.html

 ---------

Adding dtoverlay=rpi-ft5406 decreased the interval of the following messages down to one second(!):

[  620.227151] i2c-bcm2835 fe205000.i2c: i2c transfer timed out
[  620.234335] edt_ft5x06 10-0038: Unable to fetch data, error: -110

----------

Adding hdmi_force_hotplug=1 didn't have any effects I observed.

----------

Also I observed the following *sporadic* phenomenons. Sporadic meaning, that they were gone after rebooting with unchanged configuration:
* One time, I couldn't observe any of the kernel messages above.
* One time, the visual output of the screen was mirrored on the vertical axis. (Right is left and vice versa.) Touch screen input was not affected. (I know there are rpi-ft5406 options to explicitly define screen mirroring which might help me with this issue.)
* One time, when wayland-weston was deactivating the screen, the screen remained bright white instead as-black-as-it-can-get-with-backlight-on.

I'm wondering if these observations can be explained by unstable communication. Maybe I should re-attach the DSI cable. On the other hand, fkms works absolutely rocksolid -- No issues whatsover.

In which ways do the display and the kernel communicate with each other. Is backlight controlled through DSI, or are there seperate communication channels (I2C, SPI) for that? What about touch events? Am eager to learn more.

I guess I'll just keep using fkms for now until I had a chance to upgrade to the newest kernel. Let's see if this issues are present there as well. All the observations above are with respect to Linux 5.15.34.

Thanks everyone in this thread for your support!


Am So, 25. Jun 2023, um 02:47, schrieb Markus Volk:
> On Sun, Jun 25 2023 at 12:01:29 AM +0200, Manuel Wagesreither <ManWag@FastMail.FM> wrote:
>> The HDMI port is unused on my raspi. I'm using the official Raspberry Pi 7" Touchscreen connected via DSI.
> 
> Have you also added ?
> 
> dtoverlay=vc4-kms-dsi-7inch
> dtoverlay=rpi-ft5406
> 
> I never dealt with the 7'' Display but i guess they are needed for kms
> 
> hdmi_force_hotplug=1
> 
> may also be needed

--2fea0b02ba79498884e76ea4a7db2e92
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div><span style=3D"=
color:rgb(85, 85, 85);font-variant-ligatures:normal;orphans:2;widows:2;b=
ackground-color:rgba(0, 0, 0, 0.024);text-decoration-thickness:initial;t=
ext-decoration-style:initial;text-decoration-color:initial;"><span class=
=3D"font" style=3D"font-family:Roboto, Arial, Helvetica, sans-serif;"><s=
pan class=3D"size" style=3D"font-size:13.585px;">dtoverlay=3Dvc4-kms-dsi=
-7inch does indeed improve things for the better. Both console output an=
d wayland-weston now work.</span></span></span><br></div><div>I had to s=
pecify it together with dtoverlay=3Dvc4-kms-v3d-pi4, which confirm the o=
bservations you posted in some previous mail.<br></div><div><br></div><d=
iv><span style=3D"color:rgb(85, 85, 85);font-variant-ligatures:normal;or=
phans:2;widows:2;background-color:rgba(0, 0, 0, 0.024);text-decoration-t=
hickness:initial;text-decoration-style:initial;text-decoration-color:ini=
tial;"><span class=3D"font" style=3D"font-family:Roboto, Arial, Helvetic=
a, sans-serif;"><span class=3D"size" style=3D"font-size:13.585px;"> Cave=
ats:</span></span></span><br></div><div><span style=3D"color:rgb(85, 85,=
 85);font-variant-ligatures:normal;orphans:2;widows:2;background-color:r=
gba(0, 0, 0, 0.024);text-decoration-thickness:initial;text-decoration-st=
yle:initial;text-decoration-color:initial;"><span class=3D"font" style=3D=
"font-family:Roboto, Arial, Helvetica, sans-serif;"><span class=3D"size"=
 style=3D"font-size:13.585px;">* wayland-weston does no longer deactivat=
e the backlight when locking the screen.</span></span></span><br></div><=
div><span style=3D"color:rgb(85, 85, 85);font-variant-ligatures:normal;o=
rphans:2;widows:2;background-color:rgba(0, 0, 0, 0.024);text-decoration-=
thickness:initial;text-decoration-style:initial;text-decoration-color:in=
itial;"><span class=3D"font" style=3D"font-family:Roboto, Arial, Helveti=
ca, sans-serif;"><span class=3D"size" style=3D"font-size:13.585px;">* Th=
e following messages are posted into the kernel log at irregular interva=
ls: (10 seconds to 5 minutes)</span></span></span><br></div><div><br></d=
iv><div>[ 1268.647667] edt_ft5x06 10-0038: Unable to fetch data, error: =
-121<br></div><div>[ 1269.694193] i2c-bcm2835 fe205000.i2c: i2c transfer=
 timed out<br></div><div>[ 1269.700866] edt_ft5x06 10-0038: Unable to fe=
tch data, error: -110<br></div><div>[ 1269.708008] edt_ft5x06 10-0038: U=
nable to fetch data, error: -5<br></div><div><br></div><div><span style=3D=
"color:rgb(85, 85, 85);font-variant-ligatures:normal;orphans:2;widows:2;=
background-color:rgba(0, 0, 0, 0.024);text-decoration-thickness:initial;=
text-decoration-style:initial;text-decoration-color:initial;"><span clas=
s=3D"font" style=3D"font-family:Roboto, Arial, Helvetica, sans-serif;"><=
span class=3D"size" style=3D"font-size:13.585px;">I was completely unawa=
re of the&nbsp;vc4-kms-dsi-7inch configuration option -- neither [1] nor=
 [2] mention it.</span></span></span><br></div><div><br></div><div><span=
 style=3D"color:rgb(85, 85, 85);font-variant-ligatures:normal;orphans:2;=
widows:2;background-color:rgba(0, 0, 0, 0.024);text-decoration-thickness=
:initial;text-decoration-style:initial;text-decoration-color:initial;"><=
span class=3D"font" style=3D"font-family:Roboto, Arial, Helvetica, sans-=
serif;"><span class=3D"size" style=3D"font-size:13.585px;">[1] </span></=
span></span><a href=3D"https://www.raspberrypi.com/documentation/compute=
rs/config_txt.html">https://www.raspberrypi.com/documentation/computers/=
config_txt.html</a><br></div><div>[2]&nbsp;<a href=3D"https://www.raspbe=
rrypi.com/documentation/accessories/display.html">https://www.raspberryp=
i.com/documentation/accessories/display.html</a><br></div><div><br></div=
><div>&nbsp;---------<br></div><div><br></div><div>Adding&nbsp;dtoverlay=
=3Drpi-ft5406 decreased the interval of the following messages down to o=
ne second(!):<br></div><div><br></div><div>[&nbsp; 620.227151] i2c-bcm28=
35 fe205000.i2c: i2c transfer timed out<br></div><div>[&nbsp; 620.234335=
] edt_ft5x06 10-0038: Unable to fetch data, error: -110<br></div><div><b=
r></div><div>----------<br></div><div><br></div><div>Adding&nbsp;hdmi_fo=
rce_hotplug=3D1 didn't have any effects I observed.<br></div><div><br></=
div><div>----------<br></div><div><br></div><div>Also I observed the fol=
lowing *sporadic* phenomenons. Sporadic meaning, that they were gone aft=
er rebooting with unchanged configuration:<br></div><div>* One time, I c=
ouldn't observe any of the kernel messages above.<br></div><div>* One ti=
me, the visual output of the screen was mirrored on the vertical axis. (=
Right is left and vice versa.) Touch screen input was not affected. (I k=
now there are rpi-ft5406 options to explicitly define screen mirroring w=
hich might help me with this issue.)<br></div><div>* One time, when wayl=
and-weston was deactivating the screen, the screen remained bright white=
 instead as-black-as-it-can-get-with-backlight-on.<br></div><div><br></d=
iv><div>I'm wondering if these observations can be explained by unstable=
 communication. Maybe I should re-attach the DSI cable. On the other han=
d, fkms works absolutely rocksolid -- No issues whatsover.<br></div><div=
><br></div><div>In which ways do the display and the kernel communicate =
with each other. Is backlight controlled through DSI, or are there seper=
ate communication channels (I2C, SPI) for that? What about touch events?=
 Am eager to learn more.<br></div><div><br></div><div>I guess I'll just =
keep using fkms for now until I had a chance to upgrade to the newest ke=
rnel. Let's see if this issues are present there as well.&nbsp;All the o=
bservations above are with respect to Linux 5.15.34.</div><div><br></div=
><div>Thanks everyone in this thread for your support!<br></div><div><br=
></div><div><br></div><div>Am So, 25. Jun 2023, um 02:47, schrieb Markus=
 Volk:<br></div><blockquote type=3D"cite" id=3D"qt" style=3D""><div id=3D=
"qt-geary-body" dir=3D"auto"><div>On Sun, Jun 25 2023 at 12:01:29 AM +02=
00, Manuel Wagesreither &lt;ManWag@FastMail.FM&gt; wrote:<br></div><bloc=
kquote type=3D"cite">The HDMI port is unused on my raspi. I'm using the =
official Raspberry Pi 7" Touchscreen connected via DSI.<br></blockquote>=
<div><br></div><div>Have you also added ?<br></div><div><br></div><div><=
span style=3D"color:rgb(85, 85, 85);font-variant-ligatures:normal;orphan=
s:2;widows:2;background-color:rgba(0, 0, 0, 0.024);text-decoration-thick=
ness:initial;text-decoration-style:initial;text-decoration-color:initial=
;"><span class=3D"font" style=3D"font-family:Roboto, Arial, Helvetica, s=
ans-serif;"><span class=3D"size" style=3D"font-size:13.585px;">dtoverlay=
=3Dvc4-kms-dsi-7inch</span></span></span><br></div><div><span style=3D"c=
olor:rgb(85, 85, 85);font-variant-ligatures:normal;orphans:2;widows:2;ba=
ckground-color:rgba(0, 0, 0, 0.024);text-decoration-thickness:initial;te=
xt-decoration-style:initial;text-decoration-color:initial;"><span class=3D=
"font" style=3D"font-family:Roboto, Arial, Helvetica, sans-serif;"><span=
 class=3D"size" style=3D"font-size:13.585px;"><span style=3D"font-varian=
t-ligatures:normal;text-decoration-thickness:initial;text-decoration-sty=
le:initial;text-decoration-color:initial;"><span class=3D"size" style=3D=
"font-size:13.585px;">dtoverlay=3Drpi-ft5406</span></span></span></span>=
</span><br></div><div><span style=3D"color:rgb(85, 85, 85);font-variant-=
ligatures:normal;orphans:2;widows:2;background-color:rgba(0, 0, 0, 0.024=
);text-decoration-thickness:initial;text-decoration-style:initial;text-d=
ecoration-color:initial;"><span class=3D"font" style=3D"font-family:Robo=
to, Arial, Helvetica, sans-serif;"><span class=3D"size" style=3D"font-si=
ze:13.585px;"><span style=3D"font-variant-ligatures:normal;text-decorati=
on-thickness:initial;text-decoration-style:initial;text-decoration-color=
:initial;"><span class=3D"size" style=3D"font-size:13.585px;"></span></s=
pan></span></span></span><br></div><div><span style=3D"color:rgb(85, 85,=
 85);font-variant-ligatures:normal;orphans:2;widows:2;background-color:r=
gba(0, 0, 0, 0.024);text-decoration-thickness:initial;text-decoration-st=
yle:initial;text-decoration-color:initial;"><span class=3D"font" style=3D=
"font-family:Roboto, Arial, Helvetica, sans-serif;"><span class=3D"size"=
 style=3D"font-size:13.585px;"><span style=3D"font-variant-ligatures:nor=
mal;text-decoration-thickness:initial;text-decoration-style:initial;text=
-decoration-color:initial;"><span class=3D"size" style=3D"font-size:13.5=
85px;">I never dealt with the 7'' Display but i guess they are needed fo=
r kms</span></span></span></span></span><br></div><div><span style=3D"co=
lor:rgb(85, 85, 85);font-variant-ligatures:normal;orphans:2;widows:2;bac=
kground-color:rgba(0, 0, 0, 0.024);text-decoration-thickness:initial;tex=
t-decoration-style:initial;text-decoration-color:initial;"><span class=3D=
"font" style=3D"font-family:Roboto, Arial, Helvetica, sans-serif;"><span=
 class=3D"size" style=3D"font-size:13.585px;"><span style=3D"font-varian=
t-ligatures:normal;text-decoration-thickness:initial;text-decoration-sty=
le:initial;text-decoration-color:initial;"><span class=3D"size" style=3D=
"font-size:13.585px;"></span></span></span></span></span><br></div><div>=
<span style=3D"color:rgb(85, 85, 85);font-variant-ligatures:normal;orpha=
ns:2;widows:2;background-color:rgba(0, 0, 0, 0.024);text-decoration-thic=
kness:initial;text-decoration-style:initial;text-decoration-color:initia=
l;"><span class=3D"font" style=3D"font-family:Roboto, Arial, Helvetica, =
sans-serif;"><span class=3D"size" style=3D"font-size:13.585px;"><span st=
yle=3D"font-variant-ligatures:normal;text-decoration-thickness:initial;t=
ext-decoration-style:initial;text-decoration-color:initial;"><span class=
=3D"size" style=3D"font-size:13.585px;"><span style=3D"font-variant-liga=
tures:normal;text-decoration-thickness:initial;text-decoration-style:ini=
tial;text-decoration-color:initial;"><span class=3D"size" style=3D"font-=
size:13.585px;">hdmi_force_hotplug=3D1</span></span></span></span></span=
></span></span><br></div><div><span style=3D"color:rgb(85, 85, 85);font-=
variant-ligatures:normal;orphans:2;widows:2;background-color:rgba(0, 0, =
0, 0.024);text-decoration-thickness:initial;text-decoration-style:initia=
l;text-decoration-color:initial;"><span class=3D"font" style=3D"font-fam=
ily:Roboto, Arial, Helvetica, sans-serif;"><span class=3D"size" style=3D=
"font-size:13.585px;"><span style=3D"font-variant-ligatures:normal;text-=
decoration-thickness:initial;text-decoration-style:initial;text-decorati=
on-color:initial;"><span class=3D"size" style=3D"font-size:13.585px;"><s=
pan style=3D"font-variant-ligatures:normal;text-decoration-thickness:ini=
tial;text-decoration-style:initial;text-decoration-color:initial;"><span=
 class=3D"size" style=3D"font-size:13.585px;"></span></span></span></spa=
n></span></span></span><br></div><div><span style=3D"color:rgb(85, 85, 8=
5);font-variant-ligatures:normal;orphans:2;widows:2;background-color:rgb=
a(0, 0, 0, 0.024);text-decoration-thickness:initial;text-decoration-styl=
e:initial;text-decoration-color:initial;"><span class=3D"font" style=3D"=
font-family:Roboto, Arial, Helvetica, sans-serif;"><span class=3D"size" =
style=3D"font-size:13.585px;"><span style=3D"font-variant-ligatures:norm=
al;text-decoration-thickness:initial;text-decoration-style:initial;text-=
decoration-color:initial;"><span class=3D"size" style=3D"font-size:13.58=
5px;"><span style=3D"font-variant-ligatures:normal;text-decoration-thick=
ness:initial;text-decoration-style:initial;text-decoration-color:initial=
;"><span class=3D"size" style=3D"font-size:13.585px;">may also be needed=
</span></span></span></span></span></span></span><br></div></div></block=
quote><div><br></div></body></html>
--2fea0b02ba79498884e76ea4a7db2e92--

