Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 970BBE00521; Thu, 18 Dec 2014 11:44:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2091 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Dec 2014 11:44:07 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0058.outbound.protection.outlook.com [157.56.111.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30C91E002F9
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 11:44:07 -0800 (PST)
Received: from BLUPR02CA027.namprd02.prod.outlook.com (25.160.23.145) by
	BLUPR02MB472.namprd02.prod.outlook.com (10.141.82.23) with Microsoft
	SMTP Server (TLS) id 15.1.49.12; Thu, 18 Dec 2014 19:09:14 +0000
Received: from BY2FFO11FD002.protection.gbl (2a01:111:f400:7c0c::177) by
	BLUPR02CA027.outlook.office365.com (2a01:111:e400:8ad::17) with
	Microsoft
	SMTP Server (TLS) id 15.1.49.12 via Frontend Transport; Thu, 18 Dec 2014
	19:09:14 +0000
Received: from mail.sierrawireless.com (208.81.121.47) by
	BY2FFO11FD002.mail.protection.outlook.com (10.1.14.124) with Microsoft
	SMTP Server (TLS) id 15.1.26.17 via Frontend Transport;
	Thu, 18 Dec 2014 19:09:13 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	carmd-exchhub02.sierrawireless.local ([::1]) with mapi; Thu, 18 Dec 2014
	11:09:13 -0800
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 18 Dec 2014 11:09:11 -0800
Thread-Topic: Microcontroller Cross Compiler
Thread-Index: AdAa8/1qejz+qCcXQDa3EoMqNt5lWQ==
Message-ID: <8F90F944E50427428C60E12A34A309D239F6DB0EE8@carmd-exchmb01.sierrawireless.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.47 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.47;
	helo=mail.sierrawireless.com;
Authentication-Results: spf=pass (sender IP is 208.81.121.47)
	smtp.mailfrom=dwatkins@sierrawireless.com; 
X-Forefront-Antispam-Report: CIP:208.81.121.47; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(438002)(189002)(51874003)(199003)(98436002)(23756003)(99396003)(106466001)(120916001)(110136001)(107046002)(229853001)(107886001)(2351001)(31966008)(33656002)(21056001)(92566001)(2656002)(86362001)(19580395003)(87936001)(19580405001)(6806004)(50466002)(47776003)(64706001)(20776003)(54356999)(15974865002)(50986999)(450100001)(2900100001)(104016003)(62966003)(2920100001)(2930100002)(77156002)(102836002)(2501002)(77096005)(46102003)(55846006)(4396001)(7099022)(18886075002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR02MB472;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:ovrnspm;
	PTR:spf.sierrawireless.com; MX:1; A:1; LANG:en; 
X-Microsoft-Antispam: UriScan:;
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR02MB472;
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0; RULEID:(601004);
	SRVR:BLUPR02MB472; 
X-Forefront-PRVS: 042957ACD7
X-Exchange-Antispam-Report-CFA-Test: BCL:0;PCL:0;RULEID:;SRVR:BLUPR02MB472;
X-OriginatorOrg: SierraWirelessInc.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2014 19:09:13.5782 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.47]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR02MB472
Subject: Microcontroller Cross Compiler
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
X-List-Received-Date: Thu, 18 Dec 2014 19:44:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

In my target system I have a microcontroller (MCU) that handles some I/O, p=
ower supplies and system boot up to the point of taking the main CPU out of=
 reset.  At present, we build the MCU firmware from source and then the bin=
ary file is packaged to be used as payload with an MCU firmware update util=
ity.

Now my main question...  does anyone have suggestions (or is there a 'yocto=
' way) to build such a cross compiler for the MCU so that it can be invoked=
 to build MCU firmware from source as part of the bitbake build for the Lin=
ux target's image.  The idea would be to build MCU firmware image from sour=
ce using the MCU cross compiler, but obviously to build drivers and utiliti=
es that run on the main CPU using the normal cross-compiler toolchains buil=
t under yocto.  Then I could package the payload firmware image along with =
utilities all as part of the same RPM package.

The MCU cross compiler we use was originally generated using crosstool-ng, =
and is essentially a gcc cross compiler for 'bare metal' MCU target.

Does anyone who has gone down this road have suggestions?

Thanks in advance!


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


