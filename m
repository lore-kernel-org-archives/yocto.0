Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03322E005A0
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 12:51:03 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Nov 2011 12:51:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="77512252"
Received: from unknown (HELO [10.255.15.232]) ([10.255.15.232])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2011 12:51:02 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <4EC6BC19.60501@linux.intel.com>
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
	<94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>
	<4EC6280B.1010308@communistcode.co.uk> <4EC6BC19.60501@linux.intel.com>
Date: Fri, 18 Nov 2011 14:54:37 -0600
Message-ID: <1321649677.9657.24.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Fri, 18 Nov 2011 20:51:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-11-18 at 12:12 -0800, Joshua Lock wrote:
> 
> On 18/11/11 01:40, Jack Mitchell wrote:
> > On 17/11/2011 21:38, Chris Tapp wrote:
> >> On 16 Nov 2011, at 22:07, Jeff Osier-Mixon wrote:
> >>
> >>> Mark & everyone else listening:
> >>>
> >>> Would you say that (1) the need for a recipe and (2) the requirement
> >>> to cross-compile are two of the most major usability or
> >>> learning-curve disadvantages of working with the Yocto Project (and
> >>> oe-core)? What would be a third disadvantage from a usability
> >>> standpoint?
> >>>
> >>> Another way to put it: if you could change three things about the
> >>> Yocto Project to make it more approachable for someone who has never
> >>> used it before, what would they be?
> >>
> >> As another very experienced embedded systems developer who is
> >> relatively new to embedded linux I would say that documentation and
> >> worked examples are what I would really be after.
> >>
> > I am a fairly in-experienced embedded systems developer (fresh graduate,
> > 6 months real work exp) and have used Linux for a few years now and I
> > concur that written examples, tutorials if you will, would be a great idea.
> >> It can be really frustrating when you can't get something going
> >> because you don't understand the phrases / terminology that's being
> >> used and it isn't readily available via the documentation. I've seen
> >> quite a few posts on here relating to the documentation and it does
> >> look like good progress is being made. As someone said earlier in this
> >> thread, it would be good it run stuff through new (or relatively new)
> >> adopters to see if they can get the examples to work without a fight.
> >> I'm more than happy to help (and learn!).
> > It is very frustrating when you come to an issue that isn't documented,
> > however I have found the IRC an invaluable resource as well as this
> > mailing list. If documentation was to become more extensive I feel the
> > categories should be defined further and split into more documents.
> >>
> >> I to started with OE and failed to get a build to complete. Yocto got
> >> me there first time, so it is already much better for a novice 'baker' !
> >>
> >> Some worked examples for 'how to do xxx' would also be nice. E.g.
> 
> I agree. We've oft talked about a Yocto Cookbook style document/wiki
> page but nobody has yet gotten around to creating one.
> 
> The wiki is available and in an ideal world people would document things
> as they've discovered them.
> 
> >>
> >> 1) How do I configure the kernel ?
> > This has been covered fairly extensively but a full worked example
> > wouldn't go amiss.
> 
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#changing-the-kernel-configuration
> ?
> 
> 

In the way of a complete walk-through there's also this:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#dev-manual-bsp-appendix

Which I know works and is current because we went through the exercise
of making it so on this list a couple weeks ago ;-)

I believe it was based on this wiki guide I put together awhile ago:

https://wiki.yoctoproject.org/wiki/BKM:_starting_a_new_BSP

There are also a couple other 'transcripts' in the same location
designed to make it easy for someone to get started building and booting
a qemu image, real hardware, etc. and have some initial success (though
they may need to be updated again at this point).  There's also a small
section in there about configuring the kernel.

https://wiki.yoctoproject.org/wiki/BKM:_starting_a_new_BSP#Adding_new_options_and.2For_changing_kernel_code

A few days ago I put together a 'one stop shop' page pointing to those
docs and also adding a couple other things such as an 'FAQ' section
which is where I'd planned on continually adding answers to common
questions like those mentioned in this thread.  There's not much there
yet, and I haven't had time to verify anything, which is why I haven't
posted it.

https://wiki.yoctoproject.org/wiki/Yocto_BSP_One-Stop_Shop_(Documentation_Overview,_Getting_Started,_FAQs,_and_more)

The above started out BSP-specific to limit scope for my particular
needs, but it doesn't have to be.

Anyway, I think it's clear from this thread that some extensive
worked-through examples are needed, along with a wiki location that
collects FAQs or 'cookbook' items.

I'd be happy to work with anyone who wants to in helping getting
something like that started, whether it be a variation on the above, or
something from scratch, whatever.

In any case, it would be nice to have some concrete ideas on what would
make for a good walked-through example or set of examples...

Tom

[snip]

> Cheers,
> Joshua



