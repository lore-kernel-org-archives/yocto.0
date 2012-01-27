Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64ECDE00592
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 02:23:13 -0800 (PST)
Received: by dakj40 with SMTP id j40so1560213dak.35
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 02:23:13 -0800 (PST)
Received: by 10.68.75.11 with SMTP id y11mr13470356pbv.51.1327659793591;
	Fri, 27 Jan 2012 02:23:13 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id x8sm18857196pbr.11.2012.01.27.02.23.11
	(version=SSLv3 cipher=OTHER); Fri, 27 Jan 2012 02:23:12 -0800 (PST)
Message-ID: <1327659778.2964.16.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 27 Jan 2012 15:52:58 +0530
In-Reply-To: <20120127080849.GB3779@jama.jama.net>
References: <4F21FDEF.2010500@linux.intel.com>
	<4F220105.3080600@linux.intel.com> <4F220477.8030600@linux.intel.com>
	<20120127080849.GB3779@jama.jama.net>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: Re: New recipes not installing in core-image-minimal
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
X-List-Received-Date: Fri, 27 Jan 2012 10:23:14 -0000
X-Groupsio-MsgNum: 4450
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-r/oHn26c+R3ymnfqEECa"

--=-r/oHn26c+R3ymnfqEECa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Martin,

On Fri, 2012-01-27 at 09:08 +0100, Martin Jansa wrote:
> > Perhaps, but it didn't fix this particular problem. Neither
> > /usr/bin/ranpwd nor /etc/init.d/genmac appear in the rootfs.
> > However, each still appears in their respective workdir/image:
>=20
> Are they in workdir/packages-split/genmac/etc/init.d/genmac
> workdir/packages-split/ranpwd/etc/init.d/ranpwd=20

I too have a similar issue when I try to include a manually constructed
fstab file into the rootfs image. The file is available in the following
locations
     1. core2-poky-linux/${PN}-${PV}-${PR}/etc/fstab
     2. core2-poky-linux/${PN}-${PV}-${PR}/packages-split/${PN}/etc/fstab

but not in the final rootfs image. May be I am missing something
trivial.

Eager to know the solution on this thread.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-r/oHn26c+R3ymnfqEECa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8iewIACgkQWw85XwuSFMK/jwCgvRFVFbac5uE9LX/YqR/tHFpC
dfkAoIqyN5hSLMj4hQNlhHPyFX2fksUG
=KAx5
-----END PGP SIGNATURE-----

--=-r/oHn26c+R3ymnfqEECa--
