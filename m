Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe004.messaging.microsoft.com [216.32.180.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A414CE002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 14:00:30 -0700 (PDT)
Received: from mail133-co1-R.bigfish.com (10.243.78.243) by
	CO1EHSOBE002.bigfish.com (10.243.66.65) with Microsoft SMTP Server id
	14.1.225.23; Wed, 8 Aug 2012 21:00:30 +0000
Received: from mail133-co1 (localhost [127.0.0.1])	by
	mail133-co1-R.bigfish.com (Postfix) with ESMTP id 49289DC0308;
	Wed,  8 Aug 2012 21:00:30 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zzbb2dI98dI9371I1432Izz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail133-co1 (localhost.localdomain [127.0.0.1]) by mail133-co1
	(MessageSwitch) id 134445962935929_9501;
	Wed,  8 Aug 2012 21:00:29 +0000 (UTC)
Received: from CO1EHSMHS017.bigfish.com (unknown [10.243.78.242])	by
	mail133-co1.bigfish.com (Postfix) with ESMTP id 06D50C00044;
	Wed,  8 Aug 2012 21:00:29 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS017.bigfish.com
	(10.243.66.27) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 8 Aug 2012 21:00:26 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Wed, 8 Aug 2012 16:00:25 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Bob Cochran <yocto@mindchasers.com>
Thread-Topic: [yocto] Unable to get serial console login prompt - PowerPC
	440 Virtex 5 processor
Thread-Index: AQHNdZi3oGd8ijeWekai0UYGejeGdJdQs3OAgAAGuwA=
Date: Wed, 8 Aug 2012 21:00:25 +0000
Message-ID: <CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
In-Reply-To: <5022CDAD.5020309@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 08 Aug 2012 21:00:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7ADBCC1ADF15C34AB84875A5123DCA7E@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 8, 2012 at 3:35 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> On 08/08/2012 03:05 PM, McClintock Matthew-B29882 wrote:
>>
>> These seem like quite different issues, code generation vs. some
>> inittab foo... are you seeing this issues with upstream? I've recently
>> gotten some inittab cleanups into oe-core for master / denzil / my own
>> edison branch + meta-fsl-ppc...
>
>
> On 08/08/2012 03:05 PM, McClintock Matthew-B29882 wrote:> These seem like
> quite different issues, code generation vs. some
>
>> inittab foo... are you seeing this issues with upstream? I've recently
>> gotten some inittab cleanups into oe-core for master / denzil / my own
>> edison branch + meta-fsl-ppc...
>
> Thanks Matthew.   I need to sort this out with some regression testing.  =
The
> latest master branches of poky & meta-fsl-ppc provides a kernel that oops
> while it's probing flash during boot.
>
> With the latest fsl-image-minimal rootfs and a mainline kernel, I get an
> init that hangs when it tries to exec getty.
>
> I see that the the "serial8250: too much work for irq42" message comes fr=
om
> "drivers/tty/serial/8250/8250.c" and that there have been plenty of patch=
es
> to this file this year.
>
> I'll chime in again later.

Sorry to say - master get's the least testing too.. we just move to
denzil... others have had success with master branches with the same
linux-qoriq-sdk kernel though...

-M=


