Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe005.messaging.microsoft.com [216.32.180.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 150A8E002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 12:05:09 -0700 (PDT)
Received: from mail198-va3-R.bigfish.com (10.7.14.242) by
	VA3EHSOBE006.bigfish.com (10.7.40.26) with Microsoft SMTP Server id
	14.1.225.23; Wed, 8 Aug 2012 19:05:08 +0000
Received: from mail198-va3 (localhost [127.0.0.1])	by
	mail198-va3-R.bigfish.com (Postfix) with ESMTP id 5464E801F0;
	Wed,  8 Aug 2012 19:05:08 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zzbb2dI98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail198-va3 (localhost.localdomain [127.0.0.1]) by mail198-va3
	(MessageSwitch) id 1344452706828363_5355;
	Wed,  8 Aug 2012 19:05:06 +0000 (UTC)
Received: from VA3EHSMHS033.bigfish.com (unknown [10.7.14.238])	by
	mail198-va3.bigfish.com (Postfix) with ESMTP id C6DB848004D;
	Wed,  8 Aug 2012 19:05:06 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS033.bigfish.com
	(10.7.99.43) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 8 Aug 2012 19:05:05 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Wed, 8 Aug 2012 14:05:04 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Bob Cochran <yocto@mindchasers.com>
Thread-Topic: [yocto] Unable to get serial console login prompt - PowerPC
	440 Virtex 5 processor
Thread-Index: AQHNdZi3oGd8ijeWekai0UYGejeGdA==
Date: Wed, 8 Aug 2012 19:05:03 +0000
Message-ID: <CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
In-Reply-To: <50226D44.3070503@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Wed, 08 Aug 2012 19:05:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E55E0BBD5DAFCA47B4A42888C912804F@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 8, 2012 at 8:44 AM, Bob Cochran <yocto@mindchasers.com> wrote:
> On 07/31/2012 01:27 PM, Elvis Dowson wrote:
>>
>> Is serial console login prompt broken on yocto for targets other than
>> Intel? Does it work on ARM or PowerPC at the moment, with the latest
>> yocto updates as of today?
>
>
> Hi Elvis,
>
> For my Freescale QorIQ e500v2 target, the use of getty inside init / init=
tab
> has been broken for awhile.  I used to get the hangs you're reporting, bu=
t
> now I also see the following at the conclusion of init:
>
> serial8250: too much work for irq42
>
>
> I'm glad you're working this issue, and I'll try to jump in this week.
>
>
> My workaround has been a hack to inittab to replace getty with /bin/sh -
> most of my work is done across the network via ssh to the target, so I
> didn't mind ignoring the problem.

These seem like quite different issues, code generation vs. some
inittab foo... are you seeing this issues with upstream? I've recently
gotten some inittab cleanups into oe-core for master / denzil / my own
edison branch + meta-fsl-ppc...

-M

>
>
> Bob
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


