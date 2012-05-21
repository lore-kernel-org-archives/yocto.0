Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C46FCE0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 12:28:37 -0700 (PDT)
Received: by weyr3 with SMTP id r3so4790678wey.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 12:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=RW1tYdiVzVeSzZNq6tk8EOn9/C5+MN02d97E48krCwI=;
	b=zXwU43Mm9ilwZ/B+wO9dACI5q9YyRU4jIzS08UdXUM4KKVIf8kNdjDoA5kc5W0jpq6
	AQbSAwmU6dr5h9/s7S7SK0NK2A38xai2al/RxatojiieyejuzfWIDYQevlwr2IPdBBKW
	sN7w/vXSd5b60ao6hgzPLAp7OifCKmGV7LOOGwMItyMZhjoOFXq/LYPZoPglga7MXTTW
	Gqqoek3fWDHGUuAOl14loZ6mZrOhceF8VKKpM3h9yAZKO8w/A5XWYaBwJ/sYhgBq9Rfh
	/i9a/U0FyF5cd3eG3NwCRhJzfkcUrhRzCbxws5jYjlXyjOBijNHMIf3vzQvDYY9L8Lxt
	KFGg==
Received: by 10.180.92.5 with SMTP id ci5mr6493718wib.19.1337628516702;
	Mon, 21 May 2012 12:28:36 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id j4sm27470893wiz.1.2012.05.21.12.28.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 21 May 2012 12:28:35 -0700 (PDT)
Date: Mon, 21 May 2012 21:28:34 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120521192834.GA3154@jama.jama.net>
References: <4FBA8091.1040509@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4FBA8091.1040509@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Trouble building RasberryPi with Yocto/Poky
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
X-List-Received-Date: Mon, 21 May 2012 19:28:38 -0000
X-Groupsio-MsgNum: 6784
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 21, 2012 at 11:51:13AM -0600, Gary Thomas wrote:
> I tried to build a simple image using just Poky+meta-raspberrypi
> Build Configuration:
> BB_VERSION        =3D "1.15.2"
> TARGET_ARCH       =3D "arm"
> TARGET_OS         =3D "linux-gnueabi"
> MACHINE           =3D "raspberrypi"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.2+snapshot-20120521"
> TUNE_FEATURES     =3D "armv6 vfp arm1176jzfs"
> TARGET_FPU        =3D "vfp"
> meta
> meta-yocto        =3D "master:f24d8df3af52e2a2911233746ad69f8899bbdf93"
> meta-raspberrypi  =3D "master:d1e802561ab5c70680fd6ee70a47791fe78aa977"
>=20
> When I ran 'bitbake core-image-sato', I got this error:
>=20
> | make[1]: *** No rule to make target=20
> `/local/rpi_poky/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberryp=
i-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1/image/lib/fir=
mware/./', needed by=20
> `/local/rpi_poky/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberryp=
i-3.1.9-rpi+r1+git0ec4154d64ebba48ca2446cde60a90546311defc-r1/image/lib/fir=
mware/ti_3410.fw'.  Stop.
>=20
> Any ideas how to move forward?

If your distro is using make-3.82 than you need something like this
http://git.shr-project.org/git/?p=3Dmeta-smartphone.git;a=3Dcommit;h=3D9c45=
467120d525a406fe8ec012c6231180c99767
to fix this race. (I haven't seen it with make-3.81)

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+6l2IACgkQN1Ujt2V2gBym1QCguZ1lPb8zN9AceA2EMWOU/sv9
uLEAoLWBcfJMSEd+Ac0ygfAyP7lPnA0b
=WIrI
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
