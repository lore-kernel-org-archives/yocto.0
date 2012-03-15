Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C5C8E01363
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 06:07:28 -0700 (PDT)
Received: by dadv6 with SMTP id v6so4404954dad.28
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 06:07:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:date:organization:content-type:x-mailer
	:mime-version:x-gm-message-state;
	bh=y/RzfWYhjlmpsYsV2FtB4g0xWaNGRsFoZ3E3Ur8peM0=;
	b=AQyPnJ3g0P535o0wBs8MBShl40JYYHme4V8ifJKCQc2430IUzorqLTv1QEgc3bdDav
	6zvx+MsQjSYcqxnT3VwDlOR23Bl/1VvPpXOvZN7Aj2CG8esqd9W7RsGZ4jZKue7jCuNM
	BFUJf8JEwcU9jVVAv8kRRBxn8FrCXUeDJtPb943IOotWnf1ICBVhasDG8waF0ljCpg04
	/X4uRfKwVatDRt2kHhWfB5FZOgVLG6ZOCHSqmmHiBTcPF8HRctSdGmpCOFB/Gxc7LW8Y
	3iRZsbcdoiq9BEReaiS5f/5XU9bW3X5/Azah64urOZnfhkIoJ10htX1eyGeb0n2lpjYI
	Vvvg==
Received: by 10.68.136.99 with SMTP id pz3mr4958010pbb.114.1331816848547;
	Thu, 15 Mar 2012 06:07:28 -0700 (PDT)
Received: from [192.168.1.101] ([122.165.226.252])
	by mx.google.com with ESMTPS id f5sm1880643pbe.26.2012.03.15.06.07.23
	(version=SSLv3 cipher=OTHER); Thu, 15 Mar 2012 06:07:27 -0700 (PDT)
Message-ID: <1331816822.19369.7.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 15 Mar 2012 18:37:02 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQksZvoUNC9U0rUZDCnO9SkJgtBfvhb/htoGpoLMEQHhqYd/7Gp0B673tLo0ubsteziysU10
Subject: syslinux filesystem size limitation
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
X-List-Received-Date: Thu, 15 Mar 2012 13:07:29 -0000
X-Groupsio-MsgNum: 5345
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-m1g2D/vz1oR1pg1L4T02"

--=-m1g2D/vz1oR1pg1L4T02
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
	In yocto I find that the live image (hddimg) is generated using
syslinux (in bootimg.bbclass). But, I find there has been no check
enforced to find whether the filesystem size exceeds 1 GB. The image
will not boot if the hddimg size exceeds 1GB. This is due to the
limitation in syslinux.

How to address this issue? Is there any other alternate solution for
this? Should I file a bug report for this?

Regards
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-m1g2D/vz1oR1pg1L4T02
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9h6XYACgkQWw85XwuSFML8UgCeOuOimhUSX/nxpSCdQ4Q++Oos
MNUAoLfnOINZ2//5ijR9OYYEl1AFMhX5
=0OLa
-----END PGP SIGNATURE-----

--=-m1g2D/vz1oR1pg1L4T02--
