Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9814DE00BFF; Tue, 18 Jul 2017 17:15:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4670]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Jul 2017 17:15:22 PDT
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72DEAE00BBC
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 17:15:22 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Wed, 19 Jul 2017 10:14:12 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 19 Jul 2017 10:14:11 +1000
Thread-Topic: python3-jinja2 missing package dependency
Thread-Index: AdMAI7RggMTomehlQxC9d2zigWA/Rg==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F0863A44@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23202.006
x-tm-as-result: No--1.750000-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: python3-jinja2 missing package dependency
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
X-List-Received-Date: Wed, 19 Jul 2017 00:15:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

For the python3-jinja2 package in meta-openembedded meta-python, it should =
also have a dependency on python3-numbers.

I'm not sure if this dependency also applies for python-jinja2 package. I'm=
 just using the Python 3 package.

--=20
Craig McQueen


