Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B75ECE0157B
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2013 02:44:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Aug 2013 02:44:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,861,1367996400"; d="scan'208";a="384904142"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.221])
	by fmsmga002.fm.intel.com with ESMTP; 12 Aug 2013 02:44:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 12 Aug 2013 10:44:05 +0100
Message-ID: <4160632.rshblPy5ts@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <52073730.8080203@reliableembeddedsystems.com>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<3217805.kYDiUIXKQu@helios>
	<52073730.8080203@reliableembeddedsystems.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [Announcement] Yocto Project 1.5 Milestone 3 now available.
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
X-List-Received-Date: Mon, 12 Aug 2013 09:44:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 11 August 2013 10:03:12 Robert Berger wrote:
> On 08/10/2013 01:02 PM, Paul Eggleton wrote:
> > The new framework replaces the old, is written in python and makes writing
> > tests much easier. As a result we are going through a process of adding
> > many more runtime tests than we had previously.
> 
> I'm confused now. Is it autobuilder + new stuff in python and/or ptest
> or something completely different? Are there already some examples in
> git I could have a look at?

This is largely unrelated to ptest although at some point in the near future 
we'll need to have a discussion about how ptest should be integrated. It's 
really about being able to easily define tests that verify functionality of 
multiple installed packages together, e.g. whether smart can install an rpm 
package from a feed.

There's not much on the autobuilder side apart from ensuring the appropriate 
configuration is set - one of the aims was to avoid too much intrusion into the 
autobuilder code. The main class is testimage.bbclass, so you can just do 
INHERIT += "testimage" in local.conf and then run bitbake -c testimage 
<imagename>. The tests are in meta/lib/oeqa/runtime/ and utility code under 
meta/lib/oeqa/utils. 

There's no documentation for this yet other than what's in the code (and there 
are some comments there), but it's coming soon.

> > We do definitely want automated testing on real hardware; it's just that
> > that it presents a number of problems that need solving:
> >  * How do you deploy the image/kernel/bootloader onto the board in an
> > automated manner?
> 
> I use kernel over tftp and rootfs over nfs. The trivial example of a
> boot loader upgrade is when you have a running (Linux) system just scp
> it over. It's getting non trivial in case you manage to screw up the
> boot loader. For the generic case maybe some update strategy with a
> fallback solution to a known good boot loader might be needed.
> 
> > To different kinds of boards?
> 
> kernel over tftp and rootfs over nfs should work with all boards.

Sounds like a sensible approach then.
 
> >  * How do you manage access to the boards when you have multiple
> >  autobuilders potentially wanting to make use of them at around the same
> >  time?
> 
> Mutual exclusive access to the (serial) console can be handled by
> conserver. Mutual exclusive via ssh gets more tricky.

The point is I think at least for how we run the YP autobuilders you'd want 
there to be a queueing mechanism.
 
> I don't think it makes much sense to access the same board from multiple
> autobuilders. This is most likely an error case which you would like to
> catch.

I agree, but equally I think it would be preferable for an autobuilder task 
that requires access to a board to wait until any other users have finished 
rather than just failing immediately, and if possible to know the difference 
between waiting for access and timing out because the device isn't responding.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

