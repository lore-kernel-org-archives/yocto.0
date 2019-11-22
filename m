Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3506.1574407437579477746
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Nov 2019 23:24:00 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=CkKwGWOY;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=122978e73e=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 029E5E00BA3; Thu, 21 Nov 2019 23:23:57 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F91BE00A9A
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 23:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574407432;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=1FuNRocs6oi0BJqWWdoRtYlObM/0zszFvYJ/8fAA/mg=;
	b=CkKwGWOYy4aPJU+9WTDzx680G3z06b0EnFcqB19SvsP4fGdUn7o3vFgbABZJPVDmj6
	Bo7jQyhBnHcnS0egWryjbCebhDrBtjOQRVzyq0IfAwHt5mSNcbEftpIffkqGQQcYtzWa
	pJsRCFljNMteE1zQxuJhD3emVZWmZIDLmLN21rnzHwxUGiPikPpRShmRdNoPSjqa42M1
	4Wbv+qleVRq18JK3lkkpQ/SkJmv+WWXcYdYPtqALBgHC3rrLDNG66J4y/5zwsr1c8TXt
	tINf0ggArPo3o2vToRjIAmO2R8MMsi73q95DiwoYpR9aGRb3idgTVOZHAZ3NNl3DxFIG
	6fhQ==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 44.29.0 AUTH)
	with ESMTPSA id 6029d5vAM7NpQi6
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1 with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 22 Nov 2019 08:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574407431; x=1575012231;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=1F
	uNRocs6oi0BJqWWdoRtYlObM/0zszFvYJ/8fAA/mg=; b=lvG3W8nrkx2U4f7Ybn
	hhi4z0d5GGBv5uppnrHXctku99envTHDskhH4YNSQv2T23wEFRP1aSVD6jlNLoMI
	zI6IVZHy3BlP2r6znwNKHcxwgLz2wVIOFzX83r5b87Lxo8im8iwjsA+RZY6BROoK
	cZvZ21MVEeVYyLc/wZVt+GFxM=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000220658.msg; 
	Fri, 22 Nov 2019 08:23:51 +0100
X-MDArrival-Date: Fri, 22 Nov 2019 08:23:51 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=122978e73e=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Fri, 22 Nov 2019 08:23:48 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] is there a rationale for YP using sysvinit as default init manager?
Message-ID: <20191122072348.gzz3ed5fhwgr2gbi@jholzmayr.localdomain>
References: <alpine.LFD.2.21.1911211401001.10307@localhost.localdomain>
 <1be248c5919e879aa09f544c702ae548cc34a83d.camel@linuxfoundation.org>
 <2392384.1fjsgAbKtY@shodan>
 <8718f67e43e75680f066d1249d59eedfc4d87e97.camel@linuxfoundation.org>
 <CANNYZj_PEEPOWSXiR+23BANdCo668pok38nE9Md1s6XQcOozQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANNYZj_PEEPOWSXiR+23BANdCo668pok38nE9Md1s6XQcOozQA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 21, 2019 at 10:35:39PM +0100, Alexander Kanavin wrote:
> On Thu, 21 Nov 2019 at 22:18, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>=20
> > We got so far and after looking at the position we ended up I decided
> > it was easier to switch poky-altcfg rather than change poky and/or OE
> > defaults. I resolved that bug as "complete" as we now had testing of
> > systemd on a near enough equal footing to sysvinit which was the
> > concern people had raised. There are problems in oe-selftest and some
> > other corner cases but nothing people seem to be running into day-to-
> > day.
> >
>=20
> It is also quite amazing that the project, by design, has entirely
> sidestepped the divisive init system wars that have been gripping the
> mainstream linux distros for years (and still are). I'd say it hardly
> matters what the default is, if the other options are well supported.
>=20
> Alex

Thats my take as well. By sysv being the default andsystemd being
massively used we almost automatically end up with good testing of both.

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

