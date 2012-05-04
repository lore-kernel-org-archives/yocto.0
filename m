Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26ADE00747
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 09:43:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 May 2012 09:43:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="137073861"
Received: from unknown (HELO [10.255.12.135]) ([10.255.12.135])
	by orsmga001.jf.intel.com with ESMTP; 04 May 2012 09:43:44 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FA4062F.20807@linux.intel.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
	<4FA27CAF.8020205@windriver.com> <1336053044.2450.86.camel@elmorro>
	<4FA28EC9.1050607@windriver.com>  <4FA402C4.3070107@linux.intel.com>
	<1336149300.21923.8.camel@elmorro>  <4FA4062F.20807@linux.intel.com>
Date: Fri, 04 May 2012 11:43:32 -0500
Message-ID: <1336149812.21923.11.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5][KERNEL] add x/ehci-hcd and mei features
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
X-List-Received-Date: Fri, 04 May 2012 16:43:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-04 at 09:39 -0700, Darren Hart wrote:
> 
> On 05/04/2012 09:35 AM, Tom Zanussi wrote:
> > On Fri, 2012-05-04 at 09:24 -0700, Darren Hart wrote:
> >>
> >> On 05/03/2012 06:57 AM, Bruce Ashfield wrote:
> >>> On 12-05-03 09:50 AM, Tom Zanussi wrote:
> >>>> On Thu, 2012-05-03 at 08:40 -0400, Bruce Ashfield wrote:
> >>>>> On 12-05-02 11:35 PM, tom.zanussi@intel.com wrote:
> >>>>>> From: Tom Zanussi<tom.zanussi@intel.com>
> >>>>>>
> >>>>>> This adds a few new features, one for xhci-hcd and another for
> >>>>>> amt/mei, and refactors some existing config options into a new
> >>>>>> echi-hcd, which is then used in crownbay.
> >>>>>>
> >>>>>> If this looks like the way to go, I'll add similar USB features
> >>>>>> for ohci and uhci and fix up all the meta-intel BSPs to use
> >>>>>> them.
> >>>>>
> >>>>> I had a look, and while at first I thought it was perhaps an over
> >>>>> splitting and categorization. It does make things very clear, and
> >>>>> gets us a split that can be used to keep configs minimal and reusable.
> >>>>>
> >>>>> I also wasn't sure about directory splitting, since we do end up
> >>>>> with the names both in .scc/.cfg and the directory name. We could
> >>>>> flatten the directory down to just 'usb' and keep the names of the
> >>>>> files as the differentiator. And if we don't think we'll have to
> >>>>> carry any patches, we could put it under cfg/usb/<Tom's stuff>.
> >>>>>
> >>>>> I don't have a really strong opinion (but gave my preference) on this
> >>>>> split (several directories vs single), and I'd bet that you considered
> >>>>> the same thing. Comments ?
> >>>>>
> >>>>
> >>>> The directory splitting is definitely a result of personal preference on
> >>>> my part i.e. directories are cheap and I hate having bunches of files in
> >>>> a single directory.  This is actually the reason I tend to
> >>>> avoid /cfg. ;-)
> >>>
> >>> Aha! A valid point :)
> >>>
> >>>>
> >>>> In this case and most others, I find the directory splitting maps more
> >>>> cleanly 'at-a-glance' for me to the split in functionality, but as I
> >>>> said it's a personal preference and if most people prefer a more
> >>>> flattened tree, then I don't have a problem making that change...
> >>>
> >>> Nope. I'd rather not have you re-do it for just that minor change, when
> >>> there's a valid reason on both sides.
> >>>
> >>> I tossed the email .. and something has happened to my IMAP connection,
> >>> so I can't find them now. Can you resend just the pull request ? or
> >>> just the patches to me.
> >>>
> >>> We can wait to see if Darren has a strong opinion one way or the other
> >>> as well.
> >>
> >> Personally I prefer to keep directories minimal until such time as there
> >> is a need for more. As it is we're only talking about a handful of files
> >> which are still easily filtered. Still, this isn't a huge deal. I care
> >> more about the granularity of the setup. I feel having the usb/base bit
> >> adds unnecessarily to the file count.
> >>
> > 
> > OK, sounds like people like flat directories.
> > 
> > Actually, the other option would be to just put the options into the
> > top-level feature like everything else.  Was trying to clean that
> > current situation up a bit, but maybe it's not really needed and I'll
> > just continue with that, will have to think on it....
> 
> 
> I think at least a usb/ dir is worth while. My rule of thumb is that a
> new dir needs at least 3 things (I'd group cfg and scc as 1 thing).
> Again, highly subjective.
> 

OK, this is what I'll go with, then, four features in /usb
(ehci/xhci/uhch/ohci, etc), with no 'base' feature (inline those options
in each individual feature).

So Bruce, don't bother pulling in the current patchset, I'll resubmit a
new patchset later.

Tom

> --
> Darren
> 
> > 
> > Tom
> > 
> >> Otherwise I'm content-ish.
> >>
> >> --
> >> Darren
> >>
> >>>
> >>> Bruce
> >>>
> >>>>
> >>>> Tom
> >>>>
> >>>>
> >>>>> But definitely, this is the way to go, just a minor question about the
> >>>>> organization of the files.
> >>>>>
> >>>>> Bruce
> >>>>>
> >>>>>
> >>>>>>
> >>>>>> Please pull into linux-yocto-3.2.
> >>>>>>
> >>>>>> Thanks,
> >>>>>>
> >>>>>> Tom
> >>>>>>
> >>>>>> The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
> >>>>>>     Yang Shi (1):
> >>>>>>           meta: Clean up BSPs kernel config
> >>>>>>
> >>>>>> are available in the git repository at:
> >>>>>>
> >>>>>>     git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/xhcd-mei-features
> >>>>>>     http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xhcd-mei-features
> >>>>>>
> >>>>>> Tom Zanussi (5):
> >>>>>>     meta: add usb/host/base feature
> >>>>>>     meta: add usb/xhci-hcd feature
> >>>>>>     meta: add usb/ehci-hcd feature
> >>>>>>     meta/crownbay: use ehci-hcd feature
> >>>>>>     meta: add mei feature
> >>>>>>
> >>>>>>    meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |    4 ----
> >>>>>>    meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    2 ++
> >>>>>>    meta/cfg/kernel-cache/features/amt/mei/mei.cfg     |    3 +++
> >>>>>>    meta/cfg/kernel-cache/features/amt/mei/mei.scc     |    4 ++++
> >>>>>>    .../features/usb/ehci-hcd/ehci-hcd.cfg             |    1 +
> >>>>>>    .../features/usb/ehci-hcd/ehci-hcd.scc             |    6 ++++++
> >>>>>>    meta/cfg/kernel-cache/features/usb/host/base.cfg   |    3 +++
> >>>>>>    meta/cfg/kernel-cache/features/usb/host/base.scc   |    4 ++++
> >>>>>>    .../features/usb/xhci-hcd/xhci-hcd.cfg             |    1 +
> >>>>>>    .../features/usb/xhci-hcd/xhci-hcd.scc             |    6 ++++++
> >>>>>>    10 files changed, 30 insertions(+), 4 deletions(-)
> >>>>>>    create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
> >>>>>>    create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc
> >>>>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.cfg
> >>>>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.scc
> >>>>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.cfg
> >>>>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.scc
> >>>>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.cfg
> >>>>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.scc
> >>>>>>
> >>>>>
> >>>>
> >>>>
> >>>
> >>
> > 
> > 
> 



