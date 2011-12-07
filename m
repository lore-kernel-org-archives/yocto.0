Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CB93E0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 06:14:32 -0800 (PST)
Received: by eekb47 with SMTP id b47so581797eek.35
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2011 06:14:31 -0800 (PST)
Received: by 10.213.30.8 with SMTP id s8mr3436243ebc.109.1323267271201;
	Wed, 07 Dec 2011 06:14:31 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id x12sm6033408eef.9.2011.12.07.06.14.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 07 Dec 2011 06:14:30 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <2008188.zyrPGc484p@helios>
Date: Wed, 7 Dec 2011 15:14:28 +0100
Message-Id: <76DD6E9A-929F-476D-A80E-255DF8B092BC@dominion.thruhere.net>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<2008188.zyrPGc484p@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: yocto@yoctoproject.org
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Wed, 07 Dec 2011 14:14:33 -0000
X-Groupsio-MsgNum: 3695
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1DB61DFB-D16C-4643-B79C-C4064EB9A21D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_1DB61DFB-D16C-4643-B79C-C4064EB9A21D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


Op 7 dec. 2011, om 15:10 heeft Paul Eggleton het volgende geschreven:

> On Wednesday 07 December 2011 15:07:54 Koen Kooi wrote:
>>> Changing MACHINE has other implications though; do we not have any =
other
>>> way to switch out the kernel on a per-image basis?
>>=20
>> And how would that work from a packaging perspective? AIUI changing
>> DISTRO/MACHINE flags in an image is a recipe for failure.
>=20
> I'm not suggesting changing the kernel configuration for the existing =
kernel;=20
> naturally you would need a different kernel recipe. Surely you should =
just be=20
> able to have a different kernel that is built and installed for a =
different=20
> image file? No invalidated packages necessary.

A kernel buld will generate packages and thanks to kernel.bbclass they =
will have similar names. So what will happen when I do:

bitbake foo-image bar-image

? Will it build 2 kernels? Which kernel will end up being packaged or =
will there be a mix of both in deploy?

regards,

Koen=

--Apple-Mail=_1DB61DFB-D16C-4643-B79C-C4064EB9A21D
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk7fdMQACgkQMkyGM64RGpG9YQCfVHlmm49FmwysC6bp8eUWIt56
lukAnjWS6lafk+xls0ehWi8Nhg0+eU9P
=AteK
-----END PGP SIGNATURE-----

--Apple-Mail=_1DB61DFB-D16C-4643-B79C-C4064EB9A21D--
