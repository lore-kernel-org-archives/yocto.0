Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE001.bigfish.com (db3ehsobe003.messaging.microsoft.com
	[213.199.154.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05C41E0044A
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 22:24:20 -0800 (PST)
Received: from mail64-db3-R.bigfish.com (10.3.81.249) by
	DB3EHSOBE001.bigfish.com (10.3.84.21) with Microsoft SMTP Server id
	14.1.225.23; Wed, 15 Feb 2012 06:24:19 +0000
Received: from mail64-db3 (localhost [127.0.0.1])	by mail64-db3-R.bigfish.com
	(Postfix) with ESMTP id DC59720270;
	Wed, 15 Feb 2012 06:24:18 +0000 (UTC)
X-SpamScore: -10
X-BigFish: VS-10(zz9371I103dK1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail64-db3 (localhost.localdomain [127.0.0.1]) by mail64-db3
	(MessageSwitch) id 1329287057887638_528; Wed, 15 Feb 2012 06:24:17 +0000
	(UTC)
Received: from DB3EHSMHS007.bigfish.com (unknown [10.3.81.249])	by
	mail64-db3.bigfish.com (Postfix) with ESMTP id D67F14C0046;
	Wed, 15 Feb 2012 06:24:17 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS007.bigfish.com
	(10.3.87.107) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 15 Feb 2012 06:24:18 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.244]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Wed, 15 Feb 2012 00:24:08 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Hollis Blanchard <hollis_blanchard@mentor.com>
Thread-Topic: [yocto] missing USB gadget support on beagleboard?
Thread-Index: AQHM66psYnRZX81Ukkqfkx+DDII/7Q==
Date: Wed, 15 Feb 2012 06:24:08 +0000
Message-ID: <CAEsOVNcatm3EzHaLLWyGA2Bf=i65j9WTLLDrF0jq2Dg5xZ6E-A@mail.gmail.com>
References: <4F3AF87F.8010806@mentor.com>
In-Reply-To: <4F3AF87F.8010806@mentor.com>
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
X-List-Received-Date: Wed, 15 Feb 2012 06:24:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <30CEB8A37D96C04BA3178B44A07F3BDF@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 14, 2012 at 4:12 PM, Hollis Blanchard
<hollis_blanchard@mentor.com> wrote:
> Hi, I'm sure I'm missing something simple, but I just built Poky from git
> for beagleboard, and can't figure out USB networking. I expected to find
> g_cdc and g_ether modules in
> /lib/modules/3.0.18-yocto-standard+/kernel/drivers/usb, but that director=
y
> doesn't actually exist (I guess the drivers are built-in to this kernel).
>
> I have MACHINE ??=3D beagleboard in local.conf, and "bitbake
> core-image-minimal" did produce a working kernel, uboot, etc. I see some =
USB
> messages at boot (see below), but although cdc_ether is mentioned, ifconf=
ig
> -a lists only loopback.
>
> Any suggestions? Thanks!

You can look at the default defconfig to see which kernel modules are
selected and also make sure the kernel modules are actually included
on core-image-minimal.

-M=


