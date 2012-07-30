Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68F68E0143A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:00:17 -0700 (PDT)
Received: by wibhn17 with SMTP id hn17so1438829wib.11
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 06:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=D60Haxa3O16qFdL+r1byOFZ6BX3iuFOYPv3LU8zPYZw=;
	b=STRiCHLk5UXg4qOnJtlo5gZRjBraLJ0AA+EWC4LF3MJQBANeYP1Z4izHKhcUO0oeDB
	oyyf4LiP4OKcJheThZd6GIqJm7wRg8NydDKgjX/4rTSgI3p+7FMZGiTRzKIk8D6PLCFR
	ImWCYmOX8KlPCSb/SVys6h7K4gjtqhhqZ0aoCdWZViUlD6U3VZuYldatOnw6MGtcnF5+
	eQSuJTOCQDaN8OOgSyLL7kKQ1NuRKhpvSced/zWvFdnxmBv7AqJpOCp+AD9xvuggZN1T
	J+G0GZ7AdkzF3+RLqsj0ZSP6Q1M2Holvt4YCa+Sq5lROLgw+CDJS9JBhWsOqcAkCIZOO
	Mlcg==
Received: by 10.216.255.146 with SMTP id j18mr5429317wes.163.1343653215767;
	Mon, 30 Jul 2012 06:00:15 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id cl8sm16405927wib.10.2012.07.30.06.00.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 06:00:14 -0700 (PDT)
Date: Mon, 30 Jul 2012 15:00:10 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Message-ID: <20120730130010.GH3261@jama.jama.net>
References: <501683DE.5030904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <501683DE.5030904@gmail.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 13:00:17 -0000
X-Groupsio-MsgNum: 8243
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="KscVNZbUup0vZz0f"
Content-Disposition: inline

--KscVNZbUup0vZz0f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 30, 2012 at 08:53:50AM -0400, Jim Abernathy wrote:
> I'm on master branch trying to build core-image-minimal for the machine=
=20
> "pandaboard". Besides the basics, I put in a license statement for=20
> cloud9 into local.conf.
>=20
> My bblayer.conf is as follows:
>=20
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION =3D "5"
>=20
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>=20
> BBLAYERS ?=3D " \
>    /home/jim/poky/meta \
>    /home/jim/poky/meta-yocto \
>    /home/jim/meta-openembedded/meta-oe \
>    /home/jim/meta-ti \
>    "
>=20
> The error I'm getting is:
>=20
> ERROR: ParseError at=20
> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not=20
> inherit file classes/systemd.bbclass

add meta-openembedded/meta-systemd to your BBLAYERS

> Build Configuration:
> BB_VERSION        =3D "1.15.3"
> TARGET_ARCH       =3D "arm"
> TARGET_OS         =3D "linux-gnueabi"
> MACHINE           =3D "pandaboard"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.2+snapshot-20120730"
> TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
> TARGET_FPU        =3D "vfp-neon"
> meta
> meta-yocto        =3D "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
> meta-oe           =3D "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
> meta-ti           =3D "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
>=20
> ERROR: Nothing PROVIDES 'pseudo-native'
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--KscVNZbUup0vZz0f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAWhVoACgkQN1Ujt2V2gBygSACeKCmI6QtLMuRM+AJkM0l19O0M
65QAnRT82G0RIJ+VwodwwColjtNQ5kir
=0UGv
-----END PGP SIGNATURE-----

--KscVNZbUup0vZz0f--
