Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE002.bigfish.com (db3ehsobe002.messaging.microsoft.com
	[213.199.154.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D07B3E00744
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2011 16:40:22 -0800 (PST)
Received: from mail118-db3-R.bigfish.com (10.3.81.253) by
	DB3EHSOBE002.bigfish.com (10.3.84.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 28 Dec 2011 00:40:00 +0000
Received: from mail118-db3 (localhost [127.0.0.1])	by
	mail118-db3-R.bigfish.com (Postfix) with ESMTP id C425C4C00DB;
	Wed, 28 Dec 2011 00:39:22 +0000 (UTC)
X-SpamScore: -1
X-BigFish: VS-1(zcb8kz9371I1432N98dKzz1202hzzz2dh2a8h668h839h8e2h8e3hbe9n)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail118-db3 (localhost.localdomain [127.0.0.1]) by mail118-db3
	(MessageSwitch) id 1325032762442128_28973;
	Wed, 28 Dec 2011 00:39:22 +0000 (UTC)
Received: from DB3EHSMHS018.bigfish.com (unknown [10.3.81.251])	by
	mail118-db3.bigfish.com (Postfix) with ESMTP id 5E8753A0044;
	Wed, 28 Dec 2011 00:39:22 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS018.bigfish.com
	(10.3.87.118) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 28 Dec 2011 00:40:00 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Tue, 27 Dec 2011 18:40:18 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Wolfgang Denk <wd@denx.de>
Thread-Topic: [yocto] [PATCH] clutter-1.6: make build for armv4t
Thread-Index: AQHMxPlFX/+vmuzCLEizGXYN/ihUIg==
Date: Wed, 28 Dec 2011 00:40:17 +0000
Message-ID: <CAEsOVNc9jV5rO3YiLgL19Q-VeYQ-H-E5sy-huvfYXU3pMAVZHA@mail.gmail.com>
References: <1324545669-5023-1-git-send-email-wd@denx.de>
In-Reply-To: <1324545669-5023-1-git-send-email-wd@denx.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] clutter-1.6: make build for armv4t
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
X-List-Received-Date: Wed, 28 Dec 2011 00:40:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <42B14EED25986746B4E2655FE334F3D4@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 22, 2011 at 3:21 AM, Wolfgang Denk <wd@denx.de> wrote:
> GCC will define __ARM_ARCH_4T__ when building with "-march=3Darmv4t" so
> we can check this to turn off the use of 'clz' instructions, which
> otherwise would cause compile errors like "selected processor does
> not support ARM mode `clz r3,r0'".
>
> Signed-off-by: Wolfgang Denk <wd@denx.de>
> ---
> =A0.../recipes-graphics/clutter/clutter-1.6_1.6.14.bb | =A0 =A06 ++++--

This version was dropped recently... Is this possibly for the 1.1.1
edison release? If so, I would CC: Joshua Lock.

-M=


