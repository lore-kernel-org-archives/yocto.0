Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5621FE0073A; Fri,  9 May 2014 13:35:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE, RDNS_NONE, 
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.163.145 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from na01-bn1-obe.outbound.protection.outlook.com (unknown
	[207.46.163.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D4C4E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 13:35:42 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB040.namprd05.prod.outlook.com (10.255.210.156) with Microsoft
	SMTP Server (TLS) id 15.0.939.12; Fri, 9 May 2014 20:35:40 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.90]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.90]) with mapi id
	15.00.0939.000; Fri, 9 May 2014 20:35:39 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Brian Karcz <briank@RUSSOUND.COM>, Bruce Ashfield
	<bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-atmel] at91sam9x5ek: "no machine record defined"
	failure for core-image-minimal
Thread-Index: Ac9riCi/qecn3Y3qQzK51aCH65HnbgABgq6AAAI+SoAAB8nGgAABOOFgAAEg1YAAAUkYEA==
Date: Fri, 9 May 2014 20:35:38 +0000
Message-ID: <df9a75b95ce44296a6af01e739a39e8b@BLUPR05MB037.namprd05.prod.outlook.com>
References: <f9f1c263a9ab4a3085bf1a696f31aec6@HERMES.RUSSOUND.com>
	<536CDE17.40806@windriver.com>
	<bab902e58d8041a793958d1432e41e86@HERMES.RUSSOUND.com>
	<536D2169.80103@windriver.com>
	<9c24fdddb3e54b61b8ec208a3e0e0bf5@BLUPR05MB037.namprd05.prod.outlook.com>
	<4b6ac99409c747a5900923653a4308eb@HERMES.RUSSOUND.com>
In-Reply-To: <4b6ac99409c747a5900923653a4308eb@HERMES.RUSSOUND.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 01F5158C00716601F516D9
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(13464003)(189002)(199002)(377454003)(51914003)(51704005)(164054003)(101416001)(80022001)(50986999)(54356999)(66066001)(76176999)(99286001)(77982001)(74662001)(64706001)(31966008)(74502001)(19580405001)(4396001)(81542001)(19580395003)(83322001)(20776003)(79102001)(33646001)(81342001)(2656002)(87936001)(76576001)(15975445006)(92566001)(86362001)(76482001)(83072002)(46102001)(21056001)(74316001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB040;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: Re: [meta-atmel] at91sam9x5ek: "no machine record defined" failure for core-image-minimal
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
X-List-Received-Date: Fri, 09 May 2014 20:35:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Brian,

> -----Original Message-----
> From: Brian Karcz [mailto:briank@RUSSOUND.COM]
> Sent: Friday, May 09, 2014 3:49 PM
> To: Bryan Evenson; Bruce Ashfield; yocto@yoctoproject.org
> Subject: RE: [yocto] [meta-atmel] at91sam9x5ek: "no machine record
> defined" failure for core-image-minimal
>=20
> Hi Bryan,
>=20
> Thanks for the tip. Any chance you tried assigning the PREFFERED_VERSION
> to 3.6.9 and using the linux4sam meta-atmel layer as is?
>=20
> I'll definitely check out your layer. I was hoping the at91sam9x5ek would=
 just
> build so that I could start tweaking it to define a machine works for its=
 little
> brother, the at91sam9g20ek.
>=20
> I'm coming from an older 2.6.30 kernel that used a board file instead of =
the
> device tree and was planning to use the demo build from meta-atmel and
> some small mods to give myself a crash course on device tree development.
> Looks like the learning curve might have steepened a bit.

I would take a look at using at least the 3.10 kernel from Atmel.  It's the=
 most stable one they have and it's where they've been backporting addition=
al device tree support.  I believe if you use my defconfig, you should be a=
ble to build a 3.10 kernel with Atmel's latest layer.  And definitely start=
 reading up on device tree development.  It takes some getting used to but =
it is a good step forward.

Regards,
Bryan

>=20
> Thanks,
> Brian
>=20
> -----Original Message-----
> From: Bryan Evenson [mailto:bevenson@melinkcorp.com]
> Sent: Friday, May 09, 2014 3:31 PM
> To: Bruce Ashfield; Brian Karcz; yocto@yoctoproject.org
> Subject: RE: [yocto] [meta-atmel] at91sam9x5ek: "no machine record
> defined" failure for core-image-minimal
>=20
> Brian,
>=20
> I'm currently using a fork of the meta-atmel layer for my at91sam9g25 boa=
rd.
> If I remember when they added at91sam9x5 support for meta-atmel, I think
> the layer was on kernel 3.6.9 and now it's on 3.10.  There's been a lot o=
f
> machine and device tree related configuration changes for this chipset
> between 3.6.9 and 3.10, so that configuration might not work for 3.10.
>=20
> The configuration I'm currently using is over at
> https://github.com/evensonbryan/meta-atmel/tree/master/recipes-
> kernel/linux/files/at91sam9x5ek/linux-3.10-at91.  It also has some patche=
s I
> added in to pick up some missing peripheral support for my system.  You m=
ay
> want to give that a try and see if it helps.
>=20
> Regards,
> Bryan


