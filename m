Return-Path: <perezmeyer@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94DFAE00294
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 13:59:33 -0800 (PST)
Received: by mail-qc0-f176.google.com with SMTP id n41so12328851qco.35
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 13:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:user-agent:mime-version:content-type
	:content-transfer-encoding:message-id;
	bh=dObKZ4Cw5BNcImAyFie1nqwT0gtIsl7/LDLFNtMQOAM=;
	b=hQtu6k2eY5NUR6O0Idndq2zCVOrNI9jKPAF2Ylh7JmhquBDtxBsn/xjSvzyhRCVFeW
	Be80pcOyl+HSa6dTilO0oA3Sq7XqvQ3tQfS3Y1klClx3MAGjmMfyKlRsc4ygdNvrDb4R
	8kOwgc2cnmVEmtM7q2muwzJxeENmAl9UyGtxEkhlQIIrvT3fEvrYh9UW1rqEF4fJ9sx9
	KbExGwytA3j6Ebph3R/O5QGkMKeLW7lt7cXgPAski8eb8z0IBl0yjuYbHKXwpLE252DA
	Qsp20p9YLZ7iFE51fKlYQy+QJcqfmC14WwzXC+YyVK2GV/rSBFlxafPHudfU4Ht5Clrt
	7G/Q==
Received: by 10.49.29.101 with SMTP id j5mr31512319qeh.6.1354226372281;
	Thu, 29 Nov 2012 13:59:32 -0800 (PST)
Received: from luna.localnet ([190.97.25.23])
	by mx.google.com with ESMTPS id fh6sm1607778qab.19.2012.11.29.13.59.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Nov 2012 13:59:31 -0800 (PST)
From: Lisandro =?iso-8859-1?q?Dami=E1n_Nicanor_P=E9rez_Meyer?=
	<perezmeyer@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Nov 2012 18:59:18 -0300
User-Agent: KMail/1.13.7 (Linux/3.2.21+edid; KDE/4.8.5; x86_64; ; )
MIME-Version: 1.0
Message-Id: <201211291859.27190.perezmeyer@gmail.com>
Subject: The routerstationpro kernel image is huge
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
X-List-Received-Date: Thu, 29 Nov 2012 21:59:33 -0000
X-Groupsio-MsgNum: 10713
Content-Type: multipart/signed; boundary="nextPart2991926.5h2LK1v2gj";
	protocol="application/pgp-signature"; micalg=pgp-sha256
Content-Transfer-Encoding: 7bit

--nextPart2991926.5h2LK1v2gj
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi! First of all, I don't know if this is the correct mailing list to write=
=20
this. If it is not, please point me to th right one. Thanks!

I have found that the kernel image for the routerstationpro in poky danny 8=
=2E0=20
is huge. The flash of the device is just 16MB, so a 86 MB image is more tha=
n=20
what fits in there ;-)

I would like to solve the problem, but I really don't know where to start.

I have used OpenEmbedded before, but this are my first steps within the yoc=
to=20
project.

Any pointer would be much appreciated.

[0]=20
<http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/router=
stationpro/>

Kinds regards, Lisandro.

=2D-=20
<Tincho> me cago en el gato, es como la tercera vez que me apreta
backspace mientras tengo apretados ctrl y alt
  Visto en #lugfi, irc.freenode.net

Lisandro Dami=E1n Nicanor P=E9rez Meyer
http://perezmeyer.com.ar/
http://perezmeyer.blogspot.com/

--nextPart2991926.5h2LK1v2gj
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAABCAAGBQJQt9q3AAoJEKtkX0BihqfQNwYP/immC8nNwPriWBZX6QPNR8cg
290WWZq6UfEFAr7PB5gyO7CUFFSPTJUiRS03EBUSSsj7wAWxClNSdBmSM4ew0tm8
cLYIee1zk/O9RVcUKeA5CumjJ3uOTFvNgSAclsFLiddLopLBzLTvum+Mlwp/j79B
HjYsB8OkBAaPCxje/17uLeqpOCkPtGQNLGQoVyAO3hVOnPNvxcX1riNb4XwnNhpw
8hCrAqHdKu0iHXxwnMtjAET5FmJTqk53Poq/emd63HX0JJc1KUvdM/MzH4B1z7Ml
e01wVncouHkC1gg4Kk2vL0cPNebFhy/F2YCLRt21l+u2HD2UMKPH6VgCdFgXBRUG
bSKedFiLBRj1Wzt3rAPCor1Gqt+7mifusGmmnNet5hzuPUuLJCf3T26vp2mwCSRE
zCfpIL3u/EbWVgnpcAYRIAcwkLZi94SLBEqPi8ZP559QDlwcF/CxQvO3GoHzOKAY
d3h7JK0wUmM+m8uFkpBkcQtiaWBtai7awBSJapvQOj3KWo+F9mo4AhH4+uk1izDE
j2B8n4IkvJdjFd+94iLCVJ2vPRChByWz3FpBkKe7bj/64J3lB29NSI9z1K2V/njD
InH1me9v6Dlrwq7KZ7mpFI9legtgQr2xujqxMra4tN8buqw9oy0s4sSGIsE5YKvs
vUeH+oAH0ULulgx3Cmtg
=Qwgx
-----END PGP SIGNATURE-----

--nextPart2991926.5h2LK1v2gj--
