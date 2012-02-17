Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52188E003E1
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 08:17:37 -0800 (PST)
Received: by pbcxa12 with SMTP id xa12so2552189pbc.35
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 08:17:37 -0800 (PST)
Received: by 10.68.73.196 with SMTP id n4mr26019404pbv.33.1329495456922;
	Fri, 17 Feb 2012 08:17:36 -0800 (PST)
Received: from [192.168.0.6] ([59.92.38.198])
	by mx.google.com with ESMTPS id e6sm5507563pbr.74.2012.02.17.08.17.33
	(version=SSLv3 cipher=OTHER); Fri, 17 Feb 2012 08:17:36 -0800 (PST)
Message-ID: <1329495441.2829.5.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 17 Feb 2012 21:47:21 +0530
In-Reply-To: <20120217144548.GH5822@jama.jama.net>
References: <1329489648.2709.14.camel@babel.joshhome>
	<20120217144548.GH5822@jama.jama.net>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmGofJ8CKbb98uBxbuKfq3K8iHDo/mq75WG3sozbws557CclR5qrqIrSWDczH1GMSJwntvW
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: unable to add a new file to base-files recipe via bbappend
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
X-List-Received-Date: Fri, 17 Feb 2012 16:17:37 -0000
X-Groupsio-MsgNum: 4875
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-+JtMOTiErGksxJUUT2T7"

--=-+JtMOTiErGksxJUUT2T7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Martin,

On Fri, 2012-02-17 at 15:45 +0100, Martin Jansa wrote:
> You need to set something like
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> for fetcher to look in ${PN} subdirectory of directory where=20
> you have .bbappend

Thanks for the info.

> And you're bbappending wrong recipe, xorg.conf belongs to
> meta/recipes-graphics/xorg-xserver/xserver-xf86-config/=20

Oops. Will bbappend to the above mentioned recipe.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-+JtMOTiErGksxJUUT2T7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8+fZEACgkQWw85XwuSFMJ2qwCfe5nk9JBM+QKgPkcMWufMwhbz
3LQAnA8gkD/OOhAdycrNeF1FEdB3GzxV
=9y3H
-----END PGP SIGNATURE-----

--=-+JtMOTiErGksxJUUT2T7--
