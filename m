Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2572.1580438975658585480
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 18:49:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 140.211.169.56, mailfrom: joe@deserted.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F98EE0161B; Thu, 30 Jan 2020 18:49:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [68.232.129.153 listed in list.dnswl.org]
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF90DE01548
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2020 18:49:33 -0800 (PST)
IronPort-SDR: dF0RMWjOg+ahnsqfy0DBRlT47O7TJNLBjCnspxjnfYo4V/CmFmda2WHY4KR9XSNdhXMYu1c3ZM
 hgOjmGM0f53F7lMg7ggXrl9Hx6CTHJ5r7J0+ew/y6QzqaeSz8qsPiqa4n0yN9Hoj21rnV+7a8s
 VQzsaUWcjQ7yaeQ0/62DA6Rg8AuLfUPXRpA2SjQ+JGNAw2OTvJPA+gdMV9jVBvtkC0Z0D3dGV8
 Ss8gWfd6KbsU/OG/pLmJBKud+N2KhHkiYdTG5CjGTtTrTXxqqgFDsZfrO4iNWblxvsS4HzAE+g
 y6E=
X-IronPort-AV: E=Sophos;i="5.70,384,1574150400"; 
   d="asc'?scan'208";a="47297518"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa1.mentor.iphmx.com with ESMTP; 30 Jan 2020 18:49:33 -0800
IronPort-SDR: L8h7qPafaQkEvjPcM1/76EPDiNjPpYgWFYjGc0P4U81BQo/5DQBAhBfohXbrasRwkvEsvs5mkK
 q91NFmN6pc0g==
Date: Thu, 30 Jan 2020 21:49:29 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: Jeremy Puhlman <jpuhlman@mvista.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-selinux][PATCH 1/2] python: move appends to a dynamic-layer
Message-ID: <20200131024927.GA7827@deserted.net>
References: <20200130232841.6706-1-jpuhlman@mvista.com>
MIME-Version: 1.0
In-Reply-To: <20200130232841.6706-1-jpuhlman@mvista.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 48222
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline

--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Thanks for these, Jeremy, I'd just been prepping the same patches today,
but since yours are on-list, I'm merging them.

-J.

[[yocto] [meta-selinux][PATCH 1/2] python: move appends to a dynamic-layer=
] On 20.01.30 (Thu 15:28) Jeremy Puhlman wrote:

> Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
> ---
>  conf/layer.conf                                                 | 2 ++
>  .../recipes-devtools}/python/files/sitecustomize.py             | 0
>  .../python2-layer/recipes-devtools}/python/python_%.bbappend    | 0
>  .../python2-layer/recipes-devtools}/python/python_selinux.inc   | 0
>  4 files changed, 2 insertions(+)
>  rename {recipes-devtools =3D> dynamic-layers/python2-layer/recipes-devt=
ools}/python/files/sitecustomize.py (100%)
>  rename {recipes-devtools =3D> dynamic-layers/python2-layer/recipes-devt=
ools}/python/python_%.bbappend (100%)
>  rename {recipes-devtools =3D> dynamic-layers/python2-layer/recipes-devt=
ools}/python/python_selinux.inc (100%)
>=20
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 226a75a..cdee27a 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -11,6 +11,8 @@ BBFILES_DYNAMIC +=3D "openembedded-layer:${LAYERDIR}/d=
ynamic-layers/openembedded-l
>                      networking-layer:${LAYERDIR}/dynamic-layers/network=
ing-layer/*/*/*.bbappend \
>                      virtualization-layer:${LAYERDIR}/dynamic-layers/vir=
tualization-layer/recipes*/*/*.bb \
>                      virtualization-layer:${LAYERDIR}/dynamic-layers/vir=
tualization-layer/recipes*/*/*.bbappend \
> +                    meta-python2:${LAYERDIR}/dynamic-layers/python2-lay=
er/recipes*/*/*.bb \
> +                    meta-python2:${LAYERDIR}/dynamic-layers/python2-lay=
er/recipes*/*/*.bbappend \
>                     "
>  
>  BBFILE_COLLECTIONS +=3D "selinux"
> diff --git a/recipes-devtools/python/files/sitecustomize.py b/dynamic-la=
yers/python2-layer/recipes-devtools/python/files/sitecustomize.py
> similarity index 100%
> rename from recipes-devtools/python/files/sitecustomize.py
> rename to dynamic-layers/python2-layer/recipes-devtools/python/files/sit=
ecustomize.py
> diff --git a/recipes-devtools/python/python_%.bbappend b/dynamic-layers/=
python2-layer/recipes-devtools/python/python_%.bbappend
> similarity index 100%
> rename from recipes-devtools/python/python_%.bbappend
> rename to dynamic-layers/python2-layer/recipes-devtools/python/python_%.=
bbappend
> diff --git a/recipes-devtools/python/python_selinux.inc b/dynamic-layers=
/python2-layer/recipes-devtools/python/python_selinux.inc
> similarity index 100%
> rename from recipes-devtools/python/python_selinux.inc
> rename to dynamic-layers/python2-layer/recipes-devtools/python/python_se=
linux.inc
> --=20
> 2.20.1
>=20

>=20


--=20
-Joe MacDonald.
:wq

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXjOVqwAKCRDAW9yWWiDR
fPfBAJ4n2fxGQfnIqzZLZvvF7RGsjIg1QACeN6W5HDkzDsbynFowaPvPQ9eSBTQ=
=tjPT
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--
