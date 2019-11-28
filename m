Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5798.1574943310509062309
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 04:15:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=XTcGx/Hc;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22359E0108F; Thu, 28 Nov 2019 04:15:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [85.215.255.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97315E00839
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 04:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574943304;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=b4yzOrtEz3MDpZeZXuvg23btbKpzJVqNr3OeeKwC4ME=;
	b=XTcGx/HcbJrsF8L2O4y5eCaJf0OWW/FPu/5L/iC+oaX9ecBjUVT2TCye9BE/nU37n5
	+/fbCkIFsAKzDm37g8DkMC6mkEA4wYXfS90iIg09LzuYoIXzOFG8Qz0In7xl0oBXkolS
	BNq8psWq67ia8Rsc+9hgva0G09Kv/CbEo1py5yPCR1zClT+/FOgnvnHi66ieODS7B5hN
	hoVs/BpMcPQFqtYI88lweadJWs7nznuRCopPsL8PbJ7Iy3yoDfWrCi6oLjlzwpVhSb0C
	8BFHPj3n79TUe1b44taU6lbnbbTx28qnh354jE/JcJ1IK6yPeZHm9ind+ANYFY9wJpWC
	6sUA==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vASCF4CS8
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 28 Nov 2019 13:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574943303; x=1575548103;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=b4
	yzOrtEz3MDpZeZXuvg23btbKpzJVqNr3OeeKwC4ME=; b=obl5itzNgSvlgp+oCj
	Jeg4CuSbqMfLGJmg5vEiNj0KCHyJCN4j0Cm9kgOS/s/tGx+bRwgPVWf8ku8SJDoI
	QH+gxwQtj75nZIrBEmvo7sPUe3V9jb5mGxXp24AIPZHHld0y8V+/ADxfNdhaFDQt
	MpoasCcxJ853ngU2PYRCfvbB4=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222518.msg; 
	Thu, 28 Nov 2019 13:15:03 +0100
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Thu, 28 Nov 2019 13:15:03 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 28 Nov 2019 13:15:01 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: [yocto] Architecture of .wic approach; image of images
Message-ID: <20191128121501.xixbvexzhoeuihna@jholzmayr.localdomain>
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
 <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain>
 <CAMjhiJg4YMUjn6WhTHYjAX07mF6s33EtjPiD-w95ucYCEmQPsg@mail.gmail.com>
 <20191128114104.vgrmyherbnrkiqtd@jholzmayr.localdomain>
 <CAMjhiJg=SwoEGQyZ0hObP8Q-qLHb6yz6bKauwNJb-7kFaqYE+A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMjhiJg=SwoEGQyZ0hObP8Q-qLHb6yz6bKauwNJb-7kFaqYE+A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2019 at 12:53:54PM +0100, Leon Woestenberg wrote:
> On Thu, Nov 28, 2019 at 12:41 PM Josef Holzmayr
> <holzmayr@rsi-elektrotechnik.de> wrote:
> > On Thu, Nov 28, 2019 at 12:11:52PM +0100, Leon Woestenberg wrote:
> > > Let me then first describe the issue I am having, which I think
> > > results from my misunderstanding then.
> > >
> > > I would like to package a UEFI bootloader (GRUB), bzImage and
> > > initramfs.cpio.gz into an FAT partition using WIC.
> > >
> > > 1) Should I adapt my existing my-initramfs recipe as follows:
> > >
> > > IMAGE_FSTYPES +=3D "wic"
> > > WKS_FILE =3D "my-disk-image.wks"
> >
> > I think I'm starting to see the problem. Do you set those things in y=
our
> > image recipe?
>=20
> IMAGE_FSTYPES +=3D "wic" goes in the image recipe, yes.
>=20
> WKS_FILE is there as well for this image, because I need to create
> multiple images with different WKS's.
>=20
> > If it included things like that, how could we use it
> > as a "hello world"-style image for about every platform?
> >
> I want to create several images. The one I described is a recovery imag=
e.
> I also want an application image which has a different WKS.
>=20
> However, this is not the real issue. I first would like to understand
> if I need to follow 1) or 2).

Au contraire :) It is the real issue because neither 1) nor 2) is the
correct way, and I pretty much explained why that is.

What you actually describing are two combinations of image+machine or
image+distro, depending on the exact situation.

Greetz

--=20
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548=20

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

