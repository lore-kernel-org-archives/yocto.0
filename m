Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CCE4E0080C; Tue,  4 Nov 2014 14:02:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A10FE00777
	for <yocto@yoctoproject.org>; Tue,  4 Nov 2014 14:02:23 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhkFACxMWVSHCzIm/2dsb2JhbABagmsjIIER1jECgSQWAQEBAQEBcQuEBAEBAxIoUQEVFRRCJgEEGxqIHwGmP4Rxn20gkF+Cbg9EJIEeBZIhhxgFjG2EXIlZgjSBRII0gQMBAQE
X-IronPort-AV: E=Sophos;i="5.07,315,1413259200"; d="scan'208";a="79377820"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	04 Nov 2014 17:02:21 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	04 Nov 2014 17:02:18 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Tue, 4 Nov 2014 17:02:17 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Added package to RDEPENDS in packagegroup, image that
	IMAGE_INSTALLs packagegroup not rebuilt
Thread-Index: Ac/4eMhanGlrvFCTRpOmuNhgElcUww==
Date: Tue, 4 Nov 2014 22:02:16 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: Added package to RDEPENDS in packagegroup, image that IMAGE_INSTALLs packagegroup not rebuilt
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
X-List-Received-Date: Tue, 04 Nov 2014 22:02:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I reported a similar issue a few days ago, but at the time I did not
know how to collect the relevant information to help diagnose the
issue. Hopefully I did better this time.

I have an image that lists several packagegroups in IMAGE_INSTALL.

I updated one of the packagegroups by adding a new package to
the list of RDEPENDS.

I ran bitbake <image> but do_rootfs was not run for the image. I
had built the package earlier so the only task to do should have been
do_rootfs. (When I saw this problem before and had not pre-built
the package, bitbake did build the package but then did not run the
image do_rootfs task).

In Toaster, looking at the tasks for the packagegroup recipe shows
Prebuilt for do_build and Covered for all others.

If I look at the list of packages for that image, the new package is not li=
sted.

If I look at the list of runtime dependencies for the packagegroup in
the image, the new package is not listed.

bitbake <image> -g -u depexp does not show any dependency on the
new package, in fact it does not list the new package at all.

Neither does bitbake <packagegroup> -g -u depexp

I added a second extra (pre-built) package to the packagegroup and
ran bitbake again (with -DDD). The names of the two newly-added
packages are nowhere to be found in the debug output.

It's as though bitbake is not seeing my changes.

Any suggestions for debugging this further?

MV



