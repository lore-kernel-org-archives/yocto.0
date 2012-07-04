Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe004.messaging.microsoft.com [216.32.180.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B5E3E01428
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2012 10:04:04 -0700 (PDT)
Received: from mail120-co1-R.bigfish.com (10.243.78.252) by
	CO1EHSOBE003.bigfish.com (10.243.66.66) with Microsoft SMTP Server id
	14.1.225.23; Wed, 4 Jul 2012 17:02:00 +0000
Received: from mail120-co1 (localhost [127.0.0.1])	by
	mail120-co1-R.bigfish.com (Postfix) with ESMTP id B988C70008D;
	Wed,  4 Jul 2012 17:02:00 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ahbe9i)
Received: from mail120-co1 (localhost.localdomain [127.0.0.1]) by mail120-co1
	(MessageSwitch) id 1341421319289490_13656;
	Wed,  4 Jul 2012 17:01:59 +0000 (UTC)
Received: from CO1EHSMHS012.bigfish.com (unknown [10.243.78.250])	by
	mail120-co1.bigfish.com (Postfix) with ESMTP id 38D21740044;
	Wed,  4 Jul 2012 17:01:59 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS012.bigfish.com
	(10.243.66.22) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 4 Jul 2012 17:01:59 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.163]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Wed, 4 Jul 2012 12:03:59 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Bob Cochran <yocto@mindchasers.com>
Thread-Topic: [yocto] how do I deal with two meta-fsl-ppc repos?
Thread-Index: AQHNWgcBI/k6Ix+Spk6B9B4MrWclCg==
Date: Wed, 4 Jul 2012 17:04:00 +0000
Message-ID: <CAEsOVNckNJvg8Grnv5PTghRR+jw1LZMaKohWJJtNWqdt1tRsRQ@mail.gmail.com>
References: <4FF37F0D.5060007@mindchasers.com>
In-Reply-To: <4FF37F0D.5060007@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how do I deal with two meta-fsl-ppc repos?
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
X-List-Received-Date: Wed, 04 Jul 2012 17:04:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A5A731CB4DFE0E4BBFE61DED078E1A2B@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 3, 2012 at 6:23 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> Hello,
>
> I can find a meta-fsl-ppc tree at http://git.freescale.com/git/cgit.cgi/ =
and
> also one at http://git.yoctoproject.org/.
>
> The former was last updated 12 days ago and the latter was last updated 5
> weeks ago.
>
> Which repo am I supposed to use going forward?  Please explain how these =
two
> trees will differ.  I'm hoping that the yocto meta-fsl-ppc repo will stay
> active as both a repo for edison patches and for a master branch that wil=
l
> benefit from community feedback, discussion, and patches.

One is for the official SDK and one is for the official Yocto project.
Much like how kernel trees were there are upstream and internal BSP
versions. If you plan to use the official Yocto sources I would go
with the one on yoctoproject.org and pick the branch based off the
release you want to use. If you use our SDK use the other one.

-M=


