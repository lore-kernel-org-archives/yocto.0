Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1707.1579250381329513435
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 00:39:44 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=ZieJEi9O;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=1285f24c51=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5CB1E0098A; Fri, 17 Jan 2020 00:39:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [81.169.146.165 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.165])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F66BE0098A
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2020 00:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1579250375;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=qGEXb1X1/YRi1qEIsm20lLWFDHwmlKCQL3Jnnj/zSNU=;
	b=ZieJEi9OSHOy0k/vLOU5tsa6UBkh4mDBI9cRYfgqat6yDy5WMQrtvdIY3egSdPX9jL
	9lZZ6NsxJfUl4XTCURUU0Y8/jnjLayBgWjz90wc1bdfL1fykYrdtUjnJoFCXKZuqS82P
	E57TixtYViEJl151KImlWEFHICsheobeS5wIY8L7h6SyT0wlMXgWHQWz3F5aANaMRYgA
	tPXErb9ohwXNLXd66n5vP40JxOVhxYZwqqBjg4sn0FFRS46hjo8PqW1dCVGXbWCC7S7/
	rqHvedPoeMdKhwxm3XRNHxQOddhdHi+Xo4CJ9/3rwh6Zlonp3nkiZGOIxYxhQi8U/4uX
	bL3Q==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.4 AUTH)
	with ESMTPSA id R00cfaw0H8dZUlO
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Fri, 17 Jan 2020 09:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1579250375; x=1579855175;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=qG
	EXb1X1/YRi1qEIsm20lLWFDHwmlKCQL3Jnnj/zSNU=; b=xPvZknsa0ZlariRFgN
	Mw2L5+BjBVLDUz+D5+vwwazb7r+5yiQ74mYW36GqpIRCWgQ0Mx5WPBZmCznvUCCW
	FOenOzLKLyVMaHClnbqIHTc/phGq/xCgKM5Kwjxuw/IkwqQVcTJWgIDTd8c+7PI3
	Ifdhj3Meyi85rrfv5pdL7rJk0=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000234758.msg; 
	Fri, 17 Jan 2020 09:39:35 +0100
X-MDArrival-Date: Fri, 17 Jan 2020 09:39:35 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1285f24c51=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Fri, 17 Jan 2020 09:39:33 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Heinz Wrobel <Heinz.Wrobel@nxp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] Image specific package selection?
Message-ID: <20200117083933.lj5nmwosk5epdpwr@jholzmayr.localdomain>
References: <DB6PR0401MB2534EBA50C8851167D8FE1B88C310@DB6PR0401MB2534.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DB6PR0401MB2534EBA50C8851167D8FE1B88C310@DB6PR0401MB2534.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Howdy!

On Fri, Jan 17, 2020 at 08:32:25AM +0000, Heinz Wrobel wrote:
> Hi,
>=20
> I have an image 'alpha' which depends on and in the end contains the re=
sult of an image 'beta' as embedded archive, i.e., I need to nest images.
> As an example, think that alpha is a manufacturing image which is used =
to install beta on the target machines permanently.

Image-inside-image is about the classis usecase for multiconfig builds.

> The problem is that alpha and beta do things in substantially different=
 ways and must use different packages for the same functionality coming f=
rom different recipes. So I must build different recipes resulting in mut=
ually exclusive packages and need to pick per image which package to use.

Either that, or make things DISTRO_FEATURE dependent, etc. Within
multiconfig builds you can essentially create two completely separate
things and then glue them together.

> PREFERRED_PROVIDER is a machine global functionality to define which re=
cipes get built into packages. As I understand it cannot be used in image=
 recipes and it cannot influence which packages are used to build an imag=
e.
> So I can control which packages are being built, but once I have multip=
le packages built for a single functionality, I can't seem to pick which =
ones to use in a do_image.
>=20
> I think I am looking for an image specific way to filter packages durin=
g the image build, e.g., an IMAGE_INSTALL_PREFERRED or IMAGE_ INSTALL_IGN=
ORE variable that I can set in each image recipe. Or a way to specify in =
an image recipes which other recipes or their packages not to ever consid=
er for building that image.
> That way alpha would get the alpha packages and beta would get the beta=
 packages within the same machine and the provider conflict may result in=
 a warning but it would not be relevant.
>=20
> Or is there a way to do something like RDEPENDS, taking priority in a w=
ay that it deterministically forces the image build to pick the specified=
 package rather than another one that could in theory provide the same fu=
nctionality?
>=20
> While it would be easiest to build alpha in a machinealpha, and beta in=
 a machinebeta, I have the problem then that I can't have an automated "s=
ingle bitbake" build because there is no dependency handling across machi=
nes.

s/MACHINE/DISTRO/g probably, but then you're right. Again, this is
exactly what multiconfig bulds do.

> My goal is to have a "bitbake alpha" in a machine solving the nesting i=
n a way that is transparent to the user.
>=20
> Any idea how that can be accomplished?.

Yes. See above :)

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

