Return-Path: <bevenson@melinkcorp.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1lp0144.outbound.protection.outlook.com [207.46.163.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F6CAE00C1D
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 10:59:26 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB039.namprd05.prod.outlook.com (10.255.210.148) with Microsoft
	SMTP Server (TLS) id 15.0.908.10; Mon, 31 Mar 2014 17:59:23 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.8]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.238]) with mapi id
	15.00.0908.008; Mon, 31 Mar 2014 17:59:23 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: USB not automounting, missing /dev/disk directory
Thread-Index: Ac9M5e1xfdNt7L6zSUK9E3L7/ur62QADqdrg
Date: Mon, 31 Mar 2014 17:59:22 +0000
Message-ID: <6c4dbf0aa1f3451f858527d4999bd8be@BLUPR05MB037.namprd05.prod.outlook.com>
References: <cc39eee6eb68468399f4d2370dd04ced@BLUPR05MB037.namprd05.prod.outlook.com>
In-Reply-To: <cc39eee6eb68468399f4d2370dd04ced@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 015341D6006CF801534323
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 0167DB5752
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(377454003)(199002)(189002)(51704005)(164054003)(13464003)(33646001)(81342001)(74876001)(81542001)(50986001)(47736001)(47976001)(69226001)(49866001)(77096001)(4396001)(19580405001)(83322001)(19580395003)(76576001)(76796001)(76482001)(54316002)(54356001)(56776001)(46102001)(53806001)(98676001)(20776003)(80022001)(65816001)(74502001)(79102001)(63696002)(87936001)(74662001)(56816005)(85852003)(83072002)(31966008)(66066001)(15975445006)(90146001)(85306002)(81816001)(2656002)(87266001)(77982001)(59766001)(92566001)(86362001)(94316002)(93136001)(51856001)(97186001)(74366001)(97336001)(80976001)(99286001)(74706001)(94946001)(93516002)(81686001)(95666003)(95416001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB039;
	H:BLUPR05MB037.namprd05.prod.outlook.com;
	FPR:DEA6FEDD.96FE8DDC.D1E1B3BF.5AF5E26B.203B5; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: Re: USB not automounting, missing /dev/disk directory
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
X-List-Received-Date: Mon, 31 Mar 2014 17:59:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> Sent: Monday, March 31, 2014 9:57 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] USB not automounting, missing /dev/disk directory
>=20
> All,
>=20
> I am on poky/dylan, and I recently did something to really screw up my lo=
cal
> build and I'm trying to figure out how to recover.  I have a custom image
> which is core-image-minimal plus a few packages for my needs.  For a targ=
et
> device running my latest built image, the target recognizes USB devices b=
ut
> does not automount a USB stick.  Also, my target device does not have a
> /dev/disk directory, which I assume means udev is not doing some things i=
t
> should.
>=20
> I have a local git repository of all layers which I'm using to tag my loc=
al
> releases.  The most likely candidate for my problem is after my last rele=
ase, I
> tried building with systemd for init just to see how that works, differen=
ces in
> image size, etc.  Specifically, I added:
>=20
> DISTRO_FEATURES_append =3D " systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>=20
> to my configuration.  After the systemd test build, I deleted these three=
 lines
> from my configuration and rebuilt the image to revert back to sysVinit.
> Everything seems to work on my system except USB stick automounting.
> The only other core function modification I see since my last release was=
 a
> configuration change I'd made to Busbox, which I also have reverted.  I d=
id a
> bitbake -c cleanall of all the installed packages on my image (at least I=
 thought
> so) and rebuilt the image.  Even after the clean rebuild, I still have th=
e issue
> with the USB stick not automounting and no /dev/disk directory on the
> filesystem.
>=20
> Any ideas on what else needs to be cleaned out or rebuilt?  I've been try=
ing
> to avoid deleting the entire tmp/ directory, but I will if that looks to =
be the
> best solution.
>=20

I've tracked down what I believe is the problem.  systemd builds udev revis=
ion 199, but dylan is using udev revision 182.  After reverting the configu=
ration for systemd, there was still a package for udev revision 199 in my i=
pk directory.  Since I did not specify which revision of udev to use in my =
image recipe, udev revision 199 was being installed on my system.

I'm doing a full clean of all packages for my image and deleting the ipk/ d=
irectory to force a full rebuild of everything.  After this incident, I wan=
t to make sure there were no more surprises left over.

> Thanks,
> Bryan Evenson
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

