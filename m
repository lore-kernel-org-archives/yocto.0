Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.239.1582751775236364442
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 13:16:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A820DE0170E; Wed, 26 Feb 2020 13:16:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [209.222.82.218 listed in list.dnswl.org]
Received: from outbound-ip21b.ess.barracuda.com (outbound-ip21b.ess.barracuda.com [209.222.82.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32830E016FF
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 13:16:12 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx13.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NO); Wed, 26 Feb 2020 21:16:09 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Wed, 26
 Feb 2020 13:16:07 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Wed, 26 Feb 2020 13:16:07 -0800
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Subject: Re: [yocto] Help with how to debug dependency error
Thread-Topic: [yocto] Help with how to debug dependency error
Thread-Index: AQHV7N7Hdgee8spSzUutZnotev63FKguc3MA//+FZuA=
Date: Wed, 26 Feb 2020 21:16:07 +0000
Message-ID: <e69df5f9bf3e41e78b97fcb8feb6262c@sakuraus.com>
References: <a701f94801884187afdd869e5a1b5420@sakuraus.com>
 <b6a7e251-4c77-9353-1328-4fc677b6adac@gmail.com>
In-Reply-To: <b6a7e251-4c77-9353-1328-4fc677b6adac@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.142]
MIME-Version: 1.0
X-BESS-ID: 1582751769-893025-10589-42680-1
X-BESS-VER: 2019.1_20200225.0042
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.222533 [from 
	cloudscan16-105.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

Thanks for the (possible) solution. What I was really looking for is some =
way of
finding out what changed with the addition of the OSTree directories that =
then caused the=20
need for the additional libraries. Are there some tools that I don't know =
about that=20
will help me find what is causing the gbm & gles2 to now be included when =
they are not=20
necessary without the OSTree dirs.=20

Regards,
Greg

> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Wednesday, February 26, 2020 12:30 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; Yocto list discussion
> <yocto@yoctoproject.org>
> Subject: Re: [yocto] Help with how to debug dependency error
>=20
>=20
>=20
> On 2/26/20 12:02 PM, Greg Wilson-Lindberg wrote:
> > I am building a system based on a boot2qt warrior Yocto build=A0 for t=
he
> Raspberry Pi4.
> >
> > Our system is building just fine until I try to add support for OSTree=
. When I
> do that I get 3 errors for existing recipes, "nothing provides virtual/g=
bm",
> "nothing provides virtual/egl", and "nothing provides virtual/gles2". Al=
l of
> these are specified in PACKAGECONFIG[] lines in qtbase_git.bb as require=
d
> when gbm and gles2 are turned on.
> >
> > I have searched for gbm in the meta-updater & meta-updater-raspberrypi
> directories that get included to add support for OSTree and found no
> reference. It looks like the OSTree inclusion is requesting something th=
at is in
> turn requesting gbm and gles2 but I haven't been able to figure out what=
 that
> is.
> >
> > I have tried to print out the variables and a dependency graph to help=
 me
> track down what is going wrong, but these don't work because the errors
> abort before I can get the information I need out.
> >
> > Can anyone point me to a way to find out what is triggering the change=
 in
> the gbm & gles2 packages?
> >
>=20
> this is meta-rpi issue, perhaps you can use mesa there instead of userla=
nd
> graphics driver
>=20
> MACHINE_FEATURES_append_rpi =3D " vc4graphics"
>=20
>=20
>=20
> > Thanks in advance,
> > Greg Wilson-Lindberg
> >
> >
> >
> >
> >=20
> >
