Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe002.messaging.microsoft.com [65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A952E006D9
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:58:30 -0700 (PDT)
Received: from mail77-tx2-R.bigfish.com (10.9.14.245) by
	TX2EHSOBE003.bigfish.com (10.9.40.23) with Microsoft SMTP Server id
	14.1.225.23; Thu, 31 May 2012 18:58:01 +0000
Received: from mail77-tx2 (localhost [127.0.0.1])	by mail77-tx2-R.bigfish.com
	(Postfix) with ESMTP id 52F1E4012E;
	Thu, 31 May 2012 18:58:01 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -13
X-BigFish: VS-13(zz9371I103dK14ffI1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ahbe9i)
Received: from mail77-tx2 (localhost.localdomain [127.0.0.1]) by mail77-tx2
	(MessageSwitch) id 1338490679806291_23250;
	Thu, 31 May 2012 18:57:59 +0000 (UTC)
Received: from TX2EHSMHS023.bigfish.com (unknown [10.9.14.244])	by
	mail77-tx2.bigfish.com (Postfix) with ESMTP id C289346004B;
	Thu, 31 May 2012 18:57:59 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS023.bigfish.com
	(10.9.99.123) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 31 May 2012 18:57:56 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.135]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Thu, 31 May 2012 13:58:03 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Thread-Topic: [yocto] Hob implementation: vanilla or branded?
Thread-Index: AQHNP19N0mwWmcbwE06ou9zaNvAENw==
Date: Thu, 31 May 2012 18:58:02 +0000
Message-ID: <CAEsOVNe4zNtFyyQ+47OXNPTzxxMNZs59CJExoPhxGkbSp8tyZw@mail.gmail.com>
References: <CBED5FA2.10462%belen.barros.pena@intel.com>
	<CBED6054.10464%belen.barros.pena@intel.com>
In-Reply-To: <CBED6054.10464%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob implementation: vanilla or branded?
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
X-List-Received-Date: Thu, 31 May 2012 18:58:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8BA1F7F9139FA54985F7145583108B18@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Thu, May 31, 2012 at 11:55 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> Hi all,
>
> As part of the Hob work for the 1.3 release it looks like we need to make
> a visual design and implementation decision: do we want a 'vanilla' or a
> 'branded' look for Hob? Sorry if the choice of words is not the best.
> Neither 'vanilla' nor 'branded' are meant in any negative way.
>
> We did have this conversation when we started work on the 1.2 release of
> Hob, but somehow we settled for a middle way that is not working well and
> is causing issues like bug 1701. From my conversations with UI engineers
> and people with lots of experience in building applications using the GTK
> toolkit, the middle way just doesn't work.
>
> What I mean by 'vanilla' is an implementation that takes the visual
> appearance from the theme installed in the Hob host. The main advantage o=
f
> vanilla implementations is they guarantee that Hob will play nicely with
> its host computer.
>
> What I mean by branded is a visually customised appearance which, apart
> from basic UI elements like window chrome and window controls, takes no
> input from the host theme. The advantage of this approach is full control
> over the Hob appearance (Hob should look like Hob no matter what Linux
> distribution you are using).
>
> Personally, I have no preferences: I think both have strengths and
> weaknesses and I am happy to go with any of the two. What I wouldn't like
> is sticking to a half-way-in-between approach which is giving us a lot of
> grief.
>
> I would like to know what the Yocto Project community thinks about these =
2
> approaches.
>
> Thanks!

Vanilla.

-M=


