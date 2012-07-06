Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe002.messaging.microsoft.com [216.32.180.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09E13E01396
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 08:48:06 -0700 (PDT)
Received: from mail236-va3-R.bigfish.com (10.7.14.250) by
	VA3EHSOBE007.bigfish.com (10.7.40.11) with Microsoft SMTP Server id
	14.1.225.23; Fri, 6 Jul 2012 15:45:57 +0000
Received: from mail236-va3 (localhost [127.0.0.1])	by
	mail236-va3-R.bigfish.com (Postfix) with ESMTP id D88B9900079;
	Fri,  6 Jul 2012 15:45:56 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 5
X-BigFish: VS5(z1725nz98dI9371Ic89bhzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ahbe9i)
Received: from mail236-va3 (localhost.localdomain [127.0.0.1]) by mail236-va3
	(MessageSwitch) id 1341589554941422_24432;
	Fri,  6 Jul 2012 15:45:54 +0000 (UTC)
Received: from VA3EHSMHS021.bigfish.com (unknown [10.7.14.247])	by
	mail236-va3.bigfish.com (Postfix) with ESMTP id E3E17600048;
	Fri,  6 Jul 2012 15:45:54 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS021.bigfish.com
	(10.7.99.31) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 6 Jul 2012 15:45:50 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.163]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Fri, 6 Jul 2012 10:47:58 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let
	linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
Thread-Index: AQHNW462266JlnvN2UumT9YN8fdDrw==
Date: Fri, 6 Jul 2012 15:47:57 +0000
Message-ID: <CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
In-Reply-To: <88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 06 Jul 2012 15:48:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D37741825933EF46B00E66D4E71AE3E1@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 6, 2012 at 5:49 AM, David Nystr=F6m <David.Nystrom@enea.com> wr=
ote:
> So that about a disto refusing this and possibly other BSP layers ?
> Should the disto.conf  select of nativesdk be made machine specific on al=
l machines in meta-fsl-ppc ? And one added target after a meta-fsl-ppc reba=
se would break stuff, I guess.

I don't quite follow... you are suggesting we have

PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?=3D
"linux-qoriq-sdk-headers-nativesdk"

in the machine.conf files instead?

-M=


