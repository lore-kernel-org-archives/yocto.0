Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B0ECE0044F; Wed,  5 Oct 2016 07:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 327E5E0034A
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 07:58:59 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 05 Oct 2016 07:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,449,1473145200"; 
	d="asc'?scan'208";a="16933881"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.33]) ([10.219.5.33])
	by orsmga004.jf.intel.com with ESMTP; 05 Oct 2016 07:58:57 -0700
To: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>,
	yocto@yoctoproject.org
References: <1475267391-19357-1-git-send-email-monserratx.sedeno.bustos@intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57F5156A.6050900@linux.intel.com>
Date: Wed, 5 Oct 2016 09:59:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1475267391-19357-1-git-send-email-monserratx.sedeno.bustos@intel.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [[yocto-autobuilder][PATCHv2]] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Wed, 05 Oct 2016 14:59:01 -0000
X-Groupsio-MsgNum: 32209
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="h4iPx35n3wesOr4ieOQVmEMggHSoAMr7u"

--h4iPx35n3wesOr4ieOQVmEMggHSoAMr7u
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 09/30/2016 03:29 PM, Monserrat Sedeno wrote:
> As part of the process to set new OS distribution as supported on Yocto=
c Project
> a new patch was created with the list of build sets that should be exec=
uted.
>=20
> Detailed information:
> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_Se=
ts
>=20
> Fixes [YOCTO #9905]
>=20
> Note:In order to add a new distro as supported all the build sets shoul=
d be PASS
>=20
> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Acked-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  buildset-config.autobuilder-qa/nightly-qa-distro.conf | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/bu=
ildset-config.autobuilder-qa/nightly-qa-distro.conf
> index 0fcdbef..6c02a91 100644
> --- a/buildset-config.autobuilder-qa/nightly-qa-distro.conf
> +++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
> @@ -25,7 +25,6 @@ steps: [{'SetDest':{}},
>  		           	'nightly-deb': {},
>                             	'nightly-ipk': {},
>                            	'nightly-world': {},=20
> -			   	'buildtools': {},
>                             	'nightly-arm': {},=20
>                             	'nightly-mips': {},
>                             	'nightly-wic':{},
> @@ -37,8 +36,9 @@ steps: [{'SetDest':{}},
>                             	'nightly-qa-systemd': {},
>                             	'nightly-qa-extras': {},=20
>                             	'nightly-qa-targetbuilds': {},
> -				'nightly-qa-skeleton': {}},
> +				'nightly-qa-skeleton': {},
>                             	'nightly-qa-logrotate': {},=20
>                             	'nightly-qa-pam': {},
> +				'buildtools': {}},
>                             'schedulerNames_nowait': {}}},]
> =20
>=20


--h4iPx35n3wesOr4ieOQVmEMggHSoAMr7u
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJX9RVtAAoJEGJqcE9h3glgrcUP/0+F59aCZxOdow8g1DSBG5n8
8EOqtOIFTPYCOKNtZFF68pckSt6dUDW5MSjzRL4Gudoab83pB1Wr9I+HB4QG1SwM
oFGuSzawVW4jYKm77h7bF3wFQJkGgOiKv5ELVfeRCwZkZGDVny+8HH7atVw+cNKg
RsWHBtk8oe+JpGqn3jKzB17GizheS96A1mJzFD9HoOtwGKgX0CkJBoCEvbmrV/yX
/AtYtAau2cw/F62qfTMapRxtkY6jYqXy0gSw8RlMRIsOC5Kfs9TDGLgcAoZrLSKz
4WvCLMgGlb7xEN3iGYnp99IeEfp7xndOikl/XBrW+DY+DeufgDZBU5uhz9coLp3o
ohLLkkr1/EfGWaTz4ffLz/DKip60tAh4BHzt5DQPUrstpA03+mDUwwU4DYzynza9
URz3Qo8X965OKF3lmOJzrAGdFYUO6HZtbUBIrj3oXTu5dAEvMxL/mo/95kEWN+MT
92bzWpCABs8/6p65Zivy5dhDoqT3lpX+vO+XWFmU54X9igEsPOP4GXAoTgFGto6F
naBcrnYXhZoGctm7JNexa60kRFRr0aPcmc49oR5aVNZzf4A+377Ouca8AUbkuk9G
mZF1PmGrlfwBnjWhjQ6oFNLlzCPYmL853POavNlxkzIwXYy7RmV/jYm5xVzop6PN
l9S10kcSVZDvvmzlnOM/
=S8hA
-----END PGP SIGNATURE-----

--h4iPx35n3wesOr4ieOQVmEMggHSoAMr7u--
