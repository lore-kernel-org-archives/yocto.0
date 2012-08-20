Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B1A9E002A5;
	Mon, 20 Aug 2012 14:26:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2012 14:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="183272690"
Received: from unknown (HELO helios.localnet) ([10.252.121.107])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2012 14:26:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 20 Aug 2012 22:26:09 +0100
Message-ID: <1435514.v1EOzaWE9d@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <5032855A.5050704@linux.intel.com>
References: <5032855A.5050704@linux.intel.com>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>, Jason Kridner <jdk@ti.com>, "Wold,
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
X-List-Received-Date: Mon, 20 Aug 2012 21:26:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 20 August 2012 11:43:38 Darren Hart wrote:
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
> 
> We should then work to create meaningful Descriptions of all the lists.
> These should still fit on a single line, but I think we can improve on
> what we have. For example:
> 
> meta-ti		Mailing list for the meta-ti layer
> 
> is not particularly enlightening. Perhaps something like:
> 
> meta-ti		Usage and development of the meta-ti layer
> 
> If we do this all at once, we can also ensure a consistent language,
> tone, etc. I'll propose something for each list here and ask that
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

This is all good stuff, I'd just like to mention in case it is useful that I 
did update the list in the Reference Manual along with the information on how 
to contribute - which includes some direction on where to send patches. This 
is in the master version of the documentation but not the version currently 
shown on the website - we probably ought to fix that. We really ought to try to 
have all of this information consistent if at all possible.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

