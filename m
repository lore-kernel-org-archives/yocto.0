Return-Path: <dmulder@lasx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E9FAE00AAB; Fri, 16 Oct 2015 10:34:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.134 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 5465 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Oct 2015 10:33:59 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0134.outbound.protection.outlook.com [65.55.169.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3477CE0048C
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 10:33:59 -0700 (PDT)
Received: from BLUPR10MB0739.namprd10.prod.outlook.com (10.163.215.152) by
	BLUPR10MB0739.namprd10.prod.outlook.com (10.163.215.152) with Microsoft
	SMTP Server (TLS) id 15.1.300.14; Fri, 16 Oct 2015 16:02:51 +0000
Received: from BLUPR10MB0739.namprd10.prod.outlook.com ([10.163.215.152]) by
	BLUPR10MB0739.namprd10.prod.outlook.com ([10.163.215.152]) with mapi id
	15.01.0300.010; Fri, 16 Oct 2015 16:02:51 +0000
From: Dave Mulder <dmulder@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Updating NIC drivers in older Yocto
Thread-Index: AdEF8pCQNAjBJSeaSNaYBXligY+ZggAqB1kjAGQy6aA=
Date: Fri, 16 Oct 2015 16:02:50 +0000
Message-ID: <BLUPR10MB0739FD5FBCF12A2AE7D728C1D03D0@BLUPR10MB0739.namprd10.prod.outlook.com>
References: <BLUPR10MB073931FBD2D4D84CF807DEA3D0300@BLUPR10MB0739.namprd10.prod.outlook.com>
	<1444838892200.77547@seescan.com>
In-Reply-To: <1444838892200.77547@seescan.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=dmulder@lasx.com; 
x-originating-ip: [50.205.222.218]
x-microsoft-exchange-diagnostics: 1; BLUPR10MB0739;
	5:S87e4xF65cGPUxmL7HN9Tm7XL0qKnR34rvUj7XZcH7qjFdWN8GJW14XUxhe2klkIxAEMIZhs0qPy03gWrlLILQ6SEpiZmr1z4Yhioj3KfQSZPHX9fQ2b/ujLygWuyD66a2ZR+UjotKEgQdtgdi/ZgQ==;
	24:OXmGF2blxX6or0XVoJ/AgnaIolUtvsj3CAlbcPrLSWT4s/sTCpEziRkuXkvGwX/G3J5c+lHfBHkG5f8TYrgJqueTcPRfI5s1KsKruya7cRo=;
	20:FbkSxcI64Bmi/dsRs1FaAcTCzol5+Xp1id7qCkpwmmCdnwLyudW3SMkmaYP0IfTD3BS2e8Jr3YGEArwVLuzYXg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR10MB0739;
x-microsoft-antispam-prvs: <BLUPR10MB07398045351E964D45C537EFD03D0@BLUPR10MB0739.namprd10.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(520078)(5005006)(3002001);
	SRVR:BLUPR10MB0739; BCL:0; PCL:0; RULEID:; SRVR:BLUPR10MB0739; 
x-forefront-prvs: 0731AA2DE6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(2501003)(10400500002)(105586002)(2351001)(66066001)(64706001)(54356999)(50986999)(107886002)(101416001)(110136002)(5002640100001)(76176999)(450100001)(106356001)(189998001)(99286002)(5007970100001)(46102003)(5001960100002)(2950100001)(74316001)(5003600100002)(77096005)(5008740100001)(102836002)(2900100001)(87936001)(86362001)(76576001)(122556002)(11100500001)(33656002)(40100003)(5001920100001)(5004730100002)(81156007)(97736004)(92566002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR10MB0739;
	H:BLUPR10MB0739.namprd10.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: lasx.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: lasx.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2015 16:02:50.9736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83241624-fc24-4b12-bcc6-c196bd21826b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR10MB0739
Subject: Re: Updating NIC drivers in older Yocto
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
X-List-Received-Date: Fri, 16 Oct 2015 17:34:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> I have been using a Sandy Bridge Yocto 1.3 build for a couple years now, =
on off-
> the-shelf Intel PC motherboards. I also build an application.
>=20
> I am now looking into using more recent motherboards. The OS boots just f=
ine,
> but the new NICs (Intel, Realtek) are not supported by the old 3.4.11 ker=
nel.
>=20
> What's the best way to support new NICs?  I can see three options:
>=20
>=20
> 1.       New Yocto.  I suspect (but would be happy to be wrong) that my
> application would need to be built against a different sysroot/toolchain,=
 which
> seems like it would cause backward-compatibility problems (can't run new
> application on old OS), and I would prefer to not have multiple builds of=
 the
> application and have to have the host software determine which version is
> needed (it's an embedded application, and the OS is headless).

I was wrong (happily): My application (built with the 1.3 toolchain) works =
with Yocto 1.8.
I did keep the same BSP (sugarbay), which may be the key.
=20
> 2.       New kernel, old Yocto.  I don't know that this is actually an op=
tion, or how
> new of a kernel can be used in Yocto 1.3.  If this is an option, it seems=
 like my
> application would not need to be rebuilt.
>=20
> 3.       Loadable drivers for new NICs (rather than using the ones built =
into the
> kernel).  I don't know that this is doable either.
>=20
> Are there other options?  Can a new application be built that will work w=
ith
> multiple versions of the OS?  Is that even a problem, or am I just assumi=
ng the
> worst?
>=20
> Thanks!
> Dave

