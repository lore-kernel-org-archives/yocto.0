Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe002.messaging.microsoft.com [216.32.180.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 468E1E00347
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 12:06:07 -0700 (PDT)
Received: from mail145-co1-R.bigfish.com (10.243.78.242) by
	CO1EHSOBE016.bigfish.com (10.243.66.79) with Microsoft SMTP Server id
	14.1.225.23; Wed, 8 Aug 2012 19:06:04 +0000
Received: from mail145-co1 (localhost [127.0.0.1])	by
	mail145-co1-R.bigfish.com (Postfix) with ESMTP id 054172803FF;
	Wed,  8 Aug 2012 19:06:05 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz98dI9371I1432I14ffIzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail145-co1 (localhost.localdomain [127.0.0.1]) by mail145-co1
	(MessageSwitch) id 1344452762500772_22180;
	Wed,  8 Aug 2012 19:06:02 +0000 (UTC)
Received: from CO1EHSMHS012.bigfish.com (unknown [10.243.78.252])	by
	mail145-co1.bigfish.com (Postfix) with ESMTP id 7633658004D;
	Wed,  8 Aug 2012 19:06:02 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS012.bigfish.com
	(10.243.66.22) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 8 Aug 2012 19:06:01 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Wed, 8 Aug 2012 14:06:01 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Yes Yanus <yesyanus@yahoo.com>
Thread-Topic: [yocto] a question about multilib
Thread-Index: AQHNdZjZicEzcDDqMkSXOfFG1yXNxA==
Date: Wed, 8 Aug 2012 19:05:59 +0000
Message-ID: <CAEsOVNfuY8ZSXqLghvjo7GnOz+F-WqLEgFPZZiVG1VDz7X7eRA@mail.gmail.com>
References: <1344430759.60259.YahooMailNeo@web121502.mail.ne1.yahoo.com>
In-Reply-To: <1344430759.60259.YahooMailNeo@web121502.mail.ne1.yahoo.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: a question about multilib
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
X-List-Received-Date: Wed, 08 Aug 2012 19:06:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <304E52E70F651E4E961E7AB467F906BA@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 8, 2012 at 7:59 AM, Yes Yanus <yesyanus@yahoo.com> wrote:
> Hi everyone,
>  I have a question about multilib. I have a layer which is Independent of
> meta. this layer include some bb files and some of them are same with bb
> files in meta. for example, ncurses_5.7.bb in my layer and ncurses_5.9.bb=
 in
> meta. but when I run command bitbake lib32-ncurses the bb file in meta is
> called. I have set the priority in my layer. the prority is higher than
> layer in meta. why bb files in my layer can't be called ?
> and if I run bitbake ncurses then bb files in my layer can be called.
>
> Who can tell me the cause and how to solve the question?

Perhaps

PREFERRED_VERSION_ncurses =3D "5.7"

?

-M

>
> Thanks
> yes
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


