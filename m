Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 382B9E0059A
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 23:38:04 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so2210803wgb.11
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 23:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=06OQOmHgRRn29iit1Kk+zHshIarc7XiT9C6WWYWBLCs=;
	b=WFMlTNHFF8TCzJLNVi65knAhYFNDSiwDIahtanqR4ipBSb2secdcPMtqSft4AYulTv
	8bciF7NGGJoJEoiDimFshV35p6YzuhIOnFF7oxtfJ5jisuReqFgTD+xZN/i+M5ntYe6y
	pCCIEZp5/tGOysC+5GC/ZIdZWfB6MjqEBd2qAsqoikcfc08+8hYaBofHfJs7CVdJ70eA
	k+rJxxVv4RX5SsuE+uLOUlmYrBj+a4Gt++3KQlsfgEccEJ6RjvTs6pEpEWTMBdz0VKMt
	ARBTL+vVsOklrg6ioZWbw9IvSM4DSeqYc4gmCyabb/gUqK86ou14svaLoB3DqIz0bfta
	gtdw==
Received: by 10.180.80.70 with SMTP id p6mr1811522wix.21.1334299083196;
	Thu, 12 Apr 2012 23:38:03 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id w10sm4610912wiy.3.2012.04.12.23.38.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 12 Apr 2012 23:38:02 -0700 (PDT)
Date: Fri, 13 Apr 2012 08:38:02 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120413063802.GA3651@jama.jama.net>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
	<20120412080021.GA3661@jama.jama.net>
	<4F86E2E8.2030607@linux.intel.com>
	<CAPhnLPCc1+uV5rM48k45JxbSwHpPqG9x7ci=uN_5TA8j1XmpJg@mail.gmail.com>
	<20120413055150.GA3652@jama.jama.net>
	<4F87C2D3.8020805@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F87C2D3.8020805@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Fri, 13 Apr 2012 06:38:04 -0000
X-Groupsio-MsgNum: 6062
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 12, 2012 at 11:08:19PM -0700, Darren Hart wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
> On 04/12/2012 10:51 PM, Martin Jansa wrote:
>=20
> > And my system is very slow compared to yours, I've found my
> > measurement of core-image-minimal-with-mtdutils around 95 mins=20
> > http://patchwork.openembedded.org/patch/17039/ but this was with
> > Phenom II X4 965, 4GB RAM, RAID0 (3 SATA2 disks) for WORKDIR, RAID5
> > (the same 3 SATA2 disks) BUILDDIR (raid as mdraid), now I have
> > Bulldozer AMD FX(tm)-8120, 16GB RAM, still the same RAID0 but=20
> > different motherboard..
>=20
> Why RAID5 for BUILDDIR? The write overhead of RAID5 is very high. The
> savings RAID5 alots you is more significant with more disks, but with
> 3 disks it's only 1 disk better than RAID10, with a lot more overhead.

Becaure RAID10 needs at least 4 drivers and all my SATA ports are
already used and also it's on my /home partition.. please not that this
is not some company build server, just my desktop where it happens I do
a lot of builds for comunity distribution for smartphones
http://shr-project.org

Server we have available for builds is _much_ slower then this
especially IO (some virtualized host on busy server), but has much
better network bandwidth.. :).

Cheers,
=20
> I spent some time outlining all this a while back:
> http://www.dvhart.com/2011/03/qnap_ts419p_configuration_raid_levels_and_t=
hroughput/
>=20
> Here's the relevant bit:
>=20
> "RAID 5 distributes parity across all the drives in the array, this
> parity calculation is both compute intensive and IO intensive. Every
> write requires the parity calculation, and data must be written to
> every drive."
>=20
>=20
>=20
> - --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.11 (GNU/Linux)
> Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/
>=20
> iQEcBAEBAgAGBQJPh8LTAAoJEKbMaAwKp364pa8H/A8BSudN/g7ixFmUTYMNGHlC
> 2+H59MgNHYWRYzNn9QvN6vyyfXzX7C00HUTQ4MQ3CmisTUza2tbJEdX9CpeIBQNg
> Ny8iqyNNoInTFx2T1Yi2eA9Ytegtue9Ls+IcBRbpIbs6Zo1Qwzi6oemdPZN7g3YI
> rH/NKALWIBt/Y/Dt2k0fz7WsQGYOuE/lYpL/CmukU7vNNEUAdOs7tZa5o1ZOQDuj
> zGCwuVH9QwrDJEXNsMtjNY37aJeAgDMwSXjN0pKv1WQI9j47kYQQrrp2qKVQYhV1
> x4QxJ5aOuV7BaS0Y7zYkNo9nv+yKPODt25s5L83k5vjbMhCvczmMJn3jupQuUhQ=3D
> =3D3GDA
> -----END PGP SIGNATURE-----

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+HycoACgkQN1Ujt2V2gByCggCdEXWLVnS4P2dYv4JWbsoRX26s
yEgAoK8f1M0A+FSDoKz2wX5xN6ABMuRB
=ZDQV
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--
