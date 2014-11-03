Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAB77E0087C; Mon,  3 Nov 2014 07:02:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1DA8E00874
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 07:02:24 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhwFAMWXV1TGmAcV/2dsb2JhbABcgmsjVFgEzVwgCodNAoEhFgEBAQEBAXyEAgEBAQEDAQIPKD8MBAIBCA0IAQwUCQcoChQRAQEEDgUIGogfAQyoY58AAQEBAQEBAQECAQEBAQEBAQEBAQETBJBfMQIFgy2BHgWSGoRPhBKEN4ZtiimECYN4bAGBR4EDAQEB
X-IronPort-AV: E=Sophos;i="5.07,308,1413259200"; d="scan'208";a="92904202"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	03 Nov 2014 10:02:20 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Nov 2014 10:02:19 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Mon, 3 Nov 2014 10:02:18 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Another sstate rebuild issue, badly need help
	understanding sstate
Thread-Index: Ac/3ZHenwuDsNv5FQjOB/ZYFOtnF4wANa0OAAAjX3ZA=
Date: Mon, 3 Nov 2014 15:02:17 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779841158590@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798411583BD@AZ-US1EXMB03.global.avaya.com>
	<1550328.akuF352sGY@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1550328.akuF352sGY@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another sstate rebuild issue, badly need help understanding sstate
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
X-List-Received-Date: Mon, 03 Nov 2014 15:02:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: November 03, 2014 9:13 AM
>=20
> I honestly don't know how to explain this behaviour either, because it
> should not happen this way. BitBake automatically extracts variable
> references within variable values and adds them to the dependencies of
> the variable, so a change to REV_TOOLS should have resulted in the
> signatures changing for the do_fetch tasks for all of the recipes where
> SRCREV contained the reference and thus all of those recipes and the ones
> that depend upon them getting rebuilt.
>=20
> Did you use oe-init-build-env or oe-init-build-env-memres to initialise y=
our
> build environment?
>=20

I just realized that there may be issues with using upper-case letters
in package and recipe names. It certainly is confusing Toaster.

For example: https://lists.yoctoproject.org/pipermail/yocto/2013-July/01494=
1.html

All my packagegroups have names with upper-case letters, as do my image
and SDK recipes. Could that be part of the problem?

I am in the process of renaming everything with upper-cases letters to
lower-case only.

MV

