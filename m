Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE4E6E005A9; Wed,  7 Jan 2015 09:21:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.217.128.53 listed in list.dnswl.org]
Received: from g2t2354.austin.hp.com (g2t2354.austin.hp.com [15.217.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DAD6E003E3
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 09:21:08 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2354.austin.hp.com (Postfix) with ESMTPS id B48C2C3
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 17:21:07 +0000 (UTC)
Received: from G2W4314.americas.hpqcorp.net (16.197.24.50) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Wed, 7 Jan 2015 17:20:08 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.187]) by
	G2W4314.americas.hpqcorp.net ([16.197.24.50]) with mapi id
	14.03.0169.001; Wed, 7 Jan 2015 17:20:09 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_rootfs missing package (ipk) or not found in base feeds (rpm)
Thread-Index: AdAqnRBi7XQ5sL/RRQigZzXywIdxUQ==
Date: Wed, 7 Jan 2015 17:20:08 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A8054A02C5@G2W2533.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.29]
MIME-Version: 1.0
Subject: do_rootfs missing package (ipk) or not found in base feeds (rpm)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Jan 2015 17:21:18 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

  I created my second recipe in Yocto, it is a shared library. =20

--
SUMMARY =3D "libutil"

LICENSE =3D "LGPLv2.1+"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D2d5025d4aa3495befef8f17206a5b0a1=
"

SRC_URI =3D "file://libutil-${PV}-Source.tar.bz2"
SRC_URI[md5sum] =3D "???"
SRC_URI[sha256sum] =3D "???"

S =3D "${WORKDIR}/libutil-${PV}-Source"

DEPENDS =3D "libpcap"

inherit cmake
--

  I added to conf/distro/poky.conf the following

--
IMAGE_INSTALL_append =3D " libutil"
--

   It build nicely and install some headers and a shared library.  Yet, whe=
n Yocto calls the do_rootfs, it fails and claim that the package is not fou=
nd.

   I did a "find tmp -name libutil*" and see that  I have the following:

../build/tmp/deploy/rpm/i586/libutil-staticdev-1.0.0-r0.i586.rpm
../build/tmp/deploy/rpm/i586/libutil-dev-1.0.0-r0.i586.rpm
../build/tmp/deploy/rpm/i586/libutil-dbg-1.0.0-r0.i586.rpm
../build/tmp/deploy/ipk/i586/libutil-dbg_1.0.0-r0_i586.ipk
../build/tmp/deploy/ipk/i586/libutil-staticdev_1.0.0-r0_i586.ipk
../build/tmp/deploy/ipk/i586/libutil-dev_1.0.0-r0_i586.ipk

  I am unclear what triggered the package to be named -dev or -staticdev an=
d actually having no package named libutil-1.0.0-r0.i586.rpm as it seems th=
at do_rootfs is looking for.

  I have tried with both ipk and rpm without success.  I searched google fo=
r some answer but could not get a solution to this problem.  My libutil-1.0=
.0-Source.tar.bz2 generate a libutil.so, libutil-static.a and headers, all =
of which is install properly when using cmake/make/make install. I am using=
 a local copy of Yocto "Dizzy".

  Any help is appreciated.

--
Yannick Koehler

