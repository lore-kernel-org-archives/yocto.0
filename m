Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C551E009BB; Thu, 14 May 2015 10:41:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.75 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 5565 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 May 2015 10:40:56 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0075.outbound.protection.outlook.com [207.46.100.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07682E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 10:40:56 -0700 (PDT)
Received: from BN1PR02CA0024.namprd02.prod.outlook.com (10.141.56.24) by
	BN3PR0201MB1009.namprd02.prod.outlook.com (25.161.207.143) with
	Microsoft
	SMTP Server (TLS) id 15.1.160.19; Thu, 14 May 2015 16:08:07 +0000
Received: from BL2FFO11FD055.protection.gbl (2a01:111:f400:7c09::153) by
	BN1PR02CA0024.outlook.office365.com (2a01:111:e400:2a::24) with
	Microsoft SMTP Server (TLS) id 15.1.160.19 via Frontend Transport;
	Thu, 14 May 2015 16:08:07 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.47)
	smtp.mailfrom=sierrawireless.com; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.47 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.47;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.47) by
	BL2FFO11FD055.mail.protection.outlook.com (10.173.161.183) with
	Microsoft
	SMTP Server (TLS) id 15.1.160.8 via Frontend Transport; Thu, 14 May 2015
	16:08:06 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	carmd-exchhub02.sierrawireless.local ([::1]) with mapi; Thu, 14 May 2015
	09:08:05 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 14 May 2015 09:08:03 -0700
Thread-Topic: meta-java openjdk build breaks when sdt.h present on the build
	host
Thread-Index: AdCOX4naWkCQefjmS9GEmu0sDdF9ag==
Message-ID: <8F90F944E50427428C60E12A34A309D2459E8A9380@carmd-exchmb01.sierrawireless.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11FD055;
	1:M04j8rdLQCNll6mTU5V20mKwrYn1Hs2qxdTy1vdyWjqRHOEomTpp8PzedahHkooPlrfQP423aKF5JtnZc8NLtXUbTzv/5xEADijIEQ9zO2uQO7a4S9T69g3FMI7VoplWbfbpNr3L39VVLKXX3xnuDnkrL9yx2N+pKz5s/uGZmvJUwA13pLo9TxmL6WvYbMtWgA4Wvy7gH5PFZZr/UP4lNq8IxCtKXL6S4XZeyoweASc1beHQEMaXOptDk9psoPDI/KEYMeZAdze/DaYOhpsQCA==
X-Forefront-Antispam-Report: CIP:208.81.121.47; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(438002)(199003)(189002)(5001970100001)(23756003)(15974865002)(189998001)(104016003)(107886002)(110136002)(19580395003)(19580405001)(50466002)(77096005)(102836002)(6806004)(2501003)(87936001)(2930100002)(2920100001)(2900100001)(2656002)(106466001)(54356999)(46102003)(50986999)(92566002)(33656002)(62966003)(77156002)(450100001)(98436002)(86362001)(55846006)(47776003)(229853001)(2351001)(7099028)(18886075002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR0201MB1009;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:ovrnspm; A:1;
	MX:1; PTR:spf.sierrawireless.com; LANG:en; 
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0201MB1009;
X-Microsoft-Antispam-PRVS: <BN3PR0201MB1009EE8D1B9B06C16C6552C1B2D80@BN3PR0201MB1009.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BN3PR0201MB1009; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0201MB1009; 
X-Forefront-PRVS: 0576145E86
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2015 16:08:06.6868 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.47]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0201MB1009
Subject: meta-java openjdk build breaks when sdt.h present on the build host
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
X-List-Received-Date: Thu, 14 May 2015 17:41:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

The build breaks during compile with an error like 'non-existant file handl=
ing an "#include <sys/sdt.h>".  Solution appears to be to define 'ALT_SDT_H=
' to a path guaranteed NOT to have sdt.h.

My workaround was to add a bbappend in my 'hotfixes' recipes collections.


openjdk-7_75b13-2.5.4.bbappend
-----------------------------------------

FILESEXTRAPATHS_prepend :=3D '${THISDIR}:'

PR :=3D "${PR}.1"

EXTRA_OEMAKE +=3D 'ALT_SDT_H=3D/openjedk/path/to/a/nonexistent/directory'

-----------------------------------------

I saw something similar to this done for openjdk 8 by the linaro folk.


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


