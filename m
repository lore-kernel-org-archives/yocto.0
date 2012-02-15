Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC16AE0044A
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 22:33:41 -0800 (PST)
Received: from mail84-ch1-R.bigfish.com (10.43.68.241) by
	CH1EHSOBE001.bigfish.com (10.43.70.51) with Microsoft SMTP Server id
	14.1.225.23; Wed, 15 Feb 2012 06:33:41 +0000
Received: from mail84-ch1 (localhost [127.0.0.1])	by mail84-ch1-R.bigfish.com
	(Postfix) with ESMTP id C9D9146025F;
	Wed, 15 Feb 2012 06:33:40 +0000 (UTC)
X-SpamScore: -1
X-BigFish: VS-1(zz9371I98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail84-ch1 (localhost.localdomain [127.0.0.1]) by mail84-ch1
	(MessageSwitch) id 1329287619336056_19469;
	Wed, 15 Feb 2012 06:33:39 +0000 (UTC)
Received: from CH1EHSMHS009.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.242])	by mail84-ch1.bigfish.com (Postfix) with ESMTP id
	4EBAC30004C;	Wed, 15 Feb 2012 06:33:39 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS009.bigfish.com
	(10.43.70.9) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 15 Feb 2012 06:33:39 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.244]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Wed, 15 Feb 2012 00:33:38 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Hollis Blanchard <hollis_blanchard@mentor.com>
Thread-Topic: [yocto] missing USB gadget support on beagleboard?
Thread-Index: AQHM66psYnRZX81Ukkqfkx+DDII/7ZY95KYA
Date: Wed, 15 Feb 2012 06:33:37 +0000
Message-ID: <CAEsOVNfvz6DQXm7fjHpKJFd0sbb7zgYZHp2ExHF8vt0Po0MODw@mail.gmail.com>
References: <4F3AF87F.8010806@mentor.com>
	<CAEsOVNcatm3EzHaLLWyGA2Bf=i65j9WTLLDrF0jq2Dg5xZ6E-A@mail.gmail.com>
In-Reply-To: <CAEsOVNcatm3EzHaLLWyGA2Bf=i65j9WTLLDrF0jq2Dg5xZ6E-A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: missing USB gadget support on beagleboard?
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
X-List-Received-Date: Wed, 15 Feb 2012 06:33:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <17D0EEDA3C98C24386834665C0786A5D@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 14, 2012 at 10:23 PM, Matthew McClintock <msm@freescale.com> wr=
ote:
> You can look at the default defconfig to see which kernel modules are
> selected and also make sure the kernel modules are actually included
> on core-image-minimal.

By making sure kernel modules are included... I mean the kernel
recipes creates a kernel-modules package. You can see if it's
generated, what it contains, and then determine if that is actually
whats included on the root file system.

-M=


