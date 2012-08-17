Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe010.messaging.microsoft.com [216.32.180.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06DA7E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 22:51:11 -0700 (PDT)
Received: from mail185-va3-R.bigfish.com (10.7.14.241) by
	VA3EHSOBE010.bigfish.com (10.7.40.12) with Microsoft SMTP Server id
	14.1.225.23; Fri, 17 Aug 2012 05:51:09 +0000
Received: from mail185-va3 (localhost [127.0.0.1])	by
	mail185-va3-R.bigfish.com (Postfix) with ESMTP id D1400160395;
	Fri, 17 Aug 2012 05:51:09 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 4
X-BigFish: VS4(z1725nz98dI9371Ic89bh1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail185-va3 (localhost.localdomain [127.0.0.1]) by mail185-va3
	(MessageSwitch) id 1345182668757665_9849;
	Fri, 17 Aug 2012 05:51:08 +0000 (UTC)
Received: from VA3EHSMHS045.bigfish.com (unknown [10.7.14.241])	by
	mail185-va3.bigfish.com (Postfix) with ESMTP id AC31E3600C5;
	Fri, 17 Aug 2012 05:51:08 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS045.bigfish.com
	(10.7.99.55) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 17 Aug 2012 05:51:08 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Fri, 17 Aug 2012 00:51:07 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let
	linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
Thread-Index: AQHNW462266JlnvN2UumT9YN8fdDr5cdLAYAgAABHYCAPFI6AIAAwqgAgAMn3ACAAKCCgIAACs6A
Date: Fri, 17 Aug 2012 05:51:07 +0000
Message-ID: <CAEsOVNcBF0y+1RXYo5Uq0wu3_YOQowDSRJkBzZFyahci3G=o1A@mail.gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
	<502A0308.6080203@enea.com>
	<CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
	<CAEsOVNfHByXRcqY3=NQYJ2Y5a5+=sXiVqVQDF6nBcjeFbOAj5Q@mail.gmail.com>
	<CAMKF1sprsPQfJ2u+V7bJ9JGrWgaGHKkVPtEouvLAvqEBPck8Tg@mail.gmail.com>
In-Reply-To: <CAMKF1sprsPQfJ2u+V7bJ9JGrWgaGHKkVPtEouvLAvqEBPck8Tg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
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
X-List-Received-Date: Fri, 17 Aug 2012 05:51:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7BD416D2B6869B47979004948E7B34C9@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 17, 2012 at 12:12 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, Aug 16, 2012 at 12:37 PM, McClintock Matthew-B29882
> <B29882@freescale.com> wrote:
>> On Tue, Aug 14, 2012 at 2:26 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> On Tue, Aug 14, 2012 at 12:49 AM, David Nystr=F6m <david.nystrom@enea.c=
om> wrote:
>>>>
>>>> Hi, it looks like this was merged to the denzil branch, and
>>>> PREFERRED_PROVIDER_linux-libc-headers-nativesdk was moved back to
>>>> distro.conf.
>>>> Any reason for this ?
>>>
>>> why do you want nativesdk headers to come from BSP its a fsl-ppc bsp I
>>> dont expect it to have something special for SDK hosts which are
>>> usually x86 ? afterall these are for
>>> the SDK host and not for target. Moreover it means that this BSP will
>>> not play in the multi BSP environment something you never want.
>>
>> But, I think we might need them for this warning specifically:
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: multiple providers are available for lib32-linux-libc-headers
>> (lib32-linux-libc-headers, lib32-linux-libc-headers-yocto,
>> lib32-linux-qoriq-sdk-headers)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match
>> lib32-linux-libc-headers
>> NOTE: multiple providers are available for runtime
>> lib32-linux-libc-headers-dev (lib32-linux-libc-headers,
>> lib32-linux-libc-headers-yocto, lib32-linux-qoriq-sdk-headers)
>> NOTE: consider defining a PREFERRED_PROVIDER entry to match
>> lib32-linux-libc-headers-dev
>>
>
> This is a bug in OE-Core, it should have added appropriate defines for
> multilib case as well in
> tcmode-default.inc and default-providers.inc

And there appears to be a fix for it already:

http://patches.openembedded.org/patch/34723/

-M

>
>> ?
>>
>> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


