Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62389E011C0
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 14:53:01 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hn14so1271816wib.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 14:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=HCWv7rwJfF2IRAYzErxSNp69VypLby4DCrPN6YLx2Mo=;
	b=sDXfzrJnwn/ALA4Syr9AsJxxq2x8w7V/hgF1qXWwR0TuunnGqxe85upiKJQuPTtTZv
	k6gdyM/av5GHsD+yLG35q/Kht/s8qztF5W4NsZ3UdTsnaKJmxB5EelF9FSIlWfrErPbI
	IuzPf5JHLOOMU9rleR/6yLE0F5A1WDkf5ELS0KafgAapNHHtSMkSW3bGlPM3dw/IHbd1
	CeiNkyid28dXpozGWLxD1XQ7hJNNby7IaebMAtZOBnYV9w7l8q5+sjyS4KyDf5EL+qAx
	U6BLwCjfKeclXNlQ8PUHM1RZyfYSjt1caGEo4HU6y1lyEymbAFwQFtXsnnysJio2rxhO
	CurA==
Received: by 10.216.193.136 with SMTP id k8mr21291wen.188.1349214780281;
	Tue, 02 Oct 2012 14:53:00 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ga2sm4637475wib.2.2012.10.02.14.52.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Oct 2012 14:52:59 -0700 (PDT)
Date: Tue, 2 Oct 2012 23:52:59 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Julian Scheel <julian@jusst.de>
Message-ID: <20121002215259.GF15881@jama.jama.net>
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
	<20121002212223.GE15881@jama.jama.net>
	<159BFF45-059D-4E33-9AE6-EC78B620FA0F@jusst.de>
MIME-Version: 1.0
In-Reply-To: <159BFF45-059D-4E33-9AE6-EC78B620FA0F@jusst.de>
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
X-List-Received-Date: Tue, 02 Oct 2012 21:53:01 -0000
X-Groupsio-MsgNum: 9760
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JSkcQAAxhB1h8DcT"
Content-Disposition: inline

--JSkcQAAxhB1h8DcT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 02, 2012 at 11:38:08PM +0200, Julian Scheel wrote:
>=20
> Am 02.10.2012 um 23:22 schrieb Martin Jansa <martin.jansa@gmail.com>:
>=20
> > On Tue, Oct 02, 2012 at 05:17:23PM -0400, Evade Flow wrote:
> >> I'm trying to build core-image-sato for my Pandaboard ES, following the
> >> instructions posted here:
> >>=20
> >>  - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
> >>=20
> >> Thus, my OE build configuration looks like this:
> >>=20
> >>> OE Build Configuration:
> >>> BB_VERSION        =3D "1.15.2"
> >>> TARGET_ARCH       =3D "arm"
> >>> TARGET_OS         =3D "linux-gnueabi"
> >>> MACHINE           =3D "pandaboard"
> >>> DISTRO            =3D "poky"
> >>> DISTRO_VERSION    =3D "1.2.1"
> >>> TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
> >>> TARGET_FPU        =3D "vfp-neon"
> >>> meta
> >>> meta-yocto        =3D "denzil:65ffa7395055f7e012cb973f63f92380828eed0=
d"
> >>> meta-ti           =3D "(nobranch):30fb40ebc13614a74c2e237927c60ac43e0=
1d1bc"
> >>=20
> >> I have these lines in my .gitconfig:
> >>=20
> >>> [http]
> >>>    proxy=3Dhttp://user:passwd@usaprox.lightning.com:8080
> >>=20
> >> so I'd expect URLs like this one (from the meta-ti layer's
> >> linux-omap4_3.1.0.bb recipe) to work fine:
> >>=20
> >>> SRC_URI =3D "http://dev.omapzoom.org/pub/scm/integration/kernel-ubunt=
u.git;protocol=3Dgit;branch=3Dti-ubuntu-3.1-1282 \
> >=20
> > This url seems wrong, it should start with git:// if you want to clone
> > git repo.
> >=20
> > Because it starts with http:// normal fetch (like wget) was used so it
> > downloaded probably some http code (see that kernel-ubuntu.git file)
> > instead of any relevant source.
>=20
> I ran into the same issue a few days ago. It seems yocto only supports gi=
t fetch
> through servers providing the repositories through the git protocol. A wa=
y to use
> git repositories which are provided through http or https would be quite =
a good
> thing to have.

That's what protocol param does;

Change that to
git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=3Dhtt=
p;branch=3Dti-ubuntu-3.1-1282
and you'll get git fetch over http protocol.

Cheers,
=20
> -Julian
>=20
> >=20
> >>>           file://0001-Makefile.fwinst-fix-install-breakage-for-FW-ima=
ges-r.patch \
> >>>           file://defconfig \
> >>>           "
> >>=20
> >> From what I can tell, though, bitbake isn't handling this SRC_URI
> >> correctly, and I get:
> >>=20
> >>> ERROR: Command Error: exit status: 1  Output:
> >>> Applying patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-image=
s-r.patch
> >>> patching file scripts/Makefile.fwinst
> >>> Hunk #1 FAILED at 27.
> >>> 1 out of 1 hunk FAILED -- rejects in file scripts/Makefile.fwinst
> >>> Patch 0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch=
 does not apply (enforce with -f)
> >>> ERROR: Function failed: patch_do_patch
> >>=20
> >> If I examine the folder:
> >>=20
> >>  build/tmp/work/pandaboard-poky-linux-gnueabi/linux-omap4-3.1.0-r0
> >>=20
> >> I see that it contains no source code. It does, however, contain a file
> >> named 'kernel-ubuntu.git', whose content is exactly the same as you'd
> >> get if you typed:
> >>=20
> >>  wget http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git
> >>=20
> >> This seems like a bug, possibly related to one of these:
> >>=20
> >>  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3119
> >>  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3175
> >>=20
> >>=20
> >> Maybe this has been fixed since denzil, but... everything I read about
> >> the current state of support for the Pandaboard suggests sticking with
> >> denzil/gcc 4.6. Is there some workaround I can use to get past this
> >> error?  Also, assuming these instructions worked for the author of the
> >> original blog post, I wonder what the difference is with my setup.
> >>=20
> >> Here are my mods to conf/local.conf, in case it's helpful:
> >>=20
> >>> MACHINE =3D "pandaboard"
> >>> BBMASK =3D "meta-ti/recipes-misc"
> >>> PACKAGE_CLASSES =3D "package_ipk"
> >>> CONNECTIVITY_CHECK_URIS=3D""
> >>> BB_GENERATE_MIRROR_TARBALLS =3D "1"
> >>> SOURCE_MIRROR_URL ?=3D "file:///home/evadeflow/projects/poky-mirror/"
> >>> INHERIT +=3D "own-mirrors"
> >>=20
> >> And this is my bblayers.conf:
> >>=20
> >>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> >>> # changes incompatibly
> >>> LCONF_VERSION =3D "4"
> >>>=20
> >>> BBFILES ?=3D ""
> >>> BBLAYERS ?=3D " \
> >>>  /home/evadeflow/projects/poky-git/meta \
> >>>  /home/evadeflow/projects/poky-git/meta-yocto \
> >>>  /home/evadeflow/projects/poky-git/meta-ti \
> >>>  "
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >=20
> > --=20
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--JSkcQAAxhB1h8DcT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBrYjsACgkQN1Ujt2V2gBxg4wCcDyHjbAGnTgITD7dApIV0kKD2
M9EAn2+tFUg15aUqHKLR62YqwJDbe04n
=p8y1
-----END PGP SIGNATURE-----

--JSkcQAAxhB1h8DcT--
