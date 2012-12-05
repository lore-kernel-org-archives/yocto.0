Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B43F4E006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 12:28:48 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id b57so3571238eek.35
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2012 12:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=B0zsGMJIaxkOs1yjqKGolaDrY+ow/h+o5ojQJJa5dwM=;
	b=G+hDZ8s38hBH4GA11bx8SwFRgE39cIOqZYT6/kojSLSjzDO2BfK6x7AWs5alZp6XPK
	9HI0SKLluX6iGznx9AFzpC8FEanKspcKAnX/Pf5QgVZMvmO6TN+YOxYeDBkhZc4fen2a
	I1zQRjIP0jEDpaEi8k6mX6MXpeZ1g2GOilJwBd1riq2kqvg4cxIRVjClL3FjdNmVc2TZ
	SVyCcuFszUnWX8ATJV2AEKytriv4vPqzrDCBlVecZ/ak1ApVo+dMu6BEBWKJ9AYoXyYG
	Z7682gpj2f8NqDS5XBvA/U5GIYOH763LTBlrIJ0Gk1hYX7mYZrDdmzw/o2KkYj9BoAHY
	6gzg==
Received: by 10.14.216.70 with SMTP id f46mr64263607eep.12.1354739327062;
	Wed, 05 Dec 2012 12:28:47 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id e2sm11307502eeo.8.2012.12.05.12.28.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 05 Dec 2012 12:28:46 -0800 (PST)
Date: Wed, 5 Dec 2012 21:28:44 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Message-ID: <20121205202844.GH3396@jama.jama.net>
References: <50BFADD0.20606@gmail.com>
MIME-Version: 1.0
In-Reply-To: <50BFADD0.20606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: problems adding extra packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Dec 2012 20:28:49 -0000
X-Groupsio-MsgNum: 10852
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CEUtFxTsmBsHRLs3"
Content-Disposition: inline

--CEUtFxTsmBsHRLs3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 05, 2012 at 03:25:52PM -0500, Jim Abernathy wrote:
> In the past on denzil, I'd get images working then start adding specific=
=20
> packages like this:
>=20
> LICENSE_FLAGS_WHITELIST =3D "commercial"
> CORE_IMAGE_EXTRA_INSTALL ?=3D "gst-fluendo-mp3"
> CORE_IMAGE_EXTRA_INSTALL ?=3D "web-webkit"
> CORE_IMAGE_EXTRA_INSTALL ?=3D "myvideos"
> CORE_IMAGE_EXTRA_INSTALL ?=3D "myaudios"

did you use '+=3D' before?

Cheers,

> Today, I got chiefriver bsp working on my hardware and then wanted to=20
> add my video and audio files into the image along with extra software. =
=20
> It didn't get added and the image is basically the same size. No errors=
=20
> on just bitbaking again.  I was trying to avoid deleting tmp and=20
> starting over again.  Has something changed with Danny?
>=20
> Along with the CORE_IMAGE_EXTRA_INSTALL additions, I added my layer in=20
> bblayer.conf to pick up myvideos, etc.
>=20
> Jim A
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--CEUtFxTsmBsHRLs3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlC/rnwACgkQN1Ujt2V2gByRfACfXpC7ggce8kremRW8zBntxOjE
MyoAn1c/ZZEOJbPAUk0hUm3rUcTrMAjZ
=mwZi
-----END PGP SIGNATURE-----

--CEUtFxTsmBsHRLs3--
