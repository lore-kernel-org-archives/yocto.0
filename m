Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe004.messaging.microsoft.com [216.32.181.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 567F7E0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 12:50:06 -0700 (PDT)
Received: from mail105-ch1-R.bigfish.com (10.43.68.253) by
	CH1EHSOBE017.bigfish.com (10.43.70.67) with Microsoft SMTP Server id
	14.1.225.23; Mon, 20 Aug 2012 19:50:05 +0000
Received: from mail105-ch1 (localhost [127.0.0.1])	by
	mail105-ch1-R.bigfish.com (Postfix) with ESMTP id 0051D420354;
	Mon, 20 Aug 2012 19:50:05 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(z1725nz98dI9371I1432I179dNzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail105-ch1 (localhost.localdomain [127.0.0.1]) by mail105-ch1
	(MessageSwitch) id 1345492204166258_27691;
	Mon, 20 Aug 2012 19:50:04 +0000 (UTC)
Received: from CH1EHSMHS004.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.250])	by mail105-ch1.bigfish.com (Postfix) with ESMTP id
	20C2D34004F;	Mon, 20 Aug 2012 19:50:04 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS004.bigfish.com
	(10.43.70.4) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 20 Aug 2012 19:50:01 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0309.003; Mon, 20 Aug 2012 14:50:01 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>, =?iso-8859-1?Q?David_Nystr=F6m?=
	<David.Nystrom@enea.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let
	linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
Thread-Index: AQHNW462266JlnvN2UumT9YN8fdDr5cdLAYAgAABHYCAPFI6AIAAwqgAgAikJQCAAJzkAIAAGGsAgAAUxoCAAARiAIAAAfAA
Date: Mon, 20 Aug 2012 19:50:00 +0000
Message-ID: <CAEsOVNfBgOGgmZm4BehTAm28v703d7Ao9ehkE2GD+dwxKswtOw@mail.gmail.com>
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
	<CAEsOVNfb=KeN_WGWfuyPT6MTiY9S9nEkz6pn5G6xp+-Jroeh5g@mail.gmail.com>
	<CAMKF1srF6AYbJzCGN989kweBmcz6Y-BGvyCiAhHGTPDoOYESYQ@mail.gmail.com>
	<CAEsOVNfcBKAHut3Mw3tCb93TgkwW6uQE5J1DVSSez65oczNvMg@mail.gmail.com>
In-Reply-To: <CAEsOVNfcBKAHut3Mw3tCb93TgkwW6uQE5J1DVSSez65oczNvMg@mail.gmail.com>
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
X-List-Received-Date: Mon, 20 Aug 2012 19:50:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E3FAC354AAEFCA4A887B9D58E4AF2692@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Adding David back...

-M

On Mon, Aug 20, 2012 at 2:42 PM, Matthew McClintock <msm@freescale.com> wro=
te:
> On Mon, Aug 20, 2012 at 2:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> I just checked and we do have a few obscure bits in our kernel tree's
>>> header files. Nothing that 99.9% would use but it seems reasonable to
>>> include these...
>>
>> Do you want applications for sdk host to be built using these obscure bi=
ts ?
>> if yes I would like to know why?
>>
>> since then you are creating a scenariou where nativesdk is dependent on =
target
>> kernel and we need to fix it so that nativesdk can be common again.
>>
>> if patches you are carrying are good for nativesdk headers can they be m=
ade
>> available for other kernels like linux-yocto e.g. ?
>>
>> right now if we do this we are pretty much saying fsl machine layer can =
really
>> not mix with other BSPs. Many people use yocto commonly on more than one=
 kind
>> of CPU and this does not scale.
>
> Hmm I think I was just confused. We don't need any modifications for
> the headers for nativesdk foo (that is the x86 tools in
> meta-toolchain).
>
> So, I think everything is OK as is.. if you look at meta-toolchain you
> will see it includes our kernel's headers for cross compiling.
>
> -M=


