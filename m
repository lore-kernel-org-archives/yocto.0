Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5687.1578555541225201640
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 23:39:04 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=Smwv2hOw;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=1277c9507b=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9489E01389; Wed,  8 Jan 2020 23:39:00 -0800 (PST)
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
	*      [85.215.255.80 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [85.215.255.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4665CE00782
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 23:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1578555536;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=cNj6aP7SlO/gvV19hi6sWAC4DglEdywUVtCKm70EtCA=;
	b=Smwv2hOwjzcbRfTpf5QqblajObv+4RHfz7QYViJqvI9d98cRFZWxnxz/N4TL479y99
	DbihaoS7hznk8pc2ph10/5+QwZVRn5a4DMAGgwy27+0wJFw2J4KM7zRO/yhhppy17q/+
	mWFgCP3lGF7Bz5EDZd8UCsMIisJCYfmti3gWc0b+uzgxhzlHb6Ph1uoX2AaAiCb8zckO
	z2nmfBjB66MFvnzQU3faXy+HzacI6QQUb5790upMod0yNgAPXzdqGLUZhabeVZW5sbwi
	BovVMNVKPGMvwYUtSZw8jp2aSOr6A0JmuR74EBz+gA3S3OBZupjotU6270fEOnQZQbbp
	Tg/A==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.4 AUTH)
	with ESMTPSA id R00cfaw097cu1R7
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 9 Jan 2020 08:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1578555536; x=1579160336;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=cN
	j6aP7SlO/gvV19hi6sWAC4DglEdywUVtCKm70EtCA=; b=JyYbWE0+OeP46Bnuev
	Jd2S6OvgbzuhuzYW7TKJdEvz9hZOO/9cyWRKQRv2PBhp1SnT9WmY3laI4ERrZ6Yz
	K4lIEO2RcPS1zY/Wc44gYY0E873FJIMH7cW022CCpcxmQWgMleJoSAcernmVpIJF
	UggesDKCMuRTfUnhtaepfZDp8=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000232090.msg; 
	Thu, 09 Jan 2020 08:38:54 +0100
X-MDArrival-Date: Thu, 09 Jan 2020 08:38:54 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1277c9507b=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 9 Jan 2020 08:38:48 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [yocto] patchutils bitbake recipe
Message-ID: <20200109073848.cl3wuhdap4dx2drr@jholzmayr.localdomain>
References: <CAB=6tBTZp=nd9ZLfnKp_9Gu=oXrz81Ht+Wv6zTRThn_O2Uc+7w@mail.gmail.com>
 <20200108194750.6tfneqdmfv6y67tp@jholzmayr.localdomain>
 <CAB=6tBTdryvjAA3wJGGJSPTkmt6yLa4tn6o8XSMs9_RW9fBhJg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAB=6tBTdryvjAA3wJGGJSPTkmt6yLa4tn6o8XSMs9_RW9fBhJg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Howdy!

On Wed, Jan 08, 2020 at 01:14:17PM -0800, Chuck Wolber wrote:
> >
> > Write a recipe and submit :) I don't think there was ever a "consciou=
s
> > decision" to not support a specific package for non-technical reasons=
.
> > And this one doesn't also look like it has any noteworthy implication=
s -
> > its autotoolized and GPLv2. So a good one to get involved for sure.
> >
>=20
> Thanks! It sounds like I am not stepping into an historical tarpit then=
.
> There
> are so many references to patchutils in the Yocto ecosystem that I figu=
red
> there just had to be some reason for the non-existence of a recipe.
>=20
> Indeed such a recipe looks fairly simple. I will check the appropriate =
layer
> README for patch submission details.

Have fun, and feel free to return with arising questions :)

> <snip/>
>=20
> So... is "building a self-hosting" environment a decent use case? I thi=
nk
> as it becomes easier to do this, it will become de rigeur to work from =
an
> environment like that.

Anything that works for you is a decent usecase. In terms of Yocto/OE,
the line between decent and non-decent is less a technical than a
social one.
Decent: "Hey did this weird stuff, and its just what I need. Thanks!"
Non-Decent: "Hey I want to do this weird stuff but it doesnt work
because XYZ, so its your job to fix ABC in order to please me!"

Read that as: we're mostly in embedded, people do strange stuff all the
time. If what we do is useful for you, go ahead.

And on the topic of self-hosting, we actually have something called
"packagegroup-self-hosted" which should be nice base to build from.

> And sorry in advance if I opened any cans of worms :)

None detected.

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

