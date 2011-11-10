Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ABEAE005A0
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 14:51:00 -0800 (PST)
Received: from mail72-ch1-R.bigfish.com (10.43.68.240) by
	CH1EHSOBE018.bigfish.com (10.43.70.68) with Microsoft SMTP Server id
	14.1.225.22; Thu, 10 Nov 2011 22:50:34 +0000
Received: from mail72-ch1 (localhost.localdomain [127.0.0.1])	by
	mail72-ch1-R.bigfish.com (Postfix) with ESMTP id 526913184F0;
	Thu, 10 Nov 2011 22:50:47 +0000 (UTC)
X-SpamScore: -17
X-BigFish: VS-17(zz9371K1432N98dK444fMzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,13,
Received: from mail72-ch1 (localhost.localdomain [127.0.0.1]) by mail72-ch1
	(MessageSwitch) id 132096543246673_25132;
	Thu, 10 Nov 2011 22:50:32 +0000 (UTC)
Received: from CH1EHSMHS011.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.245])	by mail72-ch1.bigfish.com (Postfix) with ESMTP id
	04FE4100052;	Thu, 10 Nov 2011 22:50:32 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS011.bigfish.com
	(10.43.70.11) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 10 Nov 2011 22:50:18 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0339.002; Thu, 10 Nov 2011 16:50:42 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Michael_E_Brown@dell.com" <Michael_E_Brown@dell.com>
Thread-Topic: [yocto] SH4 build failure fix
Thread-Index: AQHMn/sstJeEs23xnkGEV4MiDBM3Vg==
Date: Thu, 10 Nov 2011 22:50:41 +0000
Message-ID: <CAEsOVNcTkNVbXB6UtnJC32o=pa3XKW6ftTKEmmLUFB7sS5bZcg@mail.gmail.com>
References: <DB6E482E89290547898851B8CC9D81108D109394@AUSX7MCPS302.AMER.DELL.COM>
In-Reply-To: <DB6E482E89290547898851B8CC9D81108D109394@AUSX7MCPS302.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SH4 build failure fix
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Nov 2011 22:51:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B5C1B74C52102E4B82045E21FDE0D61E@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 10, 2011 at 4:36 PM,  <Michael_E_Brown@dell.com> wrote:
> I'm presently working on porting the build environment for three existing=
 embedded projects over to use yocto. Unfortunately, the project which has =
to go first is based on an SH4 chip, which isn't on the officially supporte=
d yocto architecture list. I gave the compile a go, and ran into a build er=
ror in gcc-cross-intermediate:
>
> build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-=
linux-ld: cannot find crti.o: No such file or directory
> build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-=
linux-ld: cannot find -lc
> build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-=
linux-ld: cannot find crtn.o: No such file or directory
>
> Trying to figure out the source of this build error, I found that base op=
enembedded does compile this package successfully, so I started focusing on=
 the differences. I narrowed the build failure down to this line in gcc-cro=
ss4.inc, which is present in openembedded, but absent in yocto/poky:
> =A0 =A0gcc-cross4.inc
> =A0 =A0EXTRA_OECONF_append_sh4 =3D " --with-multilib-list=3D --enable-inc=
omplete-targets "
>
> After I added this one line, I was able to sucessfully build a base yocto=
 image for qemu sh4. Is it possible to get this added to the upstream yocto=
 build?

Can you find the offending commit with 'git blame'?

-M=


