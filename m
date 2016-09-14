Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A306E00A48; Wed, 14 Sep 2016 07:48:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [82.130.99.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A271E00A21
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 07:48:24 -0700 (PDT)
Received: from CAS11.d.ethz.ch (172.31.38.211) by edge20.ethz.ch
	(82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Wed, 14 Sep 2016 16:48:18 +0200
Received: from MBX114.d.ethz.ch ([fe80::4875:1a61:8b1c:148]) by
	CAS11.d.ethz.ch ([fe80::ecc9:4e2d:b26b:1614%10]) with mapi id
	14.03.0301.000; Wed, 14 Sep 2016 16:48:22 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: Daniel. <danielhilst@gmail.com>
Thread-Topic: [yocto] Fetcher failure
Thread-Index: AdIOXOA5GKic+Ii1RS2D956AFIO9Bf//+UaAgABB8/aAABGWKP//4BeAgAAj8/v//+AnAIAAJE+H///m4oAABsFgBQ==
Date: Wed, 14 Sep 2016 14:48:21 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F82247@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
	<CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F8216B@MBX114.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20F821AC@MBX114.d.ethz.ch>
	<CAF3SDA6XyxtCNhKRZfPfdNVgvqAMyosBjfbUUpf=msjVPdyQPw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821C8@MBX114.d.ethz.ch>
	<CAJTo0LbkjuCFqmzUx0uWVd+dMzA9U3_u56HANcDpkV_hyLMuTw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821DF@MBX114.d.ethz.ch>,
	<CAF3SDA7JQ8hNVipjsYzgp2AOcesAiph66aNXmdVKWT+9HDxHqw@mail.gmail.com>
In-Reply-To: <CAF3SDA7JQ8hNVipjsYzgp2AOcesAiph66aNXmdVKWT+9HDxHqw@mail.gmail.com>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure
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
X-List-Received-Date: Wed, 14 Sep 2016 14:48:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanx all for a help,=0A=
=0A=
I have tested with:=0A=
=0A=
   python -c 'import urllib2; print urllib2.urlopen.....=0A=
=0A=
The problem was only with https protocol, http worked.=0A=
The certificate was not accepted (SSL, as used by bitbake wget.py),=0A=
but with TLS it worked.=0A=
=0A=
it turns out that something HAS changed in my system/libraries (but not Pyt=
hon itself),=0A=
influencing python urllib2 to fail, although wget, chrome, firefox, ... wor=
ked=0A=
=0A=
Fortunately we have another python version installed, and with that one it =
works again.=0A=
=0A=
Thanx again for your help=0A=
=0A=
=0A=

