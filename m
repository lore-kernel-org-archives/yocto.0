Return-Path: <denis@denix.org>
Received: from vms173001pub.verizon.net (vms173001pub.verizon.net
	[206.46.173.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FB4DE00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 15:03:15 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.48.117.33])
	by vms173001.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M3G00HDKVX4G592@vms173001.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 03 May 2012 17:03:04 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id A42FD20099; Thu,
	03 May 2012 18:03:04 -0400 (EDT)
Date: Thu, 03 May 2012 18:03:04 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-id: <20120503220304.GF9822@denix.org>
References: <4064BB91-B82E-4D59-B0B6-A21FC9733C0C@gmail.com>
	<E6B74C60-DDCA-4C71-BE97-3DFF81257C34@gmail.com>
	<4FA2FF55.3010202@windriver.com>
MIME-version: 1.0
In-reply-to: <4FA2FF55.3010202@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to specify a machine defconfig for a linux recipe
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
X-List-Received-Date: Thu, 03 May 2012 22:03:15 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, May 03, 2012 at 05:57:41PM -0400, Bruce Ashfield wrote:
> On 12-05-03 05:42 PM, Elvis Dowson wrote:
> >Hi,
> >
> >On May 3, 2012, at 9:55 PM, Elvis Dowson wrote:
> >
> >>How can I specify a machine defconfig for a linux recipe?
> >>
> >>For example, if I set
> >>
> >># kernel provider
> >>PREFERRED_PROVIDER_virtual/kernel = "linux-omap3"
> >>
> >>and try to build my machine, I get the following errors:
> >>
> >>ERROR: Function failed: Fetcher failure for URL: 'file://defconfig'. Unable to fetch URL from any source.
> >>NOTE: package linux-omap3-3.2-r0: task do_fetch: Failed
> >>ERROR: Task 125 (/tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, do_fetch) failed with exit code '1'
> >>NOTE: Tasks Summary: Attempted 304 tasks of which 302 didn't need to be rerun and 1 failed.
> >>
> >>Summary: 1 task failed:
> >>  /tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, do_fetch
> >
> >I solved this one.
> >
> >Turns out, since I defined a new machine called overo-fire-chestnut43, I had to also create a folder called overo-fire-chestnut43 to hold the defconfig file as follows:
> >
> >meta-gumstix/recipes-kernel/linux/linux-omap3/overo-fire-chestnut43/defconfig
> >
> >I recall, the trend was to move away from user supplied defconfigs, and have it get generated automatically by the build process, and then specify some hints. Is there any example of how I can modify the existing meta-gumstix or any other meta-layer, to get the defconfig to get generated automatically?
> 
> Are you thinking about the linux-yocto config fragment support ?
> Or maybe something else ? If you were thinking about the fragments,
> it would only replace your defconfigs directly when you use a linux-yocto
> kernel tree (and it's included meta branch with configuration frags).
> In that scenario, you only put your board specific fragments on the end,
> and let the rest be constructed.
> 
> When I return home next week, I will have some patches for 1.3 that make
> the fragments apply more easily to any git repository, but in either
> case (1.2 or 1.3), you'd still need to build up a series of fragments
> outside the tree, or migrate to linux-yocto* for maxium re-use.

Bruce,

I'd be willing to start using config fragments for our kernels in meta-ti, 
when this feature is not tightly bundled with linux-yocto kernel. While we 
might want to eventually start using the entire linux-yocto framework for our 
kernels, it may take longer time due to many internal constraints. And having 
config fragments available as a separate feature would be very helpful and 
enable us to take baby steps... :) That's what we discussed last month at the 
Yocto BSP Summit. Thanks.

-- 
Denys

