Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4DE0E003BF
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 08:21:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Aug 2013 08:21:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,968,1367996400"; d="scan'208";a="394174337"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.201.55]) ([10.7.201.55])
	by orsmga002.jf.intel.com with ESMTP; 27 Aug 2013 08:20:51 -0700
Message-ID: <1377616852.27071.87.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 27 Aug 2013 08:20:52 -0700
In-Reply-To: <2125395.dtpFFoXzek@helios>
References: <2594690.j9UepmO1kG@helios>
	<1377316361.5259.101.camel@dvhart-mobl4.amr.corp.intel.com>
	<2125395.dtpFFoXzek@helios>
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
X-List-Received-Date: Tue, 27 Aug 2013 15:21:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-08-27 at 12:11 +0100, Paul Eggleton wrote:
> Hi Darren,
> 
> On Friday 23 August 2013 20:52:41 Darren Hart wrote:
> > On Tue, 2013-08-13 at 12:00 +0100, Paul Eggleton wrote:
> > > Automated testing on real hardware is something that a lot of us do
> > > already, but the likelihood is that we've all been coming up with our own
> > > solutions for this, so it would be really great if we could have a single
> > > working solution to cover the generally applicable use cases. As a start
> > > though it would be interesting to hear from people who have existing test
> > > setups or who are generally interested in this area. I'd like to hear
> > > feedback on the following:
> > >  * What hardware setup do you use for automated testing?
> > 
> > I am starting to put something together using a customized 19" rack
> > along the lines of those used by OSADL for their real-time farm:
> > 
> > https://www.osadl.org/Test-Rack.test-rack.0.html
> > 
> > This is a poor man's BladeCenter for embedded boards in that it provides
> > a common interface to each board for the rack infrastructure. The board
> > specific stuff sits on the trays themselves. The trays are easily
> > removable to take a board to a desk for hands-on work.
> > 
> > A smart-switch, web-power strip, and serial concentrator feed into a
> > "gateway server" where services like conmux glue it all together.
> 
> All makes sense.
> 
> > >  * Do you use any software to manage the hardware? Does this include any
> > > existing open source tools?
> > 
> > conmux
> > dnsmasq
> > udev (for static usb uart naming)
> > 
> > The testrack has some early-stage tools to support it, but I'm still
> > sorting those out and they aren't particularly robust for initial setup
> > quite yet.
> 
> Having a standard way to set up the software side for this kind of 
> infrastructure would certainly be worthwhile I think. One tricky part would 
> perhaps be supporting variations of infrastructure hardware; doing some 
> searches I haven't found a completely definitive open source project for 
> controlling remotely accessible power strips for example, although there are a 
> few scattered projects for doing that with varying levels of recent 
> maintenance.
> 
> > >  * What would you like to see in a common framework to enable this kind of
> > > testing?
> > 
> > To simplify the board management you allude to above, I believe a pull
> > model, rather than a push, is a better architecture.
> > 
> > Your builders can complete builds and inject test records into a
> > database with a priority. The boards sit in a
> > boot/check-db/deploy-test-img/reboot-to-test-image/run-tests loop and
> > push the results back to the database. They select tests based on
> > priority, and the builder doesn't have to do anything at all to manage
> > the boards. This also decouples the builder from the test
> > infrastructure.
> 
> Interesting. This would present some challenges with the way the automated 
> tests are currently defined; there's nothing unsolvable that precludes them 
> being run outside of the build environment but they will have to be run 
> somewhere that has python and any required modules installed, presumably an 
> intermediate machine rather than the target machine itself (the latter would 
> not be impossible; but if we did do it that way you couldn't test an image 
> that didn't have python in it.)

A new test-image will need to be created regardless, I think including
python is reasonable for the general case. For things like tiny, I
suspect we would have a customized test-suite anyway, possibly written
in C.

> 
> We'd also need to come up with a standard definition for the results database 
> and tools to generate reports out of it, but that's something that will likely 
> be needed regardless of the model used for running tests, especially when it 
> comes to recording the results from ptest.

Agreed.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



