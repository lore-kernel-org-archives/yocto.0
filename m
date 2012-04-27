Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe002.messaging.microsoft.com [213.199.154.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 733E0E006C7
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 08:39:26 -0700 (PDT)
Received: from mail113-am1-R.bigfish.com (10.3.201.248) by
	AM1EHSOBE006.bigfish.com (10.3.204.26) with Microsoft SMTP Server id
	14.1.225.23; Fri, 27 Apr 2012 15:39:22 +0000
Received: from mail113-am1 (localhost [127.0.0.1])	by
	mail113-am1-R.bigfish.com (Postfix) with ESMTP id 5A11B320382;
	Fri, 27 Apr 2012 15:39:22 +0000 (UTC)
X-SpamScore: -9
X-BigFish: VS-9(zz9371I1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hbe9i)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail113-am1 (localhost.localdomain [127.0.0.1]) by mail113-am1
	(MessageSwitch) id 1335541160911118_14543;
	Fri, 27 Apr 2012 15:39:20 +0000 (UTC)
Received: from AM1EHSMHS012.bigfish.com (unknown [10.3.201.249])	by
	mail113-am1.bigfish.com (Postfix) with ESMTP id DA46D2011C;
	Fri, 27 Apr 2012 15:39:20 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS012.bigfish.com
	(10.3.207.112) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 27 Apr 2012 15:39:20 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.132]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Fri, 27 Apr 2012 10:39:20 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: jfabernathy <jfabernathy@gmail.com>
Thread-Topic: [yocto] rebuilds -- when to do what??
Thread-Index: AQHNJIvp0F0Cd+mGVkaHdrzTb2Cblw==
Date: Fri, 27 Apr 2012 15:39:20 +0000
Message-ID: <CAEsOVNcOx-_O8YmgusttvvSwuR=RtSJ0NXgH12r5Uy+hsMu_ug@mail.gmail.com>
References: <4F9AA9FA.6020604@gmail.com>
In-Reply-To: <4F9AA9FA.6020604@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rebuilds -- when to do what??
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
X-List-Received-Date: Fri, 27 Apr 2012 15:39:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <EDA93C3318E5714EB7CEABDADBA1344D@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 27, 2012 at 9:15 AM, jfabernathy <jfabernathy@gmail.com> wrote:
> Over the past 6 months, I've learned a lot about what I should do to work
> with Yocto successfully, However, the area of biggest confusion for me is
> what to do when I want to rebuild something.
>
> I generally work from Master repository and when I see significant change=
s
> while doing git pull, I try to rebuild one of my projects. =A0I've tried =
a lot
> of the methods:
>
> 1. =A0just bitbake again.
> 2. =A0bitbake -c cleanall or -c cleansstate core-image-sato
> 3. =A0If I know a recipe has changed, I'll bitbake -c cleansstate "recipe
> name"
>
> Most of the time something fails. =A0Researching what, is an impossibilit=
y to
> me and much quicker to just delete the build directory and redo it.
>
> Is there a good "how to" rebuild? =A0Or is it the best use of time to jus=
t
> tell users to blow away the build dir. and restart, saving the old
> local.conf and bblayer.conf?

Jim,

How does it fail? Which recipe in particular are you working with?

-M=


