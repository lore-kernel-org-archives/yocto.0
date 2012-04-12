Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B2D7E00746
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 02:36:33 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2797699pbb.35
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 02:36:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=jNMt0D/C0Ot/3ADsGbaBc9vfG2XaW8ZL8ICkWQUfhNI=;
	b=N6xgI77r01GZ/26JhALdgXtqeZO7GoXVDVQSp7AVGdRgzAAxw0mYYvomRLYf34TpG5
	mKHi5hfyN0k2b/YSK/PAGeK6IY+zL1qZeXr7VBJmmY/F5G+tbKqIsJBzwMizUsbwgWf8
	bRrMDR0Fe36EGbrg5H5g2N4kN8FtXRYM+N225KowRhjyrKWQrU4eqANsobki2MG65l0f
	Vysz2C3NoBXTswQrlnKveplo7ZJhVs22vk6B3EjH0xTNcIYHdjO+G8CNMRKO0iCC6+vv
	0WiqB2ng4Ehe7wn2/t4ERDCEa6xBwAWHGlCx4p7RvQlc/ASDgtAOSK7sNIk31UcJ6BEx
	IsMQ==
Received: by 10.68.195.162 with SMTP id if2mr1849976pbc.94.1334223393304;
	Thu, 12 Apr 2012 02:36:33 -0700 (PDT)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id a9sm5195713pbo.48.2012.04.12.02.36.29
	(version=SSLv3 cipher=OTHER); Thu, 12 Apr 2012 02:36:32 -0700 (PDT)
Message-ID: <1334223385.2759.19.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 12 Apr 2012 15:06:25 +0530
In-Reply-To: <20120412080021.GA3661@jama.jama.net>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
	<20120412080021.GA3661@jama.jama.net>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQk11zySm3cl+yhDFKEXqU3mYHkHVq/uLbIvBNSPKS/H6ZkqPylwP3o9QxskXf6Bz47Vbixh
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Thu, 12 Apr 2012 09:36:33 -0000
X-Groupsio-MsgNum: 6040
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-NkJ1BAkGY+r8UR5zA+PV"

--=-NkJ1BAkGY+r8UR5zA+PV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2012-04-12 at 10:00 +0200, Martin Jansa wrote:
> > On Wed, 2012-04-11 at 17:30 -0700, Darren Hart wrote:
> > > I run on a beast with 12 cores, 48GB of RAM, OS and sources on=20
> > > a G2 Intel SSD, with two Seagate Barracudas in a RAID0 array for
> > > my /build partition. I run a headless Ubuntu 11.10 (x86_64)
> > > installation running the 3.0.0-16-server kernel. I can build
> > > core-image-minimal in < 30 minutes and core-image-sato in < 50
> > > minutes from scratch.=20
>=20
> why not use so much RAM for WORKDIR in tmpfs? I bought 16GB just to be
> able to do my builds in tmpfs and keep only more permanent data on
> RAID.=20

+1=20

I tried using the tmpfs for WORKDIR on my T420 which has 8GB of RAM. (In
India, maximum single slot DDR3 RAM we can get is 4GB.) Obviously, this
is not sufficient :( Maybe I shouldn't use the laptop for build
purposes.

Moreover, every time I build the image in yocto, temperature peeks to 87
degree Celsius. Hoping that my HDD should not die.

--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-NkJ1BAkGY+r8UR5zA+PV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk+GohkACgkQWw85XwuSFMKtPACguFRxpVwlPpRQCx4XycM5jR1o
aDkAn07Jvmhh6bXN3juzK3PWUrpe1B2E
=Cyl1
-----END PGP SIGNATURE-----

--=-NkJ1BAkGY+r8UR5zA+PV--
