Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E17FE008CE; Wed,  5 Nov 2014 07:32:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14104E00830
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 07:32:36 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhoFAAlCWlSHCzIm/2dsb2JhbABcgmsjgS0E1GcCgRcWAQEBAQEBfIQCAQEBAQMSKD8MBAIBCA0IAQwUBQQHMhQRAgQOBQgaiB8BqlefdAEBAQEBAQEBAQEBAQEBAQEBAQEBAReQYDEHgy2BHgWSIYcYBYxvhF2JW4I0gURsAYFHgQMBAQE
X-IronPort-AV: E=Sophos;i="5.07,320,1413259200"; d="scan'208";a="90744227"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	05 Nov 2014 10:32:36 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	05 Nov 2014 10:32:36 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Wed, 5 Nov 2014 10:32:35 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Added package to RDEPENDS in packagegroup, image that
	IMAGE_INSTALLs packagegroup not rebuilt
Thread-Index: Ac/4eMhanGlrvFCTRpOmuNhgElcUwwAbUznQAAOkCBAABPw9MAAK+/AAAApL3cD//7ENgIAAU1Mg//+ubACAAFNMAA==
Date: Wed, 5 Nov 2014 15:32:35 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377984115B2EF@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<6025612.GKMoo6npqD@peggleto-mobl5.ger.corp.intel.com>
	<30C2D590D16A5C46ADFE6521910377984115B2D5@AZ-US1EXMB03.global.avaya.com>
	<1453482.JTnQgNgThH@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1453482.JTnQgNgThH@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Added package to RDEPENDS in packagegroup, image that IMAGE_INSTALLs packagegroup not rebuilt
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
X-List-Received-Date: Wed, 05 Nov 2014 15:32:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: November 05, 2014 10:29 AM
>=20
> No, you really don't need to do a complete rebuild. This is a cache probl=
em, if
> you have properly removed the cache the issue (at least the latest errors=
)
> will go away.
>=20

All signs of build/cache and /home/platform/Workspace/somename/poky/build/t=
mp/cache/default-eglibc/sonic/i686
have been removed.

Still seeing the SRC_URI warnings and the virtual/fakeroot-native error.

Anything else I need to remove?

MV

