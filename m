Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99FB7E00408
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 20:52:42 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 Aug 2013 20:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,946,1367996400"; d="scan'208";a="286107964"
Received: from unknown (HELO [10.255.14.153]) ([10.255.14.153])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Aug 2013 20:52:42 -0700
Message-ID: <1377316361.5259.101.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 23 Aug 2013 20:52:41 -0700
In-Reply-To: <2594690.j9UepmO1kG@helios>
References: <2594690.j9UepmO1kG@helios>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RFC: automated runtime testing on real hardware
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
X-List-Received-Date: Sat, 24 Aug 2013 03:52:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-08-13 at 12:00 +0100, Paul Eggleton wrote:
> Hi all,
> 
> As part of the feature development work for 1.5, we've recently added the 
> ability to easily define runtime tests written in python, replacing the old 
> shell-based imagetest.bbclass. However, for 1.5 this is limited to running the 
> tests within a QEMU environment; the obvious and desirable next step is to be 
> able to have these run on real hardware. Clearly this presents some 
> challenges, such as how to manage access to the hardware if you have multiple 
> builders potentially wanting to use the same board at around the same time.
> 
> Automated testing on real hardware is something that a lot of us do already, 
> but the likelihood is that we've all been coming up with our own solutions for 
> this, so it would be really great if we could have a single working solution 
> to cover the generally applicable use cases. As a start though it would be 
> interesting to hear from people who have existing test setups or who are 
> generally interested in this area. I'd like to hear feedback on the following:
> 
>  * What hardware setup do you use for automated testing?

I am starting to put something together using a customized 19" rack
along the lines of those used by OSADL for their real-time farm:

https://www.osadl.org/Test-Rack.test-rack.0.html

This is a poor man's BladeCenter for embedded boards in that it provides
a common interface to each board for the rack infrastructure. The board
specific stuff sits on the trays themselves. The trays are easily
removable to take a board to a desk for hands-on work.

A smart-switch, web-power strip, and serial concentrator feed into a
"gateway server" where services like conmux glue it all together.

> 
>  * Do you use any software to manage the hardware? Does this include any 
> existing open source tools?

conmux
dnsmasq
udev (for static usb uart naming)

The testrack has some early-stage tools to support it, but I'm still
sorting those out and they aren't particularly robust for initial setup
quite yet.

> 
>  * What would you like to see in a common framework to enable this kind of 
> testing?

To simplify the board management you allude to above, I believe a pull
model, rather than a push, is a better architecture.

Your builders can complete builds and inject test records into a
database with a priority. The boards sit in a
boot/check-db/deploy-test-img/reboot-to-test-image/run-tests loop and
push the results back to the database. They select tests based on
priority, and the builder doesn't have to do anything at all to manage
the boards. This also decouples the builder from the test
infrastructure.

> 
> For reference, some discussion on this started in another thread [1], but I'd 
> like to throw this out to a more general audience.
> 
> Thanks,
> Paul
> 
> [1] https://lists.yoctoproject.org/pipermail/yocto/2013-August/017687.html
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



