Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6D8BE00AEA; Thu, 10 Dec 2015 06:41:27 -0800 (PST)
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
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Dec 2015 06:41:24 PST
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5AFDE0049B
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 06:41:24 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2AxBQBujWlW/xUHmMZeGQEBAQEPAQEBAYJfK4FBBr1CgWKGDgKBMzkTAQEBAQEBAYEKhDQBAQEBAxIoPwwEAgEIDQQEAQELFAkHMhQJCAEBBAENBQgTB4gNAaMfnHsBAQEBAQEBAwEBAQEBAQEBAQEBGIZWhH2EW4NLgRoFjTGJPgGIJIZ5h2CPW4NzIwE/hARyhFMBgQYBAQE
X-IPAS-Result: A2AxBQBujWlW/xUHmMZeGQEBAQEPAQEBAYJfK4FBBr1CgWKGDgKBMzkTAQEBAQEBAYEKhDQBAQEBAxIoPwwEAgEIDQQEAQELFAkHMhQJCAEBBAENBQgTB4gNAaMfnHsBAQEBAQEBAwEBAQEBAQEBAQEBGIZWhH2EW4NLgRoFjTGJPgGIJIZ5h2CPW4NzIwE/hARyhFMBgQYBAQE
X-IronPort-AV: E=Sophos;i="5.20,408,1444708800"; d="scan'208";a="150011766"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	10 Dec 2015 09:40:20 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES256-SHA;
	10 Dec 2015 09:40:20 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Thu, 10 Dec 2015 09:40:19 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Longchamp, Valentin" <Valentin.Longchamp@keymile.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Custom kernel headers and SDK
Thread-Index: AdEx/EzwJo9Sd0CySEW/KyYepjwXbQAovKkQACNuQSQACqEQEA==
Date: Thu, 10 Dec 2015 14:40:19 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779853A954ED@AZ-US1EXMB03.global.avaya.com>
References: <688824bb-bfed-4888-8e46-a64338f1db97@keymile.com>,
	<30C2D590D16A5C46ADFE65219103779853A94D6C@AZ-US1EXMB03.global.avaya.com>
	<B7AC17D946CFB9489B0C4EEDFEE0C8EC1355B4D2A7@SRVDEHAN1MX1.keymile.net>
In-Reply-To: <B7AC17D946CFB9489B0C4EEDFEE0C8EC1355B4D2A7@SRVDEHAN1MX1.keymile.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "Brunck, Holger" <Holger.Brunck@keymile.com>
Subject: Re: Custom kernel headers and SDK
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
X-List-Received-Date: Thu, 10 Dec 2015 14:41:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Valentin,

When we first encountered the need for custom kernel headers, I asked
a similar question to yours on this list. And what I learned from some of t=
he
responses was that modifying the standard headers was fraught with
problems, including the issue that you raise.

Fortunately, we got away without having to modify and export any standard
headers, so I dodged that bullet.

Some ideas that come to mind:

- Can you install your customized version in ${includedir}/XXX and use the
  include path search order to make sure the compiler sees it first?

- Can you include the standard header in a "wrapper" header and make your
  customizations in the wrapper instead?

Regards,
MV

> -----Original Message-----
> From: Longchamp, Valentin [mailto:Valentin.Longchamp@keymile.com]
> Sent: December 10, 2015 4:47 AM
> To: Vuille, Martin (Martin); yocto@yoctoproject.org
> Cc: Brunck, Holger
> Subject: RE: Custom kernel headers and SDK
>=20
> Hi Martin,
>=20
> Thanks a lot for the suggestion. I had in the meantime come to a simliar
> solution: define a linux-XXX-headers recipe in our own meta layer where I
> install the missing kernel headers and then I add this linux-XXX-headers-=
dev
> package to our SDK's sysroot thanks to TARGET_TOOLCHAIN_TASK.
> Your implementation looks fine and I am going to pick some ideas from it.
>=20
> However, I have stumbled upon another problem with this approach: it
> works well if you add new files to the kernel headers. We unforntunately
> have at least one uapi file (i2c.h to name it) that is present in the sta=
ndard
> kernel headers where we have our own version with some
> additions/extensions. If I install our version from ou linux-XXX-headers
> recipe, bitbake (correctly) complains that this file is provided by 2 pac=
kages
> (linux-libc-headers and linux-XXX-headers). And here I really don't know =
how
> to solve this issue. Any ideas/suggestions ?
>=20
> Thanks
>=20
> Valentin

