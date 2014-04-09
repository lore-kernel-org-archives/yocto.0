Return-Path: <zhenhua.luo@freescale.com>
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0238.outbound.protection.outlook.com [207.46.163.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66DC0E00B88
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 02:59:53 -0700 (PDT)
Received: from DM2PR03MB399.namprd03.prod.outlook.com (10.141.84.148) by
	DM2PR03MB400.namprd03.prod.outlook.com (10.141.84.153) with Microsoft
	SMTP Server (TLS) id 15.0.913.9; Wed, 9 Apr 2014 09:59:51 +0000
Received: from DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) by
	DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) with mapi id
	15.00.0913.002; Wed, 9 Apr 2014 09:59:51 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: =?iso-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
Thread-Topic: [yocto] Can Yocto support "git clone" for url with http prefix
Thread-Index: Ac9Tu+pLlbOCcacvRQeZleCu8ZLgFgAA6LqAAAC573A=
Date: Wed, 9 Apr 2014 09:59:51 +0000
Message-ID: <06a61e36787b489abd0c8fa4e0be9da4@DM2PR03MB399.namprd03.prod.outlook.com>
References: <de6b3cec81f445b99d03b5382d698195@DM2PR03MB399.namprd03.prod.outlook.com>
	<CA+AhUGw3Vsdoe1FfiUDyQ+vAXCjrttNaLpSvu1+vuQNaGwk7nw@mail.gmail.com>
In-Reply-To: <CA+AhUGw3Vsdoe1FfiUDyQ+vAXCjrttNaLpSvu1+vuQNaGwk7nw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.212]
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(51704005)(189002)(199002)(24454002)(13464003)(252514010)(377454003)(83072002)(85852003)(97336001)(87936001)(85306002)(74316001)(94946001)(92566001)(93516002)(93136001)(94316002)(86362001)(76482001)(81342001)(99396002)(81542001)(74876001)(95666003)(74366001)(69226001)(59766002)(63696004)(95416001)(53806002)(50986002)(2656002)(65816002)(98676001)(80022001)(87266001)(49866001)(56816006)(97186001)(46102001)(4396001)(90146001)(66066001)(74662001)(77982001)(76576001)(74502001)(31966008)(76786001)(83322001)(19580405001)(15202345003)(80976001)(74706001)(33646001)(15975445006)(20776003)(81686001)(56776002)(19580395003)(47446003)(76796001)(81816001)(79102001)(54316003)(47736002)(54356002)(47976003)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR03MB400;
	H:DM2PR03MB399.namprd03.prod.outlook.com;
	FPR:ECDFFA07.250264A2.B5EDB05B.87EF5E71.20274; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (: freescale.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can Yocto support "git clone" for url with http prefix
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
X-List-Received-Date: Wed, 09 Apr 2014 09:59:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you, Erik.=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Erik Bot?
> Sent: Wednesday, April 09, 2014 2:47 PM
> To: Luo Zhenhua-B19537
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Can Yocto support "git clone" for url with http
> prefix
>=20
> Hi,
>=20
> On Wed, Apr 9, 2014 at 8:21 AM, zhenhua.luo@freescale.com
> <zhenhua.luo@freescale.com> wrote:
> > I want to create recipe for a package which is managed by Gerrit,
> Gerrit only provides an anonymous HTTP url(http://aaaa:8181/bb) which can
> be cloned by "git clone http://aaaa:8181/bb" correctly.
> >
> > I set SRC_URI to "http://aaaa:8181/bb" in the bb file, following is the
> detailed definition.
> >        SRC_URI =3D "http://aaaa:8181/bb;protocol=3Dgit;branch=3Dmaster"
> >
> > When I try to build the package, following error appears.
> >         ERROR: Function failed: URL:
> > 'http://aaaa:8181/bb;protocol=3Dgit;branch=3Dmaster' has invalid
> > parameters. Invalid protocol - if you wish to fetch from a git
> > repository using http, you need to instead use the git:// prefix with
> > protocol=3Dhttp
> >
> > May I know if Yocto can support "git clone" for url with http prefix?
>=20
> Yes. All git SRC_URI start with git:// and then you can specify
> protocol=3Dhttp. E.g.
>=20
> SRC_URI =3D "git://aaaa:8181/bb;protocol=3Dhttp;branch=3Dmaster"
>=20
> Cheers,
> Erik
>=20
> >
> >
> > Best Regards,
> >
> > Zhenhua
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Erik Bot=F6
> Senior Software Engineer
> Pelagicore AB
> Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
> Mobile: +46 (0)76 881 72 03
> E-Mail: erik.boto@pelagicore.com
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20


