Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77102E00BFB; Tue, 25 Aug 2015 06:24:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE789E00C05
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 06:24:13 -0700 (PDT)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1ZUECx-00004H-2w from Joe_MacDonald@mentor.com ;
	Tue, 25 Aug 2015 06:24:11 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 25 Aug 2015 06:24:10 -0700
Received: by burninator (Postfix, from userid 1000)	id AD00058347A; Tue, 25
	Aug 2015 09:23:17 -0400 (EDT)
Date: Tue, 25 Aug 2015 09:23:17 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Alexandru.Vaduva <alexandru.vaduva@linux.com>
Message-ID: <20150825132316.GA7593@mentor.com>
References: <1440504040-38236-1-git-send-email-alexandru.vaduva@linux.com>
MIME-Version: 1.0
In-Reply-To: <1440504040-38236-1-git-send-email-alexandru.vaduva@linux.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-cgl][PATCH] README: updated maintainers and general content accordingly
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
X-List-Received-Date: Tue, 25 Aug 2015 13:24:22 -0000
X-Groupsio-MsgNum: 26225
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Acked-by: Joe MacDonald <joe_macdonald@mentor.com>

[[meta-cgl][PATCH] README: updated maintainers and general content accordin=
gly] On 15.08.25 (Tue 14:00) Alexandru.Vaduva wrote:

> Signed-off-by: Alexandru.Vaduva <alexandru.vaduva@linux.com>
>=20
> Author:    Alexandru.Vaduva <alexandru.vaduva@linux.com>
> Signed-off-by: Alexandru.Vaduva <alexandru.vaduva@linux.com>
> ---
>  README | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)
>=20
> diff --git a/README b/README
> index d25fb0b..9f6713c 100644
> --- a/README
> +++ b/README
> @@ -44,7 +44,10 @@ http://git.yoctoproject.org/git/meta-cgl
>  Maintenance
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =20
> -Maintainers: Enea Linux Team <linux-maintainers@enea.com>
> +Maintainers:
> +    Adrian Dudau <Adrian.Dudau@enea.com>
> +    Alexandru Vaduva <alexandru.vaduva@linux.com>
> +    Joe MacDonald <joe_macdonald@mentor.com>
> =20
> =20
>  Contributing
> @@ -61,6 +64,7 @@ here: https://wiki.yoctoproject.org/wiki/Contribution_G=
uidelines
>  example:
>  git send-email -1 -M --to yocto@yoctoproject.org  --subject-prefix=3Dmet=
a-cgl][PATCH
> =20
> +
>  Table of Contents
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =20
> @@ -84,12 +88,13 @@ other layers needed. Adapt the below list to proper f=
ormat.
>    BBLAYERS:
> =20
>      meta
> -    meta-cgl
> +    meta-cgl/meta-cgl-common
>      meta-qt3
>      meta-openembedded/meta-networking
>      meta-openembedded/meta-filesystems
>      meta-openembedded/meta-oe
>      meta-openembedded/meta-perl
> +    meta-openembedded/meta-python
>      meta-yocto
>      meta-yocto-bsp
>      meta-virtualization
> @@ -105,6 +110,7 @@ Now there is available the "cgl-init-build-env" scrip=
t which could be used to
>  automize the above mentione information:
>  ./scripts/cgl-checkout -b master -l meta-fsl-ppc
> =20
> +
>  II. Misc
>  =3D=3D=3D=3D=3D=3D=3D=3D
> =20
> @@ -139,17 +145,3 @@ or programming language operations required in the a=
pplication system at
>  a later stage.
>      Interface - shared boundary or connection between two dissimilar
>  objects, devices or systems.
> -
> -    Users of this layer might experience a problem with openipmi package=
, if this happens then this
> -package can be removed from packagegroup-cgl-middleware.bb package group=
 and exclude it from the
> -image used for building a CGL compliant image.
> -    The latest tested head for the depending layers were:
> -        poky:                   bb00d83675a1293ee8d7a3ac22cf01243fa2397b
> -        meta-cloud-services:    a06e28ced8f622dbe6d6fbd9bea20b215d8ac938
> -        meta-openclovis:        83b1f76a75266743dc9eb0238039d5b973ad8ac0
> -        meta-qt3:               3016129d90b7ac8517a5227d819f10ad417b5b45
> -        meta-security:          b3f08c7b2bdf1bea28b081319d7c135af45f39e3
> -        meta-selinux:           1699b56fd801f0194b708b4a1d9d95a831a3bbe4
> -        meta-virtualization:    b94455174264240bf8519e4148ea5f1fb38d55c6
> -    The machine for which this layer was tested are: 'qemuppc' and 'p202=
0rdb'. The latest tested head
> -for meta-fsl-ppc layer is:      d953212ae5936a7d969d13801b0c2c1eb65cee6f
--=20
-Joe MacDonald.
:wq

--bg08WKrSYDhXBjb5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJV3GxBAAoJEEn8ffcsOfaWhYQIAKHdpfSOuV7xv6q1pZVtEd6X
hd9JXQ8GuA7eDlE4VecSyf4WNWTXZlgDQQ2dHvYBBE7NZ/T7ndk8AiIbphk5gqh5
ddVkhoH3zitjlQ0v7cP4Y7EN0HzTzjgt3JNoFhisNCON/lsmWcBHus7OMggkjl6s
xJXow1Si35YjJAZqj80JQvqVgpiJ9f0Qx5zZSTS0kaRXTfLVZ5U4WqV33BKxrDbO
iqK3Pbn/TgPvMEKEITxLoAa6WclvBVcT9MiqMn5PiyLrSBXh3v2hLJx5Op37dWsj
BcK9LgCUXyLNXr+BcRjg9CuUoVPDtnldIMjjYEepaY+V8I7dFJF9AmXWcdQvOAo=
=xDGs
-----END PGP SIGNATURE-----

--bg08WKrSYDhXBjb5--
