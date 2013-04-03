Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB04E014B6
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 07:51:22 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Apr 2013 07:51:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="222364873"
Received: from unknown (HELO helios.localnet) ([10.255.13.159])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Apr 2013 07:51:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Date: Wed, 03 Apr 2013 15:51:11 +0100
Message-ID: <12083406.U1PJGvsYsR@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CANwz6nxxMDJ8JK3gH4oNbZA_qUQy4o+02A4JoVzd4dwsUz5vGA@mail.gmail.com>
References: <CANwz6nxxMDJ8JK3gH4oNbZA_qUQy4o+02A4JoVzd4dwsUz5vGA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: boost & qt-mobility-x11 added to core-image-sato
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
X-List-Received-Date: Wed, 03 Apr 2013 14:51:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Edward,

On Wednesday 03 April 2013 08:01:55 Edward Vidal wrote:
> I have been using the bitbake core-image-sato with
> 
> EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk" which adds the sdk to the
> image.
> 
> I since have done bitbake boost (added about 14 RPMs) and bitbake
> qt-mobility-x11 (81 RPMs).
> 
> After creating the boost libs I installed the 14 RPMs on the target
> with the script
> rpm -Uh  \
> boost-1.53.0-r1.armv7a_vfp_neon.rpm \
> boost-dbg-1.53.0-r1.armv7a_vfp_neon.rpm \
> boost-dev-1.53.0-r1.armv7a_vfp_neon.rpm \
> boost-staticdev-1.53.0-r1.armv7a_vfp_neon.rpm \
> boost-test-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-date-time1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-filesystem1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-graph1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-iostreams1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-program-options1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-regex1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-signals1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-system1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
> libboost-thread1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm
> 
> The qt-mobility-x11 RPMs were installed with rpm -Uh *.rpm.
> The difficult part was determining what are the needed dependencies.  This
> was done by running the rpm -Uh --test *.rpm many times and adding
> additional RPMs to set of RPMs.
> 
> What is the correct procedure to add bitbake results to the target?
> How does one know what packages are included in the image? What should be
> the order first bitbake boost, bitbake qt-mobility, and then bitbake
> core-image-sato?  This order did not work I still needed to install the new
> RPMs after the target was running.

Just building something doesn't mean it will be added to an image. Each image
has a set list of things that will be installed into it (IMAGE_INSTALL).
This will also automatically take care of adding dependencies.

Please see here for information on how to customise the contents of images:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

