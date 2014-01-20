Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ED68E0087A
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 09:43:44 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2014 09:43:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,691,1384329600"; d="scan'208";a="469606869"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.196.58]) ([10.7.196.58])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2014 09:43:43 -0800
Message-ID: <1390239822.3441.21.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Mon, 20 Jan 2014 09:43:42 -0800
In-Reply-To: <52DD5B7A.4000200@windriver.com>
References: <52B879B7.8000808@mindchasers.com>
	<CADkTA4Pxv1hnjxMW4b7yy3Q1-xn2scMROyU2ZaLmZ_i_R+VLQQ@mail.gmail.com>
	<52DD47DD.8080706@mindchasers.com> <52DD5B7A.4000200@windriver.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Development of Yocto Project Kernel outside of Intel?
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
X-List-Received-Date: Mon, 20 Jan 2014 17:43:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-01-20 at 12:23 -0500, Bruce Ashfield wrote:
> On 14-01-20 10:59 AM, Bob Cochran wrote:
> > On 12/23/2013 09:10 PM, Bruce Ashfield wrote:
> >> I can add a few thoughts.
> >>
> >> We obviously have the reference BSPs to represent the major
> >> architectures, and
> >> on the linux-yocto mailing list, we've been looking at BSPs from LSI
> >> as well as
> >> some other pending boards (I'm waiting on them to be submitted, so I
> >> won't mention
> >> them here). The xilinx boards also have some yocto-style support in
> >> their repository
> >> with us working to adopt and integrated version of them as we move
> >> into Yocto 1.6+.
> >>
> >> It's generally a slow process to get kernel versions aligned, but with
> >> the LF LTSI
> >> kernel(s), it helps create a neutral version that the Yocto project,
> >> OSVs, semis and
> >> others can use as a synchronization point. LTSI is part of the
> >> linux-yocto kernel
> >> trees as an integrated baseline, and LTSI has recently picked up more
> >> attention ..
> >> which has a byproduct of more BSPs being available in a similar
> >> format, version and
> >> configuration.
> >>
> >> Obviously we'd also love to see all relevant BSPs completely
> >> mainlined, with short
> >> stays in the Yocto tree (or others) as a BSP is developed, stabilized
> >> and eventually
> >> upstreamed.
> >>
> >> There's obviously a place for cutting edge trees, semi trees for the
> >> latest and greatest,
> >> stable trees .. and integrated staging grounds for all of the above.
> >> So navigating that
> >> mix, takes time, and we are getting there.
> >>
> >> Cheers,
> >>
> >> Bruce
> >
> >
> > Hi Bruce (& other yocto developers),
> >
> > Thank you for the information.  Below is a related follow on question,
> > as I try to sort out who's doing what with kernel patches for the
> > varying embedded system chips / SoCs:
> >
> > To what extent do kernel patches exist for Intel chip sets that are
> > released to embedded Intel customers but aren't yet posted as patches in
> > the yocto kernels?  I assume there are proprietary drivers for IP
> > covered under NDA.  Is this the case?  Does an Intel customer find
> > themselves picking some kernel patches from the linux-yocto branches and
> > others from login protected Intel sites?
> 
> Adding Darren, since he can elaborate better than I can.
> 
> The target for kernel modifications is inevitably the mainline
> linux kernel, but in the meantime, yes you will have patches that are
> both developed to support boards and then sent to LTSI or the Linux
> Yocto kernel as intermediate "release" mechanisms .
> 
> To what extend the mixing and matching happens, that wouldn't be
> a goal, since that is a home-brew mix of changes that no one really
> calls a BSP. Maybe Darren has  more information, or knows where to
> direct the query.


Hi Bob,

There are a couple of ways I can answer this. Intel is a big place, so
anything I say must be qualified with the realm of my experience and
influence.

As you say, there do exist IP-encumbered kernel features, these are
relatively rare and are becoming more so over time as we continue to
emphasize the importance of upstream-first development models. However,
even some of these are available through the Yocto Project (such as the
EMGD graphics driver). The meta-intel BSP layer is where these sorts of
things are done.

The vast majority of Linux support for Intel hardware and features are
developed upstream. Some areas are stronger in this area than others:
graphics, networking, power management, and other core areas are strong
examples of this done early and done well. 

Other more esoteric features tend to lag with respect to the pace of
silicon and Linux development processes. When this happens, the
linux-yocto repository and the LTSI kernels provide a means by which we
can get support for these features out to end-users while we continue to
work on getting them pushed upstream.

We continue to strive to work faster and push more and more of these
features into the upstream-first category, and I can say with first-hand
experience that things are improving here.

Does this answer your question?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



