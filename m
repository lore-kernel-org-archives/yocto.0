Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8868E01525
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 08:14:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Jul 2013 08:14:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,728,1367996400"; d="scan'208";a="350219906"
Received: from unknown (HELO helios.localnet) ([10.252.122.115])
	by orsmga001.jf.intel.com with ESMTP; 23 Jul 2013 08:13:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>, Denys Dmytriyenko <denys@ti.com>
Date: Tue, 23 Jul 2013 16:13:18 +0100
Message-ID: <1503447.VStvRngV5W@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 15:14:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 July 2013 10:13:10 Brian Hutchinson wrote:
> I'm using master branch of Yocto and meta-ti (and meta-openembedded).
> 
> I built meta-toolchain for beaglebone machine type and then I went into my
> local.conf and changed sdkmachine to i686 as I need both 64bit & 32bit
> toolchains.  After modifying my local.conf I ran bitbake meta-toolchain
> again and received these warnings:
> 
> hutch@neo:~/yocto_master_beaglebone/poky/build$ bitbake meta-toolchain
> WARNING: Host distribution "Debian-7.1" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> ${base_libdir}/*.la) replaces original key FILES_ti-ipc-dev (${libdir}/*).
> 
> 
> 
> 
> WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> ${base_libdir}/*.la) replaces original key FILES_ti-syslink-dev
> (${libdir}/*).
> 
> 
> 
> Parsing recipes: 100%
> 
> |###########################################################################
> |###########################################################################
> |##################################################################|
> Time: 00:00:28
> Parsing of 1408 .bb files complete (0 cached, 1408 parsed). 1794 targets,
> 78 skipped, 7 masked, 0 errors.
> 
> Build Configuration:
> BB_VERSION        = "1.19.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Debian-7.1"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4+snapshot-20130723"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "master:3dee534f1e25109e0bdb681de0746c336f4b8840"
> meta-ti           = "master:41a214e8f675ecd5fa3a1408239f32ab77c033a2"
> meta-oe
> meta-networking
> meta-webserver    = "master:3ef8bfd7a9552637b2eeaadc01d5fb3ae5896025"
> 
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to install
> files into a shared area when those files already exist. Those files and
> their manifest location are:
> 
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> x/nativesdk-packagegroup-sdk-host Matched in
> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> 
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> x/runtime/nativesdk-packagegroup-sdk-host.packaged Matched in
> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> 
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> x/runtime/nativesdk-packagegroup-sdk-host Matched in
> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> 
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> x/runtime-reverse/nativesdk-packagegroup-sdk-host Matched in
> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata Please verify
> which package should provide the above files.
> 
> 
> Should I be worried or do I need to do something about the
> nativesdk-packagegroup-sdk-host warnings?
> 
> I've never seen them before and I couldn't find anyone else talking about
> them so I thought I'd ask.

Depends. Without looking at the recipe and output closely it's hard to tell 
whether this is indicative or a problem or not, but it should be resolved by 
the meta-ti maintainers. Denys, you might want to take a closer look at this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

