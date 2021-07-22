Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web08.5517.1626946037199357020
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 02:27:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denx.de header.s=phobos-20191101 header.b=O9RET8Wb;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id E11888164D;
	Thu, 22 Jul 2021 11:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1626946029;
	bh=vpfm2WXNu9Ib+9yrnmiwqzBcb4f4o0TMTfgRSuUAeS4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=O9RET8WbYqm7un3ifzN/MU/8ozUhTvsZ9ZwFc5Sa/33KiEGQO7TKd1YOfleEd4Uni
	 shYA0wqmXrkD6y+N/SLInPpDR91TIpln3zWxDDy05DTl8bGJvlYYA+8Zm99JRo2876
	 7cTenIdySMO0rlS4Tj0rfH53K7C10Ibdt42gX1a1nKcLNASD/jO5zWacb7aFqkaCe5
	 O+L/EKWZQBKtcn1oxgvb7ji6qFSz5FMqDizlOVo/TR4oE1XeozzEfqzu/IM5cvn5u3
	 ISkSXfj+dZd4XH5pSW8IhjbU1lTK+rB9XKWuKsAje0fbovOJ+IYBnf17L9sf4bsa8a
	 MMeGdHDqcPi7A==
Date: Thu, 22 Jul 2021 11:27:02 +0200
From: "?ukasz Majewski" <lukma@denx.de>
To: "Randy MacLeod" <randy.macleod@windriver.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [ptest-runner 0/5] ptest: Various memory fixes and enhancements
Message-ID: <20210722112702.4021d871@ktm>
In-Reply-To: <40d7ecd0-d330-6573-5959-4be169e1160d@windriver.com>
References: <20210721094627.29833-1-lukma@denx.de>
	<40d7ecd0-d330-6573-5959-4be169e1160d@windriver.com>
Organization: denx.de
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
X-Groupsio-MsgNum: 54189
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/a9g42REwRzIikaD+LaaCsZ3"; protocol="application/pgp-signature"

--Sig_/a9g42REwRzIikaD+LaaCsZ3
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Randy,

> On 2021-07-21 5:46 a.m., ?ukasz Majewski wrote:
> > This patch series provides some memory management fixes and
> > corrected return code handling for ptest-runner2.
> >=20
> > Adrian Freihofer (4):
> >    git: Extend the gitignore
> >    mem: Fix memleak for ptest_opts
> >    mem: Simplify memory management
> >    mem: Refactor ptest_list cleanup
> >=20
> > Lukasz Majewski (1):
> >    main: Do not return number of failed tests when calling
> > ptest-runner
> >=20
> >   .gitignore         |  3 +++
> >   main.c             | 33 ++++++++++++++++++++++++++++-----
> >   ptest_list.c       | 13 ++++---------
> >   ptest_list.h       |  8 +-------
> >   tests/ptest_list.c | 13 +++++++------
> >   tests/utils.c      | 22 +++++++++++-----------
> >   utils.c            | 11 ++++-------
> >   7 files changed, 58 insertions(+), 45 deletions(-)
> >   create mode 100644 .gitignore
> >=20
> >=20
> >=20
> >=20
> >  =20
>=20
> Looks good to me.
>=20
> Did you happen to check the compile with clang as well?
> If not, I may do that eventually.
>=20

No, I've just used gcc.


Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/a9g42REwRzIikaD+LaaCsZ3
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmD5OeYACgkQAR8vZIA0
zr34ZQgAsbK03fELweHyploTsRh3s7hSHHfj6TDYcKObfr5q1+W0fBIGbt6u3e2H
tnmRjKTSN/7GhXr2ceyb5Q1RsRefetJFw7PVDfF6Ied0A0AHoK4Z7Vsn3UKDmymz
jSyqptZ5V/VnK9hwuIz5GSvey0w22oKJUQLrKz2VQOQYmzLMsGXU7stsAcY0E8QC
63xb4AEj0Rb26k1RKd4y8Wn3Ky/aDhU140W8kIwF/HwQPPnaLAM0JGTP4ikqBXSR
T4MPgvAA0Ti8r5Mi4wKdy1FX9RZKukj/f1eG4x86TLbwb1xnJKObOM+qA0rrlZBV
PPTapNm87DKq+mGIJHlpRjLxoV/OxQ==
=VFGj
-----END PGP SIGNATURE-----

--Sig_/a9g42REwRzIikaD+LaaCsZ3--
