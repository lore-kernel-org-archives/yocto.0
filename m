Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 490BFE006B0
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 18:32:03 -0800 (PST)
Received: from mail147-ch1-R.bigfish.com (10.43.68.253) by
	CH1EHSOBE017.bigfish.com (10.43.70.67) with Microsoft SMTP Server id
	14.1.225.23; Fri, 9 Dec 2011 02:31:48 +0000
Received: from mail147-ch1 (localhost [127.0.0.1])	by
	mail147-ch1-R.bigfish.com (Postfix) with ESMTP id 22FF518044F;
	Fri,  9 Dec 2011 02:32:05 +0000 (UTC)
X-SpamScore: -10
X-BigFish: VS-10(zz9371I1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail147-ch1 (localhost.localdomain [127.0.0.1]) by mail147-ch1
	(MessageSwitch) id 1323397924955515_18439;
	Fri,  9 Dec 2011 02:32:04 +0000 (UTC)
Received: from CH1EHSMHS002.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.253])	by mail147-ch1.bigfish.com (Postfix) with ESMTP id
	DAE913A0047;	Fri,  9 Dec 2011 02:32:04 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS002.bigfish.com
	(10.43.70.2) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 9 Dec 2011 02:31:47 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Thu, 8 Dec 2011 20:32:00 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Bob Cochran <yocto@mindchasers.com>
Thread-Topic: [yocto] [PATCH] meta-fsl-ppc layer: p1010rdb.conf only has one
	core, so don't use smp_defconfig
Thread-Index: AQHMtfVrIznDsgSvgkWI7rLncwbq8pXTLgOA
Date: Fri, 9 Dec 2011 02:31:59 +0000
Message-ID: <CAEsOVNethKz+vTr90KSyCciSwK-Q=c3BFSS61bL7hepJPzPhPA@mail.gmail.com>
References: <4EE13483.7070104@mindchasers.com>
In-Reply-To: <4EE13483.7070104@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-fsl-ppc layer: p1010rdb.conf only has one core, so don't use smp_defconfig
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
X-List-Received-Date: Fri, 09 Dec 2011 02:32:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <25A0A52716EEC249AEF4ED2E9E575EC2@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 8, 2011 at 4:04 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> P1010 is a single core processor, don't use SMP for defconfig
>
> Should we get a meta-fsl-ppc mail list going?
>
> Signed-off-by: Robert Cochran<yocto@mindchasers.com>

Already asked for this to get fixed for all the parts. I've pushed a
fix for this.

-M=


