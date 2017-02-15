Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73FFAE00970; Wed, 15 Feb 2017 11:41:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1901 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Feb 2017 11:41:14 PST
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0089.outbound.protection.outlook.com
	[104.47.37.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BC33E008F2
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 11:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Jk2irx3oVtSiuq2TGpmC6xZocmRD7T0GQ0msHgP8e/0=;
	b=LLfsQ/Qixzctk7+qsYb9oebMTguiguuitseGAcHrJDQMGik4ahyUqh4qTjRzPgcPF9x706cOn6AigCSYBwqSprNBI3C3CRoSUWb1BNogqqTHABjFgvcQEpXw45pIQJOJhKYm3Q9eoQN2q0BHxKYcUaPDFo+PofJyO6xpw+uGz5w=
Received: from SN1PR0201MB1790.namprd02.prod.outlook.com (10.162.228.20) by
	SN1PR0201MB1792.namprd02.prod.outlook.com (10.162.228.24) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.888.16; Wed, 15 Feb 2017 19:09:31 +0000
Received: from SN1PR0201MB1790.namprd02.prod.outlook.com ([10.162.228.20]) by
	SN1PR0201MB1790.namprd02.prod.outlook.com ([10.162.228.20]) with
	mapi id 15.01.0888.030; Wed, 15 Feb 2017 19:09:31 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Set aside some packages as supplement to the rootfs creation
Thread-Index: AdKHvkdqHuxs+Ec0RFS9QKypDFEUiA==
Date: Wed, 15 Feb 2017 19:09:30 +0000
Message-ID: <SN1PR0201MB1790571A2E65C308ECC3EA44B25B0@SN1PR0201MB1790.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=dwatkins@sierrawireless.com; 
x-originating-ip: [208.81.120.1]
x-ms-office365-filtering-correlation-id: 96c7486f-ff67-4b7a-ee74-08d455d62bb8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(48565401081);
	SRVR:SN1PR0201MB1792; 
x-microsoft-exchange-diagnostics: 1; SN1PR0201MB1792;
	7:WDkPUmX0LjiSdYt2EZK9HZkgM/qhi8G8zY8Xc1uZ/xPoqhTx1rAomNbKdFKjVRvdBRCJ8yLzT679lHmMrgSebWON0X5rqfDlN3oxg5Ns8whKrgYtw9sLamKyP0tP17ceAjT3A5lVW6SPdOS49dIFUbaa3P6oBGmoK7IUZFDhH4sAlDw+lbvtW6/nL6FDv0IJQqkw/73TKGpoZctuQqeSrau02CyfdD+1iX2XbUjdAUZ/OR26/nMzvY5VFbbCLsbCt1L5ZncCf55W2bCSxjq98FdAmrKouw3p0UTG1yjhAWQAREA+pA0TnXDprfHlrO861dbACS1U+3uy9zbM+XYeUQ==
x-microsoft-antispam-prvs: <SN1PR0201MB1792BDF629674E32C984A7BFB25B0@SN1PR0201MB1792.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(219636747203745);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026)(6041248)(20161123560025)(20161123562025)(20161123558025)(20161123555025)(20161123564025)(6072148);
	SRVR:SN1PR0201MB1792; BCL:0; PCL:0; RULEID:;
	SRVR:SN1PR0201MB1792; 
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39840400002)(39450400003)(39410400002)(39850400002)(199003)(189002)(86362001)(102836003)(3846002)(189998001)(101416001)(6116002)(54356999)(68736007)(2900100001)(97736004)(50986999)(66066001)(25786008)(53936002)(5660300001)(5640700003)(6506006)(77096006)(6436002)(2906002)(122556002)(8936002)(81166006)(450100001)(3280700002)(74316002)(6916009)(1730700003)(99286003)(7696004)(9686003)(106356001)(8676002)(105586002)(55016002)(92566002)(110136004)(3660700001)(15974865002)(81156014)(305945005)(7736002)(33656002)(38730400002)(2351001)(2501003)(389900002)(18886075002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR0201MB1792;
	H:SN1PR0201MB1790.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: sierrawireless.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2017 19:09:30.9633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR0201MB1792
Subject: Set aside some packages as supplement to the rootfs creation
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
X-List-Received-Date: Wed, 15 Feb 2017 19:41:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to be able to build an image target in such a way that 'bitbake imag=
e-target' builds the target as follows:

1.  All of the packages are built for this target, including the RPMs
2.  Some of the packages are designated as NOT to be installed into the roo=
tfs generated for the target at build time
3.  They need to be available in the RPM feed to be installed on the target=
 subsequent to flashing the rootfs image
4.  Need some sort of supplemental manifest that lists these packages that =
were built, but are NOT in the rootfs

Are there some variables, bbclasses, etc set up to facilitate this?

I have tried using PACKAGE_EXCLUDE but this doesn't guarantee that they wil=
l be built.

I think I can do it by adding a bbclass that will:
-  add a task that depends on the supplemental packages being built
-  exclude them from the target image by default (using PACKAGE_EXCLUDE)
-  ensure that the supplemental packages are deployed to the feed and creat=
e some sort of supplemental manifest

But want to make sure this doesn't reinvent any wheels.

Thanks!

PS: Hope to see some of you at upcoming Embedded Linux Conference and Yocto=
 Project DevDay in Portland.


Regards,

Darcy

Darcy Watkins ::=A0=A0Staff Engineer, Firmware

SIERRA WIRELESS
Direct=A0 +1 604 233 7989=A0 =A0::=A0 Fax=A0 +1 604 231 1109  ::  Main  +1 =
604 231 1100
13811 Wireless Way=A0 ::=A0Richmond, BC Canada V6V 3A4
[P2]
dwatkins@sierrawireless.com :: www.sierrawireless.com :: www.inmotiontechno=
logy.com=20


