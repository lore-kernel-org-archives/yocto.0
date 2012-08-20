Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFFF4E0027F;
	Mon, 20 Aug 2012 14:21:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2012 14:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="188937577"
Received: from unknown (HELO envy.home) ([10.7.199.146])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2012 14:20:59 -0700
Message-ID: <5032A9C4.9060307@linux.intel.com>
Date: Mon, 20 Aug 2012 14:19:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <5032855A.5050704@linux.intel.com>
	<20120820191505.GA29601@denix.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A5ED30@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A5ED30@ORSMSX101.amr.corp.intel.com>
X-Enigmail-Version: 1.4.3
Cc: Yocto Project <yocto@yoctoproject.org>, Denys Dmytriyenko <denys@ti.com>,
	Jason Kridner <jdk@ti.com>,
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
X-List-Received-Date: Mon, 20 Aug 2012 21:21:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/20/2012 01:55 PM, Rifenbark, Scott M wrote:
> I can replace the information on
> http://www.yoctoproject.org/community/mailing-lists with a generic
> bit about mailing lists and then provide a link to the
> https://lists.yoctoproject.org/ page.

That would work for me.

>  Regarding the text on the
> https://lists.yoctoproject.org link.  Who maintains that page?

The Description field is pulled from the administrative settings for
each of the lists managed by mailman. So once we agree on the
descriptions, the various list admins will update the descriptions and
the page will reflect that (I believe Jefro and I can cover most.. if
not all of them, but all the admins are CC'd here).

However, please do not make any changes until we come to a consensus on
how to handle this. I believe we have some discussion that needs to
happen first.

To prevent this turning into a multi-week nit-pic-fest, I suggest we set
Friday Augh 24th @ Noon PST as the deadline and the point at which the
agreed on changes can be made and all changes should be made final by
EOD PST on Monday Aug 27th.

--
Darren

> 
> Scott
> 
> -----Original Message----- From: Denys Dmytriyenko
> [mailto:denys@ti.com] Sent: Monday, August 20, 2012 12:15 PM To:
> Darren Hart Cc: Yocto Project; Rifenbark, Scott M; Paul Gortmaker;
> Richard Purdie; Wold, Saul; Paul Eggleton; Osier-mixon, Jeffrey;
> Zanussi, Tom; Hudson, Sean; Koen Kooi; Jason Kridner; Flanagan,
> Elizabeth; Michael Halstead Subject: Re: Documenting the mailing
> lists.
> 
> On Mon, Aug 20, 2012 at 11:43:38AM -0700, Darren Hart wrote:
>> Scott,
>> 
>> We've come across some more confusion about mailing lists recently.
>> I've sent a patch against poky to try and clear it up a bit in the
>> source, but we should also see about cleaning up the web
>> descriptions of the lists.
>> 
>> We have two pages that describe the lists:
>> 
>> http://www.yoctoproject.org/community/mailing-lists 
>> https://lists.yoctoproject.org/
>> 
>> My first recommendation would be to eliminate 
>> http://www.yoctoproject.org/community/mailing-lists and replace
>> links to it with links to https://lists.yoctoproject.org. This
>> eliminates the need to keep the CMS version in sync with the
>> mailman page. The mailman page should be considered the master
>> anyway as the Description field is taken directly from the list
>> administrative settings.
> 
> I completely agree with this proposal to unify and clean up the
> mailing list references and descriptions. I didn't even know there
> was a separate page at 
> http://www.yoctoproject.org/community/mailing-lists - probably
> because I was happy with https://lists.yoctoproject.org/ all the time
> :)
> 
> 
>> We should then work to create meaningful Descriptions of all the
>> lists. These should still fit on a single line, but I think we can
>> improve on what we have. For example:
>> 
>> meta-ti		Mailing list for the meta-ti layer
>> 
>> is not particularly enlightening. Perhaps something like:
>> 
>> meta-ti		Usage and development of the meta-ti layer
> 
> Not sure if this improves much - in either case it's just a generic 
> description of the mailing list that is specific to the corresponding
> layer, meta-ti. But I'm fine with the change, as long as we are
> unifying all the other list descriptions.
> 
> 
>> If we do this all at once, we can also ensure a consistent
>> language, tone, etc.
> 
> Exactly! Thanks for initiating this.
> 
> 
>> I'll propose something for each list here and ask that interested
>> parties comment and correct in reply. Once agreed upon, the admins
>> of the respective lists can make the changes (all CC'd)
>> 
>> Current: ======== linux-yocto 	Development list for the
>> linux-yocto*.git Linux kernel repositories meta-ti 	Mailing list
>> for the meta-ti layer poky 		Poky build system developer discussion
>> & patch submission for meta-yocto shoeleather 	Neutral Board Lab
>> Mailing List yocto 		Discussion of all things Yocto yocto-ab 	Yocto
>> Project Advisory Board yocto-advocacy 	Yocto Project Advocacy &
>> Outreach AB Subgroup yocto-announce 	Announcements from the Yocto
>> Project yocto-bsp 	BSP Interest Group Yocto-builds 	Build failures
>> and discusion about the build system yocto-infrastructure
>> Infrastructure
>> 
>> 
>> Proposed: ========= linux-yocto 	Development list for the
>> linux-yocto*.git Linux kernel repositories meta-ti 	Usage and
>> development list for the meta-ti layer poky 		Usage and development
>> list for the Poky build system (see README for patch submission) 
>> shoeleather 	Neutral Board Lab Mailing List
>> 
>> I'm not sure what "neutral" is meant to convey. How about:
>> 
>> Discussion list for the Shoeleather embedded board lab
>> 
>> yocto 		General discussion list for the Yocto Project and 
>> development for projects without dedicated lists
>> 
>> I think the yocto list is a bit problematic in that it mixes
>> project conceptual discussion, user help desk, and development all
>> on the same list. However, I'm trying to clarify what these
>> actually are here - not change anything.
>> 
>> yocto-ab 	Yocto Project Advisory Board ???
>> 
>> This should imply the intended audience. Is it just meant for
>> members? Is it meant as a way for non-AB members to observe what is
>> going on?
>> 
>> yocto-advocacy 	Yocto Project advocacy & outreach AB subgroup
>> 
>> Same as above.
>> 
>> yocto-announce 	Announcements from the Yocto Project (low traffic) 
>> yocto-bsp 	BSP Interest Group ???
>> 
>> There is no detailed description for this list, so I'm not sure
>> what this is really about.
>> 
>> Yocto-builds 	Build failures and discussion about the autobuilder
>> 
>> (includes typo fix, "build system" removed to avoid confusion with
>> the "poky build system")
>> 
>> yocto-infrastructure 	Infrastructure ???
>> 
>> Jefro or Michael, can you come up with something appropriate here?
>> 
>> 
>> For lists where certain guidelines should be used in communications
>> and patch submission, we should document that in the detailed
>> description of the list, such as [project] tags for example.
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

