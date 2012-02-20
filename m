Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A92EE0139E
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 06:03:59 -0800 (PST)
Received: by dadp13 with SMTP id p13so6944364dad.35
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 06:03:58 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.241.170 as permitted sender) client-ip=10.68.241.170; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.241.170 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.241.170])
	by 10.68.241.170 with SMTP id wj10mr63629189pbc.42.1329746638978
	(num_hops = 1); Mon, 20 Feb 2012 06:03:58 -0800 (PST)
Received: by 10.68.241.170 with SMTP id wj10mr52615963pbc.42.1329746638920;
	Mon, 20 Feb 2012 06:03:58 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id q1sm13279792pbv.49.2012.02.20.06.03.56
	(version=SSLv3 cipher=OTHER); Mon, 20 Feb 2012 06:03:58 -0800 (PST)
Message-ID: <1329746626.2728.10.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 20 Feb 2012 19:33:46 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQnUzfwMQm+XccomoX8u0o/J+DIU7Q9O4+WWl6B+oji8CDM6aRLleeOdV3qhVmUxwUaB07/0
Subject: how do I contribute to yocto
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
X-List-Received-Date: Mon, 20 Feb 2012 14:03:59 -0000
X-Groupsio-MsgNum: 4884
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-zfvsV/hs5xk1AUAV5tvp"

--=-zfvsV/hs5xk1AUAV5tvp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	In the process of creating my custom image, I ended up writing new
recipes for packages which does not exist in yocto. I think it will be
useful for others. I use the edison branch for my work, and I add the
new recipes to my custom layer without disturbing the edison branch. So,
how do I contribute these new recipes?=20

Read the wiki https://wiki.yoctoproject.org/wiki/Contribution_Guidelines
it doesn't mention about the branch to use etc.

Can someone guide me.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-zfvsV/hs5xk1AUAV5tvp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9CUsIACgkQWw85XwuSFMK1WgCfeOFRGsbKAnFQMFrAjmYAneCG
IAkAoKwT9iRcNesKNrWY/BMUFuGngo3v
=2O09
-----END PGP SIGNATURE-----

--=-zfvsV/hs5xk1AUAV5tvp--
