Return-Path: <B19537@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe006.messaging.microsoft.com [216.32.180.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86E5DE00655
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 19:16:33 -0800 (PST)
Received: from mail91-co1-R.bigfish.com (10.243.78.249) by
	CO1EHSOBE003.bigfish.com (10.243.66.66) with Microsoft SMTP Server id
	14.1.225.23; Fri, 7 Dec 2012 03:16:32 +0000
Received: from mail91-co1 (localhost [127.0.0.1])	by mail91-co1-R.bigfish.com
	(Postfix) with ESMTP id 16F613C020A;
	Fri,  7 Dec 2012 03:16:32 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zzbb2dI98dI9371I542I1432Izz1de0h1202h1e76h1d1ah1d2ahzz8275dhz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758hbe9i1155h)
Received: from mail91-co1 (localhost.localdomain [127.0.0.1]) by mail91-co1
	(MessageSwitch) id 1354850189452404_15067;
	Fri,  7 Dec 2012 03:16:29 +0000 (UTC)
Received: from CO1EHSMHS027.bigfish.com (unknown [10.243.78.237])	by
	mail91-co1.bigfish.com (Postfix) with ESMTP id 61FF1D00054;
	Fri,  7 Dec 2012 03:16:29 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS027.bigfish.com
	(10.243.66.37) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 7 Dec 2012 03:16:29 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.190]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0318.003; Fri, 7 Dec 2012 03:16:28 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] Difference of toolchain recipes
Thread-Index: Ac3R0s0/UEOxKwlOQ72h3AL1xJ4hNABxX2jAABD8L4AAEzUv0A==
Date: Fri, 7 Dec 2012 03:16:27 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A01378976@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A0137811C@039-SN2MPN1-021.039d.mgd.msft.net>
	<50C0DE57.2040904@windriver.com>
In-Reply-To: <50C0DE57.2040904@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.138]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference of toolchain recipes
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
X-List-Received-Date: Fri, 07 Dec 2012 03:16:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Mark,

Thanks a lot, this is very helpful for understanding the different recipes =
of toolchain.=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Mark Hatle
> Sent: Friday, December 07, 2012 2:05 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Difference of toolchain recipes
>=20
> On 12/6/12 4:00 AM, Luo Zhenhua-B19537 wrote:
> > Can anybody shed some light, please?
> >
> >
> > Best Regards,
> >
> > Zhenhua
> >
> >
> >> -----Original Message-----
> >> From: Luo Zhenhua-B19537
> >> Sent: Tuesday, December 04, 2012 11:53 AM
> >> To: openembedded-core@lists.openembedded.org; 'yocto@yoctoproject.org'
> >> Subject: Difference of toolchain recipes
> >>
> >> It is a bit confused for the different recipes of toolchian, can
> >> somebody help to explain what's the difference for those recipes?
> >> E.g. gcc-cross, gcc-cross-canadian, gcc-cross-initial,
> >> gcc-cross-intermediate, gcc- crosssdk, gcc-crosssdk-initial,
> >> gcc-crosssdk-intermediate, gcc-runtime, etc.
>=20
> gcc-cross-initial - This is the initial compiler needed to bootstrap the
> toolchain to build software on the host for the target.  (This is a
> 'native'
> package.)
>=20
> gcc-cross-intermediate - This is the second stage of the bootstrap
> process to build software on the host for the target. (This is a 'native'
> package.)
>=20
> gcc-cross - this is the the final stage of the bootstrap process, and
> results in the cross compiler to build software on the host for the
> target.  (This is a 'native' package.)  If you are replacing the cross
> compiler toolchain with a custom version, this is what you must replace.
>=20
> gcc-runtime - these are the runtime libraries, but from the toolchain
> bootstrapping process.  This results in a 'target' binary.
>=20
> gcc-crosssdk-initial/intermediate - stage 1 and 2 of the a cross compiler
> to build from the 'host' to the 'sdk'.  Often the SDK is not the same
> target as the host.  (This is a 'native' binary.)
>=20
> gcc-crosssdk - this the final stage of the SDK compiler.  Again, this is
> to build on the host, for the sdk.  This is a 'native' binary.
>=20
> gcc-cross-canadian - This is the compiler included with the SDK to build
> on the SDK machine creating software for the target.  This is an
> 'nativesdk' package.
>=20
> >> Is there any document for those description?
>=20
> Not that I know of.. It's one of those things that you kind of need to
> know in order to work with it.  It likely should be documented somewhere
> officially.
>=20
> --Mark
>=20
> >>
> >>
> >> Best Regards,
> >>
> >> Zhenhua
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



