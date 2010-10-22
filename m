Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C16494C801BF
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 20:51:34 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Oct 2010 18:51:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,220,1286175600"; d="scan'208";a="669705113"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 21 Oct 2010 18:51:22 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1P96ix-0005ey-03; Fri, 22 Oct 2010 09:47:15 +0800
Date: Fri, 22 Oct 2010 09:47:14 +0800
From: Qing He <qing.he@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20101022014714.GE18344@qhe2-db>
References: <20101021083308.GB18344@qhe2-db> <4CC059D9.8050208@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4CC059D9.8050208@windriver.com>
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
X-List-Received-Date: Fri, 22 Oct 2010 01:51:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, 2010-10-21 at 23:18 +0800, Mark Hatle wrote:
> On 10/21/10 3:33 AM, Qing He wrote:
> >    1. what uses for independent packages is called "noarch", "all" is not
> >       recognized, something depends on update-rc.d won't be installed
> >       because of missing dependency
> 
> We can certainly look into translating "all" to "noarch" post 0.9.  That might 
> make it easier for people coming from the RPM world, to understand what is in 
> the package.
>
> >    1. rename *.all.rpm to *.noarch.rpm
> 
> We can certainly do this easily.

If noarch is universally used in RPM word, I think we should use it.

> 
> >    2. the arch automatic detection system uses "uname -m", thus producing
> >       armv5tejl, which can only be resolved as armv5tel, conflicting with
> >       "armv5te" in rpm
> 
> This is a bug in Zypper.  The machine names should come from somewhere other 
> then uname -m.  (The value of uname -m is very much ia32 specific for the most 
> part.. other architectures have way too many possible namings for it to be 
> useful.)   There is a line in "/etc/rpm/platform" that contains the name of Poky 
> architecture.  This file should be referenced (instead of -m) for all cases.
>
> >    3. enhance zypper arch module, make the addition more flexible,
> >       allowing arch alias (e.g. armv5te = armv5tel = armel = arm)
> 
> Zypper should read the rpm platform file.

Sounds reasonable. After all, zypper is only intended to be a frontend
utility to the lower end package tool. Then we won't need to worry about
alias and different naming, and this detaches zypper from hardware.

> 
> >    3. many archs are missing in zypper, like mips, armeb, etc.
> >    4. there is no concept of machine-dependent packages (task-base) in
> >       zypper, although we can work around.
> 
> Generally speaking, this is true of most RPM installations.  However, within RPM 
> itself.. there really isn't any concept of "arch" anymore.. They're really only 
> used for grouping and ordering.  So Zypper may need to be updated to query the 
> arch of a package and use it for it's various operations.
> 
> >    2. removing the concept of machine-dependent packages, change all
> >       *.qemuarm.rpm to *.armv5te.rpm
> 
> I'm a bit worried about doing this, as we'll end up with (potentially) 
> incompatible packages with exactly the same name and versions...  Perhaps we 
> need to think about embedding the machine type into the name of the packages 
> instead?

Thanks for the info. If we are going for dynamic platform specs, it
doesn't really matter whether we have things like qemuarm or not, does it?

> 
> 
> > That would be some work to do, maybe 1.0 is a good time to get zypper
> > and package upgrade truely working.
> 
> Yes, we also need to get multi-arch as well.. (i.e. 32-bit and 64-bit at the 
> same time) working.  I'm guessing there will be some Zypper interactions there 
> as well.
> 

I don't really have ideas how this is done. I think on debian this is
actually avoided and i386 packages are repackaged as lib32xxx for x86_64
platform.

Thanks,
Qing

