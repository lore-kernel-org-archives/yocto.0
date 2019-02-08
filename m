Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0980BE00CAD; Fri,  8 Feb 2019 16:00:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.154.214 listed in list.dnswl.org]
X-Greylist: delayed 905 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Feb 2019 16:00:01 PST
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.154.214])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8290DE00C8F
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2019 16:00:01 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1448.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Fri, 08 Feb 2019 23:59:57 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 8 Feb 2019 15:44:53 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 8 Feb 2019 15:44:53 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: recipe that worked on morty fails on sumo
Thread-Index: AdTABP2N4eFaxur2SfqIbSY74/A94A==
Date: Fri, 8 Feb 2019 23:44:53 +0000
Message-ID: <4be8ff383c32479b89a46c144bc7d1e8@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1549670397-1102595-28846-14878-1
X-BESS-VER: nil
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.209247 [from 
	cloudscan29.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: recipe that worked on morty fails on sumo
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
X-List-Received-Date: Sat, 09 Feb 2019 00:00:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


I'm working on a boot2qt build of Yocto=A0and the latest release=A0converte=
d to sumo. I'm have a recipe for canfestival that we have been using for bu=
ilds with morty that=A0uses several of the packages that are provided by th=
e PACKAGES symbol:


#original from morty
#FILES_${PN}-dev =3D "/usr/lib/libcanfestival*.a /usr/include/canfestival/*=
.h"
FILES_${PN}-dev =3D "/usr/lib/libcanfestival*.a"
#FILES_${PN} =3D "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"
FILES_${PN} =3D "/usr/include/canfestival/*.h /usr/lib/libcanfestival*.so"

RDEPENDS_${PN}-dev +=3D "${PN}-staticdev"=20


# new try for sumo
FILES_${PN}-staticdev =3D "/usr/lib/libcanfestival*.a "
FILES_${PN}-dev =3D "/usr/include/canfestival/*.h"
#FILES_${PN} =3D "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"=20
#FILES_${PN} =3D "/usr/include/canfestival/*.h /usr/lib/libcanfestival*.so"=
=20
FILES_${PN} =3D "/usr/lib/libcanfestival*.so" =20

RDEPENDS_${PN}-dev +=3D "${PN}-staticdev"=20

The top version worked on morty, but on sumo I get an error:

Collected errors:
=A0* Solver encountered 1 problem(s):
=A0* Problem 1/1:
=A0*=A0 =A0- nothing provides canfestival-staticdev needed by canfestival-d=
ev-3-asc-r01.cortexa7hf-neon-vfpv4
=A0*=A0

I tried changing the lines to explicitly define -staticdev files, but I sti=
ll get the same error.
=A0
I would have thought that the bitbake.conf definition of PACKAGES would tak=
e care of the supplier, but I seem to be wrong.

Can someone point me to what I need to do to tell bitbake that the recipe p=
rovides -staticdev?

Greg Wilson-Lindberg=A0=

