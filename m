Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEEA3C433EF
	for <webhook@archiver.kernel.org>; Sat, 16 Oct 2021 12:08:34 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web10.9763.1634386113369917328
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Oct 2021 05:08:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=hn8x+g+3;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.25,
 mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 7CB603200907;
	Sat, 16 Oct 2021 08:08:30 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sat, 16 Oct 2021 08:08:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=0dHGwXhiAricMMbFLJ8Ay5o3Y9FiNcL
	E85DJdmmPs28=; b=hn8x+g+3QYL9+FapMW8gpmUURo5QlH2HBW+M7gax5KfS1PR
	HL/cLpc1O4XUQ5UqRer8HsyCziAkDy+eTDlgTOeSyCWiChU3JdE1MEcehd2f39eg
	6Ew+cngjOJfAToGltfTsnTTMPXMSnfTbQVO3yA/p0h8RhhiAbE7fZcJ+G4qqomFA
	790bQmT8k6zfRyJE5DstMpJWWfKjyoexz9uAW2Wfe/qqRikVfraaDLY4BrnHZm8W
	08qBoCrsK0AVzwdOPWZ/w0r8C8ITgPYQdzRuNkrQR/IbynL/5L2aJMxdtZTy590t
	lxlrOIwKQywNiKe3j7mlhINgmV+6UxSWVYwv2KA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=0dHGwX
	hiAricMMbFLJ8Ay5o3Y9FiNcLE85DJdmmPs28=; b=SQqTKqNhkgyccgkPtkmHVp
	OoTwgC4UxKAF+dk0WWyfZVzuU1010YJIKG11E4Ir1yQQ2vvBbjAFgfA8QrDtaX4Q
	MM/L+bRVEjGLDZV/q9Le9hMfN5/hhuxm/y6GV0NB2jiF0vgFdXRVRyCAdftpT90S
	VBjR4LZAyFi/dIgWa6h+o43RkqHUNzOXr4Sq/Wjlk2NoTHb0MyLeqjyVFh1uoYZt
	L/JOdYMhQCphh4kNtn2WSAOaMCNd/oR1Fe4yLY/8l4EjoR9bx/AjnKdUvBxIO7if
	7S2Df9pKy7WfQGJDsT7Q3lpmppI1koHG8jn3l4aUmtJp97t+X++Z5L4U/X0kngZw
	==
X-ME-Sender: <xms:vcBqYZ6ct3kKKyPCnGjPZxOZzPG6r12giiRwTiOrrzVboXANiRl52w>
    <xme:vcBqYW6_gXd7UAWn2QhVZ2cl0uqSJDU4Hai2VK1jXFfZUs3kLX3pUno26OOOclkk-
    ZAYFckdqQeCPJCc>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrvdduiedggeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdforghn
    uhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrihhlrd
    fhofeqnecuggftrfgrthhtvghrnhepleehtdfhheeiteeftefgvdejfeeuleehvefgvdek
    ieehjeefvdeuheevffdujedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:vcBqYQeuA0mxR1m-DZV5Ta-cLcmcCtO2-LW64KDJRxJG5q97wFFP3w>
    <xmx:vcBqYSLPQioXppKK4hCjLdYmqsbVCUZinFARX74Wde6pbzgZ_6iayw>
    <xmx:vcBqYdKBJrDcFgOZDl2IxDs0tPSKouoxS1WFQ_WeEO7SE7kbW-zTWg>
    <xmx:vsBqYQkySWoG39VgW6z5N_oJVrKzA48P8VZC8ONCHxyK_mBa_fx2yg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id E217F3C0246; Sat, 16 Oct 2021 08:08:29 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1345-g8441cd7852-fm-20211006.001-g8441cd78
Mime-Version: 1.0
Message-Id: <0a94aca2-2539-4ff1-b892-94a3a42e8aff@www.fastmail.com>
In-Reply-To: 
 <CANNYZj9kPTThuVcbCtNZi8C5NwMMRgeRduO9r0n6TNcewy9OwQ@mail.gmail.com>
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
 <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
 <CANNYZj-_znrzjOb_cjtDEg4=ZxMCGEaVzCJ+txkJEMoqzBf_Zw@mail.gmail.com>
 <c39ba639-c4a6-4260-83b0-37a88d247a3a@www.fastmail.com>
 <CANNYZj9kPTThuVcbCtNZi8C5NwMMRgeRduO9r0n6TNcewy9OwQ@mail.gmail.com>
Date: Sat, 16 Oct 2021 14:08:09 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Alexander Kanavin" <alex.kanavin@gmail.com>,
 "yocto@lists.yoctoproject.org," <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
Content-Type: multipart/alternative;
 boundary=c41613a3ef464b3d8cb9b4bff839cd0e
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Oct 2021 12:08:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55087

--c41613a3ef464b3d8cb9b4bff839cd0e
Content-Type: text/plain

Am Mi, 13. Okt 2021, um 22:56, schrieb Alexander Kanavin:
> If you switch to master, it's best if you make a new build directory and dont reuse the one you have.
> 
> Alex
> 
> On Wed, 13 Oct 2021 at 22:09, Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>> __
>> `export DISPLAY=:0` did the trick.
>> 
>> The following shows when still on poky dunfell:
>> 
>> * I can now boot `runqmu kvm slirp sdl core-image-weston`. But gui is still slow. I cannot even type `systemctl poweroff` in weston-terminal, it inevitably becomes `wweesssttooo[...]`.
>> * `runqemu kvm slirp sdl gl core-image-weston` still fails with `Failed to run qemu: qemu-system-x86_64: OpenGL support is disabled`.
>> 
>> Updated to current poky master, but got this: `ERROR: ParseError in configuration INHERITs: Could not inherit file classes/image-mklibs.bbclass`.
>> 
>> Switched to hardknott-3.3.3 which is four weeks old and perhaps a little riper. It's currently building.
>> 
>> Regards,
>> Manuel
>> 
>> 
> 

