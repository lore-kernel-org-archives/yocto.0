Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4049.1578319903058840024
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jan 2020 06:11:45 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=I0b0N8Rf;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=127452b55f=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DC9FE0145E; Mon,  6 Jan 2020 06:11:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 385B0E007DA
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2020 06:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1578319897;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=rbr7QDnQi/8/SPGSWgtoFinwnJnJIaeO9CHneWRy+qQ=;
	b=I0b0N8RfCTKys3YfuT7KZXRz1/2AVFdFa+FaorMWRbZioFNju0lcghGRn50lN6Qkwp
	Y9IVgPkI4ZrPrStjatgtNTraw2GhHaAv6Aea8OJi4+cI8QA61QzkJDiwDXc4xWvXxMc/
	Tx4rpNYxx5WmvEW4mWgGGwYWu8vrR4iA9a0lLJwqUgXoDev+MLiay4GTFo0xSVHK9UhT
	d057cVo4J2vbjoTiAqP5XKPxz4Ob8CAaSfziY/+GJhWxFl/MrhFrU9IYmzSqRsvJO8kE
	6JFCi7eXz4eKhfWrGbtzzoXrusFRLVIxMxp6jRiRIk416ZnTq0X9ELFmeKQQ9xora39a
	zhqA==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.3 AUTH)
	with ESMTPSA id v0563bw06EBaP3z
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Mon, 6 Jan 2020 15:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1578319896; x=1578924696;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=rb
	r7QDnQi/8/SPGSWgtoFinwnJnJIaeO9CHneWRy+qQ=; b=cYOErxw4u1/N/Bugwe
	m2/4a/0sgEslQ6NiQqxpchGrx1gSAbuPkfAzxRJuyBmhiZ0u2zEHRt3ihDIkumpE
	ZSYUYbQFTGP4Sz4bLjeSS04n6cWvBQtJd0Rv7czFpTyxDTFsDmCl4IgQlnwbgcZx
	gbKXPtLON5NU+yuTzH6gv4Bag=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000231106.msg; 
	Mon, 06 Jan 2020 15:11:35 +0100
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Mon, 06 Jan 2020 15:11:35 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=127452b55f=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Mon, 6 Jan 2020 15:11:21 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] Update connman to build connman_1.37.bb?
Message-ID: <20200106141121.gmazpjxwyl7mykhs@jholzmayr.localdomain>
References: <CAA=hcWSNCykfN2mE6HbWzFuWmMUXq3jMhNZQQP5qqJ4T8YMPAw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSNCykfN2mE6HbWzFuWmMUXq3jMhNZQQP5qqJ4T8YMPAw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Howdy!

On Mon, Jan 06, 2020 at 09:51:09PM +1100, JH wrote:
> My Youcto version is Thud, connman in oe-core is connman_1.35.bb, I
> want to update to connman_1.37.bb. Is it possible to update connman to
> connman_1.37.bb without update the whole Yocto version?

Sure, just drop a recipe for 1.37 into your custom layer. By default,
the highet one gets chosen.

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

