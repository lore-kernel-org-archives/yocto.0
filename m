Return-Path: <c.maier@geze.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A354DE0045E; Tue, 19 Jul 2016 07:16:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.28.48.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-relay01-geze.antispameurope.com (mx-relay01.geze.com
	[193.28.48.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE84AE0043B
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2016 07:16:42 -0700 (PDT)
Received: from unknown ([193.28.48.59]) by mx-gate01-geze.antispameurope.com; 
	Tue, 19 Jul 2016 16:16:41 +0200
Received: from mail pickup service by gc49wa60.corp.geze.com with Microsoft
	SMTPSVC; Tue, 19 Jul 2016 16:16:38 +0200
Received: from GCXCH3.corp.geze.com ([172.18.2.23]) by gc49wa60.corp.geze.com
	with Microsoft SMTPSVC(7.0.6002.18264); 
	Tue, 19 Jul 2016 16:16:38 +0200
Received: from GCXDB1.corp.geze.com ([172.18.2.24]) by GCXCH3.corp.geze.com
	([172.18.2.23]) with mapi id 14.03.0279.002;
	Tue, 19 Jul 2016 16:16:37 +0200
From: "Maier, Chris" <C.Maier@geze.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto]  do_rootfs OSError: [Errno 13] Permission denied
Thread-Index: AQHR4bvJMXQERar3qkKnRWFNPRnrDaAfy5rQ
Date: Tue, 19 Jul 2016 14:16:37 +0000
Message-ID: <2AA7D088591C49498E92D6491C58159334C889FC@gcxdb1.corp.geze.com>
References: <2AA7D088591C49498E92D6491C58159334C887BF@gcxdb1.corp.geze.com>
	<1468932436.22733.1.camel@linuxfoundation.org>
In-Reply-To: <1468932436.22733.1.camel@linuxfoundation.org>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.18.8.3]
MIME-Version: 1.0
X-OriginalArrivalTime: 19 Jul 2016 14:16:38.0079 (UTC)
	FILETIME=[29C2B4F0:01D1E1C8]
content-type: multipart/related; type="multipart/alternative";
	boundary="--=_Boundary_=--1A1=31C5C571C-A99C51"
X-GBS-PROC: 6Ll2gdHaBYZKqgolUkGf3hfYT/ja6JZs+GErX2Ncjps=
X-GRP-TAN: GC49WA60@375517C09DA94D2D9A78B7DA52DE8154
X-cloud-security-sender: c.maier@geze.com
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-gate01-geze with 903F61148005
X-cloud-security-connect: unknown[193.28.48.59], TLS=0, IP=193.28.48.59
X-cloud-security: scantime:.7610
Subject: Re: do_rootfs OSError: [Errno 13] Permission denied
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
X-List-Received-Date: Tue, 19 Jul 2016 14:16:47 -0000


