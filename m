Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 471CDE0070C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 01:21:20 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so802071pbb.35
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 01:21:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=EeUOdYZTd+DHEWCOSUJ6pRKxlrIZmWiVlxhkEjTTYmo=;
	b=R6OW+TLRQoQugfczN7YdkN54KMw4VMsva95xV6i4s7KCb5M8jGiqGAjRqNZ4h+t2hp
	MI+t91GyKCocVsUTD0hb0qjl9DXcPdxmsLLwxlEq+wVA9igW0DbqBKebbtkyBLdcplo2
	sTgyOL1HsPT0z4mEreSmGSyhdXozzZO8/zannlYEv1dQ4y592jYX4/ot3KdQge7pl6K1
	XDzN52K0wd5FgnV1+zshym3sxVqIL4wcyzbfhfPhfc7d1PYNHYLxQhZ+38iiAebpOo9y
	XpFZACwVG3ML1egGz5zYYrHK1j3PW/P6F0dhamwrbx9kk4ijpp8K+ipTAttYBXXoNyj/
	LHxw==
Received: by 10.68.223.193 with SMTP id qw1mr8844240pbc.61.1332318079546;
	Wed, 21 Mar 2012 01:21:19 -0700 (PDT)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id s10sm888161pbq.13.2012.03.21.01.21.16
	(version=SSLv3 cipher=OTHER); Wed, 21 Mar 2012 01:21:18 -0700 (PDT)
Message-ID: <1332318063.5719.3.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 21 Mar 2012 13:51:03 +0530
In-Reply-To: <4F638960.80401@linux.intel.com>
References: <1331816822.19369.7.camel@babel.joshhome>
	<4F638960.80401@linux.intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmxKXmzZOHj6NW2CsYEejiUJ+kPFWDy4OL4Ypra/hMgcWQO4QZ/arl7nEmXyD+fxlY7ohXI
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: syslinux filesystem size limitation
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
X-List-Received-Date: Wed, 21 Mar 2012 08:21:20 -0000
X-Groupsio-MsgNum: 5427
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-GIOxLtOMGJtVgIMR6OM6"

--=-GIOxLtOMGJtVgIMR6OM6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Darren,

On Fri, 2012-03-16 at 11:41 -0700, Darren Hart wrote:
> Where are you getting this information?
>=20
> From what I can gather, syslinux 2.xx didn't support FAT32, which
> limited the maximum filesystem size purely due to limitations of
> FAT16.
> Syslinux 3.xx supports FAT32. We are building syslinux 4.xx in Yocto.
>=20
> I'm fairly certain I've built syslinux images larger than 1GB without
> an
> issue.
>=20
> Can you provide a failure case?=20

In order to answer this, I have added my comments on the bug listing
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2138

I guess it would be more appropriate there.

Regards
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-GIOxLtOMGJtVgIMR6OM6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk9pj28ACgkQWw85XwuSFMKY3QCfbDjrilNqyVLsG4zI1oj4+q9g
DjMAniuFZVYqj7CQQNyemEWvXZbmXMol
=zOU9
-----END PGP SIGNATURE-----

--=-GIOxLtOMGJtVgIMR6OM6--
