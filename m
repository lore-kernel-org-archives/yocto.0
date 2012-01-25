Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8621E00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 21:33:31 -0800 (PST)
Received: by pbbb2 with SMTP id b2so104752pbb.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 21:33:31 -0800 (PST)
Received: by 10.68.219.231 with SMTP id pr7mr37324943pbc.30.1327469611304;
	Tue, 24 Jan 2012 21:33:31 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id h10sm3573036pbv.6.2012.01.24.21.33.28
	(version=SSLv3 cipher=OTHER); Tue, 24 Jan 2012 21:33:30 -0800 (PST)
Message-ID: <1327469596.2543.15.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 25 Jan 2012 11:03:16 +0530
In-Reply-To: <1782182.Md7PmFZxKk@helios>
References: <1327402068.2521.8.camel@babel.joshhome>
	<1327415044.17885.7.camel@babel.joshhome>
	<2F85497E73304B2B8FBE56AEEDEEA234@gmail.com>
	<1782182.Md7PmFZxKk@helios>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: overriding a class in custom layer
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
X-List-Received-Date: Wed, 25 Jan 2012 05:33:32 -0000
X-Groupsio-MsgNum: 4388
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Ws3uIwanCTe8amAMHv20"

--=-Ws3uIwanCTe8amAMHv20
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Paul,

Thanks for the reply.

On Tue, 2012-01-24 at 16:17 +0000, Paul Eggleton wrote:
> I'd also say, what is in the classes is intended to work for everyone,
> so if there's something in the core classes that is not working well
> for your situation we'd really like to hear about it - hopefully we
> can incorporate whatever changes you need and you can avoid having to
> overlay the entire class.=20

At present when we build an image, everything gets under one partition.
For my use case I need two images (denoting different partitions)
     1. rootfs image (mount point: '/', mounted as ro)
     2. data partition image (mount point: say '/data' mounted as rw)

While generating the image, I construct the /etc/fstab file manually by
representing filesystems by their uuids (generated using uuidgen). So,
to set this uuid in generated image I try to override the
image_types.bbclass and using tune2fs I set the uuid for the generated
images.

Is there any other better way of doing this?

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-Ws3uIwanCTe8amAMHv20
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8flBwACgkQWw85XwuSFMJ9oQCg2UVSs2w679PJ+8iO81WXf8SD
kNsAmwbfzQT0rcPiVbVAc2JA8Yn8pHxr
=4txr
-----END PGP SIGNATURE-----

--=-Ws3uIwanCTe8amAMHv20--
