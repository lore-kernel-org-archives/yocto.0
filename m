Return-Path: <damethot@tycoint.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7B17E00997; Wed, 15 Apr 2015 14:57:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4767 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Apr 2015 14:57:09 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0096.outbound.protection.outlook.com [157.56.111.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B540E00949
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 14:57:09 -0700 (PDT)
Received: from BY1PR0201CA0022.namprd02.prod.outlook.com (25.160.191.160) by
	BY1PR02MB1162.namprd02.prod.outlook.com (25.162.108.151) with Microsoft
	SMTP Server (TLS) id 15.1.136.25; Wed, 15 Apr 2015 20:22:14 +0000
Received: from BL2FFO11FD019.protection.gbl (2a01:111:f400:7c09::107) by
	BY1PR0201CA0022.outlook.office365.com (2a01:111:e400:4814::32) with
	Microsoft SMTP Server (TLS) id 15.1.136.25 via Frontend Transport;
	Wed, 15 Apr 2015 20:22:14 +0000
Authentication-Results: spf=none (sender IP is 157.55.122.94)
	smtp.mailfrom=tycoint.com; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
Received-SPF: None (protection.outlook.com: tycoint.com does not designate
	permitted sender hosts)
Received: from mail.tyco.com (157.55.122.94) by
	BL2FFO11FD019.mail.protection.outlook.com (10.173.161.37) with
	Microsoft SMTP Server (TLS) id 15.1.148.11 via Frontend Transport;
	Wed, 15 Apr 2015 20:22:13 +0000
Received: from 003FCH1MPN2-042.003f.mgd2.msft.net
	([fe80::8065:e44f:fea6:5fed]) by 003FCH1MMR2-009.003f.mgd2.msft.net
	([fe80::60f1:8c72:88b:3123%11]) with mapi id 14.03.0224.003;
	Wed, 15 Apr 2015 20:22:13 +0000
From: "METHOT, DAVID" <damethot@tycoint.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Force to install package last
Thread-Index: AdB3udqwzXsR95zDSt2eeRAu6Fix9g==
Date: Wed, 15 Apr 2015 20:22:11 +0000
Message-ID: <B2DB68B3697B8042BDB56671387303E8C2FB53@003FCH1MPN2-042.003f.mgd2.msft.net>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.38.193.243]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:157.55.122.94; CTRY:US; IPV:NLI; EFV:NLI;
	BMV:1; SFV:NSPM;
	SFS:(10009020)(6009001)(428002)(199003)(189002)(47776003)(6806004)(86362001)(110136001)(92566002)(50986999)(62966003)(2656002)(54356999)(105586002)(77156002)(86146001)(87936001)(107886001)(106466001)(23726002)(2920100001)(2900100001)(2930100002)(102836002)(97756001)(104016003)(229853001)(2351001)(5890100001)(2501003)(33656002)(450100001)(5250100002)(46406003)(101416001)(22746005)(50466002)(46102003)(22756005)(79686002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR02MB1162; H:mail.tyco.com;
	FPR:; SPF:None; MLV:sfv; A:1; MX:1; LANG:en; 
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR02MB1162;
X-Microsoft-Antispam-PRVS: <BY1PR02MB1162A378F5AB7BDF52983BC7CDE50@BY1PR02MB1162.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:BY1PR02MB1162; BCL:0;
	PCL:0; RULEID:; SRVR:BY1PR02MB1162; 
X-Forefront-PRVS: 0547116B72
X-OriginatorOrg: tycoint.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2015 20:22:13.5271 (UTC)
X-MS-Exchange-CrossTenant-Id: 046b592b-a415-476a-9c97-a0703cb43ea3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=046b592b-a415-476a-9c97-a0703cb43ea3;
	Ip=[157.55.122.94]; Helo=[mail.tyco.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR02MB1162
Subject: Force to install package last
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
X-List-Received-Date: Wed, 15 Apr 2015 21:57:12 -0000
Content-Language: en-CA
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I made a package recipe to merge files into my final rootfs (mostly init sc=
ripts under /etc).

These files may be overriden by other packages so it is crucial that they r=
emain intact.

I am wondering if there is a way to make sure a package is the last one to =
be installed in the rootfs.

Thank you,

David

________________________________

This e-mail contains privileged and confidential information intended for t=
he use of the addressees named above. If you are not the intended recipient=
 of this e-mail, you are hereby notified that you must not disseminate, cop=
y or take any action in respect of any information contained in it. If you =
have received this e-mail in error, please notify the sender immediately by=
 e-mail and immediately destroy this e-mail and its attachments.

