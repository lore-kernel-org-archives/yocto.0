Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5494.1574941282768861759
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 03:41:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=B+IajQc8;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52FE6E0108C; Thu, 28 Nov 2019 03:41:22 -0800 (PST)
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
	*      [85.215.255.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0302BE00AC8
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 03:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574941278;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=sjVKCWXC7EIqSF9dXZrlgdd3RQ7VSBo0IPTzANqiqAE=;
	b=B+IajQc8+7tD1njUWh17duMv8KweAjlyD1nBl4l/6QI/rPdhaiv8dMm8d5GAUgMf3x
	ExDBIiZG6X3h0PCyd7nLRqUCXthGEaOkp+foGuIXsmG2i3ABsboEgKj5bQC4AhNBCtbN
	qgXjPho16l0sOGbi9lNy3tRUppWAZitDzM2HiUeS/4fmpfSKHIkWyPIgUhfPR1bZJFT/
	IqSs1lzlf7a0T/FEU9o9FJ7lUDz/7SKIxH2NLSOQ3PRXgVwkXteCPwz2dQ3a80S8feMc
	foCfAdXzwQZdbiPggpVojdLkGtDjIhoZVliYAYi2xtOmfLaS1a7PdKKJIBzRYs+JUmsC
	lS1g==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vASBfICIU
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 28 Nov 2019 12:41:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574941277; x=1575546077;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=sj
	VKCWXC7EIqSF9dXZrlgdd3RQ7VSBo0IPTzANqiqAE=; b=px/bbGNiDWVeusIVcq
	rAerO/KYZAJ7CMI1gC9XvXVyInBYxQ8KhHBi76SDE57CgzBYyfAFp3eA+kFJyI+M
	xRqyYmsAhp4J2nAAmkktv6WqKvOcqhflHkyiQP8DRTcURDevuMivU0W2b3RWFX8Y
	xMZrRGw2LCYMmN3ILyLXlgQbw=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222506.msg; 
	Thu, 28 Nov 2019 12:41:17 +0100
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Thu, 28 Nov 2019 12:41:17 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 28 Nov 2019 12:41:04 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: [yocto] Architecture of .wic approach; image of images
Message-ID: <20191128114104.vgrmyherbnrkiqtd@jholzmayr.localdomain>
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
 <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain>
 <CAMjhiJg4YMUjn6WhTHYjAX07mF6s33EtjPiD-w95ucYCEmQPsg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMjhiJg4YMUjn6WhTHYjAX07mF6s33EtjPiD-w95ucYCEmQPsg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2019 at 12:11:52PM +0100, Leon Woestenberg wrote:
> Let me then first describe the issue I am having, which I think
> results from my misunderstanding then.
>=20
> I would like to package a UEFI bootloader (GRUB), bzImage and
> initramfs.cpio.gz into an FAT partition using WIC.
>=20
> 1) Should I adapt my existing my-initramfs recipe as follows:
>=20
> IMAGE_FSTYPES +=3D "wic"
> WKS_FILE =3D "my-disk-image.wks"

I think I'm starting to see the problem. Do you set those things in your
image recipe? If thats the case, this is where the misunderstandings
happen. An image file is meant to define what goes *into* the image, not
how its gonna look like for a specific hardware incarnation. Think about
core-image-minimal. If it included things like that, how could we use it
as a "hello world"-style image for about every platform?

So, those are things that are hardware, and therefore MACHINE specific.
And thats where they should end up, in your machine config. Thats the
way things are meant:
- the image recipe defines the contents.
- the machine configuration defines the "shape" (binary, partitions,
  layout, whatever) that your specific platform can use.

Greetz

>=20
> my-disk-image.wks:
> part /boot --source bootimg-efi-initramfs
> --sourceparams=3D"loader=3Dgrub-efi,initrd=3Dmy-initramfs.cpio.gz" --on=
disk
> sda --label msdos --active --align 1024 --use-uuid
> bootloader --ptable gpt --timeout=3D1
>=20
> 2) Or should I create a new recipe that builds the WIC and depends on
> the initramfs?
>=20
> Remember, I have no rootfs other than the (non-bundled) initramfs.
> Depending on the answers, I will come up with the issues I see.

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

