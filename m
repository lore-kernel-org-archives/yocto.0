Return-Path: <b.hutchman@gmail.com>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 921B6E014E2
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 07:13:12 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id t10so4529165eei.41
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 07:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=vtqw8bCFuLkXcc51Qd9l2mWe5TGRGV9wcRqbaOY2iKI=;
	b=uj0HaLX8libWtbwSbtq2V5zZDx29BYRm/fxmzYWuX2Mm8RNVsAeXCz12NFna7RinEk
	FdxzoXPbA7Ch7Co2IHQ/HOATyeEQFDMezJyQFIUQg1U+pcbGOrQqE1pzAcxk6dyj8qBz
	1pkl45KgPb3qjkPUvmTe6qx2OA+Tb4yMRXS1lPLCH51PMgurlTqizliMtbDfDbocsZ6T
	sUAf131fE1gC45F+5FH5lefrWVyiBdSt0kocsN4JvsCMGO1ezccZDFbPJJg7nbFTIM4H
	fh1YmcI0AOZ1rI/k6pJaUkvPmOagt+zNL6C3pMmyf0WdDbtsu6lnBXPJ5rULrJdYaYdm
	Fpiw==
MIME-Version: 1.0
X-Received: by 10.14.176.199 with SMTP id b47mr33121156eem.117.1374588791008; 
	Tue, 23 Jul 2013 07:13:11 -0700 (PDT)
Received: by 10.223.195.69 with HTTP; Tue, 23 Jul 2013 07:13:10 -0700 (PDT)
Date: Tue, 23 Jul 2013 10:13:10 -0400
Message-ID: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: yocto@yoctoproject.org
Subject: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 14:13:13 -0000
Content-Type: multipart/alternative; boundary=047d7b603ce099d6aa04e22e648e

--047d7b603ce099d6aa04e22e648e
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm using master branch of Yocto and meta-ti (and meta-openembedded).

I built meta-toolchain for beaglebone machine type and then I went into my
local.conf and changed sdkmachine to i686 as I need both 64bit & 32bit
toolchains.  After modifying my local.conf I ran bitbake meta-toolchain
again and received these warnings:

