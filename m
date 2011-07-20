Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE001.bigfish.com (va3ehsobe001.messaging.microsoft.com
	[216.32.180.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F6D74C800A3
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 20:20:13 -0500 (CDT)
Received: from mail113-va3-R.bigfish.com (10.7.14.251) by
	VA3EHSOBE001.bigfish.com (10.7.40.21) with Microsoft SMTP Server id
	14.1.225.22; Wed, 20 Jul 2011 01:20:12 +0000
Received: from mail113-va3 (localhost.localdomain [127.0.0.1])	by
	mail113-va3-R.bigfish.com (Postfix) with ESMTP id 486F21608206;
	Wed, 20 Jul 2011 01:20:12 +0000 (UTC)
X-SpamScore: -14
X-BigFish: VS-14(zz9371M1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail113-va3 (localhost.localdomain [127.0.0.1]) by mail113-va3
	(MessageSwitch) id 1311124811751855_15071;
	Wed, 20 Jul 2011 01:20:11 +0000 (UTC)
Received: from VA3EHSMHS026.bigfish.com (unknown [10.7.14.246])	by
	mail113-va3.bigfish.com (Postfix) with ESMTP id 9A0C7118004B;
	Wed, 20 Jul 2011 01:20:11 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS026.bigfish.com
	(10.7.99.36) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 20 Jul 2011 01:20:11 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.56]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0289.008; Tue, 19 Jul 2011 20:20:10 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [yocto] [PATCH] Add endianess macros used by previous
	endian-ness_handling.patch
Thread-Index: AQHMRmzQ+MK4MiUTgU6d3Pf0UqsIqg==
Date: Wed, 20 Jul 2011 01:20:09 +0000
Message-ID: <CAEsOVNcqRoHSoRe74P1Y8WKkgXaC=YMyXM-L+qeLjMvu-xOWcQ@mail.gmail.com>
References: <1311118644-22937-1-git-send-email-msm@freescale.com>
	<4E261A15.8030604@linux.intel.com>
In-Reply-To: <4E261A15.8030604@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Add endianess macros used by previous endian-ness_handling.patch
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
X-List-Received-Date: Wed, 20 Jul 2011 01:20:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <F4B0A545E7E5A54DA63451F85DFE5893@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 19, 2011 at 6:58 PM, Saul Wold <sgw@linux.intel.com> wrote:
> Matthew:
>
> Thanks for this patch.
>
> What will happen on distros that do include these macros? =A0Will we get
> redefines? =A0I don't see any conditional testing to determine if they ex=
ist
> already.

I suspect redefines. I did compile this on a machine that did have the
defines in endian.h though and I got no messages from bitbake. I guess
I should check the compile log. Will do these things shortly.

-M=


