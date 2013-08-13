Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79CEEE01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 04:00:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Aug 2013 04:00:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,868,1367996400"; d="scan'208";a="361899745"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.187])
	by orsmga001.jf.intel.com with ESMTP; 13 Aug 2013 04:00:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Aug 2013 12:00:08 +0100
Message-ID: <2594690.j9UepmO1kG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
MIME-Version: 1.0
Subject: RFC: automated runtime testing on real hardware
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
X-List-Received-Date: Tue, 13 Aug 2013 11:00:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi all,

As part of the feature development work for 1.5, we've recently added the 
ability to easily define runtime tests written in python, replacing the old 
shell-based imagetest.bbclass. However, for 1.5 this is limited to running the 
tests within a QEMU environment; the obvious and desirable next step is to be 
able to have these run on real hardware. Clearly this presents some 
challenges, such as how to manage access to the hardware if you have multiple 
builders potentially wanting to use the same board at around the same time.

Automated testing on real hardware is something that a lot of us do already, 
but the likelihood is that we've all been coming up with our own solutions for 
this, so it would be really great if we could have a single working solution 
to cover the generally applicable use cases. As a start though it would be 
interesting to hear from people who have existing test setups or who are 
generally interested in this area. I'd like to hear feedback on the following:

 * What hardware setup do you use for automated testing?

 * Do you use any software to manage the hardware? Does this include any 
existing open source tools?

 * What would you like to see in a common framework to enable this kind of 
testing?

For reference, some discussion on this started in another thread [1], but I'd 
like to throw this out to a more general audience.

Thanks,
Paul

[1] https://lists.yoctoproject.org/pipermail/yocto/2013-August/017687.html

-- 

Paul Eggleton
Intel Open Source Technology Centre

