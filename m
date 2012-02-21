Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F797E004D2
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2012 01:41:03 -0800 (PST)
Received: by pbcxa12 with SMTP id xa12so6439628pbc.35
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2012 01:41:03 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.189.39 as permitted sender) client-ip=10.68.189.39; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.189.39 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.189.39])
	by 10.68.189.39 with SMTP id gf7mr65976682pbc.142.1329817263313
	(num_hops = 1); Tue, 21 Feb 2012 01:41:03 -0800 (PST)
Received: by 10.68.189.39 with SMTP id gf7mr54823775pbc.142.1329817263069;
	Tue, 21 Feb 2012 01:41:03 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id q8sm15632279pbn.20.2012.02.21.01.41.00
	(version=SSLv3 cipher=OTHER); Tue, 21 Feb 2012 01:41:02 -0800 (PST)
Message-ID: <1329817258.2743.23.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 21 Feb 2012 15:10:58 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQkuNtuWnBJN5ahGEqtz6B/itRHwHw9Q2AP/kGR/FTq2DznbZRXtcaIU5asPgjEOBtyYPTmj
Subject: missing kernel in rootfs image
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
X-List-Received-Date: Tue, 21 Feb 2012 09:41:03 -0000
X-Groupsio-MsgNum: 4891
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-5YcZ1S21r1pOT+UGnm3M"

--=-5YcZ1S21r1pOT+UGnm3M
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	While trying to generate my custom rootfs image, I added the
linux_yocto_3.0.bbappend file to my custom layer and specified the
KMACHINE, SRCREV and COMPATIBLE_MACHINE variables. I find the generated
kernel image (bzImage-ekino.bin) in the tmp/deploy/images directory.

But, the rootfs image does not contain the kernel (in /boot directory).
My machine configuration file has the following kernel specific lines

        PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
        PREFERRED_VERSION_linux-yocto ?=3D "3.0%"
       =20
Am I missing something?

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-5YcZ1S21r1pOT+UGnm3M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9DZqoACgkQWw85XwuSFMK00QCgt0wdePXGKCu5tRdmkwGDkzdD
6dgAnAs/WZBkpooG0oRj4tpkAEAXm/AK
=RYM/
-----END PGP SIGNATURE-----

--=-5YcZ1S21r1pOT+UGnm3M--
