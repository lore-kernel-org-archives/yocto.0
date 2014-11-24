Return-Path: <Nishanth.S@Altiux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21E10E0089B; Sun, 23 Nov 2014 22:18:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [134.170.140.91 listed in list.dnswl.org]
X-Greylist: delayed 847 seconds by postgrey-1.32 at yocto-www;
	Sun, 23 Nov 2014 22:18:37 PST
Received: from APAC01-HK1-obe.outbound.protection.outlook.com
	(mail-hk1on0091.outbound.protection.outlook.com [134.170.140.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A9F0E00863
	for <yocto@yoctoproject.org>; Sun, 23 Nov 2014 22:18:37 -0800 (PST)
Received: from [172.16.0.96] (111.93.235.83) by
	HK2PR06MB0563.apcprd06.prod.outlook.com (25.161.183.156) with Microsoft
	SMTP Server (TLS) id 15.1.16.15; Mon, 24 Nov 2014 06:04:26 +0000
Message-ID: <5472CA61.7020303@altiux.com>
Date: Mon, 24 Nov 2014 11:34:17 +0530
From: Nishanth S <Nishanth.S@altiux.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <546AE780.7070208@altiux.com>
	<969F26A8BAB325438E7EB80D3C3134FB2F3BE196@IRSMSX105.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB2F3BE196@IRSMSX105.ger.corp.intel.com>
X-Originating-IP: [111.93.235.83]
X-ClientProxiedBy: HKXPR02CA0052.apcprd02.prod.outlook.com (25.161.48.37) To
	HK2PR06MB0563.apcprd06.prod.outlook.com (25.161.183.156)
X-Microsoft-Antispam: UriScan:;
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:HK2PR06MB0563;
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0;PCL:0;RULEID:;SRVR:HK2PR06MB0563;
X-Forefront-PRVS: 040513D301
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6009001)(6049001)(189002)(199003)(87976001)(110136001)(120916001)(99396003)(4396001)(50986999)(65816999)(95666004)(65806001)(47776003)(21056001)(87266999)(31966008)(106356001)(105586002)(107046002)(76176999)(92726001)(42186005)(36756003)(23746002)(40100003)(50466002)(59896002)(97736003)(66066001)(77156002)(20776003)(65956001)(122386002)(64706001)(101416001)(19580395003)(107886001)(86362001)(2351001)(80316001)(46102003)(102836001)(54356999)(33656002)(62966003)(83506001)(77096003)(450100001)(92566001)(64126003)(7099021);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR06MB0563; H:[172.16.0.96];
	FPR:; MLV:ovrnspm; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: Altiux.com does not designate
	permitted sender hosts)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Nishanth.S@Altiux.com; 
X-Exchange-Antispam-Report-CFA-Test: BCL:0;PCL:0;RULEID:;SRVR:HK2PR06MB0563;
X-OriginatorOrg: Altiux.com
X-Mailman-Approved-At: Mon, 24 Nov 2014 08:04:26 -0800
Subject: Re: [bitbake-devel] how to update a package on yocto project
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
X-List-Received-Date: Mon, 24 Nov 2014 06:18:44 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi

board : Intel Galileo Gen 1

I use yocto project for build image/tarball for the board.

How to update a existing package???

I mean, I use openjdk-6 on my board.

But I need to change it to openjdk-7.

I edited local.conf by adding following line.

preferred_version_openjdkXXXX = XXXX




I tried this but the resulting image.tar had only openjdk-6.

How do I include openjdk-7 with core-image???

-- 
Regards,
Nishanth.S


