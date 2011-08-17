Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09794E011C6
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:15:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Aug 2011 09:15:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; d="scan'208";a="39468011"
Received: from unknown (HELO envy.home) ([10.255.14.197])
	by azsmga001.ch.intel.com with ESMTP; 17 Aug 2011 09:15:35 -0700
Message-ID: <4E4BE925.1070605@linux.intel.com>
Date: Wed, 17 Aug 2011 09:15:33 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: linux-yocto: bitbake restarts with do_fetch after a -c configure
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
X-List-Received-Date: Wed, 17 Aug 2011 16:15:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I was having some trouble doing some iterative kernel development and
noticed that bitbake was restarting with do_fetch no matter what stage I
had completed with the previous command. I thought it might be
triggering on a source change, but just running the following without
any other changes had the same result:

$ bitbake linux-yocto -c configure
...
$ bitbake linux-yocto
$ bitbake linux-yocto
Loading cache: 100%
|######################################################################################################|
ETA:  00:00:00
Loaded 1019 entries from dependency cache.
Parsing recipes: 100%
|####################################################################################################|
Time: 00:00:01
Parsing of 790 .bb files complete (788 cached, 2 parsed). 1020 targets,
37 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "powerpc"
TARGET_OS         = "linux"
MACHINE           = "qemuppc"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110817"
TUNE_FEATURES     = "m32 fpu-hard ppc603e"
TARGET_FPU        = ""
meta
meta-yocto        = "master:288c947ee69131cc29e9c367523cc71e4df56a76"
meta-kernel-dev   = "master:5193f2986c82d4c9a3b5e3cffb96877406664151"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 484 of 860 (ID: 6,
/home/dvhart/source/poky.git/meta/recipes-kernel/linux/linux-yocto_2.6.37.bb,
do_fetch)


This prevents any sort of iterative development as the unpack and
subsequent steps undue any local changes to the source tree. This
appears to be a regression.
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

