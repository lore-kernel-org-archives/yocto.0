Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE26EE006BC
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 01:35:54 -0800 (PST)
Received: by mail-ea0-f176.google.com with SMTP id h14so3365254eaj.21
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 01:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=IuH7qlEWFf37ImjwDPuWJohV7sCt0gOe1oOjg7S873U=;
	b=HbWBaqLOFzg4XtLM3xlPdTUnzmGftOLKOQokGU+ngfAq9SN+rvDC84fyq0EG+/rksI
	YJpldM6X5xyskm5tTsRCLm0XYoTj97BF41mvemyLjWnaLAatISqr7pKqE6poYMEzfWka
	cwsEsVnUQyntQMX0YpXr8xo1k3Gi2+hOWI2wBN0NT+SRFX1M0C/Yhwmzl0dawhz4yV8Q
	+zO/25STkLgvi5CG9FpcrE1YhM3YXvDSmjDKntLrty35UljBk9KBDCVF7cH5Eqt9S9JG
	r2K12P6475QSSSihs1g/cQFvsqfCd8y7yqB8viWsroYqPxFg+gaoLQelkq+NPFgpnrR5
	YirQ==
X-Received: by 10.14.204.70 with SMTP id g46mr27993055eeo.84.1387359353581;
	Wed, 18 Dec 2013 01:35:53 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id h3sm60760984eem.15.2013.12.18.01.35.52
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Dec 2013 01:35:52 -0800 (PST)
Date: Wed, 18 Dec 2013 10:36:24 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Brad Litterell <brad@evidence.com>
Message-ID: <20131218093624.GK3706@jama>
References: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
	<ad9adfd66f224dd98d4ec05596eaaa8e@DM2PR03MB399.namprd03.prod.outlook.com>
	<E51394554A503C4E852F9BEE46B03E8D019AC7CA@TI-THOR.tasernet.com>
	<14453943.1Qpn4azGq8@helios>
	<E51394554A503C4E852F9BEE46B03E8D019AC9AE@TI-THOR.tasernet.com>
MIME-Version: 1.0
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8D019AC9AE@TI-THOR.tasernet.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting PV dynamically in a recipe
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
X-List-Received-Date: Wed, 18 Dec 2013 09:35:58 -0000
X-Groupsio-MsgNum: 17588
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TdMwOTenGjBWB1uY"
Content-Disposition: inline

--TdMwOTenGjBWB1uY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 18, 2013 at 01:29:25AM +0000, Brad Litterell wrote:
> Hi Paul,
>=20
> Thanks for that tip.  For my private packages I don't build directly from=
 git, but from a tarball (in turn created from my working directory) becaus=
e I want to be able to build the source I'm working on without committing i=
t to git. =20
>=20
> In an ideal world, I'd like to to be able to build in two modes: dev & re=
lease.  Release mode would use the git-based solution (and enforce building=
 from git), and in the dev mode, build from something like externalsrc.  (T=
he reason I don't use externalsrc directly is because it didn't detect chan=
ges in the underlying external source, so I created a script that does and =
updates the tarball.)
>=20
> What is the best way to switch recipes between dev & test modes like that=
=2E  It appears debug-tweaks is only used in image recipes, so I don't know=
 whether I should (or could) use something like this in a package recipe:
>=20
> SRC_URI +=3D '${@base_contains("EXTRA_IMAGE_FEATURES", "debug-tweaks", ".=
=2E.tarball...", "...git..."}'
>=20
> or whether something like that is asking for trouble.  My current solutio=
n is manual - edit the recipe, but that feels kinda lame.
>=20
> It seems like most of the yocto build tools assume building directly from=
 git (or with external-src but without dependency checking).
>=20
> Any suggestions?

Don't use *IMAGE_FEATURES* to in recipe conditionals.

When you're building some package you don't know in which image it will
be included so you cannot know with which *IMAGE_FEATURES* it should be
built.

It's true that EXTRA_IMAGE_FEATURES are often set in DISTRO config, but
still it's unsafe to assume they are "global". With improved
base_contains and sstate interaction, using some flag in DISTRO_FEATURES
shouldn't cause so many packages to rebuild, so it could be usable for
"debug-build" flag.

> ________________________________________
> From: Paul Eggleton [paul.eggleton@linux.intel.com]
> Sent: Tuesday, December 17, 2013 12:24 PM
> To: Brad Litterell
> Cc: zhenhua.luo@freescale.com; yocto@yoctoproject.org
> Subject: Re: [yocto] Setting PV dynamically in a recipe
>=20
> Hi Brad,
>=20
> On Tuesday 17 December 2013 19:46:11 Brad Litterell wrote:
> > Thank you for the reply.  However, That's not what I'm looking for.  I
> > already get the latest version of the source code.
> >
> > What I'm really after is the ability to generate output packages that h=
ave
> > increasing version numbers so I can use the package manager to update t=
hem.
> >
> > I think Martin's subsequent reply is the secret to use PKGV.  I didn't =
know
> > about that variable.
>=20
> You don't need to use any special classes to get this behaviour. Put this=
 in
> your recipe (replacing 1.2.3 with the appropriate base version you are
> building):
>=20
> PV =3D "1.2.3+git${SRCPV}"
>=20
> and enable the PR service, which will ensure SRCREV changes always increm=
ent
> the version properly:
>=20
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#worki=
ng-with-a-pr-service
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--TdMwOTenGjBWB1uY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlKxbJgACgkQN1Ujt2V2gBzprQCeM2Pvns61RQ/6aAHWYl9kPD/T
cekAn3Jp1wUkF2kK9s4bjT4xWeP4r6qP
=HVTa
-----END PGP SIGNATURE-----

--TdMwOTenGjBWB1uY--
