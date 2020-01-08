Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1436.1578512889390190530
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 11:48:12 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=Rplz1rHn;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=12762c914d=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 407FDE014C8; Wed,  8 Jan 2020 11:48:09 -0800 (PST)
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
	*      [81.169.146.163 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B5E3E01405
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 11:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1578512884;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=a2KvlmUpKz+joru7UbWssGUPzP4vCljTAN29BjfqXmU=;
	b=Rplz1rHn/lnNjZda8sv/akrT1LJT6ZfvZm+2kC1NSQfMzopX4FvTFRRzaB7lkOnUQz
	VR4EfaLWOHQ8T2xvKowpBJ/Jsox9mtLC3jY57D6I0VVxqaBb1FQhnJ4v8Ryq1DzhWXw3
	0hWiG2xIRJB7U5g1cl+b7+bp+fRSAS6sywmoEG9TuE1MPQu/py93X7qJkCb9Fry9WKJG
	FGUL2IhUSlXUCKyRgpOzx4Tdlg4rBnLVLV5IKZzQVddsqlvXWLuoZumN2KhGAabw39fO
	RWwwzfRsx5QwLqCfmVNTKXu/8KEvsgrHSjojnazXHxefByIY/rl1qA8MEewSNgTE2v8I
	JPUA==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.4 AUTH)
	with ESMTPSA id R00cfaw08Jm40VT
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Wed, 8 Jan 2020 20:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1578512883; x=1579117683;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=a2
	KvlmUpKz+joru7UbWssGUPzP4vCljTAN29BjfqXmU=; b=LvKFcJ7NKATMdpSouz
	cPe2UuypY/r/P1TULZye+yn59sfCj7V2OzCh7VhPtJRH39/Yw2qTWw/nDGsNqt09
	15UTi3vfgubuuKDZp1wH3beMwQfFwvJmAHGRN2+U70MqZmkaHpR6QQVD1LXXQ/IA
	i+TcNNiwUn/6jYH7r5nDhtcU0=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000231948.msg; 
	Wed, 08 Jan 2020 20:48:03 +0100
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Wed, 08 Jan 2020 20:48:03 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12762c914d=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Wed, 8 Jan 2020 20:47:50 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [yocto] patchutils bitbake recipe
Message-ID: <20200108194750.6tfneqdmfv6y67tp@jholzmayr.localdomain>
References: <CAB=6tBTZp=nd9ZLfnKp_9Gu=oXrz81Ht+Wv6zTRThn_O2Uc+7w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAB=6tBTZp=nd9ZLfnKp_9Gu=oXrz81Ht+Wv6zTRThn_O2Uc+7w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Howdy!

On Wed, Jan 08, 2020 at 11:30:09AM -0800, Chuck Wolber wrote:
> I checked the layer index (and google) and I find no references to a
> bitbake recipe for patchutils. Was there a conscious decision to not
> maintain a recipe for patchutils? Or is this something that simply need=
s a
> maintainer to step up and make it happen?

Write a recipe and submit :) I don't think there was ever a "conscious
decision" to not support a specific package for non-technical reasons.
And this one doesn't also look like it has any noteworthy implications -
its autotoolized and GPLv2. So a good one to get involved for sure.

The only thing that *could* theoretically happen, is that if no usecase
other than a very specific one of yours can be seen, that you are asked
to keep it in a layer of your own instead of being accepted into
meta-openembedded (because thats where it would have to go).

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

