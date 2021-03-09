Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.8236.1615294853572486607
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 05:00:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 198.145.29.25, mailfrom: joe@deserted.net)
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A21AD38C052B
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 13:00:52 +0000 (UTC)
IronPort-SDR: Ft8KdmmHrGX2Jr1pII3m0bAKBE2Z1j8+9aKTWyoRK59Wad0VeL84MUX0dashBKkyH8zEP56GT7
 2Y9zNSaiPahnK8nkPgur0thg7bwnkbUD4rLOyx+Vdx8iAYE3IW/GJur6gyAcdw0F1wzl8caXiM
 z2rCX/OYxppz5a2iy7qmsmFi/EqtCSoH8V/nHUqrl4+MWY4xE4BTE9T1oebZxdSbAoO9fjwf7f
 UxzgMKmXt5BxSqfEXuICpy64f1AJdpeG16GljD7wn+LYOZ02kNxxLpmUnYBXfy7q4h2BgXos/U
 C6A=
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; 
   d="asc'?scan'208";a="58884943"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa2.mentor.iphmx.com with ESMTP; 09 Mar 2021 05:00:51 -0800
IronPort-SDR: H3ohwlGrIPbB37vvrThu0+FoL/saEVIp5D5wXvGbh0InByLedEKfPZ/ETrZpuVupYLW3lYXelE
 5/CJzDxIi2zso6o59fXxPuV5UiNJfnwNDac7MoA5x8+KNNqqu/39zAjButUI2CmIWBMnPk0jtk
 wBdwswoWfFH1EX0tFgV3x4T4Jzvmmznc9fSiVO23RX+vb0boojXPg6dONbCWWJnwT0kFiZSs0Z
 c9gnpQnmA/pXz/5BTEWW+MF0WCLgJ3WsJpqUm2hv3PgRnd3jUK7cWIETcQuUKGZnXPLqj0EZRQ
 AUc=
Date: Tue, 9 Mar 2021 08:00:44 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: Anatol Belski <anbelski@linux.microsoft.com>
CC: <yocto@yoctoproject.org>, <yi.zhao@windriver.com>
Subject: Re: [yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-python: Fix build error due to missing target config
Message-ID: <20210309130043.GA9162@deserted.net>
References: <20210309115511.7522-1-anbelski@linux.microsoft.com>
MIME-Version: 1.0
In-Reply-To: <20210309115511.7522-1-anbelski@linux.microsoft.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 52621
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Anatol,

I will confirm this against the other branches (dunfell and gatesgarth)
but your patch doesn't appear to be against the current master branch (and
it's unlikely one patch will apply to all branches).  Can you send out
specific patches against the head of tree for each branch you care about,
please?  Then I can get them merged for you.

Thanks,
-Joe.

[[yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-pyt=
hon: Fix build error due to missing target config] On 21.03.09 (Tue 11:55) =
Anatol Belski wrote:

> This fixes the error below:
>=20
> gcc: error: unrecognized command line option
> =E2=80=98-fmacro-prefix-map=3D/path/to/build/libselinux-python/3.0-r0=3D=
/usr/src/debug/libselinux-python/3.0-r0=E2=80=99
>=20
> Without inheriting the config, supposedly a wrong compiler is used.
>=20
> Signed-off-by: Anatol Belski <anbelski@linux.microsoft.com>
> ---
>  recipes-security/selinux/libselinux-python_3.0.bb | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/recipes-security/selinux/libselinux-python_3.0.bb b/recipes=
-security/selinux/libselinux-python_3.0.bb
> index 2b5438d..3c03df1 100644
> --- a/recipes-security/selinux/libselinux-python_3.0.bb
> +++ b/recipes-security/selinux/libselinux-python_3.0.bb
> @@ -4,6 +4,8 @@ SRC_URI =3D "https://github.com/SELinuxProject/selinux/r=
eleases/download/${SELINUX
>  
>  require ${BPN}.inc
>  
> +inherit python3targetconfig
> +
>  LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270=
d0d0"
>  
>  SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85ec89d89"
> --=20
> 2.17.1
>=20

>=20
>=20
>=20


--=20
-Joe MacDonald.
:wq

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCYEdxawAKCRDAW9yWWiDR
fOr8AJ4uWvPY1GdE+HY6uS3lFxVOItV5vACgn0gYO0M7GYBQ0ypdtaLLiR4o5SM=
=Z7Ih
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--
