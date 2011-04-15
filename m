Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C95854C800AC
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2011 15:44:14 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Apr 2011 13:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,221,1301900400"; d="scan'208";a="910233939"
Received: from unknown (HELO [10.255.12.222]) ([10.255.12.222])
	by fmsmga001.fm.intel.com with ESMTP; 15 Apr 2011 13:44:13 -0700
Message-ID: <4DA8AE1D.1070006@linux.intel.com>
Date: Fri, 15 Apr 2011 13:44:13 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
References: <4DA88C6B.7000602@linux.intel.com>
	<8F72E7245587B740B3CF41CCF57DAF3757B753B50B@orsmsx508.amr.corp.intel.com>
	<4DA8A762.8080106@linux.intel.com>
	<8F72E7245587B740B3CF41CCF57DAF3757B753B5BA@orsmsx508.amr.corp.intel.com>
In-Reply-To: <8F72E7245587B740B3CF41CCF57DAF3757B753B5BA@orsmsx508.amr.corp.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto Project Janitors Wiki
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
X-List-Received-Date: Fri, 15 Apr 2011 20:44:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/15/2011 01:24 PM, Osier-mixon, Jeffrey wrote:
> Maybe I'm the one who is confused. Looking at the contents of the
> Janitors page - I expected to see a list of existing things that need
> to be cleaned up. 

Cleaned-up, improved, etc. The page currently contains 3 tasks/projects:

1) Document undocumented variables according to bbvars.py
2) Rewrite bbvars.py to use bitbake to find variables
3) Modify create-pull-request and send-pull-request to use
git-request-pull directly.

> The most visible thing on the page is the
> description of how to enter tasks, and I think I assumed that was all
> that was there.

I'm referring to how to add new tasks to this Janitors wiki itself... is
that not what you were thinking I meant?

> It might be best to put the tasks format above the
> list of actual tasks so it doesn't look like the main focus of the
> list.

The tasks format IS above the list of actual tasks... did you mean "be
best NOT to put..."?

> Might also be good to add an auto-generated TOC right under the
> Tasks header - I'll look up how to make the wiki do that.

As opposed to the TOC at the top of the page?

> 
> Re submission guidelines - I'm working on a set of pages that show
> new participants how to submit code or documentation to the project.
> Part of these guidelines is details just like the "how to enter new
> tasks" description, so I may borrow that.

Perhaps the tasks themselves should be a Heading level (3 in this case).
That would make them stand out more and make them appear in the TOC.

--
Darren

> 
> -----Original Message----- From: Darren Hart
> [mailto:dvhart@linux.intel.com] Sent: Friday, April 15, 2011 1:16 PM 
> To: Osier-mixon, Jeffrey Cc: Yocto Project; Rifenbark, Scott M 
> Subject: Re: Yocto Project Janitors Wiki
> 
> On 04/15/2011 11:26 AM, Osier-mixon, Jeffrey wrote:
>> WOW fantastic, thanks for doing this.
>> 
>> It occurs to me that the items you put there are really specific 
>> submission guidelines,
> 
> I'm not following you here. "Submission Guidelines" ?
> 
> although that could be considered a janitorial
>> task in cleaning things up. I have it on my to-do list (soon
>> rather than someday) to create detailed participation guidelines,
>> and these should be a part of them. When I do that, maybe I'll move
>> these over and then create a link back, with "clean up existing
>> submissions" as part of the Janitor list. Does that make sense, or
>> am I misunderstanding your intent?
> 
> .. ditto ..
> 
> -- Darren
> 
>> 
>> -----Original Message----- From: Darren Hart 
>> [mailto:dvhart@linux.intel.com] Sent: Friday, April 15, 2011 11:20 
>> AM To: Yocto Project Cc: Rifenbark, Scott M; Osier-mixon, Jeffrey 
>> Subject: RFC: Yocto Project Janitors Wiki
>> 
>> I had a few too many tasks getting added to my Someday list and I 
>> thought this was a good opportunity to create the Janitors Task 
>> list. This is what I came up with:
>> 
>> https://wiki.yoctoproject.org/wiki/Janitors
>> 
>> Please have a look and provide your thoughts on the general
>> concept, the task format, etc.
>> 
>> I've CC'd Scott as the Documentation tasks are really his, I was 
>> just involved with writing the bbvars. We definitely need people
>> to do the research on those variables, but if they send patches, or
>> just text descriptions is really up to Scott - so that task may
>> need editing.
>> 
>> Finally, if you like the idea and have some of your own Someday 
>> tasks, please feel free to add them.
>> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

