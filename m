Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.52923.1600724815189561876
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 14:46:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 198.145.29.25, mailfrom: gwilson@sakuraus.com)
Received: from outbound-ip28a.ess.barracuda.com (outbound-ip28a.ess.barracuda.com [209.222.82.210])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2D1B838C12EB
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2020 14:46:54 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx2.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO); Mon, 21 Sep 2020 21:46:52 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Mon, 21
 Sep 2020 14:46:51 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Mon, 21 Sep 2020 14:46:51 -0700
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: RDEPENDS problem
Thread-Topic: RDEPENDS problem
Thread-Index: AdaQXQorFPK9I51CRFiKRZQEARyBsw==
Date: Mon, 21 Sep 2020 21:46:51 +0000
Message-ID: <8db68087bc7e4b248070690947f6eb64@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.155]
MIME-Version: 1.0
X-BESS-ID: 1600724812-893002-1402-200747-1
X-BESS-VER: 2019.1_20200918.2058
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.20
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.227053 [from 
	cloudscan22-227.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.20 BSF_SC0_SA074b         META: Custom Rule SA074b 
X-BESS-Outbound-Spam-Status: SCORE=0.20 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_SA074b
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


=A0I have a custom recipe that copies a .so, that libMotors.so calls functi=
ons in another libcanfestival.so.

When I first added in the copy of the .so
I didn't have an RDEPENDS and Yocto printed out an warning listing the pack=
age that it wanted. I added an RDEPENDS_${PN}=20
with all of the packages listed, but I'm still getting an error for the fir=
st libMotors.so:

ERROR: userconfig-1.0-r0 do_package_qa: QA Issue: /home/sakura/lib/libMotor=
s.so.1.0.0 contained in package userconfig requires libcanfestival.so, but =
no providers found in RDEPENDS_userconfig? [file-rdeps]

In userdepends I added:

RDEPENDS_${PN} +=3D "canfestival libelf libgcrypt pcsc-lite-lib qtbase qtde=
clarative qtserialport zint"

Package canfestival_3-asc in has:

FILES_${PN} =3D "/usr/lib/libcanfestival.so /usr/lib/libcanfestival_unix.so=
 /usr/lib/libcanfestival_can_socket.so"

which seems to me like it should satisfy the requirements of the RDEPENDS, =
but it is not. bitbake initially gave me a warning=20
that listed canfestival as needing to be added to an RDEPENDS for userconfi=
g. But now it is saying that it can't figure out
what package supplies the libcanfestival.so file.

Can someone help me to understand what is going on? How do I explicitly say=
 that a package supplies a given file?=
