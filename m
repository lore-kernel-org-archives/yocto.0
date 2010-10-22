Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C56894C810C1
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 20:40:04 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Oct 2010 18:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,220,1286175600"; d="scan'208";a="339063032"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 21 Oct 2010 18:40:03 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1P96Xz-0005eK-Qt; Fri, 22 Oct 2010 09:35:55 +0800
Date: Fri, 22 Oct 2010 09:35:55 +0800
From: Qing He <qing.he@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Message-ID: <20101022013555.GD18344@qhe2-db>
References: <20101021083308.GB18344@qhe2-db> <1287660099.16386.450.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1287660099.16386.450.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: zypper and poky architectures
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 01:40:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, 2010-10-21 at 19:21 +0800, Richard Purdie wrote:
> On Thu, 2010-10-21 at 16:33 +0800, Qing He wrote:
> > I recently reported several zypper bugs specifically for arm, after
> > some deeper investigation, the problem seems to be of higher level than
> > I originally thought.
> > 
> > The root cause is that zypper and poky use different way to represent
> > architectures, as we are putting them together, these two ways are
> > not compatible, causing many minor glitches that need to modify at
> > least one of them.
> > 
> > Poky has three kinds of representations in a single target image, which
> > are independent, cpu-dependent and machine-dependent (all, armv5te,
> > qemuarm, respectively), e.g.
> > 
> > 	update-rc.d-0.7-r3.all.rpm
> > 	curl-7.21.0-r0.armv5te.rpm
> > 	task-base-1.0-r69.qemuarm.rpm
> > 
> > (note that armv5te is the same with gcc's -march option, meaning little
> > endian)
> 
> This is a good analysis and summary. It actually gets more complicated
> as for some machines we have a long list of compatible package types
> that can be installed, e.g. for qemuarm, if you list PACKAGE_ARCHES
> you'll see armv4t armv5 armv5t armv5te which are all accepted by the
> opkg backend.

Zypper also does something similar:

    defCompatibleWith(_armv5tejl,   _noarch,_armv3l,_armv4l,_armv4tl,_armv5l,_armv5tel);

> 
> > Currently, at least zypper is broken on all of mips, arm, ppc, with
> > slightly different problems.
> > 
> > The ideal situation is to use consistent arch specification, the
> > following can be a solution:
> >   1. rename *.all.rpm to *.noarch.rpm
> 
> This would only solve part of the problem though?

Yes, only a small part. And the way I prefer is to add an alias in zypper
instead of changing poky.

> 
> >   2. removing the concept of machine-dependent packages, change all
> >      *.qemuarm.rpm to *.armv5te.rpm
> 
> This could mean making a copy of each rpm per machine so I'm not keen on
> this.

Agreed.

> 
> >   3. enhance zypper arch module, make the addition more flexible,
> >      allowing arch alias (e.g. armv5te = armv5tel = armel = arm)
> > 
> > That would be some work to do, maybe 1.0 is a good time to get zypper
> > and package upgrade truely working.
> > 
> > Any ideas and comments?
> 
> I think we're going to have to teach zypper to read a list of compatible
> "architectures" from a configuration file. There is a config file opkg
> writes to the filesystem continaing this list and we'll have to do
> similar for RPM.

The problem is that current zypper uses hardcoded "archs" and
compatibility list, i.e. at build time with C++ code. Changing it to
read the list at run time is probably substantial.

Another possibility is to generate the list at build time and do it by
scripts and conditional compiling, this does have the problem of
creating logically different versions for different archs.

> 
> It does raise the question of how given two possible rpm's it would
> chose between the two (for opkg, the list is in order).
> 
> Is the problem just in zypper and is rpm free from any issues in this
> area?

I don't know much about rpm internals, there is a bug regarding the rpm,
http://bugzilla.pokylinux.org/show_bug.cgi?id=498

But it looks fair limited in impact.

Thanks,
Qing

