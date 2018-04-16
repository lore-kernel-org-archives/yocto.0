Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 738AAE00D6A; Mon, 16 Apr 2018 13:35:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [64.235.154.215 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.154.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64800E009CF
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 13:33:02 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Mon, 16 Apr 2018 20:32:55 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 16 Apr 2018 13:32:14 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 16 Apr 2018 13:32:14 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to patch a driver in Linux source tree
Thread-Index: AQHT01ShXgCygDEkPk6QFz74WnOkwqP/5HEAgAP4vpA=
Date: Mon, 16 Apr 2018 20:32:14 +0000
Message-ID: <56fcbf1406654572bfcfb02c5ffd3031@sakuraus.com>
References: <231b0a5a6c0744ee9799b8bedf2c1ab7@sakuraus.com>
	<8ffca19b-aaa1-de11-9e8a-c9cbcde7de6a@gmail.com>
In-Reply-To: <8ffca19b-aaa1-de11-9e8a-c9cbcde7de6a@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1523910757-321457-2484-176-2
X-BESS-VER: 2018.4-r1804121647
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.192055
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: How to patch a driver in Linux source tree
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
X-List-Received-Date: Mon, 16 Apr 2018 20:35:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Khem,
That gave me what I needed.


Greg Wilson-Lindberg=A0=20
Principal Firmware Engineer | Sakura Finetek USA, Inc.=A0=20
=A0

> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Friday, April 13, 2018 05:53 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] How to patch a driver in Linux source tree
>=20
>=20
>=20
> On 4/13/18 11:41 AM, Greg Wilson-Lindberg wrote:
> > I'm working on a raspberry pi3=A0Yocto build from=A0Qt's boot2qt projec=
t,
> > it's running Yocto version 2.2.3, and Linux kernel 4.4.50. I need to
> > back=A0port some changes to a file in drivers/net/can/spi. I confused
> > about where and how I set up the patch file.
> >
> > I have a linux-raspberrypi_4.4.bbappend file. Do I put the patch file
> > in that, and If so, how do I indicate the path to the file?
>=20
> yes.
>=20
> SRC_URI +=3D "file://yourpatch.patch"
>=20
> also add
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> then create a directory called linux-raspberrypi parallel to where the bb=
append is
> and put the yourpatch.patch inside that directory.
>=20
>=20
> >
> >
> > Thanks for the help and enlightenment,
> >
> > Greg Wilson-Lindberg
> >
> >

