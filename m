Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC34E00563; Tue, 29 Jul 2014 09:02:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.46.163.243 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0243.outbound.protection.outlook.com [207.46.163.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17FF8E003FA
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 09:01:52 -0700 (PDT)
Received: from BY2PR02CA003.namprd02.prod.outlook.com (10.255.247.23) by
	BLUPR02MB263.namprd02.prod.outlook.com (10.141.76.24) with Microsoft
	SMTP Server (TLS) id 15.0.995.14; Tue, 29 Jul 2014 16:01:50 +0000
Received: from BL2FFO11FD019.protection.gbl (2a01:111:f400:7c09::141) by
	BY2PR02CA003.outlook.office365.com (2a01:111:e400:2c16::23) with
	Microsoft SMTP Server (TLS) id 15.0.995.14 via Frontend Transport;
	Tue, 29 Jul 2014 16:01:50 +0000
Received: from mail.sierrawireless.com (208.81.121.44) by
	BL2FFO11FD019.mail.protection.outlook.com (10.173.161.37) with
	Microsoft SMTP Server (TLS) id 15.0.990.10 via Frontend Transport;
	Tue, 29 Jul 2014 16:01:49 +0000
Received: from [192.168.3.163] (184.71.143.26) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Tue, 29 Jul 2014 09:01:48 -0700
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
In-Reply-To: <1406649546-22992-1-git-send-email-dwatkins@sierrawireless.com>
References: <1406649546-22992-1-git-send-email-dwatkins@sierrawireless.com>
Date: Tue, 29 Jul 2014 09:01:47 -0700
Message-ID: <1406649707.23123.1.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; IPV:NLI;
	EFV:NLI; SFV:NSPM;
	SFS:(6009001)(438002)(199002)(189002)(377424004)(24454002)(51704005)(4396001)(46102001)(104016003)(33646002)(85306003)(77156001)(64706001)(20776003)(110136001)(107046002)(47776003)(85852003)(6806004)(80022001)(89996001)(83072002)(95666004)(106466001)(88136002)(87936001)(76482001)(31966008)(50226001)(87286001)(92726001)(50466002)(92566001)(50986999)(99396002)(74662001)(93916002)(76176999)(77982001)(74502001)(62966002)(103116003)(104166001)(21056001)(44976005)(83322001)(19580405001)(81542001)(19580395003)(81342001)(102836001)(23676002)(42882001);
	DIR:OUT; SFP:; SCL:1; SRVR:BLUPR02MB263;
	H:mail.sierrawireless.com; FPR:; MLV:sfv;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; A:1;
	MX:1; LANG:en; 
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:
X-Forefront-PRVS: 0287BBA78D
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=dwatkins@sierrawireless.com; 
X-OriginatorOrg: SierraWirelessInc.onmicrosoft.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] binutils: Add fix for recent patch on older gcc
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
X-List-Received-Date: Tue, 29 Jul 2014 16:02:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-07-29 at 08:59 -0700, Darcy Watkins wrote:
> From: Darcy Watkins <dwatkins>
> 
> The recent bintuils patch update breaks on older gccs such as CentOS 6.
> Backport a patch to address this.
> 
> (From master: 540b7a196a00c4dc1bf8f7c87e68e80ab310756e)
> (From OE-Core rev: 76f65e73081f52cea718ef164f9d1d7a5c65d537)
> 
> Signed-off-by: Darcy Watkins <dwatkins@sierrawireless.com>

This patch is for the daisy branch since Richard Purdie has already
submitted it to the master branch (commit
540b7a196a00c4dc1bf8f7c87e68e80ab310756e).



-- 

Regards,

Darcy

---

Darcy Watkins
Staff Engineer, Firmware
In Motion Technology, a
Sierra Wireless company
350-625 Agnes St. New Westminster, BC
Canada, V3M 5Y4
[P1]


