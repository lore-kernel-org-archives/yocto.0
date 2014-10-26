Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 308B5E0085E; Sun, 26 Oct 2014 08:16:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F8BE0084A
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 08:15:49 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Aq8FAMQPTVTGmAcV/2dsb2JhbABcgmsjgTDUPgKBBhYBAXELhAQBAQMSKFEBFRUUQiYBBBsaiB8BpAqEcZ5iIJBXg2WBHgWSB5NvjhmDeII0gQMBAQE
X-IronPort-AV: E=Sophos;i="5.04,790,1406606400"; d="scan'208";a="89239158"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	26 Oct 2014 11:15:48 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	26 Oct 2014 11:15:48 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Sun, 26 Oct 2014 11:15:47 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can't override task from bbclass with - in its name
Thread-Index: Ac/xLehuRCtqTpiGScCY3cRBicoFZQ==
Date: Sun, 26 Oct 2014 15:15:47 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779841148434@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Can't override task from bbclass with - in its name
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
X-List-Received-Date: Sun, 26 Oct 2014 15:16:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have custom classes that override a task thus (in foo.bbclass)

	foo_do_something () {
		...
	}

	EXPORT_FUNCTIONS do_something

but if I change the name to foo-bar.bbclass and change the class thus

	foo-bar_do_something () {
		...
	}

	EXPORT_FUNCTIONS do_something

then building fails with "foo-bar_do_something: not found" and, sure enough=
,
run.do_something does not contain the definition of foo-bar_do_something.

Is this a known issue?

MV


