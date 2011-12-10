Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41ECDE00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 21:45:15 -0800 (PST)
Received: from mail182-ch1-R.bigfish.com (10.43.68.240) by
	CH1EHSOBE003.bigfish.com (10.43.70.53) with Microsoft SMTP Server id
	14.1.225.23; Sat, 10 Dec 2011 05:44:57 +0000
Received: from mail182-ch1 (localhost [127.0.0.1])	by
	mail182-ch1-R.bigfish.com (Postfix) with ESMTP id 76BEF500517;
	Sat, 10 Dec 2011 05:45:26 +0000 (UTC)
X-SpamScore: -10
X-BigFish: VS-10(zz9371I1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail182-ch1 (localhost.localdomain [127.0.0.1]) by mail182-ch1
	(MessageSwitch) id 1323495922459814_18649;
	Sat, 10 Dec 2011 05:45:22 +0000 (UTC)
Received: from CH1EHSMHS001.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.251])	by mail182-ch1.bigfish.com (Postfix) with ESMTP id
	D58BE58005C;	Sat, 10 Dec 2011 05:44:48 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS001.bigfish.com
	(10.43.70.1) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Sat, 10 Dec 2011 05:44:16 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.28]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Fri, 9 Dec 2011 23:44:31 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] meta-oe branch for edison?
Thread-Index: AQHMteQwytOI18ogW0meDZb20Uyq2ZXTyoEAgABBtYCAAEWyAIAApFuA
Date: Sat, 10 Dec 2011 05:44:30 +0000
Message-ID: <CAEsOVNcC9zjECw0WaW3=jVwB_e=MiZU7xiHwON0aFkTLgDvwSw@mail.gmail.com>
References: <CAEsOVNeYZ4hwvV8dXMadkzchyA_nRHeZ63_s-XgJBzaEymUKdg@mail.gmail.com>
	<1323431474.5309.128.camel@ted>
	<CAEsOVNexQiXQkWQH8hEBq+4JFGihda7_azWPrxeTG9J+M3wgvw@mail.gmail.com>
	<CAMKF1spwM8nHzdaYnDquF9UgrvE2bdhmcGZpjyxPqkXzuub5Yw@mail.gmail.com>
In-Reply-To: <CAMKF1spwM8nHzdaYnDquF9UgrvE2bdhmcGZpjyxPqkXzuub5Yw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-oe branch for edison?
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
X-List-Received-Date: Sat, 10 Dec 2011 05:45:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D5650203B829254FB40B5FBD4DF3EAF3@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 9, 2011 at 1:55 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Fri, Dec 9, 2011 at 7:46 AM, McClintock Matthew-B29882
> <B29882@freescale.com> wrote:
>>> I'd certainly be happy to see such a branch. It might be more
>>> appropriate to call it 2011-1 which corresponds to the OE-Core branch
>>> name that is edison in the poky repo.
>>
>> Well I don't particularly care if we create a repo or not. I just want
>> a place to go for a working meta-oe for all future releases of Yocto.
>> I had to figure this out on my own, but I'm can imagine others will
>> attempt similar things.
>
> essentially you are asking for meta-oe release. I think layers dont
> release in conjunction with oe-core but it would be beneficial if they
> had similar time frames.

A release is one thing, just a simple tag or branch so people know
where to go to get started with specific releases.

-M=


