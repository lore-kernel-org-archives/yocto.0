Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4767.1574854097756799392
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 03:28:20 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=DAPX4l3E;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=1234a5d44c=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DC63E00ECC; Wed, 27 Nov 2019 03:28:17 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65EFAE00BA2
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 03:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574854093;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=Av3u63wk7NJsoHmX+E/H/M80HrJ35RugZL1o0UJWLhY=;
	b=DAPX4l3EsV3xjZMTxhUAiThalvIStLkQMFrvZvCsCp7coEbz5PDkpOOMLw7jYlG5oU
	cSiYSom+bJ1qcXZPQoNsECLnlhpkPzi0nVDxzfagLBfhA0fz1FOaFvRYq/v9S2UMoVU5
	DmWUXARxpR443UluwUVi8Eii8FA9OMTV1BpC4psyM8r5ZkPZxC+R2ZIjuhRP8268bsmU
	ddCFPOM1ZULFgiUrYXx03o0VhMmdJS0Aau6dXi+rAqzkarSLL8PIezUIm20CFd2dTFV4
	jrdJMckY6Ble/M4d710yRYr7qsXzPzmI3k5hRwrZHzUkxooQ4xIrgsG8O6HjoaqBjfLj
	TW0Q==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vARBSD8NX
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Wed, 27 Nov 2019 12:28:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574854092; x=1575458892;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=Av
	3u63wk7NJsoHmX+E/H/M80HrJ35RugZL1o0UJWLhY=; b=dr6hOS0xMBq3OgVg85
	ZCt8YWI7pHHTyFVpGjqWkMfubea34boY2vrCW/AfTxI6Rc/qcXtyYL/ajcsI1T/l
	dSaKBudfi0PjzL5frq8YabLWono6ANyTJB1LfArCsbSalTU1ctM8twBEkRKUbSqP
	CNhaSWuWc3M32+ZyP5jYB0G+U=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222127.msg; 
	Wed, 27 Nov 2019 12:28:12 +0100
X-MDArrival-Date: Wed, 27 Nov 2019 12:28:12 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1234a5d44c=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Wed, 27 Nov 2019 12:28:07 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] How to reduce rootfs image size?
Message-ID: <20191127112807.6n5d3s7cjbkvolsh@jholzmayr.localdomain>
References: <CAA=hcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 27, 2019 at 10:12:13PM +1100, JH wrote:
> Hi,
>=20
> Does the Yocto rootfs image size is based on real contents included in
> the image-rootfs.tar.gz?
>=20
> When I build the image with very large size of applications and
> libraries such as boost, I have my image-rootfs.tr.gz about 44 MB,
> then I removed all large size of applications and libraries, I changed
> IMAGE_ROOTFS_SIZE to a small size IMAGE_ROOTFS_SIZE =3D 20000, I though=
t
> the image-rootfs.tar.gz should be reduced to a small size, but it is
> still 43 MB I don't believe it is that big, which variable I should
> use to reduce the image size?

tar.gz ist a content-based format, not a filesystem based one. So if the
tarball is that big, then you certainly have all those things in your
rootfs. Look at the manifest files to find out that goes in there, and
use buildhistory to find out the sizes of the things.

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

