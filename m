Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B829EE00283
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 11:33:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Jul 2012 11:33:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="172784487"
Received: from vorpal.jf.intel.com (HELO [10.7.198.168]) ([10.7.198.168])
	by orsmga002.jf.intel.com with ESMTP; 16 Jul 2012 11:33:00 -0700
Message-ID: <1342456456.4156.2.camel@vorpal>
From: Joshua Lock <josh@linux.intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Mon, 16 Jul 2012 09:34:16 -0700
In-Reply-To: <CAEsOVNf-_+hca=qhXGjBiOYRn77-duCYoiTVj5HrYyGTzYZYHQ@mail.gmail.com>
References: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
	<50042C06.70900@linux.intel.com>
	<CAEsOVNfEw9sDfLVGCAM6AwQjzGrVNxuvrL4vcS=1kDEMaePK3g@mail.gmail.com>
	<50043429.4070204@linux.intel.com>
	<CAEsOVNf-_+hca=qhXGjBiOYRn77-duCYoiTVj5HrYyGTzYZYHQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: edison/denzil patches (post-1.1.2 and 1.2.1)
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
X-List-Received-Date: Mon, 16 Jul 2012 18:33:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-07-16 at 16:01 +0000, McClintock Matthew-B29882 wrote:
> On Mon, Jul 16, 2012 at 10:32 AM, Joshua Lock <josh@linux.intel.com> wrote:
> > On 16/07/12 08:10, McClintock Matthew-B29882 wrote:
> >>
> >> On Mon, Jul 16, 2012 at 9:58 AM, Joshua Lock <josh@linux.intel.com> wrote:
> >>>
> >>> On 12/07/12 10:43, McClintock Matthew-B29882 wrote:
> >>>>
> >>>>
> >>>> Josh, Scott:
> >>>>
> >>>> I've pushed a set of patches for edison/denzil branch - and I may push
> >>>> a few more still to:
> >>>>
> >>>>
> >>>>
> >>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mattsm/edison
> >>>>
> >>>>
> >>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mattsm/denzil
> >>>>
> >>>> These are all cherry-pick's and most applied cleanly and a few had
> >>>> some minor cleanups. Please consider these for after the point
> >>>> releases. I will continue to push to these branches and rebase these
> >>>> branches off the official upstream trees as well.
> >>>
> >>>
> >>>
> >>> I don't know how much work will be done on Edison after the 1.1.2
> >>> release. I
> >>> personally will no longer be working on it and I don't think the team
> >>> here
> >>> as enough resources to maintain it perpetually.
> >>
> >>
> >> OK.
> >>
> >>> I assume that these changes are predominantly to further improve PPC
> >>> support?
> >>
> >>
> >> Yes.
> >>
> >>> In general your branch has several types of changes that have generally
> >>> been
> >>> considered inappropriate for a point release (such as recipe upgrades,
> >>> new
> >>> functionality, etc).
> >>
> >>
> >> I see very little of this, the valgrind series and/or the a few other
> >> image generation bits.
> >
> >
> > Indeed, that's likely the sum of it but the changes in isolation don't offer
> > any context as to why they're required for PPC so my gut reaction is to
> > reject them as they violate the suggested guidelines for stable releases.
> 
> I'm fine to have some of them rejected, such is how things work ;)
> 
> >>> Personally I'm not very keen on the idea of pushing them all and
> >>> advocating
> >>> their inclusion. I'd strongly encourage adoption of this release series
> >>> if
> >>> it's to continue to be relevant to your work.
> >>
> >>
> >> So is poky edison dead now? How do I support folks that still want to
> >> use it? I understand that *you* may not have time but is there a
> >> process for someone that cares about this release still to do work? If
> >> a fork is required is there a way to point folks at this fork? Such as
> >> if you want this to work use this other version?
> >
> >
> > I certainly can't see why one would need to fork.
> >
> > I would like to see Edison live on, which is why I sent an email suggesting
> > it be adopted, *I* just don't have time to work on it any more.
> 
> I know what you mean ;)
> 
> > I'm sure Saul and/or David can help work out a process, as I don't have a
> > clear understanding of it (I am but one cog in the engine). I can't imagine
> > why it would be hugely different from the way it's been maintained thus far.
> >
> > Much of that work you've already been doing with the branch you have
> > submitted.
> 
> Yep, I've made my best effort to only backport commits already upstream.
> 
> > In addition there are a different set of requirements for just getting
> > changes into the branch vs. having some kind of release which includes those
> > changes.
> >
> > The latter would require QA, build/release engineering, release readiness,
> > etc.
> 
> I understand. I'm fine with adding stuff to the edison branch for now
> and we can worry about another official release sometime in the future
> (or never). I'm mostly wanting a place I can tell people to get the
> (working) code from for our targets. And ideally it's on
> yoctoproject.org and not github.com or git.fsl.com

Great, the best thing would be to submit a pull request against the
edison branch with a suitable subject.

> 
> Just for some more context, we just release our SDK off of edison and
> I expect plenty of activity around bugfixes and back porting commits.
> I would like this work to be available to all attempting to build
> edison as well.

Congratulations! I appreciate your effort in sharing this work.

Joshua


