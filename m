Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41425E008CE; Wed,  5 Nov 2014 08:09:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D862E00830
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 08:09:27 -0800 (PST)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtp 
	id 1Xm39C-0001Ac-Ri from Joe_MacDonald@mentor.com ;
	Wed, 05 Nov 2014 08:09:26 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.3.181.6; Wed, 5 Nov 2014
	08:09:26 -0800
Received: by burninator (Postfix, from userid 1000)	id 81A15580A59; Wed,  5
	Nov 2014 11:09:25 -0500 (EST)
Date: Wed, 5 Nov 2014 11:09:25 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <Josh_Pennell@Dell.com>
Message-ID: <20141105160925.GA15598@mentor.com>
References: <83DE8B501DA82042847858927365655402BC59B7C3@AUSX7MCPC102.AMER.DELL.COM>
MIME-Version: 1.0
In-Reply-To: <83DE8B501DA82042847858927365655402BC59B7C3@AUSX7MCPC102.AMER.DELL.COM>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] all files unlabeled_t when using squashfs
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
X-List-Received-Date: Wed, 05 Nov 2014 16:09:31 -0000
X-Groupsio-MsgNum: 22071
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline

--SUOF0GtieIMvvwua
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Josh,

[[yocto]  [meta-selinux] all files unlabeled_t when using squashfs] On 14.1=
1.03 (Mon 18:48) Josh_Pennell@Dell.com wrote:

> Hello,
>=20
> =20
>=20
> I=E2=80=99m working on a project using the meta-selinux reference policy =
on an
> embedded system.  The device uses a squashfs file system that is
> labeled during build time.  During the build, policy file labels are
> applied using Pseudo and setfiles with an alternate root path
> specified.  Also if I modify the build to use sudo setfiles I can
> confirm the file tags are correct.

What about when the system is booted?  I mean, can you try relabling the
filesystem on the target itself?  Historically it's been a pretty sticky
challenge to get labels correct in a target fs in a cross-build
environment, even when it's only a half-cross scenario (that is,
building on x86-64 for x86-64 but still using the x-build environment).
I've worked on a number of projects in the past where we've had to make
this work and it does tend to be full of blind alleys.  :-)

Anyway, it sounds like things are mostly good with your setup, but I'd
like to know if you are able to first do something like booting your
system, verifying you have the unlabeled_t scenario, then do a 'fixfiles
-F restore' or 'fixfiles -F relabel' on your live system, that would
help.

Also, before you boot your system for the first time, can you check to
see if there is a '/.autorelabel' file present and, if so, if there are
any warnings or errors reported during your first boot?  Usually if
there is a problem, that'll point toward it.

> Currently this is being done with Yocto 1.3 for prototyping on some older
> hardware but moving forward Yocto 1.7 will be used.

Yeah, if it's at all possible to migrate to something newer, that'd be
your best option.  1.3 is pretty long in the tooth and there's been a
lot of improvements in meta-selinux in the interim.

-J.

>=20
> =20
>=20
> Using a Fedora system it is possible to mount the squashfs file and confi=
rm the
> file labels are correct.  When the target system is flashed the file labe=
ls for
> the squashfs files are incorrect, but ram disk files are correct.  Using =
ls
> =E2=80=93laZ, all squashfs files are system_u:object_r:unlabeled_t
>=20
> =20
>=20
> The kernel .config values for squsahfs and selinux here here
>=20
> =20
>=20
> CONFIG_SQUASHFS=3Dy
>=20
> CONFIG_SQUASHFS_XATTR=3Dy
>=20
> CONFIG_SQUASHFS_ZLIB=3Dy
>=20
> CONFIG_SQUASHFS_LZO=3Dy
>=20
> CONFIG_SQUASHFS_XZ=3Dy
>=20
> # CONFIG_SQUASHFS_4K_DEVBLK_SIZE is not set
>=20
> CONFIG_SQUASHFS_EMBEDDED=3Dy
>=20
> CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3D10
>=20
> =20
>=20
> CONFIG_SECURITY_SELINUX=3Dy
>=20
> CONFIG_SECURITY_SELINUX_BOOTPARAM=3Dy
>=20
> CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=3D1
>=20
> CONFIG_SECURITY_SELINUX_DISABLE=3Dy
>=20
> CONFIG_SECURITY_SELINUX_DEVELOP=3Dy
>=20
> CONFIG_SECURITY_SELINUX_AVC_STATS=3Dy
>=20
> CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=3D1
>=20
> CONFIG_SECURITY_SELINUX_POLICYDB_VERSION_MAX=3Dn
>=20
> # CONFIG_SECURITY_SELINUX_POLICYDB_VERSION_MAX is not set
>=20
> =20
>=20
> Has anyone else run into this problem?  Any suggestions on what may be wr=
ong?
>=20
> =20
>=20
> Regards,
>=20
> josh
>=20
> =20
>=20

--=20
-Joe MacDonald.
:wq

--SUOF0GtieIMvvwua
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUWku1AAoJEEn8ffcsOfaWlnUH/iU6rftWdAFYqEcXHaif1JBX
jeYIXLD6LitrF0BRRZ2zzbGL8X35kFuzVkNdu7bbXnY7nXLqeNqGl2Y4MqbFG43E
wSmlnEzhiJbw6LGQG5xSDw4U3ehndf1Mg8UQ+hmXq8JQ/oCCjzgUBmKpdpE0eOg+
waWZ7u6weD8bxfkE8M3WJPEtxabsyHzYWqCXLWvzh8Fh1vPIhGtVqJ0q2CE6QEnf
wUCnGzVhlrLdZvhk6GsK2lzWJ4+hBs+9tJrnvT4AWZb9qbBCBS4W8iQ/43OwwYck
f1NDdmL9WUlr11X9XEtJF0Af7rV9GQ9DRAymZL5WDxvIs9BTpJA8cQk6FUoYnSM=
=UNTy
-----END PGP SIGNATURE-----

--SUOF0GtieIMvvwua--
