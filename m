Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.10164.1576674974528095138
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 05:16:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 140.211.169.56, mailfrom: joe@deserted.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38A7DE00942; Wed, 18 Dec 2019 05:16:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBD19E0083D
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 05:16:12 -0800 (PST)
IronPort-SDR: r2OZnb7TZ+loQF/O18ivYoz4miC4S/ZHz6WG/ZnDjdUXggdjP2p9iFt7Q/MzSWjSwhVgnquIEB
 oyvfK5iugihmAOzZRRTWdXC/2IR+wzcV4HNVPMlbPZUpgSt1phglJh6kFKBThxt641FqXZNb7G
 BEQdOfPTSO2DipWTXFg3nsOHU+zTxOwC9iA2OZzd2c92BWd1EfacVRBtx7Bl6ZUPQcYAjtNHCm
 H8YD+ZPYt1pz5MVaWqw+fozZsuK7K4tUYKyb6kMPEU25fnm3DC8tY/iKvRATiqZr5ZBA3vSdUX
 7jk=
X-IronPort-AV: E=Sophos;i="5.69,329,1571731200"; 
   d="asc'?scan'208";a="46117252"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa1.mentor.iphmx.com with ESMTP; 18 Dec 2019 05:16:11 -0800
IronPort-SDR: 3eD5Rh4nKxIcxs0YoL6eoOOsIi9WF7Vp7/NHCcZ1d0QHa5ViBP7cslm3b+GI8xoUSkiWAedcaD
 FGF4twJppy5Ds1+jrFCfC86evXoX5Zq0KXOLfwA0tOpHDeWqkVfDpuKAEsWCdqco17KUaQOGPD
 TjZJKkChqjvJiFgBtV4UTHX9RZusnPY4lNkZo9Jg5804CBvQNVyits/S+DUou2PnGBS1UH6K4S
 6avyenjjj0CplgfrkNy9QaT246Ld6wlu9XwlaTNlyZ0LoqWKgTa9vXMXEM3h0jCxV9jn8gmZqb
 jSw=
Date: Wed, 18 Dec 2019 08:16:08 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
CC: <yocto@yoctoproject.org>, <mark.hatle@kernel.crashing.org>
Subject: Re: [meta-selinux][PATCH] MAINTAINERS: update maintainer
Message-ID: <20191218131605.GA34290@deserted.net>
References: <20191218081423.11074-1-yi.zhao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20191218081423.11074-1-yi.zhao@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 47755
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline

--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Did Mark sign off on this as well?

[[meta-selinux][PATCH] MAINTAINERS: update maintainer] On 19.12.18 (Wed 16:=
14) Yi Zhao wrote:

> Add Yi Zhao as the maintainer.
>=20
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1a19891..36c451f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -30,6 +30,6 @@ F:	classes
>  F:	recipes-*
> =20
>  COMMON
> -M:	Mark Hatle <mark.hatle@kernel.crashing.org>
> +M:	Yi Zhao <yi.zhao@windriver.com>
>  F:	conf
>  F:	recipes-*
> --=20
> 2.17.1
>=20

--=20
-Joe MacDonald.
:wq

--oyUTqETQ0mS9luUI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXfomdwAKCRDAW9yWWiDR
fKE2AJ9yBaEH7g/HBKq9BIGXI+lwG0bIjwCeMAOROAlBk36X0pnE0e9b80s4ARs=
=fxyY
-----END PGP SIGNATURE-----

--oyUTqETQ0mS9luUI--
