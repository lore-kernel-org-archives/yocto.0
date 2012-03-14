Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B7CCE0044C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 12:51:30 -0700 (PDT)
Received: by dadv6 with SMTP id v6so3085565dad.28
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 12:51:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:date:organization:content-type:x-mailer
	:mime-version:x-gm-message-state;
	bh=B2aHpe08p3SHgtqCIbpQtRj3hg5p+Ua/zTxcp+cqmvk=;
	b=LgwrbF0zQHXlWloqOBQeXge0eYMMUaSzgNdidQQocLilYdFL1WRYGmczW+J8MMjhLe
	UCWZI3MB5BfthYZJKFw9Gx3/n7ZH/95K46/K2BoWfvec1nLSsM5TGQX+V2fCFc1HyIDc
	vRfowDqqxr3XWknizq+ZQ4Tbp6j4nY3Tdgl43WIQZ8TR6/Ap8Vsi3vLHWHXjq9vKVpzb
	Cb7f6uochIYVTIS9Mw/U7SU43SttkVdvFFE8JU5lx5wYoU18MzJclT7duNzaHKs0Wa25
	ztoDSv91b1Xmu/NlF7s5uIxM56hlq22TXgilgKaq/y50Y9rTZgD5ObvgOT0VuIy3kcjO
	V7BQ==
Received: by 10.68.193.138 with SMTP id ho10mr4448488pbc.80.1331754689766;
	Wed, 14 Mar 2012 12:51:29 -0700 (PDT)
Received: from [192.168.1.80] ([122.165.226.252])
	by mx.google.com with ESMTPS id i3sm49293pbe.33.2012.03.14.12.51.27
	(version=SSLv3 cipher=OTHER); Wed, 14 Mar 2012 12:51:28 -0700 (PDT)
Message-ID: <1331754675.3427.34.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 15 Mar 2012 01:21:15 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQk6Y0CZyywRkoyXH3xJlg55xZGRS5eBXc/q2dXfbFVVajlAE32Viw7nxKcGXYferRJqeDaI
Subject: overriding the bbappend behavior of recipes
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
X-List-Received-Date: Wed, 14 Mar 2012 19:51:30 -0000
X-Groupsio-MsgNum: 5335
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-kNSct3BOqvK/0rIvbJBi"

--=-kNSct3BOqvK/0rIvbJBi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	I have added a custom layer which contains the .bbappend file for
base-files recipe. Which in turn has 'do_install_append' method. I am
generating two sets of custom images in which, one requires the
bbappending whereas the other doesn't require it.

So, how would I control this behavior? Basically, I want the
'do_install_append' to be executed for one image and not for the other.
(If I want for example say, the custom fstab file for one image and the
default fstab file for the other)

Adding a OVERRIDES in the image recipe would not solve the issue as the
order of package builds is undefined. Which means that I cannot add a
method like this 'do_install_append_custom1' in the bbappend file.

Moreover, I found that if a (bbappended or any) recipe is built by
bitbake for an image as its dependency. That recipe is not built again
for an other image which also depends on it (due to sstate). It just
copies the already built package's files to sysroot.=20

I guess, the only possible hack to do this would be to add a
IMAGE_PREPROCESS_COMMAND in the image recipe. Is there any other better
way of doing this? Please guide me.

Regards
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-kNSct3BOqvK/0rIvbJBi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9g9rMACgkQWw85XwuSFMIaXgCfeMQfvyd5JHAgKByKo2ZSJSCD
TMkAoJncXMpSbhcGkudL+JA/FdyveCTj
=fedq
-----END PGP SIGNATURE-----

--=-kNSct3BOqvK/0rIvbJBi--
