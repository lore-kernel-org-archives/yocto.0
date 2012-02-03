Return-Path: <josh@hipro.co.in>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF0DE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 23:14:01 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so5695673obb.35
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 23:14:00 -0800 (PST)
Received: by 10.50.193.195 with SMTP id hq3mr6956469igc.18.1328253240460;
	Thu, 02 Feb 2012 23:14:00 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id ng9sm7804369igc.3.2012.02.02.23.13.58
	(version=SSLv3 cipher=OTHER); Thu, 02 Feb 2012 23:13:59 -0800 (PST)
Message-ID: <1328253229.2658.12.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Chris Larson <clarson@kergoth.com>
Date: Fri, 03 Feb 2012 12:43:49 +0530
In-Reply-To: <CABcZAN=8FaJNHDpY=rpqpX9m9r0hmV-iBC8xySekfTqDge7OGw@mail.gmail.com>
References: <1327993829.2696.18.camel@babel.joshhome>
	<1328078233.2628.4.camel@babel.joshhome>
	<1328111395.2628.32.camel@babel.joshhome> <4F296D48.4080807@ti.com>
	<1328159864.2636.13.camel@babel.joshhome>
	<CABcZAN=8FaJNHDpY=rpqpX9m9r0hmV-iBC8xySekfTqDge7OGw@mail.gmail.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 03 Feb 2012 07:14:02 -0000
X-Groupsio-MsgNum: 4636
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Ue5n11pexWsIEfTsz4MG"

--=-Ue5n11pexWsIEfTsz4MG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Chris,

Thanks for the reply.

On Thu, 2012-02-02 at 08:17 -0700, Chris Larson wrote:
> > My use-case is that I am creating an /etc/fstab file via
> > base-files.bbappend recipe. In that fstab, I use uuid (generated via
> > uuidgen) to denote different partition filesystems. So, I have to
> > use this uuid in the extended image_types.bbclass file to set them
> > to the generated partition images appropriately (via tune2fs).
> >
> > One more approach I can think of is to echo the uuid to some file in
> > the deploy images directory (while creating the fstab file) and read
> > them back in image_types class. But this process looks messy.
>=20
> I'd say generate them in the configuration metadata via inline python
> or an anonymous python function, then use those variables both in the
> base-files recipe and images.=20

Please bear with my ignorance. What do you mean by "generating them in
configuration metadata"? In which file should I do that?

At present as an ugly hack I exported the uuids in the
build/conf/local.conf.=20

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-Ue5n11pexWsIEfTsz4MG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8riS0ACgkQWw85XwuSFMIphQCeIpScR4xc7pNXlznIMM10vGVL
p9YAn3GwrtVu+YVu2JzJ4oH3ZUlRkpe4
=RYvH
-----END PGP SIGNATURE-----

--=-Ue5n11pexWsIEfTsz4MG--
