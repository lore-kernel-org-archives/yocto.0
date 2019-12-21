Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6230.1576930168645112792
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Dec 2019 04:09:31 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=ODF0IVTb;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=1258157787=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1570E01148; Sat, 21 Dec 2019 04:09:27 -0800 (PST)
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
	*      [85.215.255.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CE7EE01140
	for <yocto@yoctoproject.org>; Sat, 21 Dec 2019 04:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576930163;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=lY3Yl5pHgEIFU7JcdVu2AeStEZM0UJ11t56ddpsqrjc=;
	b=ODF0IVTbg89Dup7Y8iD+VC2qcMmXYxMABmloKHi0ynZIa/5Phhx3ezje+9CGHNGrpr
	5C5hhH/ybLg2KAcN7D3IxUwDZ2IQ01nn3g5pRyhNOCrQ2nP23IqQGlXF1sEOZImO28Au
	VWuybgTO1jt+Cll8miruaMmL5QIjWECXgjkkP3Zst2h0UaPUPYI+gOFtCGJ+Pt2jkl6f
	ePhHs642hBPi+BNcPJIKWapKg3m6XCERAZ5Q3Yd/eZjr+GXuYN8wQJH5+c3dJ4jASK5f
	E9bdt+g8gc4NiltK1kI3Z03MySZhJ4oAX9/rFru8LdG9Xa41rzc9ZBJ7RyS+COxQ56yj
	SHhw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.1 AUTH)
	with ESMTPSA id t07db7vBLC9M5uh
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Sat, 21 Dec 2019 13:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1576930162; x=1577534962;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=lY
	3Yl5pHgEIFU7JcdVu2AeStEZM0UJ11t56ddpsqrjc=; b=iTmgJiS6RvBvFI52S+
	cGZQEwB2C6nqW5vb2X/4EqBD2NF6/VeDdOTf55+HsJ25ZLTMXvho+rLUegQV5wmN
	wlc1f2Vo9WbEYe/+IDEUeLDGCk8byb1kxwRvHOxUd70PgnxUhdnYi0Oui9fR2mdx
	BwK6wk50CgCM9bMpBSewOk5xE=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000229972.msg; 
	Sat, 21 Dec 2019 13:09:21 +0100
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Sat, 21 Dec 2019 13:09:21 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1258157787=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Sat, 21 Dec 2019 13:09:09 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] ubuntu from Yocto
Message-ID: <20191221120909.qbn5fucudbk5lqjl@jholzmayr.localdomain>
References: <CAFq4t4hjJV396RJpkaY1CW4VMefv5c0JnRac6SaLkRt+20R=2w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFq4t4hjJV396RJpkaY1CW4VMefv5c0JnRac6SaLkRt+20R=2w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Howdy!

On Sat, Dec 21, 2019 at 08:20:16AM +0100, Peter Balazovic wrote:
> Hello guys
>=20
> Is there a way how to prepare "Ubuntu distribution" from Yocto project.=
 It
> means to create a standard Ubuntu (or other standard distribution).
> I am looking for a procedure for it.
> Please, can you point/link me?

Sorry, but there is no such thing. Yocto respectively OpenEmbedded
technology can build a custom distribution that suits a lot of cases,
but not being a drop-in replacement for general distributions. You might
have better luck asking the ubuntu folks if they offer customization
tooling.

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

