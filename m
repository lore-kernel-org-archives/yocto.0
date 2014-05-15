Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACAF3E00B97; Thu, 15 May 2014 05:47:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE, RDNS_NONE, 
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.163.187 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from na01-bn1-obe.outbound.protection.outlook.com (unknown
	[207.46.163.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A98E8E00B85
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 05:47:13 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB038.namprd05.prod.outlook.com (10.255.210.147) with Microsoft
	SMTP Server (TLS) id 15.0.944.11; Thu, 15 May 2014 12:47:11 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.171]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.171]) with mapi id
	15.00.0944.000; Thu, 15 May 2014 12:47:11 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "koansoftware@gmail.com" <koansoftware@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC] Upgrade to a package with all its dependency
	without network
Thread-Index: AQHPaP7AQCVbk7O/OkuSSab0artvsJtBoFvw
Date: Thu, 15 May 2014 12:47:10 +0000
Message-ID: <1f5d2d355cc24295adadefbffcd7677f@BLUPR05MB037.namprd05.prod.outlook.com>
References: <5368923F.9060003@gmail.com>
In-Reply-To: <5368923F.9060003@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0038BC3D00722E0038BD8A
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(428001)(199002)(189002)(13464003)(51704005)(377454003)(76576001)(92566001)(50986999)(77982001)(15202345003)(83072002)(99396002)(2656002)(4396001)(87936001)(99286001)(74316001)(54356999)(76176999)(46102001)(16601075003)(21056001)(101416001)(15975445006)(85852003)(19580405001)(76482001)(19580395003)(66066001)(83322001)(80022001)(79102001)(74662001)(31966008)(33646001)(81542001)(86362001)(74502001)(20776003)(81342001)(64706001)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:BLUPR05MB038;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: Re: [RFC] Upgrade to a package with all its dependency without network
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
X-List-Received-Date: Thu, 15 May 2014 12:47:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Marco,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Marco
> Sent: Tuesday, May 06, 2014 3:42 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [RFC] Upgrade to a package with all its dependency witho=
ut
> network
>=20
> Hello,
> I need to be able to upgrade to a package with all its dependency chain o=
n a
> target system that does not have access to the network.
>=20
> I'm trying to understand what may be the best and also the simplest solut=
ion.
> Perhaps there is already this functionality in OE/Yocto?
>=20
> I thought to implement a new opkg feture so that I can to generate the li=
st of
> dependencies of a package and then extract the packages from OE/Yocto
> using a script or an application.
>=20
> Another possibility would be to extend the operation of bitbake so I pull=
 out
> the package and dependencies putting them in a dedicated directory to be
> moved on the target for the update.

Go to your local.conf and add the following:

INHERIT +=3D "buildhistory"
BUILDHISTORY_COMMIT =3D "1"

This will generate build history information for each image you build.  Inc=
luded in that build history is the list of packages installed in the image.=
  So if you are building core-image-minimal, there will be a file called "t=
mp/buildhistory/images/{arch}/eglibc/core-image-minimal/installed-packages.=
txt" under your Yocto temp directory that lists all the packages installed =
on that image.  I have a script that I am using to build a package feed fol=
der that only contains the packages I have installed on that image.  The sc=
ript is highly customized for my use (almost everything is hardcoded) but I=
'd be willing to work with someone to make it useful for more people if som=
eone thinks it would be useful.

Regards,
Bryan

>=20
> For now I'm just analyzing what may be the possibilities and I'd love to =
have
> any comments or advice from someone more experienced than me on this
> topic.
>=20
> Thanks
> --
> Marco Cavallini | KOAN sas | Bergamo - Italia
>   embedded and real-time software engineering
> Phone:+39-035-255.235 - Fax:+39-178-22.39.748
>        http://www.KoanSoftware.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

