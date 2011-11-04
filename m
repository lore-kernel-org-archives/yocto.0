Return-Path: <martin.jansa@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09715E00307
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2011 09:08:12 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by faap14 with SMTP id p14so4242929faa.35
	for <yocto@yoctoproject.org>; Fri, 04 Nov 2011 09:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=ynmDNjXkxjyw9n29PBUQN112b+5kkJU81tghEri987M=;
	b=k1rbY9uDkVq7F2p2bRUYvJIh1fcSmI7tflSjHztsWCf0CNs5EtanW5QDhLiiBniygh
	gac2Tpycn3opsJ75YBTp9VeDcNKRByjhrApQuuXnrhC0+kEv4tz5ox3fzbfVMOB0ump2
	C+co7yAwYn+HS631jux7fmp2Uf4XuOoWAetAA=
Received: by 10.223.30.149 with SMTP id u21mr25292519fac.18.1320422891737;
	Fri, 04 Nov 2011 09:08:11 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id w11sm17427302fad.7.2011.11.04.09.08.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 Nov 2011 09:08:10 -0700 (PDT)
Date: Fri, 4 Nov 2011 17:07:59 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20111104160759.GX9949@jama.jama.net>
References: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why do numerous .bb files set "PARALLEL_MAKE"?
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
X-List-Received-Date: Fri, 04 Nov 2011 16:08:13 -0000
X-Groupsio-MsgNum: 3330
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fKfh0xY2eB01Z/0V"
Content-Disposition: inline

--fKfh0xY2eB01Z/0V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 04, 2011 at 11:57:46AM -0400, Robert P. J. Day wrote:
>=20
>   stumbled over this so i did a more thorough search:
>=20
> $ grep -w PARALLEL_MAKE $(find . -name *.bb)
> ./meta/recipes-qt/qt-apps/qmmp_0.5.1.bb:PARALLEL_MAKE =3D ""
> ./meta/recipes-core/eggdbus/eggdbus_0.6.bb:PARALLEL_MAKE =3D ""
> ./meta/recipes-core/gettext/gettext_0.16.1.bb:PARALLEL_MAKE =3D ""
> ./meta/recipes-core/gettext/gettext_0.18.1.1.bb:#PARALLEL_MAKE =3D ""
> ./meta/recipes-bsp/pciutils/pciutils_3.1.7.bb:PARALLEL_MAKE =3D ""
> ./meta/recipes-extended/sat-solver/sat-solver_git.bb:PARALLEL_MAKE=3D""
> ./meta/recipes-extended/bash/bash_3.2.48.bb:PARALLEL_MAKE =3D ""
> ./meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb:PARALLEL_MAKE =
=3D ""
> ./meta/recipes-extended/groff/groff_1.20.1.bb:PARALLEL_MAKE =3D ""
> ... more snipped ...
>=20
>   why are individual recipes setting PARALLEL_MAKE to the empty
> string?  it's a *build* option, why would it have any relevance to
> individual .bb files?

because some projects fail to build in parallel and we don't have
manpower to fix them all?

>   conversely, i don't see a single .bb file that sets
> BB_NUMBER_THREADS.  the above just looks ... odd.
>=20
> rday
>=20
> --=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--fKfh0xY2eB01Z/0V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk60Dd8ACgkQN1Ujt2V2gBzCnQCeKSleWZAdNrQn7RVCz8wrFHOk
itwAn16y4QtmlnxUrMP4I9mgGm9jY8S7
=Xyur
-----END PGP SIGNATURE-----

--fKfh0xY2eB01Z/0V--
