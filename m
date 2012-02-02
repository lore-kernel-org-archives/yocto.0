Return-Path: <josh@hipro.co.in>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F12C3E0059A
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 21:17:55 -0800 (PST)
Received: by iagz35 with SMTP id z35so3675026iag.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 21:17:55 -0800 (PST)
Received: by 10.50.216.201 with SMTP id os9mr1585882igc.22.1328159875335;
	Wed, 01 Feb 2012 21:17:55 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id mr24sm2778530ibb.1.2012.02.01.21.17.53
	(version=SSLv3 cipher=OTHER); Wed, 01 Feb 2012 21:17:54 -0800 (PST)
Message-ID: <1328159864.2636.13.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 02 Feb 2012 10:47:44 +0530
In-Reply-To: <4F296D48.4080807@ti.com>
References: <1327993829.2696.18.camel@babel.joshhome>
	<1328078233.2628.4.camel@babel.joshhome>
	<1328111395.2628.32.camel@babel.joshhome> <4F296D48.4080807@ti.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: Re: creating global variables in a recipes
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
X-List-Received-Date: Thu, 02 Feb 2012 05:17:56 -0000
X-Groupsio-MsgNum: 4582
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-bh5qI6ltky/aVAsNkeWx"

--=-bh5qI6ltky/aVAsNkeWx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello William, Christopher,

Thanks for the detailed explanation.

On Wed, 2012-02-01 at 11:50 -0500, William Mills wrote:
> I am not sure I can give you a better option that local.conf but I can
> explain why what your doing does not work.
>=20
> It may feel from your usage that the image recipe is the ancestor of
> all the recipes but this is really not true.  The settings in a image
> recipe effect the assembly of that image and not the packages that
> they depend on.  An image could be assembled from packages that were
> built long ago or inherited via shared state.
>=20
> settings in local,conf on the other hand affect all recipes.  If you
> add something there it will be seen by all recipes.  Unfortunately
> this means that all recipes are dependent on the settings and
> everything will need to be rebuilt in case the new setting effects
> them.  I believe this also means you will not be able to used share
> state with someone with a different setting of (or unset)
> SOME_VARIABLE.  (Well you can but you will both be rebuild
> everything.)
>=20
> Alternatives to the whole approach are to make alternative packages
> for the various cases (busybox-minimal vs busybox-full) or use an
> image task to create an asset in the file system that then makes a
> difference at run time.=20

My use-case is that I am creating an /etc/fstab file via
base-files.bbappend recipe. In that fstab, I use uuid (generated via
uuidgen) to denote different partition filesystems. So, I have to use
this uuid in the extended image_types.bbclass file to set them to the
generated partition images appropriately (via tune2fs).

One more approach I can think of is to echo the uuid to some file in the
deploy images directory (while creating the fstab file) and read them
back in image_types class. But this process looks messy.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-bh5qI6ltky/aVAsNkeWx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8qHHgACgkQWw85XwuSFMI+GwCeKqd5N/onfk4TN3d9KZ9ujB7z
XgsAmwYK3atRV27nh2mDzV9xpEKYL0Rh
=Nyit
-----END PGP SIGNATURE-----

--=-bh5qI6ltky/aVAsNkeWx--
