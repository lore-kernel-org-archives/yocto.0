Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 147FAE008D4; Mon, 16 Mar 2015 06:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.148 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 922 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Mar 2015 06:24:59 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0148.outbound.protection.outlook.com [157.56.111.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CCE8E00712
	for <yocto@yoctoproject.org>; Mon, 16 Mar 2015 06:24:59 -0700 (PDT)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1089.namprd05.prod.outlook.com (25.160.113.11) with
	Microsoft SMTP
	Server (TLS) id 15.1.112.19; Mon, 16 Mar 2015 13:09:35 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0112.000; Mon, 16 Mar 2015 13:09:35 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: eclipe-yocto: SDKTARGETSYSROOT not being expanded correctly
Thread-Index: AdBf50lriPd5ux4TRRmdH+9A/7rkAw==
Date: Mon, 16 Mar 2015 13:09:34 +0000
Message-ID: <BN3PR0501MB1090BF1EA5561303157E2BE6BB020@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [98.100.91.242]
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1089;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(2351001)(87936001)(107886001)(2656002)(76576001)(229853001)(110136001)(99286002)(50986999)(54356999)(74316001)(33656002)(19580395003)(46102003)(2900100001)(102836002)(15975445007)(86362001)(2501003)(40100003)(450100001)(122556002)(77156002)(92566002)(66066001)(62966003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1089;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <BN3PR0501MB1089A6BF543BD92D19E26706BB020@BN3PR0501MB1089.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:BN3PR0501MB1089; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1089; 
x-forefront-prvs: 05177D47DC
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2015 13:09:34.6885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1089
Subject: eclipe-yocto: SDKTARGETSYSROOT not being expanded correctly
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
X-List-Received-Date: Mon, 16 Mar 2015 13:25:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am using version 1.6.2 of the Yocto Eclipse plug-in (from http://download=
s.yoctoproject.org/releases/eclipse-plugin/1.6.2/kepler/) under Fedora 21. =
 After some recent issues with getting the plug-in to compile my applicatio=
n, I noticed that I am having a variable expansion problem with CC.

I followed the instructions for building an SDK for my image and I am using=
 the pre-built toolchain.  In the environment script for the SDK, CC is def=
ined as follows:

	export CC=3D"arm-poky-linux-gnueabi-gcc  -march=3Darmv5te -marm -mthumb-in=
terwork -mtune=3Darm926ej-s --sysroot=3D$SDKTARGETSYSROOT"

I then generate new a simple Yocto Hello World C project and build the appl=
ication.  It builds just fine, but I see the following in the console outpu=
t:

	arm-poky-linux-gnueabi-gcc  -march=3Darmv5te -marm -mthumb-interwork -mtun=
e=3Darm926ej-s --sysroot=3DDKTARGETSYSROOT=20

However, if I go to Project->Properties->C/C++ Build->Environment and chang=
e the CC environment variable to the following:

	arm-poky-linux-gnueabi-gcc  -march=3Darmv5te -marm -mthumb-interwork -mtun=
e=3Darm926ej-s --sysroot=3D${SDKTARGETSYSROOT}

then the SDKTARGETSYSROOT is properly expanded to the correct value.  Is an=
yone else seeing this problem, or is this due to the version of tools that =
exist on Fedora 21?

Thanks,
Bryan

