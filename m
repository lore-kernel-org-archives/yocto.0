Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB04DE00307
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 08:37:28 -0800 (PST)
Received: from mail31-ch1-R.bigfish.com (10.43.68.231) by
	CH1EHSOBE018.bigfish.com (10.43.70.68) with Microsoft SMTP Server id
	14.1.225.23; Thu, 9 Feb 2012 16:37:28 +0000
Received: from mail31-ch1 (localhost [127.0.0.1])	by mail31-ch1-R.bigfish.com
	(Postfix) with ESMTP id 624463800BB;
	Thu,  9 Feb 2012 16:37:28 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371I936eK168aJ1432N98dKzz1202hzzz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail31-ch1 (localhost.localdomain [127.0.0.1]) by mail31-ch1
	(MessageSwitch) id 1328805446861752_28331;
	Thu,  9 Feb 2012 16:37:26 +0000 (UTC)
Received: from CH1EHSMHS005.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.242])	by mail31-ch1.bigfish.com (Postfix) with ESMTP id
	CD0C624004C;	Thu,  9 Feb 2012 16:37:26 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS005.bigfish.com
	(10.43.70.5) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 9 Feb 2012 16:37:24 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.244]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0355.003; Thu, 9 Feb 2012 10:37:23 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Joshua Immanuel <josh@hipro.co.in>
Thread-Topic: [yocto] sysroot and boost.m4 library search path problem
Thread-Index: AQHM5niN1r384q3zK0Kyp7cAp9TctJY0i4GAgACeOYA=
Date: Thu, 9 Feb 2012 16:37:23 +0000
Message-ID: <CAEsOVNcMxCUjm6trU8pX-+H-c_p_e=OG=sjMZFaBG9oeKGbvLg@mail.gmail.com>
References: <1328705392.2662.28.camel@babel.joshhome>
	<1328706791.2662.32.camel@babel.joshhome>
	<CAEsOVNd5Fi1wtDDgWZFCoOtmbs75WA=nu03+0+P2o3D0ifO6PQ@mail.gmail.com>
	<1328771441.2692.14.camel@babel.joshhome>
In-Reply-To: <1328771441.2692.14.camel@babel.joshhome>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: sysroot and boost.m4 library search path problem
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
X-List-Received-Date: Thu, 09 Feb 2012 16:37:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <CE32E68AE4C9D0458E0D5F3BAF99CFF7@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 9, 2012 at 1:10 AM, Joshua Immanuel <josh@hipro.co.in> wrote:
> Hello McClintock,
>
> On Wed, 2012-02-08 at 15:44 +0000, McClintock Matthew-B29882 wrote:
>> Did you consider taking this patch and adding it to the proper recipe?
>
> The patch is basically for boost.m4. We have the boost package in 'meta'
> layer. But, boost.m4 is not a part of boost library, it is maintained
> separately. As the boost doesn't support pkgconfig, boost.m4 comes to
> the rescue for finding installed boost libraries.
>
> So, this doesn't fit into any existing recipe. Whichever (autotools
> build system based) application uses boost library will obviously use
> boost.m4 and this patch is for them.

Do we need to add a recipe for boost.m4 and then apply your patch on top?

-M=


