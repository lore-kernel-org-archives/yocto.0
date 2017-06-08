Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52BF2E00BD2; Wed,  7 Jun 2017 23:47:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5770E00B3D
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 23:47:32 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Thu, 8 Jun 2017 16:47:30 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 8 Jun 2017 16:47:28 +1000
Thread-Topic: Python 3 internal package dependencies
Thread-Index: AdLgIt1iGsY00mBSTYaUS+Z7FBkDjg==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFF@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23118.004
x-tm-as-result: No--4.780100-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Python 3 internal package dependencies
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
X-List-Received-Date: Thu, 08 Jun 2017 06:47:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I found that the Python 3 internal package dependencies are incompletely sp=
ecified. For example, I wanted to install python3-asyncio for my Python pro=
gram to use. But when I tried to run it, it was missing some other Python 3=
 packages that asyncio depended on. I ended up making a Python 3 bbappend f=
ile with the following:

RDEPENDS_${PN}-asyncio +=3D "${PN}-selectors"
RDEPENDS_${PN}-misc +=3D "${PN}-multiprocessing"
RDEPENDS_${PN}-io +=3D "${PN}-shell"
RDEPENDS_${PN}-shell +=3D "${PN}-compression"

This just solved my immediate needs; I'm sure it's incomplete.

Is it worth trying to improve the internal package RDEPENDS in the Python 3=
 recipe, or is it better for recipes for Python apps to just manually list =
all the sub-dependencies as needed?

--=20
Craig McQueen


