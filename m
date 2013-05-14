Return-Path: <martin.jansa@gmail.com>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4568E014F7
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 03:56:21 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id 3so325539pdj.27
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 03:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=nqc5rQny0wTra6i03sPfW219iPtaSkDOiop4JHXN2IE=;
	b=FQszJZ51tzLUNlwCWYu7rdd6HUK1UG19wxzfkgC8aOESx2VXKtB8MZp2HNRq5A8tD8
	R6MqepUhCiQAunWjTYWLCP/dhQQm263vvhKW+mWQ4nWtxno965liBCw39kQOzySxs5Ou
	PCs9Lykl8TEiqv0lSwrp5FL3onQFKe7hEGeAWgM8qjJus+rWO2VGOJRxBga7bb4Qdxp2
	WewqOQkSbelDL1ImiBxtQudq5olOkSzUZ0ElYqwE7HEILPVJHLTNEECdgSTJmJI1SviB
	E2jEDJ2IqxNKEnv46NEztrgjX0La4/qPIjXes+F39RmUS2B1QFWj+++BBEGDopMWFLMm
	TqOQ==
X-Received: by 10.67.1.39 with SMTP id bd7mr33108904pad.194.1368528981618;
	Tue, 14 May 2013 03:56:21 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	nt2sm17817577pbc.17.2013.05.14.03.56.18 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 14 May 2013 03:56:20 -0700 (PDT)
Date: Tue, 14 May 2013 12:56:19 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20130514105619.GG3187@jama>
References: <519215AE.3090608@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <519215AE.3090608@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: IMAGE_FEATURES check broken
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
X-List-Received-Date: Tue, 14 May 2013 10:56:21 -0000
X-Groupsio-MsgNum: 13777
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sLx0z+5FKKtIVDwd"
Content-Disposition: inline

--sLx0z+5FKKtIVDwd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 14, 2013 at 04:45:02AM -0600, Gary Thomas wrote:
> This commit breaks systems where IMAGE_FEATURES includes "package-managem=
ent":
>=20
> commit d63c8a1597c9bd0a838cb59ca461ac432b630a90
> Author: Paul Eggleton <paul.eggleton@linux.intel.com>
> Date:   Thu May 9 17:24:25 2013 +0100
>=20
>      classes/image: show an error on invalid IMAGE_FEATURES
>=20
> A quick look at that class shows that package-management is being left
> out of the "validitems".  This patch fixes it:
>=20
> diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
> index 2b42e12..4f07708 100644
> --- a/meta/classes/image.bbclass
> +++ b/meta/classes/image.bbclass
> @@ -19,7 +19,7 @@ INHIBIT_DEFAULT_DEPS =3D "1"
>   # IMAGE_FEATURES may contain any available package group
>   IMAGE_FEATURES ?=3D ""
>   IMAGE_FEATURES[type] =3D "list"
> -IMAGE_FEATURES[validitems] +=3D "debug-tweaks read-only-rootfs"
> +IMAGE_FEATURES[validitems] +=3D "debug-tweaks read-only-rootfs package-m=
anagement"
>=20
>   # rootfs bootstrap install
>   ROOTFS_BOOTSTRAP_INSTALL =3D "${@base_contains("IMAGE_FEATURES", "packa=
ge-management", "", "${ROOTFS_PKGMANAGE_BOOTSTR
>=20
> Am I missing something else, or was this just overlooked?

The same patch is already on oe-core ML where it belongs:
http://lists.linuxtogo.org/pipermail/openembedded-core/2013-May/039541.html

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--sLx0z+5FKKtIVDwd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlGSGFMACgkQN1Ujt2V2gBw3PwCgj6kdLSy2SaK8Ec/CImQRpOiU
PgQAoIVabZF7cvXSIys6yAYGnwXTdE1q
=ZSb9
-----END PGP SIGNATURE-----

--sLx0z+5FKKtIVDwd--
