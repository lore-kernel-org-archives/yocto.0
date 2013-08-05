Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BE9CE003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 07:38:13 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Aug 2013 07:38:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,819,1367996400"; d="scan'208";a="341913409"
Received: from unknown (HELO helios.localnet) ([10.252.122.196])
	by azsmga001.ch.intel.com with ESMTP; 05 Aug 2013 07:38:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: lothar@denx.de
Date: Mon, 05 Aug 2013 15:38:06 +0100
Message-ID: <2759587.caFPE2Zfue@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20130805144104.17162h9fc56bibfk@webmail.mnet-online.de>
References: <20130805114222.15220qh2lyd417dw@webmail.mnet-online.de>
	<7243158.LY4yQ1ssbD@helios>
	<20130805144104.17162h9fc56bibfk@webmail.mnet-online.de>
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
X-List-Received-Date: Mon, 05 Aug 2013 14:38:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 05 August 2013 14:41:04 lothar@denx.de wrote:
> How may I work with the STAGING_KERNEL_DIR, since I first run the
> firmware.bb and then the kernel.bb. I think I did not understand well,
> how I may achieve this. Do I need to install the firmware blob into
> something like $STAGING_KERNEL_DIR/firmware? How may I proceed here,
> could you please explain a bit more?

Sorry, I misunderstood your original explanation - in that case you cannot use 
STAGING_KERNEL_DIR because it will only exist after the kernel has been built.

It seems a bit odd that you'd need to build the firmware first and then use that 
as an input to the kernel build - is it baking the firmware into the module 
instead of loading the firmware at runtime like most other drivers?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