Here are some updates:

Building core-image-weston on hardknott succeeded. Couldn't `runqmu kvm slirp sdl core-image-weston` first because I got an error message about 'dri.pc' being missing. Debian package search told me it's part of 'mesa-commond-dev', so I installed it on my host machine and indeed, that runqemu command above got working again. Not just that, now even OpenGL acceleration with `runqmu kvm slirp sdl gl core-image-weston` worked, altough I didn't change anything OpenGL-wise. core-image-weston feels really snappy now. Great!

I got curious and reverted back to dunfell to check if the now-installed dri.pc made a difference, but no, it didn't. `runqemu` with `sdl` started (like it did before), and with `sdl gl` it still said "OpenGL support is disabled".

Ok, so then I moved on to get my own image which is on hardknott now working.

I `runqemu`d my image with 'sdl' and 'gl' and it started up fine. Weston did no longer start automatically so I did manually. Ran `DISPLAY=:0 glxgears` but it told me "couldn't open display :0". Installed 'weston-xwayland' so I'd get "/usr/lib/libweston-9/xwayland.so" but that didn't change anything.

Can't yet say if `DISPLAY=:0 glxgears` works on core-image-weston as it's still building.

Regards, Manuel
--c41613a3ef464b3d8cb9b4bff839cd0e
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}
p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div>Am Mi, 13.=
 Okt 2021, um 22:56, schrieb Alexander Kanavin:<br></div><blockquote typ=
e=3D"cite" id=3D"qt" style=3D""><div dir=3D"ltr"><div>If you switch to m=
aster, it's best if you make a new build directory and dont reuse the on=
e you have.<br></div><div><br></div><div>Alex<br></div></div><div><br></=
div><div class=3D"qt-gmail_quote"><div dir=3D"ltr" class=3D"qt-gmail_att=
r">On Wed, 13 Oct 2021 at 22:09, Manuel Wagesreither &lt;<a href=3D"mail=
to:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wrote:<br></div><block=
quote class=3D"qt-gmail_quote" style=3D"margin-top:0px;margin-right:0px;=
margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-st=
yle:solid;border-left-color:rgb(204, 204, 204);padding-left:1ex;"><div><=
u></u><br></div><div><div>`export DISPLAY=3D:0` did the trick.<br></div>=
<div><br></div><div>The following shows when still on poky dunfell:<br><=
/div><div><br></div><div>* I can now boot `runqmu kvm slirp sdl core-ima=
ge-weston`. But gui is still slow. I cannot even type `systemctl powerof=
f` in weston-terminal, it inevitably becomes `wweesssttooo[...]`.<br></d=
iv><div><div>* `runqemu kvm slirp sdl gl core-image-weston` still fails =
with `Failed to run qemu: qemu-system-x86_64: OpenGL support is disabled=
`.<br></div><div><div><br></div><div>Updated to current poky master, but=
 got this: `ERROR: ParseError in configuration INHERITs: Could not inher=
it file classes/image-mklibs.bbclass`.<br></div></div><div><br></div></d=
iv><div>Switched to hardknott-3.3.3 which is four weeks old and perhaps =
a little riper. It's currently building.<br></div><div><br></div><div>Re=
gards,<br></div><div>Manuel<br></div><div><br></div><div><br></div></div=
></blockquote></div><div><br></div></blockquote><div><br></div><div>Here=
 are some updates:<br></div><div><br></div><div>Building core-image-west=
on on hardknott succeeded. Couldn't&nbsp;`runqmu kvm slirp sdl core-imag=
e-weston` first because I got an error message about 'dri.pc' being miss=
ing. Debian package search told me it's part of 'mesa-commond-dev', so I=
 installed it on my host machine and indeed, that runqemu command above =
got working again. Not just that, now even OpenGL acceleration with `run=
qmu kvm slirp sdl gl core-image-weston` worked, altough I didn't change =
anything OpenGL-wise. core-image-weston feels really snappy now. Great!<=
br></div><div><br></div><div>I got curious and reverted back to dunfell =
to check if the now-installed dri.pc made a difference, but no, it didn'=
t. `runqemu` with `sdl` started (like it did before), and with `sdl gl` =
it still said "OpenGL support is disabled".<br></div><div><br></div><div=
>Ok, so then I moved on to get my own image which is on hardknott now wo=
rking.<br></div><div><br></div><div>I `runqemu`d my image with 'sdl' and=
 'gl' and it started up fine. Weston did no longer start automatically s=
o I did manually. Ran `DISPLAY=3D:0 glxgears` but it told me "couldn't o=
pen display :0". Installed 'weston-xwayland' so I'd get "/usr/lib/libwes=
ton-9/xwayland.so" but that didn't change anything.<br></div><div><br></=
div><div>Can't yet say if `DISPLAY=3D:0 glxgears` works on core-image-we=
ston as it's still building.<br></div><div><br></div><div>Regards, Manue=
l</div></body></html>
--c41613a3ef464b3d8cb9b4bff839cd0e--

