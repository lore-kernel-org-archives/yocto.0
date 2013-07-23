Return-Path: <denis@denix.org>
Received: from vms173003pub.verizon.net (vms173003pub.verizon.net
	[206.46.173.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D067E01525
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 08:35:09 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.45.150.102])
	by vms173003.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0MQE002PNB9S6E41@vms173003.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 23 Jul 2013 10:34:47 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 7684B205B3; Tue,
	23 Jul 2013 11:34:40 -0400 (EDT)
Date: Tue, 23 Jul 2013 11:34:40 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-id: <20130723153440.GC21440@denix.org>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
	<1503447.VStvRngV5W@helios>
MIME-version: 1.0
In-reply-to: <1503447.VStvRngV5W@helios>
User-Agent: Mutt/1.5.20 (2009-06-14)
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
X-List-Received-Date: Tue, 23 Jul 2013 15:35:09 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Jul 23, 2013 at 04:13:18PM +0100, Paul Eggleton wrote:
> On Tuesday 23 July 2013 10:13:10 Brian Hutchinson wrote:
> > I'm using master branch of Yocto and meta-ti (and meta-openembedded).
> > 
> > I built meta-toolchain for beaglebone machine type and then I went into my
> > local.conf and changed sdkmachine to i686 as I need both 64bit & 32bit
> > toolchains.  After modifying my local.conf I ran bitbake meta-toolchain
> > again and received these warnings:
> > 
> > hutch@neo:~/yocto_master_beaglebone/poky/build$ bitbake meta-toolchain
> > WARNING: Host distribution "Debian-7.1" has not been validated with this
> > version of the build system; you may possibly experience unexpected
> > failures. It is recommended that you use a tested distribution.
> > WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> > ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> > ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> > ${base_libdir}/*.la) replaces original key FILES_ti-ipc-dev (${libdir}/*).
> > 
> > WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> > ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> > ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> > ${base_libdir}/*.la) replaces original key FILES_ti-syslink-dev
> > (${libdir}/*).

These FILES_${PN}-dev warnings indeed come from meta-ti and so far harmless - 
I haven't had bandwidth to fix them, as they seem low priority.


> > Parsing recipes: 100%
> > 
> > NOTE: Resolving any missing task queue dependencies
> > NOTE: Preparing runqueue
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to install
> > files into a shared area when those files already exist. Those files and
> > their manifest location are:
> > 
> >  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> > x/nativesdk-packagegroup-sdk-host Matched in
> > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > 
> >  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> > x/runtime/nativesdk-packagegroup-sdk-host.packaged Matched in
> > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > 
> >  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> > x/runtime/nativesdk-packagegroup-sdk-host Matched in
> > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > 
> >  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> > x/runtime-reverse/nativesdk-packagegroup-sdk-host Matched in
> > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata Please verify
> > which package should provide the above files.
> > 
> > 
> > Should I be worried or do I need to do something about the
> > nativesdk-packagegroup-sdk-host warnings?
> > 
> > I've never seen them before and I couldn't find anyone else talking about
> > them so I thought I'd ask.
> 
> Depends. Without looking at the recipe and output closely it's hard to tell 
> whether this is indicative or a problem or not, but it should be resolved by 
> the meta-ti maintainers. Denys, you might want to take a closer look at this.

And the warnings in question about nativesdk-packagegroup-sdk-host have 
absolutely nothing to do with meta-ti - there are no SDK packagegroup recipes 
in meta-ti.

-- 
Denys

