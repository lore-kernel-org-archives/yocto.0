Return-Path: <josh@hipro.co.in>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5068EE0044A
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 23:23:16 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so1573845obb.35
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 23:23:15 -0800 (PST)
Received: by 10.50.202.67 with SMTP id kg3mr40120489igc.13.1329290595651;
	Tue, 14 Feb 2012 23:23:15 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id b6sm3380476igj.7.2012.02.14.23.23.14
	(version=SSLv3 cipher=OTHER); Tue, 14 Feb 2012 23:23:15 -0800 (PST)
Message-ID: <1329290581.3039.18.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 15 Feb 2012 12:53:01 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQkKnzkFXX+fHLwmeitT1urOhQSRW9HU1Cb3Yc5apecdTGZJtWOORn2BNowKu5/aP3/dQLfa
Subject: RDEPENDS fails to find an existing package
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
X-List-Received-Date: Wed, 15 Feb 2012 07:23:16 -0000
X-Groupsio-MsgNum: 4834
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-v5uYsWIJyk6zALNQxzfG"

--=-v5uYsWIJyk6zALNQxzfG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	I've been trying to package libharu for yocto. So, wrote a recipe for
its latest version libharu_2.2.1.bb. The generated .so, .la and .a files
for this are in the name 'libhpdf'. (I guess this will not cause any
problem.) These files are found in ${WORKDIR}/image/usr/lib

My custom-image RDEPENDS for libharu. While building the custom-image
bitbake complains=20

        | error: Failed dependencies:
        | 	libharu is needed by task-custom-hdb-1.0-r3.ekino
       =20
How do I fix this issue?=20

There were no errors reported while building libharu recipe.

Any pointers in this regard would be very helpful

Regards
Joshua=20
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-v5uYsWIJyk6zALNQxzfG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk87XVUACgkQWw85XwuSFML9CgCdEOHZ4KSE3qOvQZMpTcgc/OBe
460An2TkNB13oe8w/GtZVYFihpTOlNba
=k5xS
-----END PGP SIGNATURE-----

--=-v5uYsWIJyk6zALNQxzfG--
