Return-Path: <martin.jansa@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B4EE0143A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:19:37 -0700 (PDT)
Received: by bkty5 with SMTP id y5so2844157bkt.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=5l8GBxl9hgudykYkhOIRjeYr2YByCXhXwYdw4S9l2qs=;
	b=dNeRWyf0GyxlrTIQUpz7gm6Sx0Vl8LnpDL+gnjhB/gYWOxoG3FMiz1DvUXITatsDVN
	MFGPoheJfSqtDMJ4I7gS5yIyGMPOAayLqgqu4U9lnsRxbeUISLliPDj/PCbvDJkRgDQI
	51oPnRBzdh0EOkM6fAkABpf5G7H6q6AlZ65p5GSkGcGSfRGPNhNHT/q+b/gaDjf0iN48
	oLpMF3No4x0P68ml7gBaO/U3QRwH7sOfg4d8aai0pyJl08g2Lk7Oca/vozLqu7tW5sUt
	wgAqXj8lvc7Un4KpIeLZxzL/cVF6R18yMK8h2uFOfYmusxKXPBwullbZiFCxHYel9H5q
	1ofw==
Received: by 10.204.133.220 with SMTP id g28mr3850535bkt.117.1343654376434;
	Mon, 30 Jul 2012 06:19:36 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id hg13sm3800241bkc.7.2012.07.30.06.19.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 06:19:35 -0700 (PDT)
Date: Mon, 30 Jul 2012 15:19:30 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Message-ID: <20120730131930.GI3261@jama.jama.net>
References: <501683DE.5030904@gmail.com> <20120730130010.GH3261@jama.jama.net>
	<501686CF.9060800@gmail.com>
MIME-Version: 1.0
In-Reply-To: <501686CF.9060800@gmail.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 13:19:38 -0000
X-Groupsio-MsgNum: 8247
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="1E1Oui4vdubnXi3o"
Content-Disposition: inline

--1E1Oui4vdubnXi3o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 30, 2012 at 09:06:23AM -0400, Jim Abernathy wrote:
> On 07/30/2012 09:00 AM, Martin Jansa wrote:
> > On Mon, Jul 30, 2012 at 08:53:50AM -0400, Jim Abernathy wrote:
> >> I'm on master branch trying to build core-image-minimal for the machine
> >> "pandaboard". Besides the basics, I put in a license statement for
> >> cloud9 into local.conf.
> >>
> >> My bblayer.conf is as follows:
> >>
> >> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> >> # changes incompatibly
> >> LCONF_VERSION =3D "5"
> >>
> >> BBPATH =3D "${TOPDIR}"
> >> BBFILES ?=3D ""
> >>
> >> BBLAYERS ?=3D " \
> >>     /home/jim/poky/meta \
> >>     /home/jim/poky/meta-yocto \
> >>     /home/jim/meta-openembedded/meta-oe \
> >>     /home/jim/meta-ti \
> >>     "
> >>
> >> The error I'm getting is:
> >>
> >> ERROR: ParseError at
> >> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not
> >> inherit file classes/systemd.bbclass
> > add meta-openembedded/meta-systemd to your BBLAYERS
> >
> When I do that I get the errors:
>=20
> ERROR: No recipes available for:
> /home/jim/meta-openembedded/meta-systemd/meta-gnome/recipes-gnome/gdm/gdm=
_2.32.2.bbappend
> /home/jim/meta-openembedded/meta-systemd/meta-efl/recipes-efl/efl/elsa_sv=
n.bbappend
> ERROR: Command execution failed: Exited with 1

Add BB_DANGLINGAPPENDS_WARNONLY to
meta-openembedded/meta-systemd/conf/layer.conf

or add meta-gnome/meta-efl layers if you would use them..

Cheers,

>=20
> Jim A
> >> Build Configuration:
> >> BB_VERSION        =3D "1.15.3"
> >> TARGET_ARCH       =3D "arm"
> >> TARGET_OS         =3D "linux-gnueabi"
> >> MACHINE           =3D "pandaboard"
> >> DISTRO            =3D "poky"
> >> DISTRO_VERSION    =3D "1.2+snapshot-20120730"
> >> TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
> >> TARGET_FPU        =3D "vfp-neon"
> >> meta
> >> meta-yocto        =3D "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
> >> meta-oe           =3D "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
> >> meta-ti           =3D "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
> >>
> >> ERROR: Nothing PROVIDES 'pseudo-native'
> >>
> >>
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--1E1Oui4vdubnXi3o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAWieIACgkQN1Ujt2V2gBxKegCgmmUERE2GmGcTOtKONYnPBDhu
GFgAnRLPz5b0UMCR4ctGdR43hOenTUgy
=Kp/v
-----END PGP SIGNATURE-----

--1E1Oui4vdubnXi3o--
