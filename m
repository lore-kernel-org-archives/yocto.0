Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40341E004AB
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 03:01:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Aug 2012 03:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,346,1344236400"; d="scan'208";a="216212141"
Received: from unknown (HELO helios.localnet) ([10.252.121.160])
	by fmsmga002.fm.intel.com with ESMTP; 31 Aug 2012 03:00:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: ml@communistcode.co.uk, yocto@yoctoproject.org
Date: Fri, 31 Aug 2012 11:00:41 +0100
Message-ID: <1376657.fH45jMCXXT@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <504084C5.2040409@communistcode.co.uk>
References: <5040835B.1030201@communistcode.co.uk>
	<504084C5.2040409@communistcode.co.uk>
MIME-Version: 1.0
Subject: Re: [meta-raspberrypi] gettext RPATH QA issue
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
X-List-Received-Date: Fri, 31 Aug 2012 10:01:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 31 August 2012 10:32:53 Jack Mitchell wrote:
> On 31/08/12 10:26, Jack Mitchell wrote:
> > So, I have run into a second problem with the new RPATH sanity checks
> > in bitbake. I'm on master for everything and this is the error I am
> > 
> > receiving:
> >    [jack@archHP raspberry]$ bitbake rpi-hwup-image
> >    Pseudo may be out of date, rebuilding pseudo before the main build
> >    Parsing recipes: 100% |#########################################|
> >    Time: 00:00:19
> >    Parsing of 1193 .bb files complete (0 cached, 1193 parsed). 1528
> >    targets, 48 skipped, 1 masked, 0 errors.
> >    WARNING: Host distribution could not be determined; you may possibly
> >    experience unexpected failures. It is recommended that you use a
> >    tested distribution.
> >    
> >    Build Configuration:
> >    BB_VERSION        = "1.15.3"
> >    TARGET_ARCH       = "arm"
> >    TARGET_OS         = "linux-gnueabi"
> >    MACHINE           = "raspberrypi"
> >    DISTRO            = "poky"
> >    DISTRO_VERSION    = "1.2+snapshot-20120831"
> >    TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
> >    TARGET_FPU        = "vfp"
> >    meta
> >    meta-yocto        = "master:9ba1e33e2d14362971d6441ee6142bcb0857df1a"
> >    meta-raspberrypi  = "master:ad5ef650663b7bf67c4ca08f0b1a9ce402e58be9"
> >    meta-oe           = "master:a81cdc840c1dfca2bd0cb4ddd6e4bc1488286649"
> >    
> >    NOTE: Resolving any missing task queue dependencies
> >    NOTE: Preparing runqueue
> >    NOTE: Executing SetScene Tasks
> >    NOTE: Executing RunQueue Tasks
> >    NOTE: Tasks Summary: Attempted 63 tasks of which 30 didn't need to
> >    be rerun and all succeeded.
> >    
> >    Summary: There was 1 WARNING message shown.
> >    Loading cache: 100% |###########################################|
> >    ETA:  00:00:00
> >    Loaded 1529 entries from dependency cache.
> >    WARNING: Host distribution could not be determined; you may possibly
> >    experience unexpected failures. It is recommended that you use a
> >    tested distribution.
> >    
> >    Build Configuration:
> >    BB_VERSION        = "1.15.3"
> >    TARGET_ARCH       = "arm"
> >    TARGET_OS         = "linux-gnueabi"
> >    MACHINE           = "raspberrypi"
> >    DISTRO            = "poky"
> >    DISTRO_VERSION    = "1.2+snapshot-20120831"
> >    TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
> >    TARGET_FPU        = "vfp"
> >    meta
> >    meta-yocto        = "master:9ba1e33e2d14362971d6441ee6142bcb0857df1a"
> >    meta-raspberrypi  = "master:ad5ef650663b7bf67c4ca08f0b1a9ce402e58be9"
> >    meta-oe           = "master:a81cdc840c1dfca2bd0cb4ddd6e4bc1488286649"
> >    
> >    NOTE: Resolving any missing task queue dependencies
> >    NOTE: Preparing runqueue
> >    NOTE: Executing SetScene Tasks
> >    NOTE: Executing RunQueue Tasks
> > 
> >    ERROR: QA Issue: libgettextlib:
> > /work/armv6-vfp-poky-linux-gnueabi/gettext-0.18.1.1-r16/packages-split/lib
> > gettextlib/usr/lib/libgettextlib-0.18.1.so> 
> >    contains probably-redundant RPATH /usr/lib/../lib
> > 
> >    ERROR: QA Issue: libgettextsrc:
> > /work/armv6-vfp-poky-linux-gnueabi/gettext-0.18.1.1-r16/packages-split/lib
> > gettextsrc/usr/lib/libgettextsrc-0.18.1.so> 
> >    contains probably-redundant RPATH /usr/lib/../lib
> >    ERROR: QA run found fatal errors. Please consider fixing them.
> >    ERROR: Function failed: do_package_qa
> > 
> >    ERROR: Logfile of failure stored in:
> > /home/jack/Projects/poky-rasp/raspberry/tmp/work/armv6-vfp-poky-linux-gnue
> > abi/gettext-0.18.1.1-r16/temp/log.do_package.7077> 
> >    ERROR: Task 834
> > 
> > (/home/jack/Projects/poky-rasp/meta/recipes-core/gettext/gettext_0.18.1.1.
> > bb,> 
> >    do_package) failed with exit code '1'
> >    NOTE: Tasks Summary: Attempted 1412 tasks of which 661 didn't need
> >    to be rerun and 1 failed.
> > 
> >    Summary: 1 task failed:
> > /home/jack/Projects/poky-rasp/meta/recipes-core/gettext/gettext_0.18.1.1.b
> > b,> 
> >    do_package
> >    Summary: There was 1 WARNING message shown.
> >    Summary: There were 4 ERROR messages shown, returning a non-zero
> >    exit code.
> > 
> > Does anybody have an suggestions?
> > 
> > Regards,
> 
> I'm not sure where this issue lies, I have a standard qemu build on
> going which seems ok, so I'm tempted to say that it is either meta-oe or
> meta-raspberry pi doing some overides?

This has been fixed, but unfortunately the change to fix it was in libtool and 
did not trigger a recompile - we probably ought to bump PR on gettext. At the 
moment the fix is to "bitbake -c cleansstate gettext" and then carry on.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

