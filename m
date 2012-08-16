Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe001.messaging.microsoft.com [216.32.180.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20D75E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 12:38:03 -0700 (PDT)
Received: from mail163-co1-R.bigfish.com (10.243.78.240) by
	CO1EHSOBE005.bigfish.com (10.243.66.68) with Microsoft SMTP Server id
	14.1.225.23; Thu, 16 Aug 2012 19:38:02 +0000
Received: from mail163-co1 (localhost [127.0.0.1])	by
	mail163-co1-R.bigfish.com (Postfix) with ESMTP id DD09C60029A;
	Thu, 16 Aug 2012 19:38:02 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 4
X-BigFish: VS4(z1725nz98dI9371Ic89bh1432Izz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail163-co1 (localhost.localdomain [127.0.0.1]) by mail163-co1
	(MessageSwitch) id 1345145880740370_18799;
	Thu, 16 Aug 2012 19:38:00 +0000 (UTC)
Received: from CO1EHSMHS022.bigfish.com (unknown [10.243.78.246])	by
	mail163-co1.bigfish.com (Postfix) with ESMTP id A8B6E7C004C;
	Thu, 16 Aug 2012 19:38:00 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS022.bigfish.com
	(10.243.66.32) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 16 Aug 2012 19:38:00 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Thu, 16 Aug 2012 14:37:59 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let
	linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
Thread-Index: AQHNW462266JlnvN2UumT9YN8fdDr5cdLAYAgAABHYCAPFI6AIAAwqgAgAMn3AA=
Date: Thu, 16 Aug 2012 19:37:58 +0000
Message-ID: <CAEsOVNfHByXRcqY3=NQYJ2Y5a5+=sXiVqVQDF6nBcjeFbOAj5Q@mail.gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
	<502A0308.6080203@enea.com>
	<CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
In-Reply-To: <CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
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
X-List-Received-Date: Thu, 16 Aug 2012 19:38:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E40A7D5CD90C8341B69C661A31C77E86@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 14, 2012 at 2:26 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Tue, Aug 14, 2012 at 12:49 AM, David Nystr=F6m <david.nystrom@enea.com=
> wrote:
>>
>> Hi, it looks like this was merged to the denzil branch, and
>> PREFERRED_PROVIDER_linux-libc-headers-nativesdk was moved back to
>> distro.conf.
>> Any reason for this ?
>
> why do you want nativesdk headers to come from BSP its a fsl-ppc bsp I
> dont expect it to have something special for SDK hosts which are
> usually x86 ? afterall these are for
> the SDK host and not for target. Moreover it means that this BSP will
> not play in the multi BSP environment something you never want.

But, I think we might need them for this warning specifically:

NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for lib32-linux-libc-headers
(lib32-linux-libc-headers, lib32-linux-libc-headers-yocto,
lib32-linux-qoriq-sdk-headers)
NOTE: consider defining a PREFERRED_PROVIDER entry to match
lib32-linux-libc-headers
NOTE: multiple providers are available for runtime
lib32-linux-libc-headers-dev (lib32-linux-libc-headers,
lib32-linux-libc-headers-yocto, lib32-linux-qoriq-sdk-headers)
NOTE: consider defining a PREFERRED_PROVIDER entry to match
lib32-linux-libc-headers-dev

?

-M=


