Return-Path: <martin.jansa@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CD3E0143A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:21:40 -0700 (PDT)
Received: by bkty5 with SMTP id y5so2845158bkt.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=YJO976sJ1WPggoBrj7LtY4Dt+Uxi1mFHbqaZWM/PV7c=;
	b=MF98bxkOPUApmSQVDefz1dQOAnIuZFhFT6xmrrg4np+9WTMpFoAN4mAEewcMPK3Z5t
	uQyWeGqcQxWj4ZNbA6LRcnaqnbrbM6N2Xsb01VBYKVZD44CjYUjtR9UGewo/5kUD5ZdA
	+mebPwihb95TYdCR10waBmFjhv45GrheT6nwoLvYmZurpu/T3AZsOemmgxSlobk6ADB3
	QxVe4HoiYUdhop3E+tTGkKbm5cGf1kgElDmfZM6vcArRHQuPPRXkWMNTqmtWoa+FBwDm
	tS2OvV4L9ST89OIbFPOaSD8vIedtpQpsn3uugRuR4a66lhzaGzJoyaQCDoRKrsPgoXg6
	3/ZA==
Received: by 10.205.119.208 with SMTP id fv16mr4003148bkc.100.1343654499498;
	Mon, 30 Jul 2012 06:21:39 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id m9sm3800689bkm.10.2012.07.30.06.21.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 06:21:38 -0700 (PDT)
Date: Mon, 30 Jul 2012 15:21:33 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Message-ID: <20120730132133.GJ3261@jama.jama.net>
References: <501683DE.5030904@gmail.com> <20120730130010.GH3261@jama.jama.net>
	<501686CF.9060800@gmail.com> <20120730131930.GI3261@jama.jama.net>
MIME-Version: 1.0
In-Reply-To: <20120730131930.GI3261@jama.jama.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Mon, 30 Jul 2012 13:21:40 -0000
X-Groupsio-MsgNum: 8248
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="P6YfpwaDcfcOCJkJ"
Content-Disposition: inline

--P6YfpwaDcfcOCJkJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 30, 2012 at 03:19:30PM +0200, Martin Jansa wrote:
> On Mon, Jul 30, 2012 at 09:06:23AM -0400, Jim Abernathy wrote:
> > On 07/30/2012 09:00 AM, Martin Jansa wrote:
> > > On Mon, Jul 30, 2012 at 08:53:50AM -0400, Jim Abernathy wrote:
> > >> I'm on master branch trying to build core-image-minimal for the mach=
ine
> > >> "pandaboard". Besides the basics, I put in a license statement for
> > >> cloud9 into local.conf.
> > >>
> > >> My bblayer.conf is as follows:
> > >>
> > >> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> > >> # changes incompatibly
> > >> LCONF_VERSION =3D "5"
> > >>
> > >> BBPATH =3D "${TOPDIR}"
> > >> BBFILES ?=3D ""
> > >>
> > >> BBLAYERS ?=3D " \
> > >>     /home/jim/poky/meta \
> > >>     /home/jim/poky/meta-yocto \
> > >>     /home/jim/meta-openembedded/meta-oe \
> > >>     /home/jim/meta-ti \
> > >>     "
> > >>
> > >> The error I'm getting is:
> > >>
> > >> ERROR: ParseError at
> > >> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not
> > >> inherit file classes/systemd.bbclass
> > > add meta-openembedded/meta-systemd to your BBLAYERS
> > >
> > When I do that I get the errors:
> >=20
> > ERROR: No recipes available for:
> > /home/jim/meta-openembedded/meta-systemd/meta-gnome/recipes-gnome/gdm/g=
dm_2.32.2.bbappend
> > /home/jim/meta-openembedded/meta-systemd/meta-efl/recipes-efl/efl/elsa_=
svn.bbappend
> > ERROR: Command execution failed: Exited with 1
>=20
> Add BB_DANGLINGAPPENDS_WARNONLY to
> meta-openembedded/meta-systemd/conf/layer.conf
>=20
> or add meta-gnome/meta-efl layers if you would use them..

Or better BBMASK those meta-gnome/meta-efl subdirectories like
meta-systemd/README suggests:

To make BBMASK'ing per layer possible the following directory structure
is used:

$[LAYERDIR}/<layername>/recipes-<group-name>/<recipe-name>/<recipe-name>.bb=
append

Cheers,

>=20
> Cheers,
>=20
> >=20
> > Jim A
> > >> Build Configuration:
> > >> BB_VERSION        =3D "1.15.3"
> > >> TARGET_ARCH       =3D "arm"
> > >> TARGET_OS         =3D "linux-gnueabi"
> > >> MACHINE           =3D "pandaboard"
> > >> DISTRO            =3D "poky"
> > >> DISTRO_VERSION    =3D "1.2+snapshot-20120730"
> > >> TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
> > >> TARGET_FPU        =3D "vfp-neon"
> > >> meta
> > >> meta-yocto        =3D "master:7411158e1f980cd71c432026fa2f68ab80e354=
1e"
> > >> meta-oe           =3D "master:9afc488a1b97bfc5378f139ba04a7a5297b15f=
db"
> > >> meta-ti           =3D "master:9bc77dff5f84578e259f8225bfa0656d94a2a6=
0a"
> > >>
> > >> ERROR: Nothing PROVIDES 'pseudo-native'
> > >>
> > >>
> > >>
> > >> _______________________________________________
> > >> yocto mailing list
> > >> yocto@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/yocto
> >=20
>=20
> --=20
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com



--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--P6YfpwaDcfcOCJkJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAWil0ACgkQN1Ujt2V2gBwuIwCeOm/hEbPCUyUziosdmAFpNClU
eDYAn1uHbfjn8hNXaFyR2eBYcieHxffU
=l/zA
-----END PGP SIGNATURE-----

--P6YfpwaDcfcOCJkJ--
