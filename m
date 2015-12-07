Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAA83E00AA8; Mon,  7 Dec 2015 06:51:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.145 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0145.outbound.protection.outlook.com [157.56.111.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91BB6E0079A
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 06:50:59 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.337.19; Mon, 7 Dec 2015 14:50:56 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0337.015; Mon, 7 Dec 2015 14:50:56 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Image specific package feed sources
Thread-Index: AdEw/Cz3SRFmUdVMS7mALZ9O4I74Tw==
Date: Mon, 7 Dec 2015 14:50:55 +0000
Message-ID: <BN3PR0501MB1090A03EB742A7CFCC098079BB090@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1090;
	5:L7aK8nh2ZSCGDm4o85rmPrYcEUQbXmmSvswrX5rDq9x/KmKRL7KHJ5hw/3JxAwaLYUvrBSvW/wNZEFUXQ7WAsl0JscMlgRPpPDaYdbpRUiIcVcn06wtGbDcN1rDcP2saVKvIAfKh49G6Ugn04JlGMg==;
	24:woKkRJvnzuhp0KvMA9wqkxmZdLJy7UkhfAe809A50KzWIrRIAOcFu6YpMBxiTlTKI7hezXmeqmx95rmjQtx8YbjNKXNGottcZ2n9JwJ8/s4=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1090;
x-microsoft-antispam-prvs: <BN3PR0501MB1090538CD68589E96AB4D261BB090@BN3PR0501MB1090.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(520078)(8121501046)(3002001)(10201501046);
	SRVR:BN3PR0501MB1090; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1090; 
x-forefront-prvs: 078310077C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(164054003)(189002)(97736004)(66066001)(74316001)(106356001)(189998001)(5004730100002)(110136002)(87936001)(76576001)(450100001)(101416001)(77096005)(92566002)(86362001)(107886002)(81156007)(5001960100002)(105586002)(5008740100001)(229853001)(99286002)(5003600100002)(1220700001)(10400500002)(102836003)(3846002)(6116002)(11100500001)(2351001)(5002640100001)(33656002)(1096002)(2501003)(586003)(40100003)(122556002)(50986999)(54356999)(2900100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1090;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2015 14:50:55.9308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1090
Subject: Image specific package feed sources
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
X-List-Received-Date: Mon, 07 Dec 2015 14:51:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I'm on poky/dizzy-1.7.3 and I'm having some conflict when creating image sp=
ecific packages.  I have two separate images that I build.  One image is th=
e production-ready image and the other is a development image.  The develop=
ment image includes the -dbg versions of packages and all the tools for rem=
ote debugging.  I am using opkg for a package manager and I have my own fee=
d-config package (called "custom-feed-config") which contains the opkg conf=
iguraiton files describing the package source locations.  I am trying to cr=
eate a custom-feed-config-dev package which contains a different path to th=
e package sources for the development image.  However, I'm getting conflict=
s during the build because custom-feed-config and custom-feed-config-dev bo=
th provide the same files (the configuration file names are the same, they =
just have different content to point to the different package source locati=
ons).  In an effort to resolve these conflicts I set "PROVIDES =3D "custom-=
feed-config"" in custom-feed-config-dev.  But now I'm getting warnings to s=
pecify a PREFERRED_PROVIDER for custom-feed-config because there are two pr=
oviders for custom-feed-config.  I've tried setting the PREFERRED_PROVIDER =
in the image recipe but that didn't help.

So I want to be able to build both my production-ready and development imag=
es on the same build machine but let each image have its own separate opkg =
feed sources included in the image.  If any of you have done this for your =
build systems, can you share how you did this?

Thanks,
Bryan

