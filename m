Return-Path: <perezmeyer@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA349E00655
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 12:21:20 -0800 (PST)
Received: by mail-qc0-f176.google.com with SMTP id n41so512165qco.35
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 12:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:user-agent:references:in-reply-to:mime-version
	:content-type:content-transfer-encoding:message-id;
	bh=3UZS2/aULrNnWrPx0lECeNM1EDlilurOFWsdVhbifkc=;
	b=0CERLno/6CdqLh8ss34J2pRH6F7skPj5cNmmdKp/vNkmoE6R6XWOhHeZAD/hn0UVQp
	Ey+hrk4T+ZxTssViGyzx4Og2B7bl9Ah6r/XP/CI7USUFLZl2178TdQMWX+t3OhuUiJYV
	+Dl7U+UMTknPTpetATf2GOq8voQ84QMb1dceI7ua+tswYDrD5MfncGqOwgyysOZSd0a5
	94LpB0T2NiorLtFQFbdOrxEcaIr0ZTJQ3iP+04aDU2jAxciHojqCE7qrn9vJzlAqcNlA
	B3RTl4XxDh6r6rPPvkw/vf3YprzWhpGSYhRQCdyV+6h/Xb50zY+P9SKWaKs5BNv2zhUu
	UEig==
Received: by 10.49.29.199 with SMTP id m7mr4379065qeh.41.1354306880103;
	Fri, 30 Nov 2012 12:21:20 -0800 (PST)
Received: from luna.localnet ([190.97.25.23])
	by mx.google.com with ESMTPS id s17sm3601334qaa.5.2012.11.30.12.21.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Nov 2012 12:21:19 -0800 (PST)
From: Lisandro =?iso-8859-15?q?Dami=E1n_Nicanor_P=E9rez_Meyer?=
	<perezmeyer@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 17:21:04 -0300
User-Agent: KMail/1.13.7 (Linux/3.2.21+edid; KDE/4.8.5; x86_64; ; )
References: <201211291859.27190.perezmeyer@gmail.com>
In-Reply-To: <201211291859.27190.perezmeyer@gmail.com>
MIME-Version: 1.0
Message-Id: <201211301721.13690.perezmeyer@gmail.com>
Subject: Re: The routerstationpro kernel image is huge
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Nov 2012 20:21:21 -0000
X-Groupsio-MsgNum: 10765
Content-Type: multipart/signed; boundary="nextPart2239596.pF9ADCoVZL";
	protocol="application/pgp-signature"; micalg=pgp-sha256
Content-Transfer-Encoding: 7bit

--nextPart2239596.pF9ADCoVZL
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable

On Thu 29 Nov 2012 18:59:18 Lisandro Dami=E1n Nicanor P=E9rez Meyer escribi=
=F3:
> Hi! First of all, I don't know if this is the correct mailing list to wri=
te
> this. If it is not, please point me to th right one. Thanks!
>=20
> I have found that the kernel image for the routerstationpro in poky danny
> 8.0 is huge. The flash of the device is just 16MB, so a 86 MB image is
> more than what fits in there ;-)

JFTR: the image wasn't stripped.

To strip it:

=2E./../../tmp/sysroots/x86_64-linux/usr/bin/mips32-poky-linux/mips-poky-li=
nux-
strip  -s -R .comment vmlinux-foo.bin

Kinds regards, Lisandro.


=2D-=20
Lisandro Dami=E1n Nicanor P=E9rez Meyer
http://perezmeyer.com.ar/
http://perezmeyer.blogspot.com/

--nextPart2239596.pF9ADCoVZL
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAABCAAGBQJQuRUxAAoJEKtkX0BihqfQQXcQAJZMOamEpAOyT6mMMk9P3z58
OWEE+bRXWa3SqubMFaC5hUw+gbneHcKlgWHzvI2LWdNx6S61me8muBjDF/Ye2HJ8
T/d6HNv3kXCtXryxZp9/enJxPrq28y4X1G9OBO5cKd4HzM5dkvaqtNSJRX5rVotp
gEoogtlKuJxhWmKJmcayIWzVI4nUXDm2Ap4wb7I2QzOX09FccwsiG4hXjlkG7iTH
b9J3REgCOZKDwMF48fvuq1v2ZBrCweDzl9C/3nMQXM0C18A4/GRT8G2rC8fbTcbg
mCkRbXinKF7Bf/ejxW08tWxNgSe1tnqL0Pb2erz+qSQfgk8Z0DaYfqAevUNg/ISO
BS2NNaW7NRnMujVKltzunk5RIj4b3R9SEpw/Ag2L1PGm4x5bIiLSCCVX5RoZZjs4
p7Tf5Xhdt2T++Eg4llgK47Xb579psjoyYUqgv11ElDHBMxQOEUUw89L+QD9D62QQ
hYPuFJIsBVgmHq0pgucDJaBCoHGjApaV++Z7qlB5toZPAnoznVmjaNFxsj5T4GuZ
mBD02DTOWAUGWl2csSfl7yBKfjMUBFbvebN0iVTX5XF185UsOdk6C25rtNBHjHbR
YuIqHFDp/lovv0ifcI0ORCtKoXTS7pqKtFrcIlhJtCrUxRHzLQkFdSO7u8jmB8iw
OYxnGZArvE5phsHqPtbM
=28Gh
-----END PGP SIGNATURE-----

--nextPart2239596.pF9ADCoVZL--
