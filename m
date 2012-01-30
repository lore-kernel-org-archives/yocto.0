Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C344FE0127D
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 00:29:36 -0800 (PST)
Received: by pbcc11 with SMTP id c11so4438874pbc.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 00:29:36 -0800 (PST)
Received: by 10.68.228.101 with SMTP id sh5mr40321865pbc.127.1327912175608;
	Mon, 30 Jan 2012 00:29:35 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id j5sm45495361pbe.1.2012.01.30.00.29.33
	(version=SSLv3 cipher=OTHER); Mon, 30 Jan 2012 00:29:35 -0800 (PST)
Message-ID: <1327912164.2519.5.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 30 Jan 2012 13:59:24 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: [PATCH] typo mistake in ix86-common file
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
X-List-Received-Date: Mon, 30 Jan 2012 08:29:36 -0000
X-Groupsio-MsgNum: 4484
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-9kFudiUK55Oyixi9Rb4V"

--=-9kFudiUK55Oyixi9Rb4V
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I found a minor typo mistake in ix86-common file which causes the
guile-native package to fail for unsigned int size. So, I am including a
patch for it. I am not sure about the patch sending guidelines. Anyways
here is the patch for it.

diff --git a/meta/site/ix86-common b/meta/site/ix86-common
index 512c9a0..e2796eb 100644
--- a/meta/site/ix86-common
+++ b/meta/site/ix86-common
@@ -1,6 +1,6 @@
 # general
 ac_cv_sizeof_char=3D${ac_cv_sizeof_char=3D1}
-ac_cv_sizeof_unsigned_char=3D${ac_cv_sizeof_unsigned_int=3D1}
+ac_cv_sizeof_unsigned_char=3D${ac_cv_sizeof_unsigned_char=3D1}
 ac_cv_sizeof_char_p=3D${ac_cv_sizeof_char_p=3D4}
 ac_cv_sizeof_unsigned_char_p=3D${ac_cv_sizeof_unsigned_char_p=3D4}
 ac_cv_sizeof_int=3D${ac_cv_sizeof_int=3D4}
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-9kFudiUK55Oyixi9Rb4V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8mVOQACgkQWw85XwuSFMJ6fwCgr0CbAuKDUUM8Qi9dk/Mux+Gv
PvIAoJyyU0VvYlnSdjF9BYxMXsu7T8Pu
=MLN8
-----END PGP SIGNATURE-----

--=-9kFudiUK55Oyixi9Rb4V--
