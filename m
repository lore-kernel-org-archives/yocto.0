Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2055E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 03:16:44 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekb15 with SMTP id b15so166792eek.35
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 03:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=LrDxenkQZuxTPOlNkBhJ03m88NRSH9WxpGZH8IM6Zzk=;
	b=PkjTHVczI6OJs+eg8yluVbg62DC3a3f2aM318ULbX7xWIQQ2fspJjsoQ9WMNAgwr8x
	rVOVG9UP4jR3o+RHi94V0gKS/mqbPkmocRmOCgcGzwUZUPkAo7bH8BqBCItJiHi8h+1P
	SE7x/F3lWRaDwYDyKIt0/xjpWc/OkyFYQ77+I=
Received: by 10.14.2.27 with SMTP id 27mr1032653eee.5.1326194202287;
	Tue, 10 Jan 2012 03:16:42 -0800 (PST)
Received: from localhost ([94.230.152.246]) by mx.google.com with ESMTPS id
	y12sm301981287eeb.11.2012.01.10.03.16.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 10 Jan 2012 03:16:40 -0800 (PST)
Date: Tue, 10 Jan 2012 12:16:28 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Message-ID: <20120110111628.GC3445@jama.jama.net>
References: <4F0C1C26.6030301@communistcode.co.uk>
MIME-Version: 1.0
In-Reply-To: <4F0C1C26.6030301@communistcode.co.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trouble creating new package
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
X-List-Received-Date: Tue, 10 Jan 2012 11:16:45 -0000
X-Groupsio-MsgNum: 4166
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5QAgd0e35j3NYeGe"
Content-Disposition: inline

--5QAgd0e35j3NYeGe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 10, 2012 at 11:08:22AM +0000, Jack Mitchell wrote:
> Good morning everyone,
>=20
> I am currently having issues creating a (very!) simple package. I have=20
> looked at the latest reference manual and studied other .bb files to no=
=20
> avail.
>=20
> I am trying to build a simple web server called Hiawatha. To install=20
> (http://www.hiawatha-webserver.org/howto/compilation_and_installation)=20
> it consists of a simple:
>=20
> ./configure
>=20
> make
>=20
> make install
>=20
> Now, for the life in me I cannot replicate this behaviour in a .bb file.=
=20
> This is what I have so far:
>=20
> DESCRIPTION =3D "Lightweight secure web server"
> HOMEPAGE =3D "http://www.hiawatha-webserver.org"
>=20
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da9b0a0eb7c54c87ec6ac05f5f603df=
6a"
>=20
> SECTION =3D "custom"
>=20
> PR =3D "r0"
>=20
> SRC_URI =3D "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.g=
z"
>=20
> SRC_URI[md5sum] =3D "8aff3f8c759871ea1d1ff22e98030332"
>=20
> do_configure () {
>=20
>    ./configure --disable-ipv6 \
>               --disable-ssl \
>               --disable-toolkit \
>               --disable-xslt \
>               --disable-largefile \
>=20
>    oe_runmake
>=20
> }
>=20
> do_install () {
>=20
>    oe_runmake install DESTDIR=3D${D} SBINDIR=3D${sbindir} MANDIR=3D${mand=
ir} \
>      INCLUDEDIR=3D${includedir}
>=20
> }
>=20
> Could someone point me in the right direction, I feel this should be an=
=20
> extremely easy piece of software to build - I think I'm just not=20
> understanding the build system correctly....
>=20
> The error I receive when trying to build this package is:
>=20
> ERROR: Function 'do_install' failed (see=20
> /home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnuea=
bi/hiawatha-7.8.2-r0/temp/log.do_install.6289=20
> for further information)
> | NOTE: make -j 9 -e MAKEFLAGS=3D -e install=20
> DESTDIR=3D/home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-l=
inux-gnueabi/hiawatha-7.8.2-r0/image=20
> SBINDIR=3D/usr/sbin MANDIR=3D/usr/share/man INCLUDEDIR=3D/usr/include
> | make: *** No rule to make target `install'.  Stop.
> | ERROR: oe_runmake failed

try to start with
inherit autotools

Cheers,,

>=20
> Thanks in advance,
> Jack.
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--5QAgd0e35j3NYeGe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8MHgwACgkQN1Ujt2V2gBw6iQCfR5k2ZrE/ljpmZm1QkOF7WHZq
ylMAn1OcmldEaTrUGi9SC0dVvvJbIG48
=QQ1f
-----END PGP SIGNATURE-----

--5QAgd0e35j3NYeGe--
