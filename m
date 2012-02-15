Return-Path: <josh@hipro.co.in>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49EDBE0044A
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 02:11:45 -0800 (PST)
Received: by iagz35 with SMTP id z35so1692090iag.35
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 02:11:44 -0800 (PST)
Received: by 10.42.174.71 with SMTP id u7mr31269993icz.44.1329300704403;
	Wed, 15 Feb 2012 02:11:44 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id d15sm5002121ibf.7.2012.02.15.02.11.42
	(version=SSLv3 cipher=OTHER); Wed, 15 Feb 2012 02:11:43 -0800 (PST)
Message-ID: <1329300699.3039.31.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 15 Feb 2012 15:41:39 +0530
In-Reply-To: <1329290581.3039.18.camel@babel.joshhome>
References: <1329290581.3039.18.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmHQpeLHXO4Apdn3xB+tD/5NBY7DnRdj8xF1Q9LdOMuuUp6YrCIFXcrxRK23nIaGmap34+r
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
X-List-Received-Date: Wed, 15 Feb 2012 10:11:45 -0000
X-Groupsio-MsgNum: 4836
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Pv78egkGqZHlQrnzTrpo"

--=-Pv78egkGqZHlQrnzTrpo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

On Wed, 2012-02-15 at 12:53 +0530, Joshua Immanuel wrote:
> While building the custom-image bitbake complains=20
>=20
>         | error: Failed dependencies:
>         |       libharu is needed by task-custom-hdb-1.0-r3.ekino
>        =20
> How do I fix this issue?=20

On further digging (log.do_package_write_rpm) I found that libharu,
libharu-doc and libharu-locale rpms were not created

        NOTE: Creating RPM package for libharu-dbg
        NOTE: Not creating empty RPM package for libharu
        NOTE: Not creating empty RPM package for libharu-doc
        NOTE: Creating RPM package for libharu-dev
        NOTE: Creating RPM package for libharu-staticdev
        NOTE: Not creating empty RPM package for libharu-locale
       =20
To fix this I added ALLOW_EMPTY =3D "1" in the recipe which ended up
creating empty rpms

        NOTE: Creating RPM package for libharu-dbg
        NOTE: Creating RPM package for libharu
        NOTE: Creating EMPTY RPM Package for libharu
        NOTE: Creating EMPTY RPM Package for libharu-doc
        NOTE: Creating RPM package for libharu-dev
        NOTE: Creating RPM package for libharu-staticdev
        NOTE: Creating EMPTY RPM Package for libharu-locale
       =20
This suppressed the dependency error and was able to generate final
rootfs image but the libharu libraries were not available in that image.
So, how do I end up creating non-empty libharu rpm. (I guess that will
solve the issue)

Please guide me.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-Pv78egkGqZHlQrnzTrpo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk87hNsACgkQWw85XwuSFMJK3QCfUHIcsbY+Dk97YClINXQZuJfV
uycAoLP/AwOKYhySb5OPwXB10XBl3BJI
=tFVC
-----END PGP SIGNATURE-----

--=-Pv78egkGqZHlQrnzTrpo--
