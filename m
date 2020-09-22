Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2062.1600809078543417530
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Sep 2020 14:11:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 198.145.29.25, mailfrom: gwilson@sakuraus.com)
Received: from outbound-ip21b.ess.barracuda.com (outbound-ip21b.ess.barracuda.com [209.222.82.218])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 175BA38C0857
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2020 14:11:16 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx9.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO); Tue, 22 Sep 2020 21:11:14 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Tue, 22
 Sep 2020 14:11:12 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Tue, 22 Sep 2020 14:11:12 -0700
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
CC: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] RDEPENDS problem
Thread-Topic: [yocto] RDEPENDS problem
Thread-Index: AdaQXQorFPK9I51CRFiKRZQEARyBswAltFyAAAIQLCA=
Date: Tue, 22 Sep 2020 21:11:12 +0000
Message-ID: <4b3a293c34a942c2ad5356b39f78ade7@sakuraus.com>
References: <8db68087bc7e4b248070690947f6eb64@sakuraus.com>
 <20200922082009.ifhq37exfcvkonkd@qschulz>
In-Reply-To: <20200922082009.ifhq37exfcvkonkd@qschulz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.142]
MIME-Version: 1.0
X-BESS-ID: 1600809073-893017-6852-36581-1
X-BESS-VER: 2019.1_20200918.2058
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.20
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.227077 [from 
	cloudscan8-16.us-east-2a.ess.aws.cudaops.com]
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

Hi Quentin,
It turns out that there was a problem in the build of the libcanfestival.so=
 library that was adding in a reference to ../bin/....
This caused the failure that I asked about initially.

Thank you for your suggestions that then led me to figuring out the problem=
 with the canfestival build.

Greg

> -----Original Message-----
> From: Quentin Schulz <quentin.schulz@streamunlimited.com>
> Sent: Tuesday, September 22, 2020 1:20 AM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: Yocto list discussion <yocto@yoctoproject.org>
> Subject: Re: [yocto] RDEPENDS problem
>=20
> Hi Greg,
>=20
> On Mon, Sep 21, 2020 at 09:46:51PM +0000, Greg Wilson-Lindberg wrote:
> >
> > =A0I have a custom recipe that copies a .so, that libMotors.so calls fu=
nctions in
> another libcanfestival.so.
> >
> > When I first added in the copy of the .so I didn't have an RDEPENDS
> > and Yocto printed out an warning listing the package that it wanted. I
> > added an RDEPENDS_${PN} with all of the packages listed, but I'm still
> getting an error for the first libMotors.so:
> >
> > ERROR: userconfig-1.0-r0 do_package_qa: QA Issue:
> > /home/sakura/lib/libMotors.so.1.0.0 contained in package userconfig
> > requires libcanfestival.so, but no providers found in
> > RDEPENDS_userconfig? [file-rdeps]
> >
> > In userdepends I added:
> >
> > RDEPENDS_${PN} +=3D "canfestival libelf libgcrypt pcsc-lite-lib qtbase
> qtdeclarative qtserialport zint"
> >
> > Package canfestival_3-asc in has:
> >
> > FILES_${PN} =3D "/usr/lib/libcanfestival.so /usr/lib/libcanfestival_uni=
x.so
> /usr/lib/libcanfestival_can_socket.so"
> >
>=20
> .so files are installed in the -dev package even with the line above.
>=20
> Please have a look here:
> https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libra=
rie
> s#Non-versioned_Libraries
> if there is really no way for you to avoid having a non-versioned library=
.

First, the canfestival package that I have doesn't create versioned librari=
es, only the non-versioned .so's.

I changed the canfestival .bb to:

SOLIBS =3D ".so.*"
SOLIBSDEV =3D ".so"

FILES_${PN} =3D " ${libdir}/lib*${SOLIBSDEV}"
FILES_SOLIBSDEV ?=3D " ${libdir}/lib*${SOLIBSDEV}"
FILES_${PN}-dev =3D " /usr/include/canfestival/*.h  ${FILES_SOLIBSDEV}"

And I get the following error:

ERROR: canfestival-3-asc-r01 do_package_qa: QA Issue: -dev package contains=
 non-symlink .so: canfestival-dev path '/work/cortexa7t2hf-neon-vfpv4-poky-=
linux-gnueabi/canfestival/3-asc-r01/packages-split/canfestival-dev/usr/lib/=
libcanfestival_unix.so'
-dev package contains non-symlink .so: canfestival-dev path '/work/cortexa7=
t2hf-neon-vfpv4-poky-linux-gnueabi/canfestival/3-asc-r01/packages-split/can=
festival-dev/usr/lib/libcanfestival.so'
-dev package contains non-symlink .so: canfestival-dev path '/work/cortexa7=
t2hf-neon-vfpv4-poky-linux-gnueabi/canfestival/3-asc-r01/packages-split/can=
festival-dev/usr/lib/libcanfestival_can_socket.so' [dev-elf]
ERROR: canfestival-3-asc-r01 do_package_qa: QA run found fatal errors. Plea=
se consider fixing them.

I removed the ${FILES_SOLIBSDEV} from the FILES_${PN}-dev  and then I get:
WARNING: canfestival-3-asc-r01 do_package: canfestival-dev-3-asc was regist=
ered as shlib provider for ../bin/libcanfestival.so, changing it to canfest=
ival-3-asc because it was built later
WARNING: canfestival-3-asc-r01 do_package: canfestival-dev-3-asc was regist=
ered as shlib provider for libcanfestival_can_socket.so, changing it to can=
festival-3-asc because it was built later
WARNING: canfestival-3-asc-r01 do_package: canfestival-dev-3-asc was regist=
ered as shlib provider for libcanfestival_unix.so, changing it to canfestiv=
al-3-asc because it was built later
ERROR: userconfig-1.0-r0 do_package_qa: QA Issue: /home/sakura/lib/libMotor=
s.so.1.0.0 contained in package userconfig requires libcanfestival.so, but =
no providers found in RDEPENDS_userconfig? [file-rdeps]
ERROR: userconfig-1.0-r0 do_package_qa: QA run found fatal errors. Please c=
onsider fixing them.

It looks like the first warning is the key to the ERROR of not finding libc=
anfestival.so, but not getting errors for the other 2 libraries.

I looked in the build for canfestival and nowhere is there a bin/libcanfest=
ival.so. Any ideas of how this could be created or referenced?



>=20
> You can check if .so files are part of a package by using `oe-pkgdata-uti=
l find-
> path /usr/lib/libcanfestival.so`
>=20
> Cheers,
> Quentin
