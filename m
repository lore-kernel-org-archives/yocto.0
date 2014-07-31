Return-Path: <richard.schmitt@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80689E006EE; Thu, 31 Jul 2014 07:39:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.163.142 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 882 seconds by postgrey-1.32 at yocto-www;
	Thu, 31 Jul 2014 07:38:53 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1lp0142.outbound.protection.outlook.com [207.46.163.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FE6FE0056A
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 07:38:53 -0700 (PDT)
Received: from BN1PR0301MB0641.namprd03.prod.outlook.com (25.160.171.14) by
	BN1PR0301MB0642.namprd03.prod.outlook.com (25.160.171.15) with
	Microsoft SMTP
	Server (TLS) id 15.0.995.14; Thu, 31 Jul 2014 14:23:56 +0000
Received: from BN1PR0301MB0641.namprd03.prod.outlook.com ([25.160.171.14]) by
	BN1PR0301MB0641.namprd03.prod.outlook.com ([25.160.171.14]) with
	mapi id 15.00.0995.014; Thu, 31 Jul 2014 14:23:56 +0000
From: Richard Schmitt <richard.schmitt@freescale.com>
To: "leimaohui@cn.fujitsu.com" <leimaohui@cn.fujitsu.com>, "Flanagan,
	Elizabeth" <elizabeth.flanagan@intel.com>, Matt Germonprez
	<germonprez@gmail.com>, "Hatle, Mark" <mark.hatle@windriver.com>
Thread-Topic: [yocto] questions about spdx
Thread-Index: Ac+qFiqI3CJ+clfrTCOEf7MPzAmDNACHVr0AABhT8YAADW0WAA==
Date: Thu, 31 Jul 2014 14:23:55 +0000
Message-ID: <5f01bbf969a4425a8f9305d12e227d21@BN1PR0301MB0641.namprd03.prod.outlook.com>
References: <1B56A49860EB2D45ADE3731B15C959FDAAA4DD@G08CNEXMBPEKD01.g08.fujitsu.local>
	<CAPhnLPAe+NNPbXpqcVQPcRnuzDyZ0dZPWgfoSXK0Lrwbqb-yTg@mail.gmail.com>
	<1B56A49860EB2D45ADE3731B15C959FDAAB965@G08CNEXMBPEKD01.g08.fujitsu.local>
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAAB965@G08CNEXMBPEKD01.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [108.94.36.220]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(377454003)(51704005)(24454002)(189002)(13464003)(164054003)(53754006)(199002)(92566001)(33646002)(95666004)(101416001)(21056001)(74662001)(31966008)(19580395003)(74502001)(105586002)(64706001)(83072002)(15975445006)(15202345003)(87936001)(20776003)(80022001)(85306003)(77096002)(85852003)(19580405001)(81342001)(99396002)(86362001)(83322001)(66066001)(107046002)(575784001)(76176999)(79102001)(106356001)(2656002)(46102001)(99286002)(4396001)(54356999)(76576001)(76482001)(74316001)(50986999)(77982001)(81542001)(24736002)(108616003);
	DIR:OUT; SFP:; SCL:1; SRVR:BN1PR0301MB0642;
	H:BN1PR0301MB0641.namprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: questions about spdx
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
X-List-Received-Date: Thu, 31 Jul 2014 14:39:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We (Freescale QorIQ) are very interested in SPDX and have been discussing t=
his support within Yocto.  I believe SPDX will become the defacto standard =
for representing an embedded distro's content.  So a simple and tight integ=
ration with Yocto would be of great value.  (just sayin)

Rich

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of leimaohui@cn.fujitsu.com
Sent: Thursday, July 31, 2014 2:56 AM
To: Flanagan, Elizabeth; Matt Germonprez; Hatle, Mark
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] questions about spdx

Hi, Elizabeth

> If I'm remembering this right (Mark?), you need to have a Fossology=20
> server to point to as Fossology will try to determine what the license=20
> is to make sure they match the declared license.

Thanks for your reply.

I'll try to set up a FOSSologySPDX instance server and try again.

Seriously, in documents of yocto, the description of spdx is too simple.

> I haven't touched any of the spdx code in a few months. There was work=20
> being done by Matt Germonprez's team out of the University of Nebraska=20
> Omaha, but I think that we need to discuss looking at some of what was=20
> done and where we go from there. To be honest, not a lot of people=20
> have asked for it so I've not worked on it.

That's to say, In the future yocto 1.7, there will be no improvement about =
spdx ?

Thanks,

Lei Maohui


