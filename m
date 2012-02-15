Return-Path: <josh@hipro.co.in>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01E89E0030B
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 07:53:37 -0800 (PST)
Received: by yhjj52 with SMTP id j52so888319yhj.35
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 07:53:37 -0800 (PST)
Received: by 10.50.181.134 with SMTP id dw6mr12461038igc.11.1329321217256;
	Wed, 15 Feb 2012 07:53:37 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id al9sm5163022igc.5.2012.02.15.07.53.34
	(version=SSLv3 cipher=OTHER); Wed, 15 Feb 2012 07:53:36 -0800 (PST)
Message-ID: <1329321197.30001.6.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Feb 2012 21:23:17 +0530
In-Reply-To: <CAMKF1soCVQ9bKYdhMAHfkM-xcrqYrwMS-kUMR3g1-1fJro-__Q@mail.gmail.com>
References: <1329290581.3039.18.camel@babel.joshhome>
	<CAMKF1soCVQ9bKYdhMAHfkM-xcrqYrwMS-kUMR3g1-1fJro-__Q@mail.gmail.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQn1q4gxW4iIJ4n2YBvFIeJ4qzPFhRVQVeH039N8gDKXo2Z/Elw+4iudwjPMHxW6fFGvWExD
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RDEPENDS fails to find an existing package
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
X-List-Received-Date: Wed, 15 Feb 2012 15:53:38 -0000
X-Groupsio-MsgNum: 4840
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-sRCIXozt9Z8aiQh/53C0"

--=-sRCIXozt9Z8aiQh/53C0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Khem Raj,

On Wed, 2012-02-15 at 07:28 -0800, Khem Raj wrote:
> the .a files are going into -static package and I guess
> there is .so and not .so.X which means .so goes into
> -dev package and hence your libharu package is empty
> so you have to redirect the files into correct package
> with the help of FILES_${PN} =3D "libharu.so ...." etc.=20

You were right. Thanks for the tip.

Adding FILES_${PN} =3D "${libdir}/lib*.so" made bitbake to create an
non-empty libharu package thereby fixing the problem.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-sRCIXozt9Z8aiQh/53C0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk871O0ACgkQWw85XwuSFMIMrwCeJBmWBnto/4AUVp/jrCxYPW9o
WsYAnjQ2q6jePnPH+yLeDkzgBU7sUD3b
=4kRP
-----END PGP SIGNATURE-----

--=-sRCIXozt9Z8aiQh/53C0--
