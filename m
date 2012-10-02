Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C583E011AF
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 14:22:26 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hn14so1246455wib.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 14:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=sDrX0LqiFdR0XZllCduIb0j4erqUQgJtlS/iB0h6Rsg=;
	b=KGr+aTxYzqGfhg4wNGyk0I6xyTA6GXsf04/rITStpgBlbxoxkm8KrBZgRpsSqyIpS3
	pI5zAtAFBVu/sBxSIVLcELwuFSz6gQH1Tpec77kwnPzb1oMH7ddaF7mqZs6DOQOC88VS
	EaFVIX62yWgtk5TUk7gnBsvEYJkNSOEKaFxeA6TUdky7zrvyhEJnb++jesTtVQKBuI09
	nZbe9vvI31CQ4iam17ZW1YcJ+wtzKWrmlz41unqljwfFh+mP6R6ylVNRr7HlYyeIg97u
	J0R3nblemCpByHv+ogLCDhtxm1IQY/4viJNjuvmGqy2afFnx1yWtYVCtXHIBeEoriYuV
	m7UQ==
Received: by 10.180.99.133 with SMTP id eq5mr24598620wib.21.1349212944950;
	Tue, 02 Oct 2012 14:22:24 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fb20sm4508471wid.1.2012.10.02.14.22.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Oct 2012 14:22:24 -0700 (PDT)
Date: Tue, 2 Oct 2012 23:22:23 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Evade Flow <evadeflow@gmail.com>
Message-ID: <20121002212223.GE15881@jama.jama.net>
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't fetch git SRC_URI via HTTP
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
X-List-Received-Date: Tue, 02 Oct 2012 21:22:26 -0000
X-Groupsio-MsgNum: 9758
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="G6nVm6DDWH/FONJq"
Content-Disposition: inline

--G6nVm6DDWH/FONJq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 02, 2012 at 05:17:23PM -0400, Evade Flow wrote:
> I'm trying to build core-image-sato for my Pandaboard ES, following the
> instructions posted here:
>=20
>   - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
>=20
> Thus, my OE build configuration looks like this:
>=20
> > OE Build Configuration:
> > BB_VERSION        =3D "1.15.2"
> > TARGET_ARCH       =3D "arm"
> > TARGET_OS         =3D "linux-gnueabi"
> > MACHINE           =3D "pandaboard"
> > DISTRO            =3D "poky"
> > DISTRO_VERSION    =3D "1.2.1"
> > TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
> > TARGET_FPU        =3D "vfp-neon"
> > meta
> > meta-yocto        =3D "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"
> > meta-ti           =3D "(nobranch):30fb40ebc13614a74c2e237927c60ac43e01d=
1bc"
>=20
> I have these lines in my .gitconfig:
>=20
> > [http]
> >     proxy=3Dhttp://user:passwd@usaprox.lightning.com:8080
>=20
> so I'd expect URLs like this one (from the meta-ti layer's
> linux-omap4_3.1.0.bb recipe) to work fine:
>=20
> > SRC_URI =3D "http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.=
git;protocol=3Dgit;branch=3Dti-ubuntu-3.1-1282 \

This url seems wrong, it should start with git:// if you want to clone
git repo.

Because it starts with http:// normal fetch (like wget) was used so it
downloaded probably some http code (see that kernel-ubuntu.git file)
 instead of any relevant source.

Cheers,

> >            file://0001-Makefile.fwinst-fix-install-breakage-for-FW-imag=
es-r.patch \
> >            file://defconfig \
> >            "
>=20
> From what I can tell, though, bitbake isn't handling this SRC_URI
> correctly, and I get:
>=20
> > ERROR: Command Error: exit status: 1  Output:
> > Applying patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-=
r.patch
> > patching file scripts/Makefile.fwinst
> > Hunk #1 FAILED at 27.
> > 1 out of 1 hunk FAILED -- rejects in file scripts/Makefile.fwinst
> > Patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch d=
oes not apply (enforce with -f)
> > ERROR: Function failed: patch_do_patch
>=20
> If I examine the folder:
>=20
>   build/tmp/work/pandaboard-poky-linux-gnueabi/linux-omap4-3.1.0-r0
>=20
> I see that it contains no source code. It does, however, contain a file
> named 'kernel-ubuntu.git', whose content is exactly the same as you'd
> get if you typed:
>=20
>   wget http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git
>=20
> This seems like a bug, possibly related to one of these:
>=20
>   - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3119
>   - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3175
>=20
>=20
> Maybe this has been fixed since denzil, but... everything I read about
> the current state of support for the Pandaboard suggests sticking with
> denzil/gcc 4.6. Is there some workaround I can use to get past this
> error?  Also, assuming these instructions worked for the author of the
> original blog post, I wonder what the difference is with my setup.
>=20
> Here are my mods to conf/local.conf, in case it's helpful:
>=20
> > MACHINE =3D "pandaboard"
> > BBMASK =3D "meta-ti/recipes-misc"
> > PACKAGE_CLASSES =3D "package_ipk"
> > CONNECTIVITY_CHECK_URIS=3D""
> > BB_GENERATE_MIRROR_TARBALLS =3D "1"
> > SOURCE_MIRROR_URL ?=3D "file:///home/evadeflow/projects/poky-mirror/"
> > INHERIT +=3D "own-mirrors"
>=20
> And this is my bblayers.conf:
>=20
> > # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> > # changes incompatibly
> > LCONF_VERSION =3D "4"
> >
> > BBFILES ?=3D ""
> > BBLAYERS ?=3D " \
> >   /home/evadeflow/projects/poky-git/meta \
> >   /home/evadeflow/projects/poky-git/meta-yocto \
> >   /home/evadeflow/projects/poky-git/meta-ti \
> >   "
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--G6nVm6DDWH/FONJq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBrWw8ACgkQN1Ujt2V2gBz2QQCdEHJlrhh8x4cP19RisHZCgcdH
4UwAoK45k1oMIO7nc1DBUeTCBuGwkdHO
=rYFM
-----END PGP SIGNATURE-----

--G6nVm6DDWH/FONJq--
