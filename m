Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE002.bigfish.com (va3ehsobe002.messaging.microsoft.com
	[216.32.180.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7DFE4C800A3
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2011 11:42:11 -0500 (CDT)
Received: from mail15-va3-R.bigfish.com (10.7.14.241) by
	VA3EHSOBE002.bigfish.com (10.7.40.22) with Microsoft SMTP Server id
	14.1.225.22; Wed, 20 Jul 2011 16:42:11 +0000
Received: from mail15-va3 (localhost.localdomain [127.0.0.1])	by
	mail15-va3-R.bigfish.com (Postfix) with ESMTP id 528521B08294;
	Wed, 20 Jul 2011 16:42:11 +0000 (UTC)
X-SpamScore: -14
X-BigFish: VS-14(zz9371M1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail15-va3 (localhost.localdomain [127.0.0.1]) by mail15-va3
	(MessageSwitch) id 1311180131173868_15238;
	Wed, 20 Jul 2011 16:42:11 +0000 (UTC)
Received: from VA3EHSMHS018.bigfish.com (unknown [10.7.14.235])	by
	mail15-va3.bigfish.com (Postfix) with ESMTP id 1E0C07804D;
	Wed, 20 Jul 2011 16:42:11 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS018.bigfish.com
	(10.7.99.28) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 20 Jul 2011 16:41:56 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.56]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0289.008; Wed, 20 Jul 2011 11:41:52 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [yocto] [PATCH] Add endianess macros used by previous
	endian-ness_handling.patch
Thread-Index: AQHMRmzQ+MK4MiUTgU6d3Pf0UqsIqpT1vrgA
Date: Wed, 20 Jul 2011 16:41:51 +0000
Message-ID: <CAEsOVNfZ-Bsom3yq1Oo_0GS7zbv0Cm1XNKmv-+P63zB4uYFkVg@mail.gmail.com>
References: <1311118644-22937-1-git-send-email-msm@freescale.com>
	<4E261A15.8030604@linux.intel.com>
	<CAEsOVNcqRoHSoRe74P1Y8WKkgXaC=YMyXM-L+qeLjMvu-xOWcQ@mail.gmail.com>
In-Reply-To: <CAEsOVNcqRoHSoRe74P1Y8WKkgXaC=YMyXM-L+qeLjMvu-xOWcQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 20 Jul 2011 16:42:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <30A85712B93CD8488E135FEF67CFECAA@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 19, 2011 at 8:19 PM, Matthew McClintock <msm@freescale.com> wro=
te:
>> What will happen on distros that do include these macros? =A0Will we get
>> redefines? =A0I don't see any conditional testing to determine if they e=
xist
>> already.
>
> I suspect redefines. I did compile this on a machine that did have the
> defines in endian.h though and I got no messages from bitbake. I guess
> I should check the compile log. Will do these things shortly.

I have reason to believe that ldconfig-native is not even being built
on my Fedora box. Does this make any sense? I've cleared sstate, run
bitbake -c clean, and even manually run bitbake -c compile
ldconfig-native. Is it somehow determining the host ldconfig is
adequate?

-M=


