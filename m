Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47245E00998; Mon, 13 Apr 2015 03:47:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8920E00963
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 03:47:17 -0700 (PDT)
Received: by wgin8 with SMTP id n8so76032231wgi.0
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 03:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=pXWlz0c6h/paBq77uw8u65XOIrWzRBlQyKl3kS0xcYE=;
	b=ce4DQQNNHDyC3mh0VgMzaRKWGfqB3+GuS9wD+i7FfX5ejQDLkk+JKMgzUwHZ49hC0k
	WPDP1T6/MEqjmA2o/VozEDe7z/GlF4im/rhMliQWyPVJZdfasOHAiG9343AaIRDJ7hyP
	LGhYK8+E3kBbPaH/6GddMi763bbRpy80eGTnf9auAyiy3jsFq6lsTrsV39HrlGdJt1Hw
	2Vl0VuZPqCOjy9iyZZfieEsXPluarluP5gqGy8msX8emTQoY6jP62Q08D4hT4g/APelB
	sQj5ey2bbpsqvXLt45351aTmQPR8q4KE6giY4dzGNCO93CfHHZyEkd8Ov/Xc+Wt7IE6T
	PRfQ==
X-Received: by 10.180.80.105 with SMTP id q9mr1335998wix.52.1428922036521;
	Mon, 13 Apr 2015 03:47:16 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id a6sm10908532wiy.17.2015.04.13.03.47.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Apr 2015 03:47:15 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 13 Apr 2015 12:47:19 +0200
To: wenzong.fan@windriver.com
Message-ID: <20150413104719.GA2330@jama>
References: <1428917063-2713-1-git-send-email-wenzong.fan@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1428917063-2713-1-git-send-email-wenzong.fan@windriver.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] tar: cleanup duplicate PACKAGECONFIG
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
X-List-Received-Date: Mon, 13 Apr 2015 10:47:20 -0000
X-Groupsio-MsgNum: 24430
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 13, 2015 at 05:24:23PM +0800, wenzong.fan@windriver.com wrote:
> From: Wenzong Fan <wenzong.fan@windriver.com>
>=20
> The tar_1.28.bb has defined this:
>=20
> PACKAGECONFIG[acl] =3D "--with-posix-acls, --without-posix-acls, acl,"
>=20
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>  recipes-extended/tar/tar_%.bbappend | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/recipes-extended/tar/tar_%.bbappend b/recipes-extended/tar/t=
ar_%.bbappend
> index 54c8a90..53d381e 100644
> --- a/recipes-extended/tar/tar_%.bbappend
> +++ b/recipes-extended/tar/tar_%.bbappend
> @@ -2,10 +2,4 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> =20
>  inherit with-selinux
> =20
> -
>  PACKAGECONFIG +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl'=
, '', d)}"
> -
> -# configure has no acl enable/disable options!

tar 1.17 (still available in oe-core) next to 1.28 doesn't have these
options, so dropping this will cause QA warnings.

Maybe should fix both in oe-core first and then you can even drop
"PACKAGECONFIG +=3D" line.

> -#
> -PACKAGECONFIG[acl] =3D ",,acl,"
> -
> --=20
> 1.9.1
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUrnrcACgkQN1Ujt2V2gBzi2gCdG1dxzE2jDGkMBiQIDAn36msY
XVkAoKalNvItvjc+dOFfi/y8RqWcsrKI
=mVqY
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--
