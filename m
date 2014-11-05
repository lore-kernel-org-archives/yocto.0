Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2BFCE008CE; Wed,  5 Nov 2014 07:01:16 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A80A3E008C9
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 07:01:06 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ah0FAAI7WlTGmAcV/2dsb2JhbABcgmsjgSMKBNRnAoEWFgEBAQEBAXyEAgEBAQEDEihLBAIBCA0IAQwUBQQHMhQRAQEEARIIGogfAaoPn3MBAQEBBgEBAQEBAQEBGpBgOIMtgR4FkiGHGAWGA4ZsEoRLiVuCNIFEbIFIgQMBAQE
X-IronPort-AV: E=Sophos;i="5.07,320,1413259200"; d="scan'208";a="90736473"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	05 Nov 2014 10:01:04 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	05 Nov 2014 10:01:04 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Wed, 5 Nov 2014 10:01:04 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Added package to RDEPENDS in packagegroup, image that
	IMAGE_INSTALLs packagegroup not rebuilt
Thread-Index: Ac/4eMhanGlrvFCTRpOmuNhgElcUwwAbUznQAAOkCBAABPw9MA==
Date: Wed, 5 Nov 2014 15:01:02 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377984115B283@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<30C2D590D16A5C46ADFE6521910377984115AEB2@AZ-US1EXMB03.global.avaya.com>
	<30C2D590D16A5C46ADFE6521910377984115AFCF@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984115AFCF@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 05 Nov 2014 15:01:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Vuille, Martin (Martin)
> Sent: November 05, 2014 7:35 AM
> >
> > Indeed it appears that the <packagegroup>.bb file is not being read.
> >
>=20
> But bitbake <packagegroup> -e does re-parse the file and reports the synt=
ax
> error
>=20
> Repeating bitbake <packagegroup> after the above still sees no error
>=20

In the -DDD output I see

"DEBUG: Using cache in '/home/platform/Workspace/somename/poky/build/tmp/ca=
che/default-eglibc/sonic/i686'"

If I rename /home/platform/Workspace/somename/poky/build/tmp/cache/default-=
eglibc/sonic/i686 to
/home/platform/Workspace/somename/poky/build/tmp/cache/default-eglibc/sonic=
/i686-saved and then run

bitbake <packagegroup>, the .bb file is reparsed

If I rename the directory back, then=20

bitbake <packagegroup> goes back to doing nothing

Something stands out here...=20

My build machine is x86_64 but my SDKMACHINE is i686. And I see that the di=
rectory name
above includes i686.

Might there be something to this?

MV

