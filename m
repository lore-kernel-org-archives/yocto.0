Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe006.messaging.microsoft.com [216.32.180.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21E67E00747
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 12:32:14 -0700 (PDT)
Received: from mail136-va3-R.bigfish.com (10.7.14.247) by
	VA3EHSOBE008.bigfish.com (10.7.40.28) with Microsoft SMTP Server id
	14.1.225.23; Fri, 1 Jun 2012 19:31:42 +0000
Received: from mail136-va3 (localhost [127.0.0.1])	by
	mail136-va3-R.bigfish.com (Postfix) with ESMTP id DA5632205F6;
	Fri,  1 Jun 2012 19:31:41 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -12
X-BigFish: VS-12(zzbb2dI9371Ic89bh14ffI1432N98dK4015Izz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ahbe9i)
Received: from mail136-va3 (localhost.localdomain [127.0.0.1]) by mail136-va3
	(MessageSwitch) id 1338579100957271_25491;
	Fri,  1 Jun 2012 19:31:40 +0000 (UTC)
Received: from VA3EHSMHS029.bigfish.com (unknown [10.7.14.241])	by
	mail136-va3.bigfish.com (Postfix) with ESMTP id E64D02C004E;
	Fri,  1 Jun 2012 19:31:40 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS029.bigfish.com
	(10.7.99.39) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 1 Jun 2012 19:31:39 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.135]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Fri, 1 Jun 2012 14:32:09 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: =?iso-8859-1?Q?David_Nystr=F6m?= <david.nystrom@enea.com>
Thread-Topic: [yocto] PR and bbappends
Thread-Index: AQHNQC08F6FBMtsNeUqUffi7RpSPeA==
Date: Fri, 1 Jun 2012 19:32:09 +0000
Message-ID: <CAEsOVNc8n1yqOxc12osvmUB1+qCAxZFo077WEk4+AnaaN6KCgg@mail.gmail.com>
References: <4FC74DF9.3070401@enea.com>
	<CAMKF1soZ7Ss7s245Y4xtGBypheW5RSDgJMCRAr1FG2xF5cE3-w@mail.gmail.com>
	<4FC89AB1.40706@enea.com>
In-Reply-To: <4FC89AB1.40706@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PR and bbappends
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
X-List-Received-Date: Fri, 01 Jun 2012 19:32:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <656FBF2ED7A3DF4FAF8ADB5F5398FE28@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 1, 2012 at 5:34 AM, David Nystr=F6m <david.nystrom@enea.com> wr=
ote:
> On 05/31/2012 04:01 PM, Khem Raj wrote:
>>
>> On Thu, May 31, 2012 at 3:54 AM, David Nystr=F6m<david.nystrom@enea.com>
>> =A0wrote:
>>>
>>> Hi All,
>>>
>>> Is there a good way to get the layer name ?, I want to add
>>> PR .=3D "+${LAYER_NAME}.0" to my bbappends for clarity and versioning w=
hen
>>> having multiple meta layers.
>>> Where a bbappend:s on package X can reside in one, two or more layers.
>>>
>> you could look into =A0bitbake-layers tool
>> bitbake-layers show-overlayed will show the recipes overlays
>> if thats the problem you are trying to solve
>>
> Thanks, I was unaware of that script. But not really want I want to do.
> We are going to have multiple BSP layers sourced from BSP suppliers, and
> customer specific layers on top of this.
> When it comes to testing, we want our test-objects(binary packages) to
> differ depending on which layers appended them,
> so that we can easily automate a testing procedure, and reduce possible
> permutations of testobjects.(For unit testing).
>
> Also, when you see bash_4.2-r2+meta-fsl-ppc.0+meta-ti.2_ppce500mc.ipk, yo=
u
> directly see who manipulated the contents
> of the bash package. And where eventual failures could originate from.

Some based layers should not modify certain packages. Which
meta-fsl-ppc is guilty of doing which I would like to cleanup. Changes
to packages should be moved up to a distro layer I believe?

-M=


