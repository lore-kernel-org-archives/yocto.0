Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE004.bigfish.com (tx2ehsobe002.messaging.microsoft.com
	[65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 063CEE0127A
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 22:59:19 -0700 (PDT)
Received: from mail194-tx2-R.bigfish.com (10.9.14.242) by
	TX2EHSOBE004.bigfish.com (10.9.40.24) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Sep 2011 05:59:17 +0000
Received: from mail194-tx2 (localhost.localdomain [127.0.0.1])	by
	mail194-tx2-R.bigfish.com (Postfix) with ESMTP id 875091780364	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:59:15 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail194-tx2 (localhost.localdomain [127.0.0.1]) by mail194-tx2
	(MessageSwitch) id 131727589095176_25391;
	Thu, 29 Sep 2011 05:58:10 +0000 (UTC)
Received: from TX2EHSMHS046.bigfish.com (unknown [10.9.14.253])	by
	mail194-tx2.bigfish.com (Postfix) with ESMTP id 86E761C180D0	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:56:06 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS046.bigfish.com
	(10.9.99.146) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Sep 2011 05:56:06 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0323.007; Thu, 29 Sep 2011 00:56:06 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 3/7] Make git fetch run with -f so rebased
	branches don't fail
Thread-Index: AQHMfmx5EAv03RqNLUCSMmqGhOtP3w==
Date: Thu, 29 Sep 2011 05:56:05 +0000
Message-ID: <CAEsOVNcyMj8njOBczc=bc0WDdqsrgwMtpWov=3nFRvivzR-vMQ@mail.gmail.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
	<1317275552-19908-3-git-send-email-msm@freescale.com>
In-Reply-To: <1317275552-19908-3-git-send-email-msm@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Re: [PATCH 3/7] Make git fetch run with -f so rebased branches don't fail
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
X-List-Received-Date: Thu, 29 Sep 2011 05:59:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D685C8C40C8EA5459073E055B312DF35@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 29, 2011 at 12:52 AM, Matthew McClintock <msm@freescale.com> wr=
ote:
> git fetches can fail (or at least return failed) when trying to
> fetch and prune rebased branches. This patch simply adds a -f
> to the git fetch command so these failure are ignore
>
> Generally, if some SHA was rebased away it's not coming back so
> there is no point in not doing this force

I already sent this to the bitbake-devel list as well.

-M=


