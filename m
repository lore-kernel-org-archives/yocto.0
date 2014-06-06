Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D47DBE00985; Fri,  6 Jun 2014 12:48:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4557E0070F
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 12:48:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Jun 2014 12:48:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,991,1392192000"; d="scan'208";a="553042574"
Received: from unknown (HELO [10.255.12.127]) ([10.255.12.127])
	by orsmga002.jf.intel.com with ESMTP; 06 Jun 2014 12:48:45 -0700
Message-ID: <1402084124.19708.81.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Matthew Keeter <matt.j.keeter@gmail.com>
Date: Fri, 06 Jun 2014 14:48:44 -0500
In-Reply-To: <AC4CBFE4-ECFA-4D03-A414-CA8749943F5E@gmail.com>
References: <AC4CBFE4-ECFA-4D03-A414-CA8749943F5E@gmail.com>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: yocto-bsp treats beaglebone as omap3 device
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
X-List-Received-Date: Fri, 06 Jun 2014 19:48:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

On Fri, 2014-06-06 at 14:28 -0400, Matthew Keeter wrote:
> I’ve got a quick question about using the yocto-bsp tool (release 1.6):
> 
> Using it to create an ARM BSP from the beaglebone machine branch results in a BSP
> that targets the OMAP3 processor (which is on the beagleboard, not the beaglebone).
> 
> I say this because the default value for UBOOT_MACHINE is “omap3_beagle_config” and
> the kernel device tree in conf/machine/my-bbb.conf points to an omap3 device tree.
> 
> This appears to be incorrect behavior and disagrees with the default beaglebone machine
> configuration in meta-yocto-bsp/conf/machine/beaglebone.conf
> 
> Am I missing something, or is the tool doing the wrong thing?

It's not really doing the wrong thing, it's just sort of outdated and
not doing what I guess you'd expect, which is to match the reference
board in meta-yocto-bsp (note that the yocto-bsp tool doesn't really
have anything to do with meta-yocto-bsp, though the names are similar).

The old arm reference board was the beagleboard, and that's what the
yocto-bsp template reflects, and should probably be updated to use the
beaglebone settings.

> Any suggested work-arounds?

I'd suggest just manually modifying the generated BSP to match your
hardware; technically the output of yocto-bsp is only guaranteed to
build, not necessarily successfully boot on a given board.  The Intel
boards have been boot-tested, but that's just because I have the
necessary hardware, and nobody's actually paid much attention to the arm
output, as far as I can tell.  If you have suggestions other than that
that the output should match the beaglebone reference in meta-yocto-bsp,
I'd be happy to make those changes in the next iteration of the tool.

Thanks,

Tom

> 
> Regards,
> Matt Keeter



