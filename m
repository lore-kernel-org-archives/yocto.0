Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ED68E008CE; Wed,  5 Nov 2014 07:51:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D1D5E00830
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 07:51:06 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhwFALpGWlTGmAcV/2dsb2JhbABcgmsjVFkEzRKHVQKBGBYBAQEBAQF8hAIBAQEBAgESKD8MBAIBCA0IDRQFBAcyFBECBA4FCBqIFgkBqmmfdAEBAQEBAQEDAQEBAQEBAQEBGZBgMQeDLYEeBZIhhFGCRwWGQIYvhF2JW4I0gURsAYFHgQMBAQE
X-IronPort-AV: E=Sophos;i="5.07,320,1413259200"; d="scan'208";a="90748438"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	05 Nov 2014 10:51:06 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	05 Nov 2014 10:51:06 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Wed, 5 Nov 2014 10:51:05 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Added package to RDEPENDS in packagegroup, image that
	IMAGE_INSTALLs packagegroup not rebuilt
Thread-Index: Ac/4eMhanGlrvFCTRpOmuNhgElcUwwAbUznQAAOkCBAABPw9MAAK+/AAAApL3cD//7ENgIAAU1Mg//+ubACAAFNMAP//rpKAgABTc1D//6+oAAAKa2uA
Date: Wed, 5 Nov 2014 15:51:03 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377984115B321@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<2658643.2oNPFH7lhC@peggleto-mobl5.ger.corp.intel.com>
	<30C2D590D16A5C46ADFE6521910377984115B306@AZ-US1EXMB03.global.avaya.com>
	<3767317.YZ2G7oXJFq@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3767317.YZ2G7oXJFq@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Wed, 05 Nov 2014 15:51:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >
> > Same result
>=20
> If by "same result" you mean you are still getting these errors, somethin=
g
> very strange is going on.

Yes, that's what I mean. Yes, very strange.

>=20
> I know I kind of asked this before, but bitbake really isn't still remain=
ing
> resident, right? i.e. while bitbake is apparently not running, do you hav=
e any
> bitbake process in "ps aux" output?
>=20

I don't recall you asking this before, and I certainly never checked.

ps ax | grep bitbake gives me ...

4165 pts/1    S      0:00 python /home/platform/Workspace/somename/poky/bit=
bake/bin/../lib/toaster/manage.py runserver 0.0.0.0:8000
4167 pts/1    Sl     5:05 /usr/bin/python /home/platform/Workspace/somename=
/poky/bitbake/bin/../lib/toaster/manage.py runserver 0.0.0.0:8000
4175 ?        Sl     6:58 python /home/platform/Workspace/somename/poky/bit=
bake/bin/bitbake --postread conf/toaster.conf --server-only -t xmlrpc -B lo=
calhost:8200
4176 pts/1    Sl    24:56 python /home/platform/Workspace/somename/poky/bit=
bake/bin/bitbake --observe-only -u toasterui

perhaps because I am running Toaster locally?

MV

