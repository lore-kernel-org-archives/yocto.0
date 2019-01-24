Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22540E00CDF; Wed, 23 Jan 2019 16:34:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.11.40.244 listed in list.dnswl.org]
Received: from west-edge.flir.com (west-edge.flir.com [208.11.40.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CFC2E00B43
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 16:34:10 -0800 (PST)
Received: from US-PDX-MAIL2.flir.net (10.192.150.175) by pdx-e1.zone1.flir.net
	(10.192.210.11) with Microsoft SMTP Server (TLS) id 14.3.382.0;
	Wed, 23 Jan 2019 16:40:07 -0800
Received: from us-pdx-mail4.flir.net (10.192.150.252) by US-PDX-MAIL2.flir.net
	(10.192.150.175) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10;
	Wed, 23 Jan 2019 16:34:09 -0800
Received: from us-pdx-mail4.flir.net ([fe80::497e:6a6d:a0de:5631]) by
	us-pdx-mail4.flir.net ([fe80::497e:6a6d:a0de:5631%22]) with mapi id
	15.01.1591.008; Wed, 23 Jan 2019 16:34:09 -0800
From: "Smith, Virgil (US)" <Virgil.Smith@flir.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto Project support for Numeric/Scientific Python
Thread-Index: AdSzZgK8hbw89tkNRySGJcjzIVTeAQ==
Date: Thu, 24 Jan 2019 00:34:09 +0000
Message-ID: <93e656a164b94846a56a9c43b354b4da@flir.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.128.150.201]
MIME-Version: 1.0
Subject: Re: Yocto Project support for Numeric/Scientific Python
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
X-List-Received-Date: Thu, 24 Jan 2019 00:34:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Discussing only the question of making a SciPy recipe today:

> > Is there a current or relatively recent recipe for SciPy and related li=
braries?
>
> People have worked on it at least once before but found some problems wit=
h blas and atlas:
> https://lists.yoctoproject.org/pipermail/yocto/2018-March/thread.html#403=
48
> # Randy MacLeod
> Wind River Linux

Thanks Randy, my own brief foray landed on the following thread as the most=
 promising lead:
https://lists.yoctoproject.org/pipermail/yocto/2018-March/040450.html

I didn't have any success with those pieces, but the telling point in that =
discussion are the patches to numpy (numpy.distutils).  When you dig into S=
ciPy's installation instructions and therefore its setup.py file, you find =
that it is using code packaged into the numpy library as effectively its ow=
n configure/build toolchain.  It is full of Linux vs Windows vs MacOS disti=
nctions and path probing for recognized compilers/tools.  Patching that int=
o something that can be tuned for cross compiling was beyond my allowances =
for an "investigative effort".

I did manage to *compile* OpenBlas just by blending its standard build inst=
ructions (pure make based) with oe_runmake, a libgfortran DEPENDS/RDEPENDS,=
 (FORTRAN_forcevariable =3D ",fortran" in local.conf), and some regex mappi=
ng from TUNE_FEATURES to the defines used by OpenBlas.

If I ever find out it actually worked (once), I'll post it in case someone =
has bandwidth to add
checks for mapping other MACHINE/TUNE... values to OpenBlas "TargetList.txt=
" entries, testing that it works in newer Yocto releases (I'm using Sumo), =
and add update-alternatives integration.



________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

