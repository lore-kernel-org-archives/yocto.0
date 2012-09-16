Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 108F4E002AB
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 11:31:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Sep 2012 11:31:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,431,1344236400"; d="scan'208";a="193657284"
Received: from unknown (HELO helios.localnet) ([10.252.121.227])
	by orsmga001.jf.intel.com with ESMTP; 16 Sep 2012 11:31:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sun, 16 Sep 2012 19:31:15 +0100
Message-ID: <2099128.G0xV8XsdZC@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <5055F9A6.20709@gmail.com>
References: <0937D44A-6DDB-49BD-B8E3-14873C5D8839@gmail.com>
	<CAMKF1sr9zgFJMrhBM_xdVPMM_zhnQCzjxYanub6O7NFG4w1Ohg@mail.gmail.com>
	<5055F9A6.20709@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Dependency walk for busybox recipe
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
X-List-Received-Date: Sun, 16 Sep 2012 18:31:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 16 September 2012 20:09:10 Elvis Dowson wrote:
> On 09/16/2012 07:54 AM, Khem Raj wrote:
> > On Sat, Sep 15, 2012 at 10:59 AM, Elvis Dowson <elvis.dowson@gmail.com> 
wrote:
> >> So I added busybox-1.19.4 recipe back into my poky master branch, and the
> >> resulting size of the busybox-1.19.4 /bin/busybox or /bin/sh executable
> >> is 604.2 kb.> 
> > make sure that .config of busybox has not changed even if you have
> > same version backported
> 
> I've made sure that the defconfig files used in the recipe are
> identical. The only addition that I notice now, is that the recent
> rework done to task-core-boot, resulting in it being renamed as
> packagegroup-core-boot.bb adds the following extra line:
> 
> ${@base_contains("MACHINE_FEATURES", "rtc", "busybox-hwclock", "", d)} \
> 
> My virtex5.conf machine features entry does not specify an rtc,
> 
> MACHINE_FEATURES = "kernel26 apm ext2 ext3 vfat ethernet keyboard screen
> serial"
> 
> yet the current poky master attempts to pull it in:
> 
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'busybox-hwclock' (but
> /tool/yocto/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'busybox-hwclock' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['busybox-hwclock']
> NOTE: Runtime target 'packagegroup-core-boot' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['packagegroup-core-boot',
> 'busybox-hwclock']
> ERROR: Required build target 'core-image-minimal' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal',
> 'packagegroup-core-boot', 'busybox-hwclock']
> 
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> 
> Is this a bug? Is the rtc being added from somewhere else? Should this
> be happening?

It's not a bug, this is meant to happen. This is a result of 
MACHINE_FEATURES_BACKFILL, which is intended to ensure that we can introduce 
new items to MACHINE_FEATURES controlling existing functionality without 
breaking existing machine configurations by disabling the existing 
functionality because the configuration doesn't include it. (In older versions 
of busybox the hwclock feature was on by default - an hwclock item was added 
at the MACHINE_FEATURES level to be able to control it).

To fix this, just add hwclock to MACHINE_FEATURES_BACKFILL_CONSIDERED in your 
machine configuration.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

