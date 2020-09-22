Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3528.1600762814495289293
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Sep 2020 01:20:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 198.145.29.25, mailfrom: quentin.schulz@streamunlimited.com)
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 60DD138C08B9
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2020 01:20:13 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4BwZ4C1kmJz5tlD;
	Tue, 22 Sep 2020 10:20:11 +0200 (CEST)
Date: Tue, 22 Sep 2020 10:20:09 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] RDEPENDS problem
Message-ID: <20200922082009.ifhq37exfcvkonkd@qschulz>
References: <8db68087bc7e4b248070690947f6eb64@sakuraus.com>
MIME-Version: 1.0
In-Reply-To: <8db68087bc7e4b248070690947f6eb64@sakuraus.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Greg,

On Mon, Sep 21, 2020 at 09:46:51PM +0000, Greg Wilson-Lindberg wrote:
>=20
> =A0I have a custom recipe that copies a .so, that libMotors.so calls fu=
nctions in another libcanfestival.so.
>=20
> When I first added in the copy of the .so
> I didn't have an RDEPENDS and Yocto printed out an warning listing the =
package that it wanted. I added an RDEPENDS_${PN}=20
> with all of the packages listed, but I'm still getting an error for the=
 first libMotors.so:
>=20
> ERROR: userconfig-1.0-r0 do_package_qa: QA Issue: /home/sakura/lib/libM=
otors.so.1.0.0 contained in package userconfig requires libcanfestival.so=
, but no providers found in RDEPENDS_userconfig? [file-rdeps]
>=20
> In userdepends I added:
>=20
> RDEPENDS_${PN} +=3D "canfestival libelf libgcrypt pcsc-lite-lib qtbase =
qtdeclarative qtserialport zint"
>=20
> Package canfestival_3-asc in has:
>=20
> FILES_${PN} =3D "/usr/lib/libcanfestival.so /usr/lib/libcanfestival_uni=
x.so /usr/lib/libcanfestival_can_socket.so"
>=20

.so files are installed in the -dev package even with the line above.

Please have a look here: https://wiki.yoctoproject.org/wiki/TipsAndTricks=
/Packaging_Prebuilt_Libraries#Non-versioned_Libraries
if there is really no way for you to avoid having a non-versioned library=
.

You can check if .so files are part of a package by using
`oe-pkgdata-util find-path /usr/lib/libcanfestival.so`

Cheers,
Quentin
