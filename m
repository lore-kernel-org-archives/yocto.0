Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA238E0059A
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 01:27:00 -0800 (PST)
Received: by pbbrp8 with SMTP id rp8so1185774pbb.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 01:27:00 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.130.7 as permitted sender) client-ip=10.68.130.7; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.130.7 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.130.7])
	by 10.68.130.7 with SMTP id oa7mr5370320pbb.16.1330075620631 (num_hops
	= 1); Fri, 24 Feb 2012 01:27:00 -0800 (PST)
Received: by 10.68.130.7 with SMTP id oa7mr4424814pbb.16.1330075620583;
	Fri, 24 Feb 2012 01:27:00 -0800 (PST)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id p2sm3910287pbb.14.2012.02.24.01.26.57
	(version=SSLv3 cipher=OTHER); Fri, 24 Feb 2012 01:27:00 -0800 (PST)
Message-ID: <1330075610.3803.39.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 24 Feb 2012 14:56:50 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQnA1U52ymLLs6sXo9TTJx3iVvZgn/02TmeL2pcHhyxkfZt+nhpxSfVO8xAeJnz2hYZ8R9AI
Subject: how do I find the filename of the kernel
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
X-List-Received-Date: Fri, 24 Feb 2012 09:27:00 -0000
X-Groupsio-MsgNum: 4912
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-tiW8bZkyUTgqvKkXmeN5"

--=-tiW8bZkyUTgqvKkXmeN5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	I am trying to write a config file in grub-native recipe for which I
need the kernel filename (in my case bzImage-3.0.4-yocto-standard+).

	I find in kernel.bbclass that the kernel file name is constructed from
"${KERNEL_IMAGETYPE}-${KERNEL_VERSION}". And the KERNEL_VERSION is
filled from the 'get_kernelversion' method in linux-kernel-base.bbclass,
which needs the location of kernel's build directory (${B}). Obviously,
this build directory location will not be available in other recipes.

So, how do I get the filename of the kernel in other recipes?

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-tiW8bZkyUTgqvKkXmeN5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9HV9oACgkQWw85XwuSFMIcEQCfWtwp0RvkvkM7NLYUHXrKNEcV
5ZwAoLQf8MlpvPxis9ZEIaqkMTpYQmyP
=xEUD
-----END PGP SIGNATURE-----

--=-tiW8bZkyUTgqvKkXmeN5--
