Return-Path: <J.Schaumloeffel@astro-kom.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 724D8E0098D; Thu, 30 Apr 2015 00:14:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.173.193.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailrelay-out1.netcologne.de (mailrelay-out1.netcologne.de
	[81.173.193.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03411E007CC
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 00:14:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailrelay-out1.netcologne.de (Postfix) with ESMTP id BFA8910B443
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 09:14:53 +0200 (CEST)
Received: from [213.196.222.82] (helo=mailrelay-out1.netcologne.de)
	by localhost with ESMTP (eXpurgate 4.0.7)
	(envelope-from <J.Schaumloeffel@astro-kom.de>)
	id 5541d66d-0af1-7f0000012729-7f0000019138-1
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 09:14:53 +0200
Received: from ASTRO-EX1.Bensberg.de (unknown [213.196.222.82])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by mailrelay-out1.netcologne.de (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 09:14:52 +0200 (CEST)
Received: from ASTRO-EX1.Bensberg.de (192.168.100.26) by ASTRO-EX1.Bensberg.de
	(192.168.100.26) with Microsoft SMTP Server (TLS) id 15.0.775.38;
	Thu, 30 Apr 2015 09:14:29 +0200
Received: from ASTRO-EX1.Bensberg.de ([::1]) by ASTRO-EX1.Bensberg.de ([::1])
	with mapi id 15.00.0775.031; Thu, 30 Apr 2015 09:14:29 +0200
From: =?iso-8859-1?Q?Schauml=F6ffel=2C_Jan?= <J.Schaumloeffel@astro-kom.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Migration from 1.7.1 to 1.8 - kernel-abiversion missing
Thread-Index: AdCBfI+fMEqCzoTLSdaz+mOzgmAd4QALUFmAAAerdlAAAv96AAAeAT+wAAiV7QAAKKuIgA==
Date: Thu, 30 Apr 2015 07:14:29 +0000
Message-ID: <a01714e680f8470cb21bb0b52e66c91e@ASTRO-EX1.Bensberg.de>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>
	<553F90A3.9070501@windriver.com>
	<82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>
	<553FD83A.6040407@windriver.com>
	<4f2d75bf33ac423ab064f754e0b67655@ASTRO-EX1.Bensberg.de>
	<5540DB34.6010102@windriver.com>
In-Reply-To: <5540DB34.6010102@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.114]
MIME-Version: 1.0
X-purgate-ID: 153929::1430378093-00000AF1-39EECC8F/0/0
X-purgate: clean
Subject: Re: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 30 Apr 2015 07:14:59 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> That is really odd. I'll be interested to hear how that happened. I just =
did a
> test and it points to where I expect:
>=20
>   [/home/bruc...poky/build]> bitbake -e core-image-minimal | grep
> STAGING_KERNEL_BUILDDIR # $STAGING_KERNEL_BUILDDIR
> STAGING_KERNEL_BUILDDIR=3D"/home/bruce/poky/build/tmp/work-
> shared/qemux86-64/kernel-build-artifacts"
>

So I experimented a bit more and found a minimal set of steps to reproduce =
the problem. Maybe that might give someone a clue as to what is happening a=
nd/or how to resolve it.

Steps to reproduce:

- clone Poky repository, checkout branch 'fido'
- go to meta-yocto-bsp/conf/machine and copy beaglebone.conf to another fil=
e (I used astro.conf)
- from poky repository do source oe-init-build-env into new build directory
- edit conf/local.conf to set MACHINE ?=3D "astro" (use filename from secon=
d step) and DL_DIR (if present)
- run bitbake core-image-minimal

-> kernel-abiversion is missing, build fails

- edit conf/local.conf, set MACHINE ?=3D "beaglebone"
- run bitbake core-image-minimal

-> image builds fine

It stays the same if the copied config is in a custom BSP layer, some minor=
 modifications are made, etc., but to eliminate complexity I just put that =
into the meta-yocto-bsp layer. What strikes me as really odd is that now th=
e only thing changed between working and non-working configuration seems to=
 be the filename of the machine configuration - what am I missing?

How do I create a working machine configuration for Poky 1.8? (In 1.7.1 I j=
ust took some machine configuration from eldk, fiddled around with it a bit=
, put it into my BSP layer and never had any trouble with that.)

Regards,
Jan

