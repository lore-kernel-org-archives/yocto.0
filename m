Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B61E0E002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 11:02:15 -0700 (PDT)
Received: from mail113-tx2-R.bigfish.com (10.9.14.246) by
	TX2EHSOBE002.bigfish.com (10.9.40.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 18:02:14 +0000
Received: from mail113-tx2 (localhost [127.0.0.1])	by
	mail113-tx2-R.bigfish.com (Postfix) with ESMTP id DDCF51000B0;
	Wed, 12 Sep 2012 18:02:14 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz17326ah8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail113-tx2 (localhost.localdomain [127.0.0.1]) by mail113-tx2
	(MessageSwitch) id 134747293343428_22557;
	Wed, 12 Sep 2012 18:02:13 +0000 (UTC)
Received: from TX2EHSMHS039.bigfish.com (unknown [10.9.14.252])	by
	mail113-tx2.bigfish.com (Postfix) with ESMTP id F2205180042;
	Wed, 12 Sep 2012 18:02:12 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS039.bigfish.com
	(10.9.99.139) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 18:02:11 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0309.003; Wed, 12 Sep 2012 13:02:11 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-fsl-ppc 09/16] rcw_git.bb: update to 1.2.1
	release version
Thread-Index: AQHNkLLRTb+Hf8XnkkG2v83Q/nPSFQ==
Date: Wed, 12 Sep 2012 18:02:11 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A674DAA@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-9-git-send-email-b19537@freescale.com>
	<CAMKF1spSfEGfkXcfQ7Q1CHdiohSuJmPLd7yCFwW19B46SRe=tA@mail.gmail.com>
	<2072418.kpEGxVepHQ@helios>
	<CAMKF1srJ6FHnmapeJAxu__xS95L02MRNCbhP68gCexNEU3nkQQ@mail.gmail.com>
In-Reply-To: <CAMKF1srJ6FHnmapeJAxu__xS95L02MRNCbhP68gCexNEU3nkQQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 09/16] rcw_git.bb: update to 1.2.1 release version
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
X-List-Received-Date: Wed, 12 Sep 2012 18:02:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7F43400B0C1EDD45B12E7B4C46C5B261@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2012 at 10:57 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Wednesday, September 12, 2012, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Wednesday 12 September 2012 00:40:36 Khem Raj wrote:
>>> NAK
>>
>> Please do not reply to patches like this. If you object to a patch you
>> need to
>> provide some reasoning.
>
> I did in the previous patch in this series which is similar

I've gone and changed all the usage of tags back to SHAs.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?id=3Da51ea00=
5adab98afd5320a836957fad9364ef51b

-M

>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


