Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.97.1603811397174361461
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 08:09:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 198.145.29.25, mailfrom: joe@deserted.net)
Received: from esa4.mentor.iphmx.com (esa4.mentor.iphmx.com [68.232.137.252])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 44F9338C0109
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2020 08:09:56 -0700 (PDT)
IronPort-SDR: TywrFJVKK98NJXtClRBbbpVf/G/JASjp5PAg957t7RONdHASB0aiazrvqAQOi2bmMvVhkv6VJ5
 US6+IB/kDuNgaADQUt3iXKrIt1wlaGWrHc2njqYwcoG3Es7Gteg1jWnZ9VizhtVan+vWxElOJa
 mWY+YA48LDSRDALyAgsRh+XPhyXjrETo3FX60czOLlcYak/52JwPuhQwlwyU7r/2VJRjP27HdK
 PpWhj8+zP1awWXVNSfhBLWOwjVokiN0rgAGHPQu9xbgnLrlMNr3NrhJBG80aw5gadFOxk/SC8M
 mH8=
X-IronPort-AV: E=Sophos;i="5.77,424,1596528000"; 
   d="asc'?scan'208";a="54514718"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa4.mentor.iphmx.com with ESMTP; 27 Oct 2020 07:09:54 -0800
IronPort-SDR: gt5agP6jND4uYH5qza/6bGA2PYXxq+rP1A1WTCus/V1imUqysoh63QYAkgzTod0mH4wX/CZVMg
 7H9EAktnXVglOejkUQMlp+xD3R7Y4lcm97ouwXaV+g09En5cUl2GTKlM4cKku0dUlQeK0Nb1kW
 pprdTXFznrp75XNQy22AoC4BT85/x8FtQ+4W0JqLi+0c716d/aX+VyM+shmZUhkJH1PetLBWSw
 uTsnThmn2KTA30l2Vw40J9PIPxpQOFzI0vNQu2O79Yxe0XlfcYZgfYfAeLtXhuEYzkdovTOKJL
 d7c=
Date: Tue, 27 Oct 2020 11:09:50 -0400
From: "Joe MacDonald" <joe@deserted.net>
To: Jon Mason <jdmason@kudzu.us>, nefethael <vincent.prince.fr@gmail.com>
CC: Yocto-mailing-list <yocto@yoctoproject.org>, <flihp@twobit.us>,
	<nicolas.dechesne@linaro.org>, =?iso-8859-1?Q?An=EDbal_Lim=F3n?=
	<anibal.limon@linaro.org>, <yi.zhao@windriver.com>
Subject: Re: [yocto] [meta-selinux][PATCH] layer.conf: add gatesgarth compatibility
Message-ID: <20201027150948.GA2619@deserted.net>
References: <20201026205608.5994-1-jdmason@kudzu.us>
 <CAB2nKc-LLwRZ8MN+zJWQpS=5Ldjz5vsMJSu1hoVe5gTg0gS-Mg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAB2nKc-LLwRZ8MN+zJWQpS=5Ldjz5vsMJSu1hoVe5gTg0gS-Mg@mail.gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 51191
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline

--gKMricLos+KVdGMg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] layer.conf: add gatesgarth compatibility=
] On 20.10.27 (Tue 16:00) nefethael wrote:

> Hi Jon,
>=20
> There is already a pending patch submitted some time ago by An=EDbal Lim=
=
=F3 here
> https://patchwork.openembedded.org/patch/177350/

Yeah, I've had that older patch in my work-tree for a while now and
haven't pushed it upstream yet.  I'll get on that today.  Sorry for the
delay.

-Joe.

>=20
> Best regards,
> Vincent
>=20
>=20
>=20
> Le=A0lun. 26 oct. 2020 =E0=A021:56, Jon Mason <jdmason@kudzu.us> a =E9cr=
it=A0:
>=20
>     Signed-off-by: Jon Mason <jdmason@kudzu.us>
>     ---
>     =A0conf/layer.conf | 2 +-
>     =A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
>     diff --git a/conf/layer.conf b/conf/layer.conf
>     index da24359b7484..178ce1b734d3 100644
>     --- a/conf/layer.conf
>     +++ b/conf/layer.conf
>     @@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux =3D "5"
>     =A0# cause compatibility issues with other layers
>     =A0LAYERVERSION_selinux =3D "1"
>=20
>     -LAYERSERIES_COMPAT_selinux =3D "dunfell"
>     +LAYERSERIES_COMPAT_selinux =3D "dunfell gatesgarth"
>=20
>     =A0LAYERDEPENDS_selinux =3D " \
>     =A0 =A0 =A0core \
>     --
>     2.20.1
>=20
>=20
>=20
>=20
>=20

>=20
>=20
>=20


--=20
-Joe MacDonald.
:wq

--gKMricLos+KVdGMg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCX5g4KwAKCRDAW9yWWiDR
fEtcAJ9kLNViCi9f0ktjgaay4oDS6MbbCwCfUEQ8kWC8skNMky41I6I8ZG+aevA=
=o/4T
-----END PGP SIGNATURE-----

--gKMricLos+KVdGMg--
