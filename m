Return-Path: <J.Schaumloeffel@astro-kom.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 330B8E009A5; Wed, 29 Apr 2015 00:38:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.173.193.132 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailrelay-out2.netcologne.de (mailrelay-out2.netcologne.de
	[81.173.193.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AFA3E00932
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 00:38:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailrelay-out2.netcologne.de (Postfix) with ESMTP id 4345A10B4BF
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 09:38:51 +0200 (CEST)
Received: from [213.196.222.82] (helo=mailrelay-out2.netcologne.de)
	by localhost with ESMTP (eXpurgate 4.0.6)
	(envelope-from <J.Schaumloeffel@astro-kom.de>)
	id 55408a8b-188e-7f0000012729-7f000001e041-1
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 09:38:51 +0200
Received: from ASTRO-EX1.Bensberg.de (unknown [213.196.222.82])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by mailrelay-out2.netcologne.de (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 09:38:50 +0200 (CEST)
Received: from ASTRO-EX1.Bensberg.de (192.168.100.26) by ASTRO-EX1.Bensberg.de
	(192.168.100.26) with Microsoft SMTP Server (TLS) id 15.0.775.38;
	Wed, 29 Apr 2015 09:38:43 +0200
Received: from ASTRO-EX1.Bensberg.de ([::1]) by ASTRO-EX1.Bensberg.de ([::1])
	with mapi id 15.00.0775.031; Wed, 29 Apr 2015 09:38:43 +0200
From: =?iso-8859-1?Q?Schauml=F6ffel=2C_Jan?= <J.Schaumloeffel@astro-kom.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Migration from 1.7.1 to 1.8 - kernel-abiversion missing
Thread-Index: AdCBfI+fMEqCzoTLSdaz+mOzgmAd4QALUFmAAAerdlAAAv96AAAeAT+w
Date: Wed, 29 Apr 2015 07:38:42 +0000
Message-ID: <4f2d75bf33ac423ab064f754e0b67655@ASTRO-EX1.Bensberg.de>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>
	<553F90A3.9070501@windriver.com>
	<82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>
	<553FD83A.6040407@windriver.com>
In-Reply-To: <553FD83A.6040407@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.114]
MIME-Version: 1.0
X-purgate-ID: 153929::1430293131-0000188E-AA5D9781/0/0
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
X-List-Received-Date: Wed, 29 Apr 2015 07:38:56 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> Have you tried setting linux-dummy as the preferred provider for the kern=
el
> ? That would skip the build processing doing anything more than satisfyin=
g
> the various kernel dependencies.

Ah, that's a good hint, I'll try that.

> >
> >> After your build has failed, if you look in STAGING_KERNEL_BUILDDIR
> >> do you see the abiversion file ?
> >
> > There are three instances of the file:
> >
> > ~/yocto-build-fido$ find . -name kernel-abiversion
> > ./tmp/work/beaglebone-poky-linux-gnueabi/linux-
> yocto/3.14.36+gitAUTOIN
> > C+162dfe3bb0_dbe5b52e93-r0/pkgdata/kernel-depmod/kernel-abiversion
> > ./tmp/sysroots/beaglebone/pkgdata/kernel-depmod/kernel-abiversion
> > ./tmp/work-shared/beaglebone/kernel-build-artifacts/kernel-abiversion
>=20
> Those are where I'd expect them for 1.8, so they should be found and used
> by the various parts of the build process. Something different is happeni=
ng in
> your build .. hmm.

It looks like those were from another run, built from scratch in a new dire=
ctory I now see the following result:


NOTE: Executing RunQueue Tasks
ERROR: No kernel-abiversion file found (/home/astro/yocto-build-reproduce/t=
mp/sysroots/u159/pkgdata/kernel-depmod/kernel-abiversion), cannot run depmo=
d, aborting
ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/astro/yocto-build-reproduce/tmp/=
work/u159-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.7=
440
ERROR: Task 7 (/home/astro/git/poky/meta/recipes-core/images/core-image-min=
imal.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1776 tasks of which 93 didn't need to be rer=
un and 1 failed.
No currently running tasks (1775 of 1777)

Summary: 1 task failed:
  /home/astro/git/poky/meta/recipes-core/images/core-image-minimal.bb, do_r=
ootfs
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
astro@eldk-vm:~/yocto-build-reproduce$ find . -name kernel-abiversion
astro@eldk-vm:~/yocto-build-reproduce$ bitbake -e core-image-minimal | grep=
 STAGING_KERNEL_BUILDDIR
# $STAGING_KERNEL_BUILDDIR
STAGING_KERNEL_BUILDDIR=3D"/home/astro/yocto-build-reproduce/tmp/work-share=
d/u159/kernel-build-artifacts"
astro@eldk-vm:~/yocto-build-reproduce$ ls -la /home/astro/yocto-build-repro=
duce/tmp/work-shared/u159/kernel-build-artifacts
ls: cannot access /home/astro/yocto-build-reproduce/tmp/work-shared/u159/ke=
rnel-build-artifacts: No such file or directory
astro@eldk-vm:~/yocto-build-reproduce$

It looks like the entire STAGING_KERNEL_BUILDDIR is missing.


I'll try some more variatons of my setup to try and narrow down why that ha=
ppens.

Jan

