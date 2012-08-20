Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe005.messaging.microsoft.com [216.32.180.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0421AE0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 11:13:09 -0700 (PDT)
Received: from mail3-co1-R.bigfish.com (10.243.78.245) by
	CO1EHSOBE004.bigfish.com (10.243.66.67) with Microsoft SMTP Server id
	14.1.225.23; Mon, 20 Aug 2012 18:13:07 +0000
Received: from mail3-co1 (localhost [127.0.0.1])	by mail3-co1-R.bigfish.com
	(Postfix) with ESMTP id AFD8A920088;
	Mon, 20 Aug 2012 18:13:07 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 3
X-BigFish: VS3(z1725nzbb2dI98dI9371Ic89bh1432Izz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail3-co1 (localhost.localdomain [127.0.0.1]) by mail3-co1
	(MessageSwitch) id 1345486385475673_31925;
	Mon, 20 Aug 2012 18:13:05 +0000 (UTC)
Received: from CO1EHSMHS017.bigfish.com (unknown [10.243.78.244])	by
	mail3-co1.bigfish.com (Postfix) with ESMTP id 67FF7900238;
	Mon, 20 Aug 2012 18:13:05 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS017.bigfish.com
	(10.243.66.27) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 20 Aug 2012 18:13:04 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.02.0309.003;
	Mon, 20 Aug 2012 13:13:03 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let
	linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
Thread-Index: AQHNW462266JlnvN2UumT9YN8fdDr5cdLAYAgAABHYCAPFI6AIAAwqgAgAikJQCAAJzkAIAAGGsA
Date: Mon, 20 Aug 2012 18:13:02 +0000
Message-ID: <CAEsOVNfb=KeN_WGWfuyPT6MTiY9S9nEkz6pn5G6xp+-Jroeh5g@mail.gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
	<502A0308.6080203@enea.com>
	<CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
	<5031E600.8030208@enea.com>
	<CAMKF1spkpnDye4NxNpTSKsC6CVebTfm1_1roW5viO=xMZz50ug@mail.gmail.com>
In-Reply-To: <CAMKF1spkpnDye4NxNpTSKsC6CVebTfm1_1roW5viO=xMZz50ug@mail.gmail.com>
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
X-List-Received-Date: Mon, 20 Aug 2012 18:13:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8B2628310B805647AA15297421D9559F@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 20, 2012 at 11:45 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Mon, Aug 20, 2012 at 12:23 AM, David Nystr=F6m <david.nystrom@enea.com=
> wrote:
>> On 08/14/2012 09:26 PM, Khem Raj wrote:
>>>
>>> On Tue, Aug 14, 2012 at 12:49 AM, David Nystr=F6m <david.nystrom@enea.c=
om>
>>> wrote:
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
>>
>> My main concern is that meta-toolchain uses linux-libc-headers-nativesdk=
 for
>> the meta-toolchain
>> tarball build, i.e. the meta-toolchain API may differ from the on-target=
 API
>> in regards to kernel-headers, no ?
>>
>> This might very well be true if kernel version of
>> linux-libc-headers-nativesdk !=3D linux-libc-headers
>
> whats the point of keeping header versions same across two entirely
> different systems.
> can you point to some instances where this API difference if any is in
> conflict ?

I just checked and we do have a few obscure bits in our kernel tree's
header files. Nothing that 99.9% would use but it seems reasonable to
include these...

-M=


