Return-Path: <denis@denix.org>
Received: from vms173001pub.verizon.net (vms173001pub.verizon.net
	[206.46.173.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE2E9E0027E;
	Mon, 20 Aug 2012 12:15:45 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [72.66.25.115])
	by vms173001.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009))
	with ESMTPA id <0M9200D12IT61NF5@vms173001.mailsrvcs.net>; Mon,
	20 Aug 2012 14:15:22 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 4DD33200AB; Mon,
	20 Aug 2012 15:15:05 -0400 (EDT)
Date: Mon, 20 Aug 2012 15:15:05 -0400
From: Denys Dmytriyenko <denys@ti.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-id: <20120820191505.GA29601@denix.org>
References: <5032855A.5050704@linux.intel.com>
MIME-version: 1.0
In-reply-to: <5032855A.5050704@linux.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto Project <yocto@yoctoproject.org>, Jason Kridner <jdk@ti.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: Documenting the mailing lists.
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
X-List-Received-Date: Mon, 20 Aug 2012 19:15:46 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Mon, Aug 20, 2012 at 11:43:38AM -0700, Darren Hart wrote:
> Scott,
> 
> We've come across some more confusion about mailing lists recently. I've
> sent a patch against poky to try and clear it up a bit in the source,
> but we should also see about cleaning up the web descriptions of the lists.
> 
> We have two pages that describe the lists:
> 
> http://www.yoctoproject.org/community/mailing-lists
> https://lists.yoctoproject.org/
> 
> My first recommendation would be to eliminate
> http://www.yoctoproject.org/community/mailing-lists and replace links to
> it with links to https://lists.yoctoproject.org. This eliminates the
> need to keep the CMS version in sync with the mailman page. The mailman
> page should be considered the master anyway as the Description field is
> taken directly from the list administrative settings.

I completely agree with this proposal to unify and clean up the mailing list 
references and descriptions. I didn't even know there was a separate page at 
http://www.yoctoproject.org/community/mailing-lists - probably because I was 
happy with https://lists.yoctoproject.org/ all the time :)


> We should then work to create meaningful Descriptions of all the lists.
> These should still fit on a single line, but I think we can improve on
> what we have. For example:
> 
> meta-ti		Mailing list for the meta-ti layer
> 
> is not particularly enlightening. Perhaps something like:
> 
> meta-ti		Usage and development of the meta-ti layer

Not sure if this improves much - in either case it's just a generic 
description of the mailing list that is specific to the corresponding layer, 
meta-ti. But I'm fine with the change, as long as we are unifying all the 
other list descriptions.


> If we do this all at once, we can also ensure a consistent language,
> tone, etc.

Exactly! Thanks for initiating this.


> I'll propose something for each list here and ask that
> interested parties comment and correct in reply. Once agreed upon, the
> admins of the respective lists can make the changes (all CC'd)
> 
> Current:
> ========
> linux-yocto 	Development list for the linux-yocto*.git Linux kernel
> 		repositories
> meta-ti 	Mailing list for the meta-ti layer
> poky 		Poky build system developer discussion & patch
> 		submission for meta-yocto
> shoeleather 	Neutral Board Lab Mailing List
> yocto 		Discussion of all things Yocto
> yocto-ab 	Yocto Project Advisory Board
> yocto-advocacy 	Yocto Project Advocacy & Outreach AB Subgroup
> yocto-announce 	Announcements from the Yocto Project
> yocto-bsp 	BSP Interest Group
> Yocto-builds 	Build failures and discusion about the build system
> yocto-infrastructure 	Infrastructure
> 
> 
> Proposed:
> =========
> linux-yocto 	Development list for the linux-yocto*.git Linux kernel
> 		repositories
> meta-ti 	Usage and development list for the meta-ti layer
> poky 		Usage and development list for the Poky build system
> 		(see README for patch submission)
> shoeleather 	Neutral Board Lab Mailing List
> 
> I'm not sure what "neutral" is meant to convey. How about:
> 
> 		Discussion list for the Shoeleather embedded board lab
> 
> yocto 		General discussion list for the Yocto Project and
> 		development for projects without dedicated lists
> 
> I think the yocto list is a bit problematic in that it mixes project
> conceptual discussion, user help desk, and development all on the same
> list. However, I'm trying to clarify what these actually are here - not
> change anything.
> 
> yocto-ab 	Yocto Project Advisory Board ???
> 
> This should imply the intended audience. Is it just meant for members?
> Is it meant as a way for non-AB members to observe what is going on?
> 
> yocto-advocacy 	Yocto Project advocacy & outreach AB subgroup
> 
> Same as above.
> 
> yocto-announce 	Announcements from the Yocto Project (low traffic)
> yocto-bsp 	BSP Interest Group ???
> 
> There is no detailed description for this list, so I'm not sure what
> this is really about.
> 
> Yocto-builds 	Build failures and discussion about the autobuilder
> 
> (includes typo fix, "build system" removed to avoid confusion with the
> "poky build system")
> 
> yocto-infrastructure 	Infrastructure ???
> 
> Jefro or Michael, can you come up with something appropriate here?
> 
> 
> For lists where certain guidelines should be used in communications and
> patch submission, we should document that in the detailed description of
> the list, such as [project] tags for example.

-- 
Denys

