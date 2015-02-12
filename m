Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1222CE00984; Thu, 12 Feb 2015 05:16:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2017BE0093B
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 05:16:46 -0800 (PST)
Received: from svr-orw-fem-05.mgc.mentorg.com ([147.34.97.43])
	by relay1.mentorg.com with esmtp 
	id 1YLtdM-0006XG-FV from Joe_MacDonald@mentor.com ;
	Thu, 12 Feb 2015 05:16:44 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 12 Feb 2015 05:16:44 -0800
Received: by burninator (Postfix, from userid 1000)	id BBBDE580C3B; Thu, 12
	Feb 2015 08:16:43 -0500 (EST)
Date: Thu, 12 Feb 2015 08:16:43 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20150212131643.GS30457@mentor.com>
References: <1423715994-1005-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1423715994-1005-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] Add explicit dependency on layers with recipes we bbappend.
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
X-List-Received-Date: Thu, 12 Feb 2015 13:16:50 -0000
X-Groupsio-MsgNum: 23561
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cUjMc5fB5G+GsIM6"
Content-Disposition: inline

--cUjMc5fB5G+GsIM6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[meta-selinux][PATCH] Add explicit dependency on layers with recipes we bb=
append.] On 15.02.12 (Thu 04:39) Philip Tricca wrote:

> This is a stop-gap to get meaningful error messages to folks till we get
> per-layer bbappends implemented.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>

Merged.  Thanks Phil.

-J.

> ---
>  conf/layer.conf |    8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 7af76a1..723f5a8 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -13,4 +13,10 @@ BBFILE_PRIORITY_selinux =3D "5"
>  # cause compatibility issues with other layers
>  LAYERVERSION_selinux =3D "1"
> =20
> -LAYERDEPENDS_selinux =3D "core"
> +LAYERDEPENDS_selinux =3D " \
> +    core \
> +    meta-python \
> +    networking-layer \
> +    openembedded-layer \
> +    virtualization-layer \
> +"
--=20
-Joe MacDonald.
:wq

--cUjMc5fB5G+GsIM6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJU3Ke7AAoJEEn8ffcsOfaWsX4H/jWqJUc51bu57RKMmwyIpnmH
l9zMC2phOFswQzkmz8i4TlZ6Zk/t9M+b/ELms8EYCsrk7qb0tw+H2R5xjASyxdVm
XgqbSWRghBYBmYcbJ4v/5z1+gYeqp3jjN4H4D/DCmHZec64ZXocUF/VHfHHWOzWN
hJzJw8/3aerhTNywZc+5/j2UBTb4oOnX4lID1k80eVk0yxtnNjbOvoXJ5Q39G05c
Ul7CZ0KZ/gQAp4p7teKyOWiiMS1zgky3Tp+JS7UHi/Rgogmcc6sr/DqCW7ZjIqzU
ic/2LnJwNQrvXbbtAG6c0KarbCWmLzK8gSQYzcu9y52ct5EEPP8Ub4Hl7a0TwlI=
=fnxX
-----END PGP SIGNATURE-----

--cUjMc5fB5G+GsIM6--
