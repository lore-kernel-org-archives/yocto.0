Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE005.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA2D9E0123C
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 07:44:39 -0800 (PST)
Received: from mail90-tx2-R.bigfish.com (10.9.14.254) by
	TX2EHSOBE005.bigfish.com (10.9.40.25) with Microsoft SMTP Server id
	14.1.225.23; Wed, 8 Feb 2012 15:44:37 +0000
Received: from mail90-tx2 (localhost [127.0.0.1])	by mail90-tx2-R.bigfish.com
	(Postfix) with ESMTP id 41F401E02A4;
	Wed,  8 Feb 2012 15:44:39 +0000 (UTC)
X-SpamScore: -17
X-BigFish: VS-17(zz9371I936eK1432N98dK14ffOzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail90-tx2 (localhost.localdomain [127.0.0.1]) by mail90-tx2
	(MessageSwitch) id 132871587628898_18784;
	Wed,  8 Feb 2012 15:44:36 +0000 (UTC)
Received: from TX2EHSMHS043.bigfish.com (unknown [10.9.14.245])	by
	mail90-tx2.bigfish.com (Postfix) with ESMTP id 02C872C004A;
	Wed,  8 Feb 2012 15:44:36 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS043.bigfish.com
	(10.9.99.143) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 8 Feb 2012 15:44:35 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.244]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Wed, 8 Feb 2012 09:44:33 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Joshua Immanuel <josh@hipro.co.in>
Thread-Topic: [yocto] sysroot and boost.m4 library search path problem
Thread-Index: AQHM5niN1r384q3zK0Kyp7cAp9TctA==
Date: Wed, 8 Feb 2012 15:44:33 +0000
Message-ID: <CAEsOVNd5Fi1wtDDgWZFCoOtmbs75WA=nu03+0+P2o3D0ifO6PQ@mail.gmail.com>
References: <1328705392.2662.28.camel@babel.joshhome>
	<1328706791.2662.32.camel@babel.joshhome>
In-Reply-To: <1328706791.2662.32.camel@babel.joshhome>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 08 Feb 2012 15:44:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <23FFA7F3CAEA7B46AB3517696FE54712@freescale.net>
Content-Transfer-Encoding: quoted-printable

Joshua,

Did you consider taking this patch and adding it to the proper recipe?

-M

On Wed, Feb 8, 2012 at 7:13 AM, Joshua Immanuel <josh@hipro.co.in> wrote:
> Hello all,
>
> On Wed, 2012-02-08 at 18:19 +0530, Joshua Immanuel wrote:
>> To address this problem, I've written a patch for boost.m4
>> specifically for yocto. I believe this will be helpful to others who
>> are using boost libraries. I guess, I have to send a separate patch to
>> boost.m4 maintainer using '$with-sysroot' variable.
>
> Forgot to mention, the issue already has been reported for boost.m4 at
> https://github.com/tsuna/boost.m4/issues/26
> I have added my patch (not yocto specific one) there too.
>
> Regards
> Joshua
> --
> Joshua Immanuel
> HiPro IT Solutions Private Limited
> http://hipro.co.in
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


