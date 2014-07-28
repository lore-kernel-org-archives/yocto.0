Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11D30E006B5; Mon, 28 Jul 2014 13:35:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [207.46.163.142 listed in list.dnswl.org]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1lp0142.outbound.protection.outlook.com [207.46.163.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51037E00547
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 13:35:35 -0700 (PDT)
Received: from BLUPR02CA030.namprd02.prod.outlook.com (25.160.23.148) by
	BY1PR0201MB0934.namprd02.prod.outlook.com (25.160.194.23) with
	Microsoft SMTP
	Server (TLS) id 15.0.995.14; Mon, 28 Jul 2014 20:35:31 +0000
Received: from BN1AFFO11FD052.protection.gbl (2a01:111:f400:7c10::173) by
	BLUPR02CA030.outlook.office365.com (2a01:111:e400:8ad::20) with
	Microsoft SMTP Server (TLS) id 15.0.995.14 via Frontend Transport;
	Mon, 28 Jul 2014 20:35:31 +0000
Received: from mail.sierrawireless.com (208.81.121.44) by
	BN1AFFO11FD052.mail.protection.outlook.com (10.58.53.67) with Microsoft
	SMTP Server (TLS) id 15.0.990.10 via Frontend Transport;
	Mon, 28 Jul 2014 20:35:30 +0000
Received: from [192.168.3.163] (184.71.143.26) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Mon, 28 Jul 2014 13:35:28 -0700
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1srAu376FhYwHFqA9BzKXv8u6gKULqeaakML8J7eK6U7Mw@mail.gmail.com>
References: <1406568010.2490.20.camel@kihei.inmotion.gotdns.com>
	<CAMKF1soKE=vPNMZMeH7n4gThR7Kb5GNo1w1HHWV3xEcC2yNOmg@mail.gmail.com>
	<1406574672.5096.19.camel@kihei.inmotion.gotdns.com>
	<CAMKF1srAu376FhYwHFqA9BzKXv8u6gKULqeaakML8J7eK6U7Mw@mail.gmail.com>
Date: Mon, 28 Jul 2014 13:35:28 -0700
Message-ID: <1406579728.9692.28.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; IPV:NLI;
	EFV:NLI; SFV:NSPM;
	SFS:(6009001)(438002)(24454002)(199002)(189002)(377424004)(57704003)(6806004)(44976005)(50986999)(77156001)(76176999)(4396001)(95666004)(103116003)(85306003)(50466002)(77982001)(33646002)(106466001)(107046002)(23676002)(87286001)(50226001)(87936001)(79102001)(99396002)(104166001)(46102001)(89996001)(47776003)(64706001)(85852003)(20776003)(83072002)(80022001)(92566001)(81542001)(31966008)(88136002)(62966002)(74662001)(76482001)(21056001)(74502001)(81342001)(110136001)(93886003)(19580405001)(104016003)(83322001)(102836001)(19580395003)(93916002)(92726001)(42882001);
	DIR:OUT; SFP:; SCL:1; SRVR:BY1PR0201MB0934;
	H:mail.sierrawireless.com; FPR:; MLV:sfv;
	PTR:carmdsmtp.sierrawireless.com,spf.sierrawireless.com; A:1;
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
Cc: yocto <yocto@yoctoproject.org>, Darcy Watkins <dwatkins@sierrawireless.com>
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
X-List-Received-Date: Mon, 28 Jul 2014 20:35:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-07-28 at 12:33 -0700, Khem Raj wrote:
> If you can please submit the patch to OE-Core mailing list as well for
> master and also a backport to daisy please.

I found the patch is already present in poky/master so it is just the
backport to daisy that is needed (possibly other branches as well).

commit 540b7a196a00c4dc1bf8f7c87e68e80ab310756e
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Wed Jun 25 09:09:44 2014 +0000

    binutils: Add fix for recent patch on older gcc
    
    The recent bintuils patch update breaks on older gccs such as CentOS 6.
    Backport a patch to address this.
    
    (From OE-Core rev: 76f65e73081f52cea718ef164f9d1d7a5c65d537)
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


This commit applies cleanly as-is to the daisy branch.  Do I need to
resubmit the patch by Richard Purdie, or does maintainer prefer to merge
the commit across branches?


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


