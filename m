Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B3EE003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 03:05:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Aug 2013 03:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,817,1367996400"; d="scan'208";a="357622398"
Received: from unknown (HELO helios.localnet) ([10.252.122.196])
	by orsmga001.jf.intel.com with ESMTP; 05 Aug 2013 03:05:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: lothar@denx.de
Date: Mon, 05 Aug 2013 11:05:43 +0100
Message-ID: <7243158.LY4yQ1ssbD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20130805114222.15220qh2lyd417dw@webmail.mnet-online.de>
References: <20130805114222.15220qh2lyd417dw@webmail.mnet-online.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to build external firmware for kernel
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
X-List-Received-Date: Mon, 05 Aug 2013 10:05:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Lothar,

On Monday 05 August 2013 11:42:22 lothar@denx.de wrote:
> I have a linux kernel and a external firmware. Building manually,
> first I have to checkout and build the firmware "native" to obtain a
> firmware blob, then I need this firmware blob to build the kernel for
> the target.
> 
> So far I tried to do this in yocto with separate recipes: a
> firmware.bb and a mylinux.bb. In firmware.bb, I check out the firmware
> via git and let it run "make" on native (this is necessary, since the
> Makefile builds a tool which then automatically gets called inside the
> Makefile to create the firmware blob).
> 
> In the kernel recipe, I declare a DEPEND on firmware.bb. I set the
> .config options to load an extra firmware blob. But now, I have a
> problem: I need actually to have the firmware blob within the kernel's
> file hierarchy. Ideally I would copy/move it from the firmware's
> destination directory into the kernel's source directory.

Shouldn't firmware go into /lib/firmware?
 
> Questions:
> How can I achieve this kind of setup working out with yocto or
> bitbake, respectively? What might be the best approach in my situation?

You can get the kernel version name from ${STAGING_KERNEL_DIR}/kernel-
abiversion if that helps, but I wouldn't have thought you'd need it if the 
firmware is installed to /lib/firmware instead.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

