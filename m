Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4BE3E003E4
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 07:48:33 -0800 (PST)
Received: by dadp13 with SMTP id p13so3143133dad.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 07:48:33 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.218.5 as permitted sender) client-ip=10.68.218.5; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.218.5 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.218.5])
	by 10.68.218.5 with SMTP id pc5mr8970234pbc.101.1330098513628 (num_hops
	= 1); Fri, 24 Feb 2012 07:48:33 -0800 (PST)
Received: by 10.68.218.5 with SMTP id pc5mr7528289pbc.101.1330098513515;
	Fri, 24 Feb 2012 07:48:33 -0800 (PST)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id l1sm4636973pbe.54.2012.02.24.07.48.26
	(version=SSLv3 cipher=OTHER); Fri, 24 Feb 2012 07:48:32 -0800 (PST)
Message-ID: <1330098495.3803.68.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 24 Feb 2012 21:18:15 +0530
In-Reply-To: <4F47A273.5030701@windriver.com>
References: <1329817258.2743.23.camel@babel.joshhome>
	<1330072145.3803.25.camel@babel.joshhome>
	<4F47A273.5030701@windriver.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmx8mEwMNt2H7Nu3iv2Tl6NN2eTD7A0ZfXlOH/sXW3vPFE49qG/yeQVz7KiF/OgFgDVppl3
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: missing kernel in rootfs image
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
X-List-Received-Date: Fri, 24 Feb 2012 15:48:33 -0000
X-Groupsio-MsgNum: 4921
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-oWX+NgDpUvsD3rS5GJuG"

--=-oWX+NgDpUvsD3rS5GJuG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2012-02-24 at 09:45 -0500, Bruce Ashfield wrote:
> > Can someone explain the work flow behind the process of installing
> > the kernel into the rootfs image? My custom image has the
> > IMAGE_INSTALL for "task-core-boot". In turn, the task-core-boot
> > recipe DEPENDS on "virtual/kernel" this ensures that the kernel is
> > staged.
> >
> > But, I am not sure which recipe/class is responsible for installing
> > the kernel in the final rootfs image. Should I explicitly add the
> > "linux-yocto" to RDEPENDS?
>=20
> Are you past this issue yet ? I'm not sure, since you did have some
> other email that looked to be past this .. or maybe they weren't.=20

I'm not sure how to put this. When I added the "linux-yocto" to
RDEPENDS_task* I was able to get the kernel image in the rootfs image
(ext3 image). But on the next compilation (i mean when I did $ bitbake
custom-image again) it complained dependency failed for task-*. So, I
ended up removing the line from RDEPENDS_task* but the final rootfs
image retained the kernel file in it.

I am in a confusion of which one to blame. I guess, the only way to
rebuild the tasks for custom-image is to remove tmp and sstate-cache
directories and build again.

        $ bitbake -c clean task-*
        $ bitbake -c clean custom-image   =20
       =20
The above commands doesn't completely re-build the tasks listed for
custom-image. So, I guess the problem still exists.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-oWX+NgDpUvsD3rS5GJuG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9HsUAACgkQWw85XwuSFMLwyACfaVeHaEXzo5frCM4Wkqp0WvKW
ODYAoIjCVH4QnZNYXvu13AMpLu16n2vH
=QS/o
-----END PGP SIGNATURE-----

--=-oWX+NgDpUvsD3rS5GJuG--
