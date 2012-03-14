Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13378E0137C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 08:52:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2012 08:52:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120970434"
Received: from unknown (HELO [10.255.15.131]) ([10.255.15.131])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2012 08:51:44 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F60AF1A.2020503@linux.intel.com>
References: <cover.1331610171.git.tom.zanussi@intel.com>
	<86eeec9f1963b57809b988e148ddf43562e2f0bc.1331610171.git.tom.zanussi@intel.com>
	<4F5FA04C.7080901@linux.intel.com> <1331667871.21321.12.camel@elmorro>
	<CADkTA4N=oU9qB83gfGhDFghp8wLD69_x9Edyz1w_hFke9wAs=Q@mail.gmail.com>
	<1331694223.21321.21.camel@elmorro> <4F600BAC.5030107@windriver.com>
	<4F6018F5.5060302@linux.intel.com> <4F601A96.5060507@windriver.com>
	<4F60AF1A.2020503@linux.intel.com>
Date: Wed, 14 Mar 2012 10:51:13 -0500
Message-ID: <1331740273.21321.32.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] meta-crownbay: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Wed, 14 Mar 2012 15:52:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-03-14 at 07:45 -0700, Darren Hart wrote:
> On 03/13/2012 09:12 PM, Bruce Ashfield wrote:
> > On 12-03-14 12:05 AM, Darren Hart wrote:
> >>
> >>
> >> On 03/13/2012 08:08 PM, Bruce Ashfield wrote:
> >>> On 12-03-13 11:03 PM, Tom Zanussi wrote:
> >>>> On Tue, 2012-03-13 at 22:40 -0400, Bruce Ashfield wrote:
> >>>>> On Tue, Mar 13, 2012 at 3:44 PM, Tom Zanussi<tom.zanussi@intel.com>   wrote:
> >>>>>> On Tue, 2012-03-13 at 12:30 -0700, Darren Hart wrote:
> 
> ...
> 
> >>>>>>> I believe crownbay no longer requires special patches right? Can we just
> >>>>>>> use the standard/default/base branch here and squash the crownbay branch?
> >>>>>>>
> >>>>>>
> >>>>>> At the moment it doesn't, and I'll probably submit a patch to do that
> >>>>>> for everything that it make sense for again after things are functional
> >>>>>> with the simple changes first.
> >>>>>
> >>>>> There's one catch with this. We currently have the graphics drivers staged as
> >>>>> topic branches so they can be in tree, and be kept pristine. The BSPs merge
> >>>>> the graphics topic branch they want, and we can leverage common commits
> >>>>> across all the users.
> >>>>>
> >>>>> If you drop the BSP branch, then the graphics changes need to be universally
> >>>>> safe for all similar BSPs, since that merge will now be to a shared branch.
> >>>>> That's normally fine, but for the case where we have multiple emgd versions,
> >>>>> it can break things.
> >>>>>
> >>>>> We have complete flexibility to how we stage the branches, and how we
> >>>>> generate the content that is built, so this can change .. but that's
> >>>>> how we currently
> >>>>> have it setup. Those graphics merges are board specific changes and require
> >>>>> a branch.
> >>>>>
> >>>>
> >>>> That's fine, I'm perfectly happy to have per-BSP machine branches.
> >>>> They're cheap, and I don't really see the reason to be so parsimonious
> >>>> with them.  Also, they're always there, so if we do need to have a place
> >>>> to put the odd machine-specific patch now and then we don't have to add
> >>>> a new branch when we need to add those patches, or remove them once
> >>>> they're gone.  I guess the system was kind of designed for that (machine
> >>>> branches, even if empty)?
> >>>
> >>> Exactly. We can collapse them where it makes sense, and keep there where
> >>> we need them. A machine branch is just that, a topic branch for development
> >>> and implicit documentation of a supported board. If a board may be extended
> >>> in the future .. a branch is nice to have.
> >>>
> >>> I'm in favour of keeping the count in control, but see no need to collapse
> >>> them down completely. That and I spent an hour trying to figure out
> >>> how to do some fancy merge logic and while it could be done, it just
> >>> makes things more complex. I'd prefer branches to overly complex
> >>> branch management logic.
> >>>
> >>
> >> Agreed on the concept. What I'm not understanding is how is having to
> >> get yocto/emgd-1.10 to merge with standard/base any different than
> >> having to get it to merge with:
> >>
> >> standard/default/crownbay
> >> standard/default/common-pc-64/sugarbay
> >> standard/default/fri2
> >>
> >> etc.
> >>
> >> emgd isn't premerged into these machine branches if I understand the scc
> >> files correctly, so how is this any different? (I'm sure it is, I trust
> >> you here, I would just like to understand what I'm missing).
> > 
> > When a tree is built from scratch (from the meta data + patch repo), or
> > when BSP validation runs across a tree. All BSPs are constructed in a
> > single tree. If you have merges into common branches, the third, fourth
> > or fifth one is going to eventually explode.
> 
> It seems like the obvious answer here is to always create a machine
> branch during tree construction if one does not already exist. This
> would address the concerns of automated bulk validation while still
> keeping the branching in the git tree to a minimum. Very few users will
> be manipulating the git tree in the WORKDIR, and those that do are
> expected to be advanced git users that can run:
> 
> $ git cherry standard/base
> 
> So why do I care about keeping the branch count down?
> 
> o It helps make it explicit where we have deviated from mainline.
>   - Clear visibility into this is one thing that users have
>     complained about.
>   - It maintains the 1:1 mapping between branches and actual source
>     changes we've discussed.
> 
> o It encourages people creating new BSPs to use an existing branch
>   if at all possible.
>   - We can encourage people to do this, but unless it is clear we
>     are following this advice ourselves, others will not follow.
> 
> Taking a hard line on this is also part of boiling down our language and
> firming up policy and tool definition. Doing so makes things more clear,
> easier to learn, understand, contribute to, as well as maintain and debug.
> 

In principle, I agree.  The main thing I don't like about it is the
potential there is for ping-ponging between having to add a branch
because we have a single BSP-specific patch and then having to remove
that branch again when it goes upstream or is no longer needed.

Users can use standard git queries to find out whether a machine branch
currently has anything that differs from its parent - I'm not sure
counting on the existence of a branch as a quick indicator that it
deviates from mainline is really all that useful for users, but maybe it
is.

In any case, it's a minor point and in the end if it makes things easier
for users, that trumps everything else...

Tom

> --
> Darren
> 
> 
> > 
> > That being said, I *can* inhibit the merges during tree construction and
> > only do it when individual boards are built. But in that scenario, we miss
> > an opportunity for automated/bulk validation that the merges are safe
> > and valid.
> > 
> > So your observation is correct, and it's just a use case of the descriptions
> > 
> > That's why I mentioned that we can collapse them, but there is an increase
> > in complexity. Something to keep in our back pocket, since it's there
> > to use when we need it.
> > 
> 
> 



