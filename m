Return-Path: <lukma@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AB8C352A1
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 11:04:33 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web11.8326.1669806269838385927
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 03:04:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denx.de header.s=phobos-20191101 header.b=0Sk31Ht1;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from wsk (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9A79885208;
	Wed, 30 Nov 2022 12:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1669806267;
	bh=54IRDX0ZhpgY52RN3unHHPc+8OUgP60pzTmqGH7YqPo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=0Sk31Ht1CGA7txKYRCn3EuSvrQwCSIYwl8Xb8CGUg9WyvoAcNCTIq4q58svJUN5iQ
	 HW0lkB3KB/XBcdJZE2sBrzaHZXjtoZ2awz5arLieCjv2zOBD2b2SCVNWzshZix4nEZ
	 czWbjqQFMmYrJAAuDGxYgurwwVV9lbvrG2YjbAu2kD6DcohZyC9H+lsnp2j8Ibc2wJ
	 W4ErTJPN2bhdTZydS0o1K5W2pNBkcn9eh2vx6Jl3Dem7AjPu/QdjtCpjNfBo7EUyj7
	 IQ04eaPcrsJqbw4AL9uB6cBDDTjw99yojAz8sZPCVaOtcIQmbgbC6/UgR0PLDNrJwJ
	 MMA3O3ltsea5Q==
Date: Wed, 30 Nov 2022 12:04:21 +0100
From: Lukasz Majewski <lukma@denx.de>
To: "Stephen John Smoogen" <smooge@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Yocto-mailing-list
 <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Y2038 proposal
Message-ID: <20221130120421.0401e395@wsk>
In-Reply-To: <CANnLRdi+naMb9Ga+7AtZaQrTh-FjapUa_0qTdDYHUbHKvakbag@mail.gmail.com>
References: <0b6801d90409$885d6860$99183920$@gmail.com>
	<CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
	<CANnLRdi+naMb9Ga+7AtZaQrTh-FjapUa_0qTdDYHUbHKvakbag@mail.gmail.com>
Organization: denx.de
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/I/xWm.S_MxRYLU43QqvRFpv";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 11:04:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58670

--Sig_/I/xWm.S_MxRYLU43QqvRFpv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 30 Nov 2022 05:52:03 -0500
"Stephen John Smoogen" <smooge@gmail.com> wrote:

> On Wed, 30 Nov 2022 at 03:08, Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
>=20
> > On Tue, 29 Nov 2022 at 16:45, Stephen Jolley
> > <sjolley.yp.pm@gmail.com> wrote: =20
> > > We=E2=80=99d welcome a proposal/series on how to move forward with the
> > > Y2038 =20
> > work for 32 bit platforms.
> >
> > I have the following proposal:
> >
> > 1. A branch is made where:
> > a. "-D_TIME_BITS=3D64 -D_FILE_OFFSET_BITS=3D64" is enabled globally.
> > b. qemu is always started with "-rtc base=3D2040-01-01", simulating
> > Y2038 actually occurring.
> > c. an additional runtime test verifies that both RTC clock and
> > system clock report 2040.
> >
> > =20
> Going from various problems I saw with systems with smaller time
> wraps, setting a time after wrap occurs misses most of the problems
> which wall occur. Many systems will work fine with either 'negative'
> or 'smaller dates' but crash, burn, etc when running when the counter
> wraps around. I would suggest setting the test date to -N minutes
> before wrap over to run a first set of tests, and then N minutes
> after the wrap to run a second set of tests. This would hopefully
> catch programs which are worse off.
>=20

IIRC ptests for y2038 covers this problem in this exact way.


Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/I/xWm.S_MxRYLU43QqvRFpv
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmOHOLUACgkQAR8vZIA0
zr2lcQgAjz5AVvmv101ZFOc5LGrJiToDxx4Fqqlb9rOmi/zoXRYyAcITBLhSHbjw
SsNFMo2TXVStr1YwKnKUm7ILkOsIU1U7maNQOldxWAXBpM0VRxrm+lSqVLzL5cdh
F8CmgGo9qAPJ1HXKgV+RGkT/nce0g7q9/uxYilkv+V801bPXSkjTa2eJiIzQHA64
Mt6Wahu9UZZSpuzVtfI7zva+a+HqGbVR4PojcaLlysr2Xcv69HTwc1wef99nKS3H
ZwKqBESENjSB3+1i3dzPUuMwi+oSEW9f+rtWBNsfkcsLv/f64xdvTsAym4j4Ibv6
z62L4F7bCKQ41wYckl2aOZoXgaq76A==
=4boz
-----END PGP SIGNATURE-----

--Sig_/I/xWm.S_MxRYLU43QqvRFpv--