> -----Original Message-----
> From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
> Sent: Thursday, July 31, 2014 4:19 AM
> To: Lei, Maihui; Matt Germonprez; Hatle, Mark
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] questions about spdx
>=20
> On Mon, Jul 28, 2014 at 4:57 AM, leimaohui@cn.fujitsu.com=20
> <leimaohui@cn.fujitsu.com> wrote:
> > Hello all,
> >
> > About yocto-spdx, I need some help.
> > 1. I'm trying to use yocto(poky:=20
> > 8f52c69183a6c2b50ed470c27383697ebc38efef)
> to get spdx information.
> > I add " spdx " to the USER_CLASSES  in my local.conf, and configured=20
> > my
> meta/conf/licenses.conf as below.
> >
> > But, in the generated *.spdx files,I do not get any license=20
> > information. (the spdx file can be found in the end of the mail), Is=20
> > there
> something wrong with my method?
> >
>=20
> If I'm remembering this right (Mark?), you need to have a Fossology=20
> server to point to as Fossology will try to determine what the license=20
> is to make sure they match the declared license.
>=20
> > I noticed that in meta/conf/licenses.conf,the FOSS_SERVER is set to=20
> > FOSS_SERVER =3D
> "http://localhost//?mod=3Dspdx_license_once&noCopyright=3D${FOSS_COPYRIGH=
T
> }&re cursiveUnpack=3D${FOSS_RECURSIVE_UNPACK}".
> > Should I have to set up a FOSSologySPDX instance server in my localhost=
?
> >
>=20
> Yes, looking at the log, the spdx class requires a fossology instance som=
ewhere.
> I'd like to see it where it does not and it could spit out just the=20
> declared license in the metadata (which honestly, should be a trivial fix=
).
>=20
> > 2. I noticed that from 4253671d46e3c350110bc73a1f55a054df0fc909(Wed=20
> > Dec 4
> 11:47:02 2013),there is no update about spdx.
> > In "Yocto 1.7 Schedule", I saw only two enhancements about spdx.
> > Could someone explain the current progress and future work plan=20
> > about spdx
> in detail?
> >
>=20
> I haven't touched any of the spdx code in a few months. There was work=20
> being done by Matt Germonprez's team out of the University of Nebraska=20
> Omaha, but I think that we need to discuss looking at some of what was=20
> done and where we go from there. To be honest, not a lot of people=20
> have asked for it so I've not worked on it.
>=20
> > Any help would be appreciated.
> >
> > Lei Maohui
> >
> > ----------------------------------
> > diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf index
> > b1d5480..d94cb36 100644
> > --- a/meta/conf/licenses.conf
> > +++ b/meta/conf/licenses.conf
> > @@ -116,15 +116,15 @@ SPDXLICENSEMAP[SGIv1] =3D "SGI-1"
> >  # LICENSE_PATH +=3D "${COREBASE}/custom-licenses"
> >
> >  # Set if you want the license.manifest copied to the image=20
> > -#COPY_LIC_MANIFEST =3D "1"
> > +COPY_LIC_MANIFEST =3D "1"
> >
> >  # If you want the pkg licenses copied over as well you must set  #=20
> > both COPY_LIC_MANIFEST and COPY_LIC_DIRS -#COPY_LIC_DIRS =3D "1"
> > +COPY_LIC_DIRS =3D "1"
> >
> >  ## SPDX Format info
> >  SPDX_VERSION =3D "SPDX-1.1"
> > @@ -144,7 +144,7 @@ DATA_LICENSE =3D "CC0-1.0"
> >  #   information.
> >  #
> >
> > -FOSS_COPYRIGHT =3D "true"
> > +FOSS_COPYRIGHT =3D "false"
> >
> >  # A option defined as[FOSS_RECURSIVE_UNPACK] in=20
> > ./meta/conf/licenses.conf. is  # used to control if FOSSology server=20
> > need recursively unpack tar.gz file which @@ -158,14 +158,16 @@=20
> > FOSS_COPYRIGHT
> =3D "true"
> >  #    FOSSology server recursively unpack components.
> >  #
> >
> > -FOSS_RECURSIVE_UNPACK =3D "false"
> > +FOSS_RECURSIVE_UNPACK =3D "true"
> > $
> > --------------------------------------------
> > $ cat bluez5.spdx
> > SPDXVersion: SPDX-1.1
> > DataLicense: CC0-1.0
> > DocumentComment: <text>SPDX for bluez5 version 5.21</text>
> >
> > ## Creation Information
> > Creator: fossology-spdx
> > Created: 2014-07-25T18:19:53
> > CreatorComment: <text>UNO</text>
> >
> > ## Package Information
> > PackageName: bluez5
> > PackageVersion: 5.21
> > PackageDownloadLocation: NOASSERTION
> > PackageSummary: <text></text>
> > PackageFileName: bluez5.tar.gz
> > PackageSupplier: Person:NOASSERTION
> > PackageOriginator: Person:NOASSERTION
> > PackageChecksum: SHA1: b9667bcd50f9531dde17344cde1cc2afd10e3067
> > PackageVerificationCode: 8967d6f42622f39d1833e758b67dc4378d3d6922
> > PackageDescription: <text>bluez5 version 5.21</text>
> >
> > PackageCopyrightText: <text>NOASSERTION</text>
> >
> > PackageLicenseDeclared: NOASSERTION
> > PackageLicenseConcluded: NOASSERTION
> > PackageLicenseInfoFromFiles: NOASSERTION
> >
> > ## File Information
> >
> > FileName: tools/bccmd.1
> >
> > FileName: android/pts-avrcp.txt
> >
> > FileName: doc/heartrate-api.txt
> >
> > FileName: profiles/proximity/proximity.conf
> >
> > FileName: profiles/input/hog.c
> > ......
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

