Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCE4CE00348
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 16:05:10 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Dec 2012 16:05:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,254,1355126400"; d="scan'208";a="229630778"
Received: from unknown (HELO helios.localnet) ([10.252.122.190])
	by azsmga001.ch.intel.com with ESMTP; 10 Dec 2012 16:05:08 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Tue, 11 Dec 2012 00:05:06 +0000
Message-ID: <2780619.ABelmWZmCk@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CANge7vXkVTnbwREHzXwP_f2ck-WP6BJQbUURGBHg=+eQsZjxQg@mail.gmail.com>
References: <CANge7vXkVTnbwREHzXwP_f2ck-WP6BJQbUURGBHg=+eQsZjxQg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: packagegroup-core-boot failure for RTC-less system
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
X-List-Received-Date: Tue, 11 Dec 2012 00:05:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 10 December 2012 18:58:14 Jon Szymaniak wrote:
> I have a MACHINE_FEATURES which *does not* include "rtc", as the platform I
> am working on doesn't have an RTC.
> 
> The busybox bbappend I'm using (attached below) uses the provided
> defconfig, but
> disables the HWCLOCK features.
> 
> However, my build is failing due to packagegroup-core-boot being unable to
> meet the busybox-hwclock dependency. Looking at this line from
> packagegroup-core-boot.bb, it seems to me that busybox-hwlock shouldn't be
> getting placed in the core-boot's RDEPENDS, given that my MACHINE_FEATURES
> does not include "rtc":
> 
>     ${@base_contains("MACHINE_FEATURES", "rtc", "busybox-hwclock", "", d)} \
> 
> 
> Any thoughts or tips on debugging this? Perhaps there's somewhere I can
> stick a print of MACHINE_FEATURES to verify that it is what I thought I
> set?

The way to query the final value of MACHINE_FEATURES is:

bitbake -e | grep ^MACHINE_FEATURES=

FYI though, rtc is a "backfilled" feature - because it was introduced later on 
and we didn't want to break existing machines that do have an RTC and don't 
yet have "rtc" in MACHINE_FEATURES, we added it to MACHINE_FEATURES_BACKFILL. 
In order to prevent it from being backfilled, you can add the following to your 
machine config:

MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