hutch@neo:~/yocto_master_beaglebone/poky/build$ bitbake meta-toolchain
WARNING: Host distribution "Debian-7.1" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
${base_libdir}/*.la) replaces original key FILES_ti-ipc-dev (${libdir}/*).




WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
${base_libdir}/*.la) replaces original key FILES_ti-syslink-dev
(${libdir}/*).



Parsing recipes: 100%
|########################################################################################################################################################################################################################|
Time: 00:00:28
Parsing of 1408 .bb files complete (0 cached, 1408 parsed). 1794 targets,
78 skipped, 7 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Debian-7.1"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130723"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "master:3dee534f1e25109e0bdb681de0746c336f4b8840"
meta-ti           = "master:41a214e8f675ecd5fa3a1408239f32ab77c033a2"
meta-oe
meta-networking
meta-webserver    = "master:3ef8bfd7a9552637b2eeaadc01d5fb3ae5896025"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to install
files into a shared area when those files already exist. Those files and
their manifest location are:

 /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linux/nativesdk-packagegroup-sdk-host
   Matched in manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata

 /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linux/runtime/nativesdk-packagegroup-sdk-host.packaged
   Matched in manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata

 /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linux/runtime/nativesdk-packagegroup-sdk-host
   Matched in manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata

 /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linux/runtime-reverse/nativesdk-packagegroup-sdk-host
   Matched in manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
Please verify which package should provide the above files.


Should I be worried or do I need to do something about the
nativesdk-packagegroup-sdk-host warnings?

I've never seen them before and I couldn't find anyone else talking about
them so I thought I'd ask.

Regards,

Brian

--047d7b603ce099d6aa04e22e648e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I&#39;m using master branch of Yocto and meta-ti (an=
d meta-openembedded).</div><div><br></div><div>I built meta-toolchain for b=
eaglebone machine type and then I went into my local.conf and changed sdkma=
chine to i686 as I need both 64bit &amp; 32bit toolchains. =A0After modifyi=
ng my local.conf I ran bitbake meta-toolchain again and received these warn=
ings:</div>
<div><br></div><div><div>hutch@neo:~/yocto_master_beaglebone/poky/build$ bi=
tbake meta-toolchain</div><div>WARNING: Host distribution &quot;Debian-7.1&=
quot; has not been validated with this version of the build system; you may=
 possibly experience unexpected failures. It is recommended that you use a =
tested distribution.</div>
<div>WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV=
} ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig ${d=
atadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.l=
a) replaces original key FILES_ti-ipc-dev (${libdir}/*). =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0</div>
<div>WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV=
} ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig ${d=
atadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.l=
a) replaces original key FILES_ti-syslink-dev (${libdir}/*). =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0</div>
<div>Parsing recipes: 100% |###############################################=
###########################################################################=
###########################################################################=
###################| Time: 00:00:28</div>
<div>Parsing of 1408 .bb files complete (0 cached, 1408 parsed). 1794 targe=
ts, 78 skipped, 7 masked, 0 errors.</div><div><br></div><div>Build Configur=
ation:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.19.1&quot;</div><div=
>BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div>
<div>NATIVELSBSTRING =A0 =3D &quot;Debian-7.1&quot;</div><div>TARGET_SYS =
=A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE =A0=
 =A0 =A0 =A0 =A0 =3D &quot;beagleboard&quot;</div><div>DISTRO =A0 =A0 =A0 =
=A0 =A0 =A0=3D &quot;poky&quot;</div><div>
DISTRO_VERSION =A0 =A0=3D &quot;1.4+snapshot-20130723&quot;</div><div>TUNE_=
FEATURES =A0 =A0 =3D &quot;armv7a vfp neon&quot;</div><div>TARGET_FPU =A0 =
=A0 =A0 =A0=3D &quot;vfp-neon&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0 =A0 =
=A0</div><div>meta-yocto =A0 =A0 =A0 =A0</div>
<div>meta-yocto-bsp =A0 =A0=3D &quot;master:3dee534f1e25109e0bdb681de0746c3=
36f4b8840&quot;</div><div>meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;master:41a2=
14e8f675ecd5fa3a1408239f32ab77c033a2&quot;</div><div>meta-oe =A0 =A0 =A0 =
=A0 =A0=A0</div><div>meta-networking =A0=A0</div>
<div>meta-webserver =A0 =A0=3D &quot;master:3ef8bfd7a9552637b2eeaadc01d5fb3=
ae5896025&quot;</div><div><br></div><div>NOTE: Resolving any missing task q=
ueue dependencies</div><div>NOTE: Preparing runqueue</div><div>NOTE: Execut=
ing SetScene Tasks</div>
<div>NOTE: Executing RunQueue Tasks</div><div>WARNING: The recipe nativesdk=
-packagegroup-sdk-host is trying to install files into a shared area when t=
hose files already exist. Those files and their manifest location are:</div=
>
<div>=A0 =A0/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-=
pokysdk-linux/nativesdk-packagegroup-sdk-host</div><div>=A0 =A0Matched in m=
anifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata</div><div>=A0 =
=A0/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-l=
inux/runtime/nativesdk-packagegroup-sdk-host.packaged</div>
<div>=A0 =A0Matched in manifest-x86_64-nativesdk-packagegroup-sdk-host.pack=
agedata</div><div>=A0 =A0/home/hutch/yocto_master_beaglebone/poky/build/tmp=
/pkgdata/all-pokysdk-linux/runtime/nativesdk-packagegroup-sdk-host</div><di=
v>=A0 =A0Matched in manifest-x86_64-nativesdk-packagegroup-sdk-host.package=
data</div>
<div>=A0 =A0/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-=
pokysdk-linux/runtime-reverse/nativesdk-packagegroup-sdk-host</div><div>=A0=
 =A0Matched in manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata<=
/div>
<div>Please verify which package should provide the above files.</div></div=
><div><br></div><div><br></div><div>Should I be worried or do I need to do =
something about the nativesdk-packagegroup-sdk-host warnings?</div><div>
<br></div><div>I&#39;ve never seen them before and I couldn&#39;t find anyo=
ne else talking about them so I thought I&#39;d ask.</div><div><br></div><d=
iv>Regards,</div><div><br></div><div>Brian</div><div><br></div><div><br>
</div>

--047d7b603ce099d6aa04e22e648e--
