Return-Path: <zhenhua.luo@freescale.com>
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2lp0203.outbound.protection.outlook.com [207.46.163.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF1FCE00B88
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 23:21:27 -0700 (PDT)
Received: from DM2PR03MB399.namprd03.prod.outlook.com (10.141.84.148) by
	DM2PR03MB400.namprd03.prod.outlook.com (10.141.84.153) with Microsoft
	SMTP Server (TLS) id 15.0.913.9; Wed, 9 Apr 2014 06:21:19 +0000
Received: from DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) by
	DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) with mapi id
	15.00.0913.002; Wed, 9 Apr 2014 06:21:19 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can Yocto support "git clone" for url with http prefix
Thread-Index: Ac9Tu+pLlbOCcacvRQeZleCu8ZLgFg==
Date: Wed, 9 Apr 2014 06:21:18 +0000
Message-ID: <de6b3cec81f445b99d03b5382d698195@DM2PR03MB399.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.212]
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(189002)(199002)(83072002)(85852003)(97336001)(87936001)(85306002)(74316001)(94946001)(92566001)(93516002)(93136001)(94316002)(86362001)(76482001)(81342001)(99396002)(81542001)(74706001)(95666003)(74876001)(74366001)(69226001)(59766002)(63696004)(95416001)(53806002)(50986002)(2656002)(65816002)(98676001)(80022001)(87266001)(49866001)(56816006)(97186001)(4396001)(46102001)(90146001)(66066001)(74662001)(77982001)(74502001)(31966008)(76576001)(76176001)(76786001)(83322001)(15202345003)(80976001)(15975445006)(33646001)(20776003)(81686001)(56776002)(47446003)(76796001)(81816001)(79102001)(54316003)(47736002)(54356002)(47976003)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR03MB400;
	H:DM2PR03MB399.namprd03.prod.outlook.com;
	FPR:ECFFF795.213324A1.F5E5927A.84676EF0.2014C; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (: freescale.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Can Yocto support "git clone" for url with http prefix
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
X-List-Received-Date: Wed, 09 Apr 2014 06:21:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I want to create recipe for a package which is managed by Gerrit, Gerrit on=
ly provides an anonymous HTTP url(http://aaaa:8181/bb) which can be cloned =
by "git clone http://aaaa:8181/bb" correctly.=20

I set SRC_URI to "http://aaaa:8181/bb" in the bb file, following is the det=
ailed definition.=20
       SRC_URI =3D "http://aaaa:8181/bb;protocol=3Dgit;branch=3Dmaster"=20

When I try to build the package, following error appears.=20
	ERROR: Function failed: URL: 'http://aaaa:8181/bb;protocol=3Dgit;branch=3D=
master' has invalid parameters. Invalid protocol - if you wish to fetch fro=
m a git repository using http, you need to instead use the git:// prefix wi=
th protocol=3Dhttp=20

May I know if Yocto can support "git clone" for url with http prefix?=20


Best Regards,

Zhenhua

