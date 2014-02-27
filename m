Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E221E00717
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 10:18:42 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Feb 2014 10:18:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,556,1389772800"; d="scan'208";a="489403714"
Received: from ssaevars-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.24])
	by fmsmga002.fm.intel.com with ESMTP; 27 Feb 2014 10:18:31 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Thu, 27 Feb 2014 18:18:29 +0000
Message-ID: <1535634.dXkxAnYu3c@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.4-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <530F76AD.9000608@dynamicdevices.co.uk>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<1600678.J4ox3s7bCg@peggleto-mobl5.ger.corp.intel.com>
	<530F76AD.9000608@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 18:18:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 27 February 2014 17:32:29 Alex J Lennon wrote:
> On 27/02/2014 17:09, Paul Eggleton wrote:
> > On Thursday 27 February 2014 08:30:10 Khem Raj wrote:
> >> On Feb 27, 2014, at 7:59 AM, Alex J Lennon
> >> <ajlennon@dynamicdevices.co.uk>
> >> 
> >> wrote:
> >>> On 27/02/2014 15:50, Khem Raj wrote:
> >>>       > On Feb 27, 2014, at 6:16 AM, Alex J Lennon
> >>>       
> >>>       <ajlennon@dynamicdevices.co.uk> wrote:
> >>>       >> +PR = "r1"
> >>>       >> 
> >>>       >> +
> >>>       > 
> >>>       > get rid of that
> >>> 
> >>> Why is that Khem?
> >> 
> >> we have automatic PR server now a days, its enabled by default.
> > 
> > FWIW, I don't think it's enabled by default, at least not in OE-Core/Poky.
> > The point still stands though, it's the way PR should be managed rather
> > than manual bumping.
>
> <googling/> Are we talking about the "network based PR service"?

Yes, see:

 http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#working-with-a-pr-service
 
> Is this a single globally available nework service or a service that's
> intended to be running local to a specific build farm?

Specific build farm; it may be made externally accessible if necessary
however.

> My reading of the wiki page seems to imply it's intended to be local to
> a build farm, or system, rather than globally unique?

PR values needn't match up between different distros. The point is they should
get increased when a material change to the recipe's output happens; and this
can happen for example when:

* A class that the recipe inherits is changed 

* A dependency of the recipe that influences how the recipe is built gets
changed

* Some global configuration changed that affects how the recipe is built
e.g. DISTRO_FEATURES

* A bbappend is added or removed

In all of these cases the recipe itself does not get changed at all - prior to
the PR server we had to remember to manually bump PR in the affected recipes,
or (more often) we'd forget to handle it properly altogether. With the PR
server, PR bumps happen automatically in response to signatures changing,
which is about as accurate an indicator as we can get as far as determining
whether the output has changed, and certainly much less prone to mistakes.

> So if I'm releasing packages to production this now becomes a critical
> part of my infrastructure as I'll lose all my package revisions if
> something goes wrong with it?

Yes. Luckily it's not a particularly complicated piece of software; the only
extra thing you need to preserve is the sqlite database that contains the
hashes and corresponding PR values.
 
> And my packages will have different revisions from somebody elses's
> packages when they are running their own network based PR service?

Yes. If bbappends were involved all bets were off prior to the PR service
anyway since they were supposed to modify PR.
 
> I suppose the other question is, if I release a package of revision X,
> then another which is up-rev'd' to Y as I made a change to the recipe
> and so the NBPRS up-revs, then somebody comes back to me and tells me
> they are having a problem with Xm then how do I link that rev X to the
> specific commit that went to build it so I can audit ?

The PR server doesn't track this - however, all of this information does go
into buildhistory if you enable that.

> I haven't enabled this here, so does that mean all my package revisions
> will be r0 as I remove the PR variables from recipes ?

We're not talking about dropping all PR values in existing recipes, we're
talking about dropping them on upgrade (i.e. when PV changes), where
previously we'd have done that anyway or set them to "r0".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

