Return-Path: <lstarret@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56C8FE006C6; Mon, 13 Jul 2015 06:13:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.63 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-gw2-out.broadcom.com (mail-gw2-out.broadcom.com
	[216.31.210.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05798E00306
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 06:13:17 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,462,1432623600"; d="scan'208";a="69661267"
Received: from irvexchcas05.broadcom.com (HELO
	IRVEXCHCAS05.corp.ad.broadcom.com) ([10.9.208.26])
	by mail-gw2-out.broadcom.com with ESMTP; 13 Jul 2015 06:30:37 -0700
Received: from IRVEXCHMB14.corp.ad.broadcom.com ([fe80::6184:5cb6:5350:4823])
	by IRVEXCHCAS05.corp.ad.broadcom.com ([::1]) with mapi id
	14.03.0235.001; Mon, 13 Jul 2015 06:13:16 -0700
From: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
To: Nikolay Dimitrov <picmaster@mail.bg>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  External toolchains
Thread-Index: AQHQuOnfOCguF8lZoUOWssOnjpYRrJ3ZaPfg
Date: Mon, 13 Jul 2015 13:13:15 +0000
Message-ID: <DB59870584238C45879465F0A2E5C3F17B4ACE@IRVEXCHMB14.corp.ad.broadcom.com>
References: <DB59870584238C45879465F0A2E5C3F17B44E5@IRVEXCHMB14.corp.ad.broadcom.com>
	<559C2640.8080600@mail.bg>
In-Reply-To: <559C2640.8080600@mail.bg>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.208.64]
MIME-Version: 1.0
Subject: Re: External toolchains
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
X-List-Received-Date: Mon, 13 Jul 2015 13:13:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Nikolay,

While that might work, it seems like this is more an issue of installation =
in the improper place.  I was hoping there surely there would be someone wh=
o is using the stock Linaro aarch64 toolchains and had tackled this issue.

Thanks, Luke.


-----Original Message-----
From: Nikolay Dimitrov [mailto:picmaster@mail.bg]=20
Sent: Tuesday, July 07, 2015 3:19 PM
To: Luke (Lucas) Starrett; yocto@yoctoproject.org
Subject: Re: [yocto] External toolchains

Hi Luke,

On 07/07/2015 08:35 PM, Luke (Lucas) Starrett wrote:
> Hi,
>
> For various reasons, we have a need to work with pre-compiled external=20
> toolchains, in this case, the 2014-09 Linaro aarch64 release.  A key=20
> difference between this specific toolchain vs. the Fido/1.8 out of the=20
> box toolchain (4.9.2 + patches?), is that the Linaro version is built=20
> with --enable-multiarch.  We end up with applications built with=20
> search paths such as /lib/aarch64, /usr/lib/aarch64, etc,  but=20
> libraries installed in the normal /lib, /usr/lib paths.  Obviously if=20
> we use the built-in toolchain recipes in 1.8, life is good, search=20
> paths match install paths.
>
> I wanted to understand a couple points.
>
> 1)What are the long term goals/roadmap are in this area specific to=20
> Yocto/OE?
>
> 2)Where is the "right" place to deal with this?
>
> a.Configure (based on detected toolchain capability)
>
> b.Install (override library destination?)
>
> c.Other?

Is it possible for you to use ld.so.conf to point to the proper library pat=
hs?

> 3)Any other examples that can be used as a reference?
>
>
> I've seen a few emails in the archives that seem to touch on this, but=20
> none that really seemed to come to any conclusion.
>
> Thanks,
>
> Luke Starrett

Regards,
Nikolay

