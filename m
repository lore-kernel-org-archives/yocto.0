Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CB1F4C81003
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 03:37:16 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Oct 2010 01:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,216,1286175600"; d="scan'208";a="566062062"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 21 Oct 2010 01:37:15 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1P8qaC-0004oq-Cw
	for yocto@yoctoproject.org; Thu, 21 Oct 2010 16:33:08 +0800
Date: Thu, 21 Oct 2010 16:33:08 +0800
From: Qing He <qing.he@intel.com>
To: yocto@yoctoproject.org
Message-ID: <20101021083308.GB18344@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: zypper and poky architectures
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
X-List-Received-Date: Thu, 21 Oct 2010 08:37:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I recently reported several zypper bugs specifically for arm, after
some deeper investigation, the problem seems to be of higher level than
I originally thought.

The root cause is that zypper and poky use different way to represent
architectures, as we are putting them together, these two ways are
not compatible, causing many minor glitches that need to modify at
least one of them.

Poky has three kinds of representations in a single target image, which
are independent, cpu-dependent and machine-dependent (all, armv5te,
qemuarm, respectively), e.g.

	update-rc.d-0.7-r3.all.rpm
	curl-7.21.0-r0.armv5te.rpm
	task-base-1.0-r69.qemuarm.rpm

(note that armv5te is the same with gcc's -march option, meaning little
endian)

This is natural until zypper is involved. Zypper supports only one arch
at one time (and this arch should not be changed in fly), and use the
idea of arch compatibility (e.g. _noarch is compatible with _i586), it
then hardcodes the available archs in a different way than poky does,
thus creating several problems:
  1. what uses for independent packages is called "noarch", "all" is not
     recognized, something depends on update-rc.d won't be installed
     because of missing dependency
  2. the arch automatic detection system uses "uname -m", thus producing
     armv5tejl, which can only be resolved as armv5tel, conflicting with
     "armv5te" in rpm
  3. many archs are missing in zypper, like mips, armeb, etc.
  4. there is no concept of machine-dependent packages (task-base) in
     zypper, although we can work around.

Currently, at least zypper is broken on all of mips, arm, ppc, with
slightly different problems.

The ideal situation is to use consistent arch specification, the
following can be a solution:
  1. rename *.all.rpm to *.noarch.rpm
  2. removing the concept of machine-dependent packages, change all
     *.qemuarm.rpm to *.armv5te.rpm
  3. enhance zypper arch module, make the addition more flexible,
     allowing arch alias (e.g. armv5te = armv5tel = armel = arm)

That would be some work to do, maybe 1.0 is a good time to get zypper
and package upgrade truely working.

Any ideas and comments?

Thanks,
Qing

