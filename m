Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe001.messaging.microsoft.com [213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C5CAE0027E
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 11:56:53 -0700 (PDT)
Received: from mail44-am1-R.bigfish.com (10.3.201.242) by
	AM1EHSOBE006.bigfish.com (10.3.204.26) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 18:56:51 +0000
Received: from mail44-am1 (localhost [127.0.0.1])	by mail44-am1-R.bigfish.com
	(Postfix) with ESMTP id 309B31801A6;
	Tue, 30 Oct 2012 18:56:51 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail44-am1 (localhost.localdomain [127.0.0.1]) by mail44-am1
	(MessageSwitch) id 1351623409992568_32387;
	Tue, 30 Oct 2012 18:56:49 +0000 (UTC)
Received: from AM1EHSMHS002.bigfish.com (unknown [10.3.201.234])	by
	mail44-am1.bigfish.com (Postfix) with ESMTP id F03351A0048;
	Tue, 30 Oct 2012 18:56:49 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS002.bigfish.com
	(10.3.207.102) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 30 Oct 2012 18:56:49 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.121]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0318.003; Tue, 30 Oct 2012 18:56:43 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [yocto] [meta-fsl-ppc master] perf_3.4.bbappend: task
	oe_runmake: failed
Thread-Index: AQHNttBNyxGJpzeF6kGF1tyURDyOdg==
Date: Tue, 30 Oct 2012 18:56:42 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A7372DB@039-SN1MPN1-002.039d.mgd.msft.net>
References: <1351582698-28887-1-git-send-email-b40290@freescale.com>
	<CADkTA4Pg+5B=sXBijpK4FvW3KSWSzMsOba7Uvv=DH3KOfgPB9A@mail.gmail.com>
In-Reply-To: <CADkTA4Pg+5B=sXBijpK4FvW3KSWSzMsOba7Uvv=DH3KOfgPB9A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Guo Chunrong-B40290 <B40290@freescale.com>
Subject: Re: [meta-fsl-ppc master] perf_3.4.bbappend: task oe_runmake: failed
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
X-List-Received-Date: Tue, 30 Oct 2012 18:56:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <349BA75413242A46BF862DF724359543@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 30, 2012 at 7:29 AM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Tue, Oct 30, 2012 at 3:38 AM,  <b40290@freescale.com> wrote:
>> From: Chunrong Guo <b40290@freescale.com>
>>
>>       fix perf ERROR: oe_runmake failed
>>
>> Signed-off-by: Chunrong Guo <b40290@freescale.com>
>> ---
>>  .../perf/files/define-attribute-const.patch        |   13 +++++++++++++
>>  recipes-append/perf/perf_3.4.bbappend              |    7 +++++++
>>  2 files changed, 20 insertions(+)
>>  create mode 100644 recipes-append/perf/files/define-attribute-const.pat=
ch
>>  create mode 100644 recipes-append/perf/perf_3.4.bbappend
>>
>
> Out of curiosity .. why not patch the FSL kernel itself ? That's where th=
e
> source for perf comes from, and that will ensure any perf recipe will bui=
ld
> when that kernel source is used. We've been fixing perf issues within the
> linux-yocto repo for some time, that way the changes are matched to the
> kernel that has the problem, not the layer + toolchain which can have a
> changing kernel underneath it.
>
> Just a random question.

I agree. But, for the already released kernel already on
git.freescale.com we will need these patches.

Chunrong,

Please send a pull request to our linux tree maintainer to get these
patches added to our next kernel.

-M=


