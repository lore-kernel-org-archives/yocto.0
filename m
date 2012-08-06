Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe006.messaging.microsoft.com [216.32.180.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1039E002A6
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2012 12:47:35 -0700 (PDT)
Received: from mail209-va3-R.bigfish.com (10.7.14.248) by
	VA3EHSOBE014.bigfish.com (10.7.40.64) with Microsoft SMTP Server id
	14.1.225.23; Mon, 6 Aug 2012 19:47:34 +0000
Received: from mail209-va3 (localhost [127.0.0.1])	by
	mail209-va3-R.bigfish.com (Postfix) with ESMTP id A75624201C1;
	Mon,  6 Aug 2012 19:47:34 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail209-va3 (localhost.localdomain [127.0.0.1]) by mail209-va3
	(MessageSwitch) id 1344282452808598_4491;
	Mon,  6 Aug 2012 19:47:32 +0000 (UTC)
Received: from VA3EHSMHS030.bigfish.com (unknown [10.7.14.244])	by
	mail209-va3.bigfish.com (Postfix) with ESMTP id B9B7F8C004B;
	Mon,  6 Aug 2012 19:47:32 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS030.bigfish.com
	(10.7.99.40) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 6 Aug 2012 19:47:32 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Mon, 6 Aug 2012 14:47:31 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Thread-Topic: [yocto] Adding gcc-4.5.4 release back into oe-core
Thread-Index: AQHNdAxQeagCpJ6cvEOqPyA6FVpUGg==
Date: Mon, 6 Aug 2012 19:47:31 +0000
Message-ID: <CAEsOVNdz80Jt=N3JQ5Y=Zr4ie3OgOn=iLWr3WLXMmYRWbrHC2g@mail.gmail.com>
References: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
In-Reply-To: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Adding gcc-4.5.4 release back into oe-core
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
X-List-Received-Date: Mon, 06 Aug 2012 19:47:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <508B919295BE8A4B9AB7EB7363B7E8A8@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 4, 2012 at 2:19 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote=
:
> Hi Khem,
>                   Do you think it makes sense to add gcc-4.5.4 back into =
oe-core, if it turns out that gcc-4.7.2 is causing a lot of issues for some=
 targets?

You can add it to your layer. Although that might be a lot more work
than you bargained for.

-M

>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


