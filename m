Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 575E3E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 12:14:33 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id fr10so8302363lab.18
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 12:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=LCXe1aGBCf7ZSOzI73pnV+Q6TrjZO7B4AvEyZLZYvf0=;
	b=MeYyfeK0GRZZ81hlK2OKYXPaLFkb7bBEPYNaEK1KUKTXLLEiPMkxMs2aMRHH/c0i9U
	P6hBWZDwmZGE6xvh16nlHgt2igUnJXNFVdv6k2S+XnSmXNlObmpsWGwbQijsncwXLgCH
	ZwAYMRPncqTcesyMVvpzZvP2Qi7boPKmOLPsW8G43Sk+2bVq/4HbjMKEggooM2Veo+FJ
	iBxmWSbJFyMl1Iup/kqEJtYr2sv+rz8AbIiYhVykwicYMirXYqw8vVsqWFJ4pvpbvy9S
	O0x9ThMvRD4HdGy1PIxa7HJ9y7j15cnHNomadCfUzs1dCpuI3z8QVzzpAev0YCEicerT
	F1Cw==
MIME-Version: 1.0
X-Received: by 10.152.115.242 with SMTP id jr18mr2041698lab.7.1371064472112;
	Wed, 12 Jun 2013 12:14:32 -0700 (PDT)
Received: by 10.112.71.14 with HTTP; Wed, 12 Jun 2013 12:14:32 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
Date: Wed, 12 Jun 2013 15:14:32 -0400
Message-ID: <CADkTA4PkMUc8rzBWewZWwygE=XcXLBAQwHFEXcUPZX6mqzmADA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems fetching branch for linux-yocto-custom
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
X-List-Received-Date: Wed, 12 Jun 2013 19:14:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2013 at 3:10 PM, Bryan Evenson <bevenson@melinkcorp.com> wr=
ote:
> All,
>
> I have a custom linux recipe that I would like to fetch the head of a spe=
cific branch on a Git repository.  During the build it always fetches the m=
aster branch, not the branch I am specifying.  I've tried adding every rela=
vant flag to the SRC_URI that I can think of and it still fetches and build=
s the master branch.  Any ideas on what I am doing wrong?
>

What release are you using ?

Have you tried setting KBRANCH ?

Cheers,

Bruce

> Here is my build environment details:
>
> Build Configuration:
> BB_VERSION        =3D "1.16.0"
> TARGET_ARCH       =3D "arm"
> TARGET_OS         =3D "linux-gnueabi"
> MACHINE           =3D "at91sam9x5ek"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.3.2"
> TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
> TARGET_FPU        =3D "soft"
> meta-atmel        =3D "master:a3b649c46c6f48cea4c95d35028e950d8d5b3a13"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "danny:c3505828f267ca68aaf454355466f54772545a22"
>
> -----------------------------------------
>
> Here is my kernel recipe (Removed the boilerplate comments at top of linu=
x-yocto-custom recipe to reduce clutter):
>
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> # Override SRC_URI in a bbappend file to point at a different source
> # tree if you do not want to build from Linus' tree.
> SRC_URI =3D "git://github.com/linux4sam/linux-at91.git;branch=3Dlinux-3.9=
-at91;tag=3Ddcdf169e24c0cb6d7dc69e0a09d2395934e95075;protocol=3Dgit;nocheck=
out=3D1"
> SRC_URI +=3D "file://${MACHINE}/defconfig"
>
> LINUX_VERSION ?=3D "3.9.0"
> LINUX_VERSION_EXTENSION ?=3D "-custom"
>
> # Override SRCREV to point to a different commit in a bbappend file to
> # build a different release of the Linux kernel.
> # tag: v3.4 76e10d158efb6d4516018846f60c2ab5501900bc
> # tag: linux-3.9-at91 as of 2013-06-12, dcdf169e24c0cb6d7dc69e0a09d239593=
4e95075
> SRCREV=3D"dcdf169e24c0cb6d7dc69e0a09d2395934e95075"
> PV =3D "${LINUX_VERSION}+${SRCREV}"
>
> PR =3D "r1"
>
> # Override COMPATIBLE_MACHINE to include your machine in a bbappend
> # file. Leaving it empty here ensures an early explicit build failure.
> COMPATIBLE_MACHINE =3D "(sama5d3xek|at91sam9x5ek)"
>
> ---------------------------------------------
>
> And here is my bbappend:
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> COMPATIBLE_MACHINE_sama5d3xek =3D "at91sama5d3xek"
> COMPATIBLE_MACHINE_at91sam9x5ek =3D "at91sam9x5ek"
>
> Any insight would be appreciated.
>
> Thanks,
> Bryan
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

