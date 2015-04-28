Return-Path: <J.Schaumloeffel@astro-kom.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C304E00949; Tue, 28 Apr 2015 08:37:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99D6AE003A8
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 08:37:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailrelay-out1.netcologne.de (Postfix) with ESMTP id A401B10B4C2
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 17:36:57 +0200 (CEST)
Received: from [213.196.222.82] (helo=mailrelay-out1.netcologne.de)
	by localhost with ESMTP (eXpurgate 4.0.6)
	(envelope-from <J.Schaumloeffel@astro-kom.de>)
	id 553fa919-19b8-7f0000012729-7f000001bca3-1
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 17:36:57 +0200
Received: from ASTRO-EX1.Bensberg.de (unknown [213.196.222.82])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by mailrelay-out1.netcologne.de (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 17:36:57 +0200 (CEST)
Received: from ASTRO-EX1.Bensberg.de (192.168.100.26) by ASTRO-EX1.Bensberg.de
	(192.168.100.26) with Microsoft SMTP Server (TLS) id 15.0.775.38;
	Tue, 28 Apr 2015 17:36:32 +0200
Received: from ASTRO-EX1.Bensberg.de ([::1]) by ASTRO-EX1.Bensberg.de ([::1])
	with mapi id 15.00.0775.031; Tue, 28 Apr 2015 17:36:15 +0200
From: =?iso-8859-1?Q?Schauml=F6ffel=2C_Jan?= <J.Schaumloeffel@astro-kom.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Migration from 1.7.1 to 1.8 - kernel-abiversion missing
Thread-Index: AdCBfI+fMEqCzoTLSdaz+mOzgmAd4QALUFmAAAerdlA=
Date: Tue, 28 Apr 2015 15:36:14 +0000
Message-ID: <82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>
	<553F90A3.9070501@windriver.com>
In-Reply-To: <553F90A3.9070501@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.114]
MIME-Version: 1.0
X-purgate-ID: 153929::1430235417-000019B8-FD31CEFF/0/0
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
X-List-Received-Date: Tue, 28 Apr 2015 15:37:04 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> Hmmm. It shouldn't have gone missing. Bits of the kernel build outputs=20
> did move around in 1.8, but the abiversion is still generated and=20
> placed in the STAGING_KERNEL_BUILDDIR.

I was just wondering, is there an easy way to resolve these Paths from the =
command line? I do not have a lot of experience with bitbake, so I have no =
good guess where STAGING_KERNEL_BUILDDIR should be located.
=20
Also, I don't quite get why the kernel abiversion and kernel modules are ne=
eded at all, because I build the kernel externally with no modules at all. =
Although in the future it might be nice to integrate building the kernel in=
to the bitbake process, at the moment I would be equally happy to just leav=
e off everything that has to do with the kernel.

> After your build has failed, if you look in STAGING_KERNEL_BUILDDIR do=20
> you see the abiversion file ?

There are three instances of the file:

~/yocto-build-fido$ find . -name kernel-abiversion
./tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.36+gitAUTOINC+162=
dfe3bb0_dbe5b52e93-r0/pkgdata/kernel-depmod/kernel-abiversion
./tmp/sysroots/beaglebone/pkgdata/kernel-depmod/kernel-abiversion
./tmp/work-shared/beaglebone/kernel-build-artifacts/kernel-abiversion

Jan

