Return-Path: <bevenson@melinkcorp.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1blp0186.outbound.protection.outlook.com [207.46.163.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C05B3E00B4D
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 06:56:56 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB038.namprd05.prod.outlook.com (10.255.210.147) with Microsoft
	SMTP Server (TLS) id 15.0.908.10; Mon, 31 Mar 2014 13:56:52 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.8]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.238]) with mapi id
	15.00.0908.008; Mon, 31 Mar 2014 13:56:52 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: USB not automounting, missing /dev/disk directory
Thread-Index: Ac9M5e1xfdNt7L6zSUK9E3L7/ur62Q==
Date: Mon, 31 Mar 2014 13:56:51 +0000
Message-ID: <cc39eee6eb68468399f4d2370dd04ced@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00754155006CF0007542A2
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 0167DB5752
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(189002)(199002)(164054003)(20776003)(47976001)(95666003)(49866001)(74316001)(47736001)(92566001)(46102001)(74706001)(83322001)(90146001)(80022001)(54356001)(74366001)(95416001)(93136001)(50986001)(76482001)(53806001)(4396001)(86362001)(65816001)(56816005)(51856001)(81542001)(74876001)(79102001)(98676001)(87266001)(85306002)(99286001)(80976001)(63696002)(69226001)(81342001)(87936001)(81816001)(2656002)(97186001)(97336001)(94946001)(77982001)(81686001)(59766001)(66066001)(76176001)(74662001)(47446002)(33646001)(31966008)(94316002)(54316002)(85852003)(83072002)(93516002)(76796001)(76576001)(77096001)(76786001)(74502001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB038;
	H:BLUPR05MB037.namprd05.prod.outlook.com;
	FPR:DEA6FEDD.97F24DEC.D2E393BF.9FE5C269.202DB; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: USB not automounting, missing /dev/disk directory
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
X-List-Received-Date: Mon, 31 Mar 2014 13:56:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I am on poky/dylan, and I recently did something to really screw up my loca=
l build and I'm trying to figure out how to recover.  I have a custom image=
 which is core-image-minimal plus a few packages for my needs.  For a targe=
t device running my latest built image, the target recognizes USB devices b=
ut does not automount a USB stick.  Also, my target device does not have a =
/dev/disk directory, which I assume means udev is not doing some things it =
should.

I have a local git repository of all layers which I'm using to tag my local=
 releases.  The most likely candidate for my problem is after my last relea=
se, I tried building with systemd for init just to see how that works, diff=
erences in image size, etc.  Specifically, I added:=20

DISTRO_FEATURES_append =3D " systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"

to my configuration.  After the systemd test build, I deleted these three l=
ines from my configuration and rebuilt the image to revert back to sysVinit=
.  Everything seems to work on my system except USB stick automounting.  Th=
e only other core function modification I see since my last release was a c=
onfiguration change I'd made to Busbox, which I also have reverted.  I did =
a bitbake -c cleanall of all the installed packages on my image (at least I=
 thought so) and rebuilt the image.  Even after the clean rebuild, I still =
have the issue with the USB stick not automounting and no /dev/disk directo=
ry on the filesystem.

Any ideas on what else needs to be cleaned out or rebuilt?  I've been tryin=
g to avoid deleting the entire tmp/ directory, but I will if that looks to =
be the best solution.

Thanks,
Bryan Evenson

