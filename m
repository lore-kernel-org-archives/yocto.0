Return-Path: <josh@hipro.co.in>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FEA2E00594
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 02:48:08 -0800 (PST)
Received: by iagz35 with SMTP id z35so2337367iag.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 02:48:07 -0800 (PST)
Received: by 10.50.10.199 with SMTP id k7mr14038616igb.25.1327402087407;
	Tue, 24 Jan 2012 02:48:07 -0800 (PST)
Received: from [192.168.10.214] ([59.99.251.45])
	by mx.google.com with ESMTPS id vg9sm28736103igb.4.2012.01.24.02.48.04
	(version=SSLv3 cipher=OTHER); Tue, 24 Jan 2012 02:48:06 -0800 (PST)
Message-ID: <1327402068.2521.8.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: yocto@yoctoproject.org
Date: Tue, 24 Jan 2012 16:17:48 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQme9HxneHFC8R94RS7ocTdwRb6W0xHhpR5VUkbU4PerEdvTIuuO1zmYyK+Ty2Cb5SNeW0df
Subject: overriding a class in custom layer
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
X-List-Received-Date: Tue, 24 Jan 2012 10:48:08 -0000
X-Groupsio-MsgNum: 4362
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-/u9Sh1EKd7Z47CPawoTH"

--=-/u9Sh1EKd7Z47CPawoTH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	What is the preferred way of overriding an existing class in the 'meta'
layer. I tried to add the existing class (say image_types.bbclass) to my
custom layer and did some modifications to it. But while trying to build
the image, only the original class gets inherited instead of the one in
my custom layer. How do I force the bitbake to use the modified class
file in the custom layer?=20

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-/u9Sh1EKd7Z47CPawoTH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8ejFQACgkQWw85XwuSFMKQ9ACgny2sT1Lu2lUfPE6o8QtoIJtp
+y4AoIyoMGWl6wTR+6klDa3WornrSgiH
=ID2v
-----END PGP SIGNATURE-----

--=-/u9Sh1EKd7Z47CPawoTH--
