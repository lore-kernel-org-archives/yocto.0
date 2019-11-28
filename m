Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4382.1574931710235897474
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 01:01:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=JyLSWF/G;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC26AE01089; Thu, 28 Nov 2019 01:01:49 -0800 (PST)
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
	*      [85.215.255.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B10BE00E82
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 01:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574931705;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=OYmfMiSe8j5QDSjAoW30jMmsRU+D5eKpmhJF/ssaqRE=;
	b=JyLSWF/GeZYmnsirfvt4URu3HMt5AR/auYU3G4m8PAgX0uVjy4orngJgrOzRD/MEz1
	QlHCv40aLlZLArMA4vigmIXGDY92/gC9jOK8/+/KMN8E2XrlKUMVPNiK4stES+OqiZ/a
	tPmZDUVWWd7j4dbg0gMIAKQJWDjJY9IsAUBfmxAsW1HrrV9/veJRLZSeB6+W29mP0l1p
	2UVjfTWt19HoQA1rMS50rJx+73YwrIu37WJibGii7QSqXzIiY0oZQi7s6bGLkwpIpFVn
	rJY2UMSCcEScwFlSdt/zfArMM34jFefqCJ1V+9/ZzBmSqtFE4+T10ZfpJDMXvCn0AYPJ
	mG7g==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vAS91iBPi
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 28 Nov 2019 10:01:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574931704; x=1575536504;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=OY
	mfMiSe8j5QDSjAoW30jMmsRU+D5eKpmhJF/ssaqRE=; b=tac6vPBo2UdKvQXq60
	kvLsMPuJcmVvWyAVTulcM93ILwn6fkUAgFVlSGQggChGTpxYNSDGzt7mB2zESKyL
	q4Ut1+KKKmQWdUQLyXOLLTBl5wnvB4MVrH+gV6KWe4SV3hrfOQpNKM556/+AYyJR
	KR/u5B4uKykOpdboMhYdZtg3Q=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222417.msg; 
	Thu, 28 Nov 2019 10:01:42 +0100
X-MDArrival-Date: Thu, 28 Nov 2019 10:01:42 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 28 Nov 2019 10:01:41 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: [yocto] Architecture of .wic approach; image of images
Message-ID: <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain>
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2019 at 09:37:12AM +0100, Leon Woestenberg wrote:
> Hello all,
>=20
> What is the intended approach of building images using WIC?
>=20
> Most image types (except .wic) build a (root or initial ram) filesystem
> from *packages*, then create the respective archive or filesystem from =
it.
>=20
> The .wic image type however, builds an image from *images* rather than
> packages.

Thats *almost* correct. It builds an image from a *artifacts*.

> It therefore seems incorrect we can just add IMAGE_FSTYPES +=3D "wic",
> because the corresponding .wks might depend on multiple other images th=
an
> just ${PN}.

If it does, then your dependency architecture is probably broken. You
have to understand that building an image might produce artifacts that
are not actually included in the rootfs: many systems expect the kernel
to be external to it, and even most do so for u-boot. Hence, the mindset
is as follows: the image recipe biulds everything that you need. It does
not care about the actual for those things shall be poured into.

> Should we, or do we have a recipe example that builds only a .wic image=
,
> based on one or more other existing images? (and thus not populate a
> filesystem itself)

See above. The image recipe produces all the needed artififacts, that a
*seomthing* later in the pipeline needs. This *something* then takes
those artifacts and pours them into a binary form you can use. Its maybe
bad naming that the configuration of that binary output form is
IMAGE_FSTYPE, which suggests a relation to the image. But de factor,
mentally replace IMAGE_FSTYPE with BINARY_RESULT_FORMAT, and then it
should become clear that this is actually two seperate stages of the
build pipeline.

Greetz

>=20
> Regards,
>=20
> Leon.

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>=20
> View/Reply Online (#47445): https://lists.yoctoproject.org/g/yocto/mess=
age/47445
> Mute This Topic: https://lists.yoctoproject.org/mt/63986097/3618269
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [holzmayr@rs=
i-elektrotechnik.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


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

