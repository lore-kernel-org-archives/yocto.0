Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE010.bigfish.com (va3ehsobe001.messaging.microsoft.com
	[216.32.180.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A08B5E0030B
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 15:23:29 -0800 (PST)
Received: from mail112-va3-R.bigfish.com (10.7.14.247) by
	VA3EHSOBE010.bigfish.com (10.7.40.12) with Microsoft SMTP Server id
	14.1.225.22; Wed, 15 Feb 2012 23:23:29 +0000
Received: from mail112-va3 (localhost [127.0.0.1])	by
	mail112-va3-R.bigfish.com (Postfix) with ESMTP id D0EEF3A0095;
	Wed, 15 Feb 2012 23:23:28 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371I1432N1418M98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail112-va3 (localhost.localdomain [127.0.0.1]) by mail112-va3
	(MessageSwitch) id 1329348206661865_17228;
	Wed, 15 Feb 2012 23:23:26 +0000 (UTC)
Received: from VA3EHSMHS036.bigfish.com (unknown [10.7.14.235])	by
	mail112-va3.bigfish.com (Postfix) with ESMTP id 9D3FD4C0047;
	Wed, 15 Feb 2012 23:23:26 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS036.bigfish.com
	(10.7.99.46) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 15 Feb 2012 23:23:26 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.244]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Wed, 15 Feb 2012 17:23:25 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Hollis Blanchard <hollis_blanchard@mentor.com>
Thread-Topic: [yocto] missing USB gadget support on beagleboard?
Thread-Index: AQHM66psYnRZX81Ukkqfkx+DDII/7ZY+/hgAgAAAr4A=
Date: Wed, 15 Feb 2012 23:23:25 +0000
Message-ID: <CAEsOVNcw19R-GbVcpS=vXRnzgaC+PEcsx0NhcdeU6QDggzaTxg@mail.gmail.com>
References: <4F3AF87F.8010806@mentor.com>
	<CAEsOVNcatm3EzHaLLWyGA2Bf=i65j9WTLLDrF0jq2Dg5xZ6E-A@mail.gmail.com>
	<4F3C3DC4.8060400@mentor.com>
In-Reply-To: <4F3C3DC4.8060400@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 15 Feb 2012 23:23:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <AC1B0A755B65174D954C397CD8CC9AD5@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 15, 2012 at 11:20 PM, Hollis Blanchard
<hollis_blanchard@mentor.com> wrote:
> Right, it looks like CONFIG_USB_ETH is disabled in
> linux-beagleboard-standard-build/.config , and I think that's the key
> missing option. I'm so lost in Yocto's kernel configuration "architecture=
"
> that I have no idea if that's being explicitly disabled, or just omitted
> from the base config, or what.
>
> It seems to me that option should be enabled if DISTRO_FEATURES contains
> usbgadget. More simply, it seems like a good idea to enable CONFIG_USB_ET=
H
> in the beagleboard default configuration, since many beagleboards don't h=
ave
> any other network interface.
>
> Is there an owner of Yocto's beagleboard BSP stuff?

As a stop gap, you can run menuconfig:

bitbake -c menuconfig virtual/kernel
bitbake -c compile virtual/kernel -f

And add the kernel modules you need. The final ideal solution would be
to include a kernel config fragment for this kernel config option by
default for this and possibly other machines.

-M=


