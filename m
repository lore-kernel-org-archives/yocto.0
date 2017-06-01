Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 596DAE00B51; Thu,  1 Jun 2017 11:48:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E744E00B45
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 11:48:27 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Jun 2017 11:48:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,280,1493708400"; 
	d="asc'?scan'208";a="975700475"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.117])
	([10.219.128.117])
	by orsmga003.jf.intel.com with ESMTP; 01 Jun 2017 11:48:25 -0700
To: Jose Lamego <jose.a.lamego@linux.intel.com>, yocto@yoctoproject.org,
	Joshua G Lock <joshua.g.lock@linux.intel.com>
References: <1496338372-20109-1-git-send-email-jose.a.lamego@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <5930617B.8060007@linux.intel.com>
Date: Thu, 1 Jun 2017 13:48:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1496338372-20109-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: Re: [yocto-autobuilder][PATCH] forcebuild: allow build with default options
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Jun 2017 18:48:31 -0000
X-Groupsio-MsgNum: 36340
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="0qHSrKpqlInXn971wKQkrGGnVEm57r6aM"

--0qHSrKpqlInXn971wKQkrGGnVEm57r6aM
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

+ Joshua

On 06/01/2017 12:32 PM, Jose Lamego wrote:
> From: Anibal Limon <anibal.limon@linux.intel.com>
>=20
> A forced build fails if no options are passed through command
> line (using "-o OPTIONS").
>=20
> This change allows build to use default options if none are passed
> at the command line.
>=20
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  bin/forcebuild.py | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/bin/forcebuild.py b/bin/forcebuild.py
> index 5fe61a0..e6770a4 100755
> --- a/bin/forcebuild.py
> +++ b/bin/forcebuild.py
> @@ -108,7 +108,11 @@ class YoctoAutobuilderAPI(object):
>                      % (builder, state))
>              return 1
> =20
> -        opts =3D eval(opts) # FIXME: transform string argument into di=
ctionary, security?
> +        if opts:
> +            # FIXME: transform string argument into dictionary, securi=
ty?
> +            opts =3D eval(opts)
> +        else:
> +            opts =3D {}
>          current_opts =3D self._get_options_by_builder(builder)
>          for opt in opts:
>              if not opt in current_opts:
>=20


--0qHSrKpqlInXn971wKQkrGGnVEm57r6aM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZMGF+AAoJEGJqcE9h3glghwYQAI9k+8LmMvpLBUFuf5MuXaI3
AT7ZLHxcVuZ6dF3gCKF6r4Djg3hPbh72LWmvrM92mNrUelvtDEFyVn74Pgvw/qdk
eS/Wd7/NzuBR9BgNUXu/ZTXLXanEhYRzuzX22vUnDkvdOdcVIkK0jAJRbECcBJr7
XaWI1B+dnZpEWtp+ZP6FxIm0Fx2Q7lagyu7s3IX/PeK9iPhc2IaB4DxPKOZ0q5M4
xqMpSqWqrQFPaU0fXRxfv2a4NuudRgHZ3cw5OGxgE3kQE5S0//KOA5b82OOAX23R
QcDeoVjoONpyjN3K3a03mJlSsj7I01auEpgLgC2MzyE3WKn1p+EsdDICB05kAXVn
OdkhnPUmmmgK+/JgYZX6NpmhdWTxFKjx3+wnSCrlqblEjvy+1eM4DVnXIZ6TeFpN
XvIFYUlSJutvysWM2pJNkGt7wP5LoHtEeT3gXqv/9blf37g8IP/GYrKdFNko/uBx
B22fv3j3j3CWTLaoFJhcibC83xXbgzUu65RsxKzb8LH9dqS6JfdgL99ZfAHxc17Q
nimp5DfeajrdMMSMKUZB4WLstc1phsUJ5mit07ZOHmQ0uucbE5An7fvwpD7s9D9z
vdUcJt3yrUmB1umraXB2CnQ3ChByXjHLFTM3If28GTJRBARclDNMbgJq5XI67JOb
YCxYEKOalgmTcznelkyl
=EC3a
-----END PGP SIGNATURE-----

--0qHSrKpqlInXn971wKQkrGGnVEm57r6aM--
