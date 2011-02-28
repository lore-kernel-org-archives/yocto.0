Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A493B4C800B1
	for <yocto@yoctoproject.org>; Mon, 28 Feb 2011 10:40:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Feb 2011 08:40:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,240,1297065600"; d="scan'208";a="714188520"
Received: from unknown (HELO [10.255.12.145]) ([10.255.12.145])
	by orsmga001.jf.intel.com with ESMTP; 28 Feb 2011 08:40:46 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
In-Reply-To: <1298879499.2429.15.camel@elmorro>
References: <4D6B0F2C.9080401@intel.com>  <1298879499.2429.15.camel@elmorro>
Date: Mon, 28 Feb 2011 10:40:43 -0600
Message-ID: <1298911243.2429.31.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Status of release candidate: bernard-1.0rc1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Feb 2011 16:40:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-28 at 01:51 -0600, Tom Zanussi wrote:
> On Sun, 2011-02-27 at 18:57 -0800, Elizabeth Flanagan wrote:
> > Summary
> > =======
> > 
> > This weekend, we generated a release candidate for bernard based on the bernard branch
> > of master at commit:
> > e08dc5aaaeba61e332caab4a3df5750df6b49ac1
> > 
> > and for BSPs based on the bernard branch of meta-intel at commit:
> > 16f47f04a2baaeaf9b5a9b381fc7a3c7755d6ff6
> > 
> > Issues seen:
> > ===========
> > 
> > Build Infrastructure issues:
> > ----------------------------
> > 
> > - We had an issue with builder02 running out of disk space, so some of the build
> >   copying was done post-build. This did not effect the build and was dealt with
> >   manually after cleaning up the partition.
> > 
> > - There is an issue with how package-index is being run. I will need to sync up
> >   with Jessica to verify how this should be incorporated into the build.
> > 
> > - The sanity tests on builder02 failed because builder02 was unable to resolve
> >   "localhost". This has been corrected and the sanity tests re-run incrementally:
> >   http://autobuilder.pokylinux.org:8010/builders/nightly-internal-sanity/builds/3
> > 
> > - The tarball generation buildstep is not branch aware. This will be fixed this week.
> >   In the meantime it was run manually.
> > 
> > 
> > Sanity Test Issues:
> > ----------------------------
> > 
> > - zypper-search failed on qemux-x86_64 on poky-image-lsb and poky-image-sato
> > 
> > 
> > Build Issues:
> > ----------------------------
> > 
> > - BSPs did not complete successfully. There were some issue in the actual build mostly centering around:
> >    - Failing to do_kernel_checkout
> 
> There are a couple problems with the jasperforest BSP.  First, the
> SRCREVs need updating, which I just submitted a patch for.
> 
> Even after that, though, there seems to be a problem with the kernel
> repo the fetcher is getting.  Even after clearing it out of git2, the
> kernel repo that gets fetched into git2 and the build doesn't have the
> jasperforest branch.  A manual local clone of linux-yocto-2.6.37 does
> contain the branch, though, and pointing the build to the local clone
> finds the branch and builds(*) ok.
> 
> (*) until it gets to compiling perf - at that point it fails since the
> branch doesn't yet have the perf compile fix moved from master.
> 

The jasperforest branch just got updated, and I just submitted a SRCREV
update to use that, which takes care of the perf compile error.

I still see the problem with the the fetcher not getting the current
linux-yocto-2.6.37, so it looks like either a problem with the fetcher
or some stale cache lodged somewhere.

An interesting related thing is that I also see it with the 2.6.37
crownbay branch - a local clone works fine, but in the repo fetched into
git2 and the build the crownbay branch is missing, but in that case even
though the branch doesn't appear, its commits are actually in the repo
e.g. git log <commitid> shows the commits there.

Tom

> Tom
> 
> >    - Unpack issues around svn://svn.o-hand.com/repos
> > 
> > - Beagleboard failed doing runstrip on uboot during do_populate_sysroot
> > 
> > 
> > Build statistic:
> > ----------------------------
> > 	
> > Using RP__'s machine as a baseline, our current build stats for poky-image-sato is:
> > 
> > real	109m52.400s
> > user	393m58.840s
> > sys	59m25.380s
> > 
> > Build statistics for nightly-external are available at:
> > 
> > http://autobuilder.pokylinux.org/nightly/20110226-1/buildstats/buildstats/
> > 
> > Open Defects:
> > ----------------------------
> > 
> > As of right now we have:
> > 76 total open defects targeted for 1.0
> > 
> > Critical: 0
> > High: 14
> > Medium: 53
> > Low: 7
> > Undetermined: 2
> > 
> > 
> > Thanks for all those who helped with this weekends RC generation, especially sgw and RP__
> > 
> > ------------------
> > Elizabeth Flanagan
> > Yocto Project
> > Release Engineer
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 



