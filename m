Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0C77E01528
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:18:11 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 Jul 2013 10:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,729,1367996400"; d="scan'208";a="272157291"
Received: from unknown (HELO helios.localnet) ([10.252.122.157])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Jul 2013 10:18:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Denys Dmytriyenko <denis@denix.org>
Date: Tue, 23 Jul 2013 18:18:08 +0100
Message-ID: <2666754.PlhrvUrtdC@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20130723153440.GC21440@denix.org>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
	<1503447.VStvRngV5W@helios> <20130723153440.GC21440@denix.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Denys Dmytriyenko <denys@ti.com>
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
X-List-Received-Date: Tue, 23 Jul 2013 17:18:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 July 2013 11:34:40 Denys Dmytriyenko wrote:
> On Tue, Jul 23, 2013 at 04:13:18PM +0100, Paul Eggleton wrote:
> > On Tuesday 23 July 2013 10:13:10 Brian Hutchinson wrote:
> > > I'm using master branch of Yocto and meta-ti (and meta-openembedded).
> > > 
> > > I built meta-toolchain for beaglebone machine type and then I went into
> > > my
> > > local.conf and changed sdkmachine to i686 as I need both 64bit & 32bit
> > > toolchains.  After modifying my local.conf I ran bitbake meta-toolchain
> > > again and received these warnings:
> > > 
> > > hutch@neo:~/yocto_master_beaglebone/poky/build$ bitbake meta-toolchain
> > > WARNING: Host distribution "Debian-7.1" has not been validated with this
> > > version of the build system; you may possibly experience unexpected
> > > failures. It is recommended that you use a tested distribution.
> > > WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> > > ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> > > ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> > > ${base_libdir}/*.la) replaces original key FILES_ti-ipc-dev
> > > (${libdir}/*).
> > > 
> > > WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> > > ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> > > ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> > > ${base_libdir}/*.la) replaces original key FILES_ti-syslink-dev
> > > (${libdir}/*).
> 
> These FILES_${PN}-dev warnings indeed come from meta-ti and so far harmless
> - I haven't had bandwidth to fix them, as they seem low priority.

As long as they don't change what actually ends up in each package, they're 
not an immediate concern.

> > > Parsing recipes: 100%
> > > 
> > > NOTE: Resolving any missing task queue dependencies
> > > NOTE: Preparing runqueue
> > > NOTE: Executing SetScene Tasks
> > > NOTE: Executing RunQueue Tasks
> > > WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to install
> > > files into a shared area when those files already exist. Those files and
> > > 
> > > their manifest location are:
> > >  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-
> > >  linu
> > > 
> > > x/nativesdk-packagegroup-sdk-host Matched in
> > > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > > 
> > >  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-
> > >  linu
> > > 
> > > x/runtime/nativesdk-packagegroup-sdk-host.packaged Matched in
> > > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > > 
> > >  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-
> > >  linu
> > > 
> > > x/runtime/nativesdk-packagegroup-sdk-host Matched in
> > > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > > 
> > >  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-
> > >  linu
> > > 
> > > x/runtime-reverse/nativesdk-packagegroup-sdk-host Matched in
> > > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata Please
> > > verify
> > > which package should provide the above files.
> > > 
> > > 
> > > Should I be worried or do I need to do something about the
> > > nativesdk-packagegroup-sdk-host warnings?
> > > 
> > > I've never seen them before and I couldn't find anyone else talking
> > > about
> > > them so I thought I'd ask.
> > 
> > Depends. Without looking at the recipe and output closely it's hard to
> > tell whether this is indicative or a problem or not, but it should be
> > resolved by the meta-ti maintainers. Denys, you might want to take a
> > closer look at this.
>
> And the warnings in question about nativesdk-packagegroup-sdk-host have
> absolutely nothing to do with meta-ti - there are no SDK packagegroup
> recipes in meta-ti.

You're right, I had skimmed over the log and will answer the actual question 
in the original part of the thread. My apologies.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

