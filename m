Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50964E014F1
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 11:55:24 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id p14so3266691vbm.4
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 11:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=OQC/X/4Xe69kywuniKSnpoebUGwmIc631jJv3Gh7mm0=;
	b=KRUlRKqcmEF2gdxTpQD8te9IsX5l+V/S6SR02uyuRp5YT498iKe+fqQJJdDNFMnKf6
	pTp5/9Cgd6wGAbraozlGO3YWIa7asmJu6Xg9ekonXNNF40WlJQdipM+q6k7lboxsyv8H
	VDE7LibL8+ka109xyCzLK8XfeyWKe8XVOTv2a2zb9AbiIiqgAoshrh9IUQGOh3YnnhEo
	x+i3g0Kn8dAySov2dnPtsScX2BsPSM6peT1P6N9zxFKLgW+8Vd2/FPu52ph4Zu7YFcTl
	RL/spIlpb4dfKo3vTl0W4yfERoNYjJofXQK7gFW4ngHYEcKP81/LELmWQQpVZDpRzozE
	ccyg==
MIME-Version: 1.0
X-Received: by 10.220.1.9 with SMTP id 9mr8519277vcd.37.1370976923763; Tue, 11
	Jun 2013 11:55:23 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Tue, 11 Jun 2013 11:55:23 -0700 (PDT)
In-Reply-To: <CA+YB3rYq6_o_Sc50t0TVm5rnEeG2MD2qo=Ya6WKyG=c5vy_vHg@mail.gmail.com>
References: <CAFMfyz+_j-mWj4C0YJUnOBcCX-oMGc8196pmPcQcD8XbK6r0xA@mail.gmail.com>
	<CA+YB3rYq6_o_Sc50t0TVm5rnEeG2MD2qo=Ya6WKyG=c5vy_vHg@mail.gmail.com>
Date: Tue, 11 Jun 2013 20:55:23 +0200
X-Google-Sender-Auth: QOipiDI3YmQI1szfADV-t_rVAfk
Message-ID: <CAFMfyzKzvBDTxPoLN6=fFkP=Rbd_KWVpLk=352F6OxB3e5-iWg@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: No crosscompiler in Toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Jun 2013 18:55:26 -0000
Content-Type: multipart/alternative; boundary=001a11c3c49089475904dee570e3

--001a11c3c49089475904dee570e3
Content-Type: text/plain; charset=ISO-8859-1

First I am sorry about the Gentlemen.... Next time it would be Ladies &
Gentlemen... ;-)

Let me explain the situation better ... *core-image-skidata* (arm) is
customized image which I build and I want to build a toolchain for this
image on my x86_64 with should consist of cross compiler (which I assume a
toolchain should contain). The build for the toolchain went successfull but
when I installed the toolchain on my system, I didnot find the
crosscompiler installed...

Hope you understood my problem..

Greets,
Satya


On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:

> On Tue, Jun 11, 2013 at 5:59 AM, DAMARLA Satya Swaroop
> <swaroop.damarla@gmail.com> wrote:
> > Gentlemen! We have a problem here...
>
> Not all here are gentlemen :)
>
> > I compiled the toolchain using the command bitbake core-image-skidata -c
> > populate_sdk and installed the toolchain but I have to tell you that I
> dont
> > see any cross-compiler installed with the toolchain...
> >
> > Any guesses what could be the reason.. The image is customized x11
> image...
>
> I'm not sure I understand. It looks like you are using Host A to build
> a toolchain and install it into an image (core-image-skidata) on
> Target A. Are you then expecting to use Target A as Host B to compile
> for Target B?  Is it possible that the skidata image recipe does not
> contain the cross-compiler recipes?
>
> --
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
>

--001a11c3c49089475904dee570e3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">First I am sorry about the Gentlemen.... Next time it woul=
d be Ladies &amp; Gentlemen... ;-)<div><br></div><div style>Let me explain =
the situation better ... <i>core-image-skidata</i>=A0(arm) is customized im=
age which I build and I want to build a toolchain for this image on my x86_=
64 with should consist of cross compiler (which I assume a toolchain should=
 contain). The build for the toolchain went successfull but when I installe=
d the toolchain on my system, I didnot find the crosscompiler installed...<=
/div>
<div style><br></div><div style>Hope you understood my problem..</div><div =
style><br></div><div style>Greets,</div><div style>Satya</div></div><div cl=
ass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jun 11, 2013=
 at 7:48 PM, Jeff Osier-Mixon <span dir=3D"ltr">&lt;<a href=3D"mailto:jefro=
@jefro.net" target=3D"_blank">jefro@jefro.net</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tue, Jun 11, 2013 at 5:=
59 AM, DAMARLA Satya Swaroop<br>
&lt;<a href=3D"mailto:swaroop.damarla@gmail.com">swaroop.damarla@gmail.com<=
/a>&gt; wrote:<br>
&gt; Gentlemen! We have a problem here...<br>
<br>
</div>Not all here are gentlemen :)<br>
<div class=3D"im"><br>
&gt; I compiled the toolchain using the command bitbake core-image-skidata =
-c<br>
&gt; populate_sdk and installed the toolchain but I have to tell you that I=
 dont<br>
&gt; see any cross-compiler installed with the toolchain...<br>
&gt;<br>
&gt; Any guesses what could be the reason.. The image is customized x11 ima=
ge...<br>
<br>
</div>I&#39;m not sure I understand. It looks like you are using Host A to =
build<br>
a toolchain and install it into an image (core-image-skidata) on<br>
Target A. Are you then expecting to use Target A as Host B to compile<br>
for Target B? =A0Is it possible that the skidata image recipe does not<br>
contain the cross-compiler recipes?<br>
<br>
--<br>
Jeff Osier-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">http:/=
/jefro.net/blog</a><br>
Yocto Project Community Manager @Intel <a href=3D"http://yoctoproject.org" =
target=3D"_blank">http://yoctoproject.org</a><br>
</blockquote></div><br></div>

--001a11c3c49089475904dee570e3--
