Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79678E0059A
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 00:29:24 -0800 (PST)
Received: by pbbrp8 with SMTP id rp8so1131357pbb.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 00:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.194.8 as permitted sender) client-ip=10.68.194.8; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.194.8 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.194.8])
	by 10.68.194.8 with SMTP id hs8mr4448404pbc.113.1330072164255 (num_hops
	= 1); Fri, 24 Feb 2012 00:29:24 -0800 (PST)
Received: by 10.68.194.8 with SMTP id hs8mr3714830pbc.113.1330072164217;
	Fri, 24 Feb 2012 00:29:24 -0800 (PST)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id q3sm3769144pbc.63.2012.02.24.00.29.21
	(version=SSLv3 cipher=OTHER); Fri, 24 Feb 2012 00:29:23 -0800 (PST)
Message-ID: <1330072145.3803.25.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 24 Feb 2012 13:59:05 +0530
In-Reply-To: <1329817258.2743.23.camel@babel.joshhome>
References: <1329817258.2743.23.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQm41QrtxDmGpgRsQHL3it1kRDS3kPscD86qroNSXdMu7ECAhKUoD0vrHfDh/0hRJP5/UK9U
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
X-List-Received-Date: Fri, 24 Feb 2012 08:29:24 -0000
X-Groupsio-MsgNum: 4911
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-YjbsN1raevHaU5fIJmcm"

--=-YjbsN1raevHaU5fIJmcm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2012-02-21 at 15:10 +0530, Joshua Immanuel wrote:
>         While trying to generate my custom rootfs image, I added the
> linux_yocto_3.0.bbappend file to my custom layer and specified the
> KMACHINE, SRCREV and COMPATIBLE_MACHINE variables. I find the
> generated
> kernel image (bzImage-ekino.bin) in the tmp/deploy/images directory.
>=20
> But, the rootfs image does not contain the kernel (in /boot
> directory).
> My machine configuration file has the following kernel specific lines
>=20
>         PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
>         PREFERRED_VERSION_linux-yocto ?=3D "3.0%"=20

Can someone explain the work flow behind the process of installing the
kernel into the rootfs image? My custom image has the IMAGE_INSTALL for
"task-core-boot". In turn, the task-core-boot recipe DEPENDS on
"virtual/kernel" this ensures that the kernel is staged.=20

But, I am not sure which recipe/class is responsible for installing the
kernel in the final rootfs image. Should I explicitly add the
"linux-yocto" to RDEPENDS?=20

Please guide me.=20

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-YjbsN1raevHaU5fIJmcm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9HSlEACgkQWw85XwuSFMIIzACggm5FNnzoq7dmoMcuZdtlntu0
6QgAoLOHLEWdRwzP+3mSn2gx+tnkDa8x
=3c5C
-----END PGP SIGNATURE-----

--=-YjbsN1raevHaU5fIJmcm--
