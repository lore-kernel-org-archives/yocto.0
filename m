Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDFEEE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:06:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Mar 2012 16:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="135855377"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2012 16:06:06 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 30 Mar 2012 16:06:04 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.32]) with mapi id
	14.01.0355.002; Fri, 30 Mar 2012 16:06:04 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Mark Hatle
	<mark.hatle@windriver.com>
Thread-Topic: [yocto] Moving angstrom under the yocto banner
Thread-Index: AQHNDqUlRCeVvMdQd0Cca/O9pDQkyJaDrgYAgAAB/gCAAAx5AIAADs2A//+mzBA=
Date: Fri, 30 Mar 2012 23:06:04 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D15084B8EC1@ORSMSX105.amr.corp.intel.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
In-Reply-To: <1333141865.18082.120.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 23:06:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Richard Purdie
>Sent: Friday, March 30, 2012 2:11 PM
>
>The criteria I see for being part of the Yocto Project are:
>
>a) Sharing the project's objectives (e.g. making embedded Liunx
>   development easier)
>b) Willing to be part of the Yocto Project's governance structure
>c) Bringing something new/beneficial to the Yocto Project (often with
>   mutual benefit)
>d) Have some kind of sustainable resource plan

I would add:
e) there should be interoperability with the other parts of the YP.

Part of the benefit we're trying to create is that if someone invests in YP=
=20
for their device, they should get benefit from the whole thing.  If a board
manufacturer creates a BSP for YP v1.2, there should be no doubt whatsoever
that it will work with that system.  Can anyone assure me that such a BSP
would work under Angstrom?

Or I develop a layer for an app on Angstrom. Do I know for sure that it wil=
l for=20
sure work on MEL, which has YP as its upstream?

See where I'm going with this?

Finally, Dr. Kooi has stated that he doesn't see YP as an upstream. In fact=
, many=20
of the OSVs (like Wind River, Mentor Graphics and now ENEA - yeah!) absolut=
ely
want to use YP as their upstream. So I'm hoping we could change the definit=
ion
of YP/Poky/Angstrom so Angstrom could us Poky as its upstream ... no? Too
hard?

Anyway, if we can't get to this level of interoperability, then adding Angs=
trom=20
to the Yocto project may add too much confusion.

Dave

