Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2750.1580672214941065885
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 11:36:57 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=Ywa7Cj0x;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=1301a6a17d=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B88BE01691; Sun,  2 Feb 2020 11:36:54 -0800 (PST)
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
	*      [85.215.255.21 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87CEBE0164C
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 11:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1580672210;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=6SVNCjdH4am9Q+Oiq1sueCvkuwjMdpAulxawFjzEU1w=;
	b=Ywa7Cj0xAbHdAH5CyKlfa81VFboK0Ax99RmrzqADZBASVwucAj61MCFiS2mNbErZnW
	gPQkN7lRSHM6ELPYVQQYWuPeN+gaKkJ27WYwX900x49K2vG0Ox5kue0pLg32tg5UHqTv
	RMp0EJ0gceenM3h2K0qcpo70jxMBW0SH5e2A/mNLeDWbbNl6Pvnv22ZnSvR+Sdf8jibd
	alMKGOB24+XzVqZSVZi/4O+pBdnlAeA0XzdiO19XC6qGzniA15jXEVrbKX1Wco1jO/Ry
	GjpOw+QbPqDUys73UYj79IRNMJkstpxNw/DmArNPbojUFFLCWmTt9xhH4yMEu7JpK+sG
	X+6g==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.12 AUTH)
	with ESMTPSA id e0837bw12Jao886
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Sun, 2 Feb 2020 20:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1580672209; x=1581277009;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=6S
	VNCjdH4am9Q+Oiq1sueCvkuwjMdpAulxawFjzEU1w=; b=v1hjYdfX5XDaZP16qP
	o9KsQYVgwvJvTpQPfLDzuYhH0frP9eoEDiX3SxD2o0nRfI0ysGTDHD+RhV459pdr
	F9j7z/gD6lW3hM4H2NGg+NNxE575nl3B0x3tksouiVSDQpkgaJetvppqvOcLxy7R
	cDNb5H43w6m9LBlqXHDJ3+nus=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000240235.msg; 
	Sun, 02 Feb 2020 20:36:49 +0100
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Sun, 02 Feb 2020 20:36:49 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1301a6a17d=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Sun, 2 Feb 2020 20:36:34 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Adrian Bunk <bunk@stusta.de>, Stephen Jolley <sjolley.yp.pm@gmail.com>,
	yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Project Status WW04'20
Message-ID: <20200202193634.herkq2qyngu2olg2@jholzmayr.localdomain>
References: <086201d5d5f4$307b2150$917163f0$@gmail.com>
 <20200202132840.GA6805@localhost>
 <5FE54648-B93A-4C10-A41B-22593E37625D@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5FE54648-B93A-4C10-A41B-22593E37625D@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Howdy!

On Sun, Feb 02, 2020 at 03:09:07PM +0100, Alexander Kanavin wrote:
> Why separate them? I=E2=80=99d rather have newbies and experts in the sa=
me room.

My vote is totally on this too!

Greetz.

>=20
> Alex
>=20
> > On 2 Feb 2020, at 14.28, Adrian Bunk <bunk@stusta.de> wrote:
> >=20
> >> On Tue, Jan 28, 2020 at 08:01:23AM -0800, Stephen Jolley wrote:
> >> ...
> >> *    We have created a "documentation" list and a "licensing" list on=
 the
> >> yocto project mailing list infrastructure. We believe these topics wo=
uld
> >> benefit from dedicated discussions, the people involved usually aren'=
t
> >> interested in bulk email as would be found on other lists. The new li=
sts can
> >> be found at:  <https://lists.yoctoproject.org/g/licensing/join>
> >> https://lists.yoctoproject.org/g/licensing/join and
> >> <https://lists.yoctoproject.org/g/docs/join>
> >> https://lists.yoctoproject.org/g/docs/join=20
> >> ...
> >=20
> > Would it be possible to also create a yocto-devel or yocto-core
> > mailing list for discussing development of Yocto?
> >=20
> > Currently the yocto list is a mixture of core development list and for=
um=20
> > for newbie user questions, with no easy way to have them separate.
> >=20
> > Thanks
> > Adrian
> >=20

>=20


--=20
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548=20

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

