Return-Path: <Michael.Fainstein@ecitele.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E127E00BC6; Mon,  7 Sep 2015 23:29:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1050 seconds by postgrey-1.32 at yocto-www;
	Mon, 07 Sep 2015 23:29:21 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0107.outbound.protection.outlook.com [157.55.234.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6018CE00B2B
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2015 23:29:21 -0700 (PDT)
Received: from DBXPR03MB158.eurprd03.prod.outlook.com (10.242.141.16) by
	DBXPR03MB157.eurprd03.prod.outlook.com (10.242.141.15) with Microsoft
	SMTP Server (TLS) id 15.1.262.15; Tue, 8 Sep 2015 05:56:35 +0000
Received: from DBXPR03MB158.eurprd03.prod.outlook.com ([10.242.141.16]) by
	DBXPR03MB158.eurprd03.prod.outlook.com ([10.242.141.16]) with mapi id
	15.01.0262.011; Tue, 8 Sep 2015 05:56:35 +0000
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: Trevor Woerner <twoerner@gmail.com>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-raspberrypi] du giving non-integer result?
Thread-Index: AQHQ6RbFsHjcBX6vjkiZwBO7BQZN/Z4wqYIAgAAFKQCAAXI4gA==
Date: Tue, 8 Sep 2015 05:56:34 +0000
Message-ID: <DBXPR03MB1588505B5901171124C0CFAEE530@DBXPR03MB158.eurprd03.prod.outlook.com>
References: <55ECF934.80902@gmail.com>
	<31635424-0451-4ECF-A65E-F45B8D316B0B@gmail.com>
	<55ED3F5A.2060903@gmail.com>
In-Reply-To: <55ED3F5A.2060903@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Michael.Fainstein@ecitele.com; 
x-originating-ip: [147.234.56.21]
x-microsoft-exchange-diagnostics: 1; DBXPR03MB157;
	5:+1N7zuwBP7wjkrH1LEjnB8ZsLlAunq48i2aA0x+GiMb9t5ebnzq2B/kPzAvar5Xlm1oWSMzdWSFM1urxac9IRlRytEym1dLMelqe/Le9lCpClBdDC+CEu/+F5VT4gcAMxwP9N4I5JWbmpaNZUStbHw==;
	24:Yt7mgCudi5g6dI/ZLA9csGUMHztW9A7/Yxm2kk6tMrkYFx+fxo5Ls+2tSHCQ5NUmJWZe67eZXpBSKxzK2syhmSLJpkjYew3j20EOUVG1RwA=;
	20:ElpJKSZOQalSWKOIaJ1keiFxPuE8E9Fka6ge1pcQmCUNCd+ixP9oFHtb7JlUx1eDjYA1mHeYmwRZ/K/GI+zm3Q==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DBXPR03MB157;
x-microsoft-antispam-prvs: <DBXPR03MB1578D276384EAD9C6330BCAEE530@DBXPR03MB157.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(8121501046)(3002001); SRVR:DBXPR03MB157;
	BCL:0; PCL:0; RULEID:; SRVR:DBXPR03MB157; 
x-forefront-prvs: 069373DFB6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(479174004)(199003)(377454003)(24454002)(13464003)(33656002)(5001860100001)(50986999)(102836002)(62966003)(15395725005)(5001830100001)(15975445007)(19580405001)(97736004)(5004730100002)(19580395003)(4001540100001)(5001770100001)(54356999)(76176999)(87936001)(46102003)(81156007)(74316001)(77096005)(5007970100001)(76576001)(68736005)(77156002)(64706001)(106116001)(189998001)(86362001)(92566002)(10400500002)(122556002)(5002640100001)(101416001)(105586002)(106356001)(40100003)(66066001)(5001960100002)(5003600100002)(2950100001)(2900100001)(2004002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DBXPR03MB157;
	H:DBXPR03MB158.eurprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: ecitele.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ecitele.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2015 05:56:34.9210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2c514a61-08de-4519-b4c0-921fef62c42a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBXPR03MB157
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Tue, 08 Sep 2015 06:29:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I saw such behavior in 'expr' when I upgraded bash 3.1 - it started printin=
g floats instead of integers.
You can solve it using awk's OFMT:  awk '{OFMT=3D"%.0f";print $1}'

Michael

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Trevor Woerner
Sent: Monday, September 07, 2015 10:40 AM
To: Khem Raj
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] du giving non-integer result?

On 09/07/15 03:21, Khem Raj wrote:
>> On Sep 6, 2015, at 7:40 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>> I can't explain why, but when I build "core-image-minimal" for
>> MACHINE=3Draspberrpi2 I get the following SD creation error:
>>
> which shell do you use for /bin/sh

$ ls -l /bin/sh
lrwxrwxrwx 1 root root 4 Nov 22  2014 /bin/sh -> bash

$ /bin/bash --version
GNU bash, version 4.2.53(1)-release (x86_64-suse-linux-gnu) Copyright (C) 2=
011 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.htm=
l>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

