Return-Path: <rcalhoun@shotspotter.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3F31E009B8; Tue, 23 Jun 2015 13:48:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.69 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 5569 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Jun 2015 13:48:14 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0069.outbound.protection.outlook.com [65.55.169.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1414EE0096A
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 13:48:14 -0700 (PDT)
Received: from BY2PR0401MB0902.namprd04.prod.outlook.com (10.160.64.139) by
	BY2PR0401MB0901.namprd04.prod.outlook.com (10.160.64.13) with Microsoft
	SMTP Server (TLS) id 15.1.195.15; Tue, 23 Jun 2015 19:15:23 +0000
Received: from BY2PR0401MB0902.namprd04.prod.outlook.com ([10.160.64.139]) by
	BY2PR0401MB0902.namprd04.prod.outlook.com ([10.160.64.139]) with
	mapi id 15.01.0190.013; Tue, 23 Jun 2015 19:15:17 +0000
From: Robert Calhoun <rcalhoun@shotspotter.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Bruce Ashfield
	<bruce.ashfield@windriver.com>,
	=?iso-8859-1?Q?=22Schauml=F6ffel=2C_Jan=22?= <J.Schaumloeffel@astro-kom.de>
Thread-Topic: [yocto] Migration from 1.7.1 to 1.8 - kernel-abiversion missing
Thread-Index: AdCBfI+fMEqCzoTLSdaz+mOzgmAd4QAPgTuAAAOetAAABww8AAAakOQAAAwGSAAAJWvPgAAKn+gAAABLswAAA3QWgAqeJjsA
Date: Tue, 23 Jun 2015 19:15:16 +0000
Message-ID: <D1AF2551.5EB971%rcalhoun@shotspotter.com>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>
	<553F90A3.9070501@windriver.com>
	<82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>
	<553FD83A.6040407@windriver.com>
	<4f2d75bf33ac423ab064f754e0b67655@ASTRO-EX1.Bensberg.de>
	<5540DB34.6010102@windriver.com>
	<a01714e680f8470cb21bb0b52e66c91e@ASTRO-EX1.Bensberg.de>
	<55421DA2.9060909@windriver.com>
	<e134e69a27bd460a9da71929a7f78d9a@ASTRO-EX1.Bensberg.de>
	<554236CB.6000604@windriver.com>
In-Reply-To: <554236CB.6000604@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [208.66.210.19]
x-microsoft-exchange-diagnostics: 1; BY2PR0401MB0901;
	5:KfVlKqdALIt0q+Z95mvZsEAWtI47eZ1WbOF49YpDvEApTiZSGZyyYnR473YSJDT4bUwnHSegUjH2Xwp/oohaHaQfHrQ0BMAPsMhTXygFqQ/PaEE/OlYTApz48HaT01q/+ALsQ4hrZ6O1X47Z9w/G+w==;
	24:ZjGcFMHmJnxhhKN3xvTc45xTmpZ/2JQl9ci1eW4weCY6gNT1mKJ/FbfEL1P8A5Odj5kK2oIukVQ64F1B4tqVc7Pc4O7ebXHpL4oHNpe/lqw=;
	20:JYUoA+BMwtbiVmSe3RzE7J8haG/ch5IRCSB0yOAJsnNVdrSQU5Q5D/AtjYDO36HEIH61V8AMAMcRG98Qy0fFqA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0401MB0901;
x-microsoft-antispam-prvs: <BY2PR0401MB09016CC16B74FBB4F69BA295CEA00@BY2PR0401MB0901.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BY2PR0401MB0901; BCL:0;
	PCL:0; RULEID:; SRVR:BY2PR0401MB0901; 
x-forefront-prvs: 06167FAD59
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(24454002)(51704005)(377424004)(164054003)(479174004)(377454003)(2900100001)(77096005)(50986999)(4001350100001)(77156002)(62966003)(76176999)(2950100001)(15975445007)(2656002)(87936001)(102836002)(5001770100001)(5001960100002)(107886002)(36756003)(54356999)(46102003)(19580395003)(83506001)(19580405001)(2501003)(99286002)(93886004)(122556002)(5002640100001)(40100003)(86362001)(66066001)(92566002)(189998001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR0401MB0901;
	H:BY2PR0401MB0902.namprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: shotspotter.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2015 19:15:16.5407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 375a7f95-52d1-443a-aa60-167b2aefb8af
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0401MB0901
Subject: Re: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Tue, 23 Jun 2015 20:48:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <1FE5DBC5EF0EF841A88F3AB59C291966@namprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable



On 4/30/15 10:06 AM, "Bruce Ashfield" <bruce.ashfield@windriver.com> wrote:

>On 2015-04-30 08:27 AM, Schauml=F6ffel, Jan wrote:
>>> What kernel recipe is used when your machine is set to 'astro' ?
>>> Something custom ? Or have you added machine compatibility to another
>>> known kernel recipe ?
>>
>> How would I see which kernel recipe is used?
>
>This is where my brute force techniques probably break down. I just
>do a 'bitbake virtual/kernel' and you'll see it display which
>recipe is being built.
>
>If you haven't added compatibility for your new machine to any
>recipe, I'm betting that linux-dummy is used.
>
>>
>> I did not customize anything except for aforementioned steps, simply
>>copied beaglebone.conf to astro.conf in the same directory. Also I did
>>not touch any kernel recipes (kernel is built externally), maybe that's
>>what's missing?
>
>It is plausible. But in theory, linux-dummy should still provide
>what you need (but since it doesn't build anything, there is
>no abi .. and no modules can be built against it) .. so the
>error isn't graceful.
>
>Bruce
>
>>
>> Jan
>>

I encountered the same error ("ERROR: No kernel-abiversion file found
(build/tmp/sysroots/{machinename}/pkgdata/kernel-depmod/kernel-abiversion),
 cannot run depmod, aborting") after porting my system from poky-daisy to
poky-fido. My machine config sets PREFERRED_PROVIDER_virtual/kernel =3D
"linux-dummy", as we currently use a monolithic out-of-tree 2.6 kernel.
It's a clean fido checkout, and I tried trashing tmp and rebuilding
everything to no effect.

Based on=20
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/image.bbcl
ass I have worked around this by setting:

USE_DEPMOD =3D "0"

in my image configuration. This works, and allows the root file system to
be built.

Is it a bug that depmod is not skipped automatically when linux-dummy is
specified? Am I risking death and destruction by overriding it? (We don't
have any kernel modules.)

Thanks,

Rob Calhoun


