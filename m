Return-Path: <brent.skinner@kodakalaris.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0129E00853; Wed, 14 Jan 2015 08:24:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bbn0107.outbound.protection.outlook.com [157.56.111.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43295E0083C
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 08:24:45 -0800 (PST)
Received: from BY1PR0301MB0903.namprd03.prod.outlook.com (25.160.195.142) by
	BY1PR0301MB0901.namprd03.prod.outlook.com (25.160.195.140) with
	Microsoft
	SMTP Server (TLS) id 15.1.53.17; Wed, 14 Jan 2015 16:08:29 +0000
Received: from BY1PR0301MB0903.namprd03.prod.outlook.com ([25.160.195.142]) by
	BY1PR0301MB0903.namprd03.prod.outlook.com ([25.160.195.142]) with
	mapi id 15.01.0053.000; Wed, 14 Jan 2015 16:08:29 +0000
From: Cameron B Skinner <brent.skinner@kodakalaris.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [BBB] RTL8188EE not mounting
Thread-Index: AdAwFFHLUY+1v0s+RJCJocTleEOW7g==
Date: Wed, 14 Jan 2015 16:08:28 +0000
Message-ID: <BY1PR0301MB0903BC4BE4F8B1E2CA5371DBFC410@BY1PR0301MB0903.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [165.170.128.66]
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=brent.skinner@kodakalaris.com; 
x-dmarcaction-test: None
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(3005003);SRVR:BY1PR0301MB0901;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0301MB0901; 
x-forefront-prvs: 04569283F9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(24454002)(51704005)(51914003)(377424004)(189002)(199003)(122556002)(40100003)(92566002)(101416001)(2656002)(102836002)(87936001)(2900100001)(97736003)(76576001)(68736005)(99286002)(54356999)(450100001)(2501002)(77156002)(62966003)(50986999)(54606007)(74316001)(110136001)(105586002)(46102003)(64706001)(106356001)(86362001)(107886001)(33656002)(2351001)(66066001)(54206007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY1PR0301MB0901;
	H:BY1PR0301MB0903.namprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: kodakalaris.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: kodakalaris.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2015 16:08:28.9317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d29b7a9b-6edb-4720-99a8-3c5c6c3eeeb0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0301MB0901
Subject: Re: [BBB] RTL8188EE not mounting
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
X-List-Received-Date: Wed, 14 Jan 2015 16:24:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply. Your analysis is likely correct. The 'lsmod' command =
had no mention of the Realtek device. The 'dmesg' command indicated that th=
e Realtek device listed under 'lsusb' device 5 was using musb-hdrc similar =
to the rest of the USB devices, but it did not indicate anything more than =
that, whereas the keyboard had more information following it.

> On 2015-01-13 10:00, Cameron B Skinner wrote:
>> Let me start by apologizing if the outcome is very obvious to everyone b=
ut me. I?m VERY new to Linux and newer to Yocto.
>>
>> I have an RTL8188EE wifi board that I?m connecting to a Beaglebone=20
>> Black via USB. If I do an ?lsusb? I can see that there is a Realtek=20
>> device out there somewhere. Even though the driver for this exact device=
 appears in the kernel drivers, the device doesn?t mount. I?m running the d=
izzy version and have tried building the Sato, Full Command Line and Basic =
versions hoping that one of them would include whatever it is that I need t=
o recognize this device.
>>
>> For the non-Sato versions I did copy the uImage and Modules to the SD ca=
rd thinking they might help.
>>
>> Any help would be great.
>
> For this device to work you need both a kernel driver and firmware.  The =
kernel driver is probably being built, but the firmware is probably not ins=
talled.
>
> Make sure your image includes the appropriate firmware for the device.  I=
n your case I think this would be linux-firmware-rtl8192ce
>
> Does the appropriate driver get loaded into the kernel?  What does 'lsmod=
' show?
>
> If you still have trouble, send the output of 'lsmod' and 'dmesg'
after you plug in the device.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------


