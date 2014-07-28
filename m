Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41734E006B5; Mon, 28 Jul 2014 12:11:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.163.141 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1lp0141.outbound.protection.outlook.com [207.46.163.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83C2BE00547
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 12:11:23 -0700 (PDT)
Received: from BLUPR02CA022.namprd02.prod.outlook.com (25.160.23.140) by
	BY1PR0201MB0935.namprd02.prod.outlook.com (25.160.194.24) with
	Microsoft SMTP
	Server (TLS) id 15.0.995.14; Mon, 28 Jul 2014 19:11:18 +0000
Received: from BN1BFFO11FD040.protection.gbl (2a01:111:f400:7c10::1:129) by
	BLUPR02CA022.outlook.office365.com (2a01:111:e400:8ad::12) with
	Microsoft SMTP Server (TLS) id 15.0.995.14 via Frontend Transport;
	Mon, 28 Jul 2014 19:11:17 +0000
Received: from mail.sierrawireless.com (208.81.121.44) by
	BN1BFFO11FD040.mail.protection.outlook.com (10.58.144.103) with
	Microsoft SMTP Server (TLS) id 15.0.990.10 via Frontend Transport;
	Mon, 28 Jul 2014 19:11:17 +0000
Received: from [192.168.3.163] (184.71.143.26) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Mon, 28 Jul 2014 12:11:13 -0700
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1soKE=vPNMZMeH7n4gThR7Kb5GNo1w1HHWV3xEcC2yNOmg@mail.gmail.com>
References: <1406568010.2490.20.camel@kihei.inmotion.gotdns.com>
	<CAMKF1soKE=vPNMZMeH7n4gThR7Kb5GNo1w1HHWV3xEcC2yNOmg@mail.gmail.com>
Date: Mon, 28 Jul 2014 12:11:11 -0700
Message-ID: <1406574672.5096.19.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; IPV:NLI;
	EFV:NLI; SFV:NSPM;
	SFS:(6009001)(438002)(51704005)(199002)(189002)(41574002)(377424004)(24454002)(31966008)(23676002)(85852003)(77156001)(50466002)(87936001)(92566001)(89996001)(92726001)(50986999)(76176999)(83072002)(88136002)(99396002)(104166001)(87286001)(93916002)(62966002)(6806004)(19580395003)(103116003)(44976005)(83322001)(102836001)(21056001)(106466001)(4396001)(50226001)(104016003)(46102001)(80022001)(110136001)(64706001)(20776003)(47776003)(81542001)(15975445006)(95666004)(81342001)(76482001)(33646002)(79102001)(77982001)(85306003)(107046002)(74662001)(74502001)(42882001);
	DIR:OUT; SFP:; SCL:1; SRVR:BY1PR0201MB0935;
	H:mail.sierrawireless.com; FPR:; MLV:sfv;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; A:1;
	MX:1; LANG:en; 
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:
X-Forefront-PRVS: 0286D7B531
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=dwatkins@sierrawireless.com; 
X-OriginatorOrg: SierraWirelessInc.onmicrosoft.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: binutils-native 2.24 build broken
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
X-List-Received-Date: Mon, 28 Jul 2014 19:11:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-07-28 at 10:53 -0700, Khem Raj wrote:
> can you apply the following patch to binutils and retry
> 
> https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=f9c316c4d75be236bbaa8464ef803ed2d3859d6d

The patch appears to have worked to get me past binutils-native into the
rest of the build.  I have placed it with a bbappend file in a hotfix
section of my layer.

Please let me know once this fix makes it way into the poky/daisy
branch.

Thanks!


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


