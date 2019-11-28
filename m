Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.6161.1574945573119238119
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 04:52:55 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=bbUOtNoF;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BFFAE0108E; Thu, 28 Nov 2019 04:52:52 -0800 (PST)
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
	*      [81.169.146.166 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49477E0079A
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 04:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574945568;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=+14sSpMrG3M4Mvtgl3p7qJnJnDdd98bV5kqv7IzzVWY=;
	b=bbUOtNoFCaNfeH0L42yy+/PAyLjt57TciHK0lmnVbS6vs+LoQ2ZnIqJ/2xvgkkUcL0
	mlT8Jx4wp0NGhbeFYPVhNupudWRVApDxs7O14JL5WRgGttkr5iICzVQ06mOyKAmgnVNE
	RykpncV8ByNz/pI1NijT+yAprLKC/6og5pAXV+dIbV2gVjwySUThnrJ3Xibqjjov55sP
	/7ky8S2YMWIfrgrLQQ0yRp5y/1gh+wzN6mpWkDdoEHRB4WaTSJgKhIVBPgFxKcYz7kbH
	YUlu18SrZEfFq1z3l2BPHSk5takw8VidFsP82SYu0VGjk2Fz8jKSBlHZG6RGP7mmgGYE
	cF5w==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vASCqmCcy
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 28 Nov 2019 13:52:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574945567; x=1575550367;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=+1
	4sSpMrG3M4Mvtgl3p7qJnJnDdd98bV5kqv7IzzVWY=; b=E5rYkX+B0dQcLAlt4q
	f2sAaPythZew/UsCbwng2lVZ5yPzlDfwDTYJbFE4Tk9mVHhOhKXJ58KnoYRLzDcY
	kYYxmEl47iJRAoUc7XIACzUaB/1kcjUXBGEIhIWTbJLOwAeHoazVBFlkMzgJWyph
	DRtq1XsOWbxKP+mM1LRzaFHfQ=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222543.msg; 
	Thu, 28 Nov 2019 13:52:47 +0100
X-MDRemoteIP: 178.27.65.232
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Thu, 28 Nov 2019 13:52:47 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 28 Nov 2019 13:52:45 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: [yocto] Architecture of .wic approach; image of images
Message-ID: <20191128125245.3vzwdrqexpyuc5j6@jholzmayr.localdomain>
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
 <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain>
 <CAMjhiJg4YMUjn6WhTHYjAX07mF6s33EtjPiD-w95ucYCEmQPsg@mail.gmail.com>
 <20191128114104.vgrmyherbnrkiqtd@jholzmayr.localdomain>
 <CAMjhiJg=SwoEGQyZ0hObP8Q-qLHb6yz6bKauwNJb-7kFaqYE+A@mail.gmail.com>
 <20191128121501.xixbvexzhoeuihna@jholzmayr.localdomain>
 <CAMjhiJh6S8VezkWQiJ9fBF66ynQwFSg5EviagrjEw_V+j2ZQqQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMjhiJh6S8VezkWQiJ9fBF66ynQwFSg5EviagrjEw_V+j2ZQqQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2019 at 01:32:56PM +0100, Leon Woestenberg wrote:
> > Au contraire :) It is the real issue because neither 1) nor 2) is the
> > correct way, and I pretty much explained why that is.
>=20
>=20
> So let's then consider the case that the WKS is machine specific. I am
> fine with that.
>=20
> - Does Yocto support building multiple images from one configuration?

Of course it does. If you have set DISTRO and MACHINE, you can=20
bitbake core-image-minimal
bitbake core-image-x11
bitbake ... whatever image.

Thats exactly the point of the MACHINE / DISTRO / IMAGE seperation.

> - (How) can I build multiple WIC images with different WKSs?

That on the other hand is a good question. The documentation is not
specific on the number of files you can set in WKS_FILE, so i guess at
the moment it is limited to one. So one could investigate if it is worth
augmenting that, or just harness the multiconfig features we have those
days. Their syntax is a little more complicated, but should totally
serve this purpose.

Greetz.

>=20
> I am not asking anything strange.
> I just cannot find an example of a grub + initramfs + kernel packages
> into FAT through WIC.
> Or documentation on how to implement this correctly.
>=20
> Regards,
>=20
> Leon.

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

