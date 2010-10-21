Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04B3E4C801BF
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 06:21:58 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LBLttb001883;
	Thu, 21 Oct 2010 12:21:55 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01543-06; Thu, 21 Oct 2010 12:21:51 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LBLnvm001877
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Oct 2010 12:21:49 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Qing He <qing.he@intel.com>
In-Reply-To: <20101021083308.GB18344@qhe2-db>
References: <20101021083308.GB18344@qhe2-db>
Date: Thu, 21 Oct 2010 12:21:39 +0100
Message-ID: <1287660099.16386.450.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 21 Oct 2010 11:21:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-21 at 16:33 +0800, Qing He wrote:
> I recently reported several zypper bugs specifically for arm, after
> some deeper investigation, the problem seems to be of higher level than
> I originally thought.
> 
> The root cause is that zypper and poky use different way to represent
> architectures, as we are putting them together, these two ways are
> not compatible, causing many minor glitches that need to modify at
> least one of them.
> 
> Poky has three kinds of representations in a single target image, which
> are independent, cpu-dependent and machine-dependent (all, armv5te,
> qemuarm, respectively), e.g.
> 
> 	update-rc.d-0.7-r3.all.rpm
> 	curl-7.21.0-r0.armv5te.rpm
> 	task-base-1.0-r69.qemuarm.rpm
> 
> (note that armv5te is the same with gcc's -march option, meaning little
> endian)

This is a good analysis and summary. It actually gets more complicated
as for some machines we have a long list of compatible package types
that can be installed, e.g. for qemuarm, if you list PACKAGE_ARCHES
you'll see armv4t armv5 armv5t armv5te which are all accepted by the
opkg backend.

> This is natural until zypper is involved. Zypper supports only one arch
> at one time (and this arch should not be changed in fly), and use the
> idea of arch compatibility (e.g. _noarch is compatible with _i586), it
> then hardcodes the available archs in a different way than poky does,
> thus creating several problems:
>   1. what uses for independent packages is called "noarch", "all" is not
>      recognized, something depends on update-rc.d won't be installed
>      because of missing dependency
>   2. the arch automatic detection system uses "uname -m", thus producing
>      armv5tejl, which can only be resolved as armv5tel, conflicting with
>      "armv5te" in rpm
>   3. many archs are missing in zypper, like mips, armeb, etc.
>   4. there is no concept of machine-dependent packages (task-base) in
>      zypper, although we can work around.
> 
> Currently, at least zypper is broken on all of mips, arm, ppc, with
> slightly different problems.
> 
> The ideal situation is to use consistent arch specification, the
> following can be a solution:
>   1. rename *.all.rpm to *.noarch.rpm

This would only solve part of the problem though?

>   2. removing the concept of machine-dependent packages, change all
>      *.qemuarm.rpm to *.armv5te.rpm

This could mean making a copy of each rpm per machine so I'm not keen on
this.

>   3. enhance zypper arch module, make the addition more flexible,
>      allowing arch alias (e.g. armv5te = armv5tel = armel = arm)
> 
> That would be some work to do, maybe 1.0 is a good time to get zypper
> and package upgrade truely working.
> 
> Any ideas and comments?

I think we're going to have to teach zypper to read a list of compatible
"architectures" from a configuration file. There is a config file opkg
writes to the filesystem continaing this list and we'll have to do
similar for RPM.

It does raise the question of how given two possible rpm's it would
chose between the two (for opkg, the list is in order).

Is the problem just in zypper and is rpm free from any issues in this
area?

Cheers,

Richard


