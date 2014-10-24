Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06F09E00830; Fri, 24 Oct 2014 04:14:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55F13E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:14:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2014 04:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,779,1406617200"; d="scan'208";a="624578843"
Received: from nmcnulty-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.119])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2014 04:14:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diego Sueiro <diego.sueiro@gmail.com>, prashanthg <prashanthg@vtitan.com>
Date: Fri, 24 Oct 2014 12:14:02 +0100
Message-ID: <1862666.GZ37KUIjUa@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <CAMCfZKHH88UfJgTsAze-Osu70CppqZ-iQPxU+kYpxEJ7MozHbw@mail.gmail.com>
References: <14941a5ee26.12063369a129838.8774317176061551786@vtitan.com>
	<CAMCfZKHH88UfJgTsAze-Osu70CppqZ-iQPxU+kYpxEJ7MozHbw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Daisy - Beaglebone Black - core-image-minimal - Error: do_compile
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
X-List-Received-Date: Fri, 24 Oct 2014 11:14:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 24 October 2014 09:06:00 Diego Sueiro wrote:
> On Fri, Oct 24, 2014 at 8:24 AM, prashanthg <prashanthg@vtitan.com> wrote:
> > I have been facing issues with 'bitbake core-image-minimal' with Qt5
> > library added for BBB.
> > 
> > Error Log: http://pastebin.com/ADdyJnz8
> > 
> > Build Configuration:
> > BB_VERSION        = "1.22.0"
> > BUILD_SYS         = "i686-linux"
> > NATIVELSBSTRING   = "Ubuntu-13.10"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "beaglebone"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.6.1"
> > TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa8"
> > TARGET_FPU        = "vfp-neon"
> > meta
> > meta-yocto
> > meta-yocto-bsp    = "daisy:bda51ee7821de9120f6f536fcabe592f2a0c8a37"
> > meta-oe           = "daisy:518cd119a8724dbd485a5d5c5047de59e8fbd652"
> > meta-ti           = "daisy:80924d3bba59d6920217216c73af43fdd40d0152"
> > meta-qt5          = "daisy:c29c317e0f22202bfaa85329a580564bbc179089"
> > 
> > It would be great if you can help me solve this issue.
> > 
> > Thanks and Regards,
> > Prashanth
> 
> I have Qt5.3.2 (meta-qt5 on master branch) with accelerated graphics built
> and running on BBB.
> I did not have seen this error.
> 
> Note that you need to remove meta-yocto-bsp from your bblayers.conf to get
> the BSP support from meta-ti.

That is true, but I don't think that's related to the issue here. I believe I 
have seen this issue before, a long time ago, and it relates to the file-native 
recipe rebuilding after a recipe upgrade - it picks up the "magic" data file 
from the previous older build and fails because the version doesn't match. 
Cleaning the recipe should work around the issue:

 bitbake -c clean file-native

Then you can re-try the original build. We should try to properly reproduce 
and fix the underlying issue however.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

