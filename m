Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B28D4C800A9
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 14:26:22 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Jul 2011 12:26:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,522,1304319600"; d="scan'208";a="26868991"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 12 Jul 2011 12:26:07 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 12 Jul 2011 12:26:01 -0700
In-Reply-To: <4E1C9A00.5060005@linux.intel.com>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1310498767.2162.23.camel@scimitar>
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Supporting upcoming distribution releases
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
X-List-Received-Date: Tue, 12 Jul 2011 19:26:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-12 at 12:01 -0700, Darren Hart wrote:
> 
> On 07/12/2011 11:51 AM, Joshua Lock wrote:
> > In our technical team call today we spent some time discussing how to
> > support distribution releases that are due to happen around the time of
> > Yocto 1.1.
> > 
> > Yocto 1.1 is scheduled for release on October 6th[1], the same month in
> > which both Ubuntu and Fedora have new releases planned[2,3].
> > OpenSUSE doesn't have a release scheduled until November 10th[4].
> > 
> > We should accommodate for these releases in our planning around 1.1 as
> > we need to ensure that Yocto 1.1 can be used on the new versions of the
> > chosen supported distros.
> > 
> > I had initially suggested we have people doing test and any relevant
> > development around the beta cycles of Ubuntu and Fedora:
> > 
> > Fedora Beta (2011-09-20)
> > Ubuntu (2011-09-01)
> > In this time frame OpenSUSE will be on Milestone 5 (2011-09-01) which
> > afaict (based on the 6th milestone being followed by an RC) should
> > roughly equate to a beta.
> > 
> > However this aligns with our RC period at which point we may not want to
> > accept large patches?
> > 
> > To meet our stabilise complete goal of August 29th we'd have to have
> > people testing with:
> > Fedora Alpha (2011-08-16)
> > Ubuntu Alpha 3 (2011-08-04)
> > OpenSUSE Milestone 4 (2011-08-11)
> > 
> > What are peoples thoughts on this?
> 
> At the very least a sanity test to know which sorts of issues we'll hit
> with these would be valuable. However, I believe our policy is N-1, and
> not N+1,N,N-1, so supporting not-yet released versions isn't something I
> think we should spend too much time on. Minor fixes to support these
> post release seem like good candidates for a point release.

I understand what you're saying but I think the stance bears further
consideration because our release is so close to that of the
distributions and because so many of our target users will upgrade on
release day (or sooner) I think it's in the interest of the project to
be aware of the issues before release and ideally to have fixed as many
of any issues as possible.

I don't think it likely we will spin a point release in time to have
something that works on the distro launch day if we take the approach
you're advocating.

If people think this isn't a big deal I can live with that, but
experience suggests we will field support enquiries about these things
and therefore to my mind it seems prudent to accommodate for that.

> > I think the onus for this testing
> > will fall on engineers as the project QA is already pretty stretched. I
> > have a tendency to update to early releases on at least one machine so
> > will no doubt do some testing on Fedora but it would be nice to have a
> > genuine strategy for this rather than relying on ad-hoc developer
> > upgrades.
> 
> 
> I personally do not upgrade my primary development machine to
> pre-release distributions because I don't want those issues to derail me
> from working on features. However, I could certainly kick off VMs
> running whatever and set them building on one of our larger servers.

Absolutely. I'm not meaning to suggest all our developers should run
unstable OS's.

Aside; the schedule has feature development long complete by this
point ;-)

> 
> > 
> > Final note: I'm left wondering if this emails contents also make sense
> > as a wiki page?
> 
> Some sort of distro links for schedule page would be great. If people
> want to share that they are testing the pre-release distros, that would
> be useful, but we need to find a way to keep it concise and not into a
> "getting it to work on XYZ" forum - although that would be useful a
> separate page per distro.

Or perhaps we should just integrate this information into our schedule?

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


