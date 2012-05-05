Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC8CE00596
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 18:14:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 May 2012 18:14:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="140315883"
Received: from unknown (HELO [10.255.12.135]) ([10.255.12.135])
	by orsmga002.jf.intel.com with ESMTP; 04 May 2012 18:14:52 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FA47B9A.1090109@linux.intel.com>
References: <cover.1336167660.git.tom.zanussi@intel.com>
	<4FA4608D.3000803@linux.intel.com> <1336176413.21923.23.camel@elmorro>
	<4FA47B9A.1090109@linux.intel.com>
Date: Fri, 04 May 2012 20:14:39 -0500
Message-ID: <1336180479.21923.30.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/7][KERNEL] add usb and mei features
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
X-List-Received-Date: Sat, 05 May 2012 01:14:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-04 at 18:00 -0700, Darren Hart wrote:
> 
> On 05/04/2012 05:06 PM, Tom Zanussi wrote:
> > On Fri, 2012-05-04 at 16:04 -0700, Darren Hart wrote:
> >>
> >> On 05/04/2012 03:07 PM, tom.zanussi@intel.com wrote:
> >>> From: Tom Zanussi <tom.zanussi@intel.com>
> >>>
> >>> This adds a few new features, one each for usb/[xeou]hci-hcd and
> >>> another for amt/mei, and refactors existing config options into a new
> >>> usb/base, which are then used in crownbay.
> >>>
> >>> v2: after suggestions from Bruce and Darren of a preference for a more
> >>> flattened feature tree structure, moved all the features into a single
> >>> usb/ feature dir.  I did however retain the common 'base' feature
> >>> because inlining that in each feature would mean that the same common
> >>> set would be repeated in multiple config fragments if more than one usb
> >>> feature was included in a BSP.
> >>
> >> As things stand now, a BSP would have to include both the base and the
> >> *hcd right?
> >>
> >> include usb/base.scc
> >> include ehci-hcd.scc
> >>
> >> Seems to me we should manage the dependencies wherever we can. When I've
> >> created fragments I've been including their requirements as well to make
> >> it easier on the integrator. Since you've put the dependencies in their
> >> own fragment, why not include the fragment in the *hcd.scc files?
> >>
> >> +++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
> >> @@ -0,0 +1,4 @@
> >> +define KFEATURE_DESCRIPTION "Enable options for ehci (USB 2.0)"
> >> +define KFEATURE_COMPATIBILITY board
> >> +
> >> + include base.scc
> >> +kconf hardware ehci-hcd.cfg
> >>
> >> Now if someone need only include the one line for the *hcd. Since it's
> >> only a total of 3 lines of CONFIG settings we're packaging up here, it
> >> seems to me we should be able to enable it with only 1 line of meta data.
> >>
> > 
> > Yes, this is exactly what I did in the previous patchset.
> > 
> > The problem is that if we do this for each of the *hcd fragments, we end
> > up with the options in base.cfg repeated for each, which may or may not
> > produce a config-check warning.
> 
> "May or may not"? If our tools complain about setting a config to the
> same value, I would prefer to address that in the tools.
> 

Well, there is this in the tools:

# Egads. People are listing the same thing multiple times within a fragment.
#  An evil sin that deserves its own category (and insults).
KCONF_FRAG_ERRS=$KCONF_DIR/fragment_errors.txt

Tongue-in-cheek obviously, but is pointing out bad form regardless.

Anyway, the right way to solve this would be to implement fragment
dependencies, where each of the *hcd fragments would contain something
like

 depends-on base.scc
 kconf hardware ehci-hcd.cfg

and the tools would make sure only one instance of the base.scc options
was included.

Obviously we don't have that or anything like that planned (which would
probably be an upstreamable project, not something I wanted to address
with this relatively (I thought) minor cleanup).

Tom

> 
> 
> Bruce, any comment on the intended behavior of the tools?
> 
> --
> Darren
> 
> > 
> > To avoid that, we need to be able to add the base.cfg items once
> > followed by the individual *hcd items as I did with the crownbay
> > example:
> > 
> > +include features/usb/base.scc
> > +include features/usb/ehci-hcd.scc
> > +include features/usb/ohci-hcd.scc
> > +include features/usb/uhci-hcd.scc
> > 
> > 
> > Tom
> > 
> >> --
> >> Darren
> >>
> >>>
> >>> Please pull into linux-yocto-3.2.
> >>>
> >>> Thanks,
> >>>
> >>> Tom
> >>>
> >>> The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
> >>>   Yang Shi (1):
> >>>         meta: Clean up BSPs kernel config
> >>>
> >>> are available in the git repository at:
> >>>
> >>>   git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/xhcd-mei-features
> >>>   http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xhcd-mei-features
> >>>
> >>> Tom Zanussi (7):
> >>>   meta: add usb/base feature
> >>>   meta: add usb/xhci-hcd feature
> >>>   meta: add usb/ehci-hcd feature
> >>>   meta: add usb/ohci-hcd feature
> >>>   meta: add usb/uhci-hcd feature
> >>>   meta/crownbay: use usb features
> >>>   meta: add mei feature
> >>>
> >>>  meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    6 ------
> >>>  meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    5 +++++
> >>>  meta/cfg/kernel-cache/features/amt/mei/mei.cfg  |    3 +++
> >>>  meta/cfg/kernel-cache/features/amt/mei/mei.scc  |    4 ++++
> >>>  meta/cfg/kernel-cache/features/usb/base.cfg     |    3 +++
> >>>  meta/cfg/kernel-cache/features/usb/base.scc     |    4 ++++
> >>>  meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg |    1 +
> >>>  meta/cfg/kernel-cache/features/usb/ehci-hcd.scc |    4 ++++
> >>>  meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg |    1 +
> >>>  meta/cfg/kernel-cache/features/usb/ohci-hcd.scc |    4 ++++
> >>>  meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg |    1 +
> >>>  meta/cfg/kernel-cache/features/usb/uhci-hcd.scc |    4 ++++
> >>>  meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg |    1 +
> >>>  meta/cfg/kernel-cache/features/usb/xhci-hcd.scc |    4 ++++
> >>>  14 files changed, 39 insertions(+), 6 deletions(-)
> >>>  create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
> >>>  create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/base.cfg
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/base.scc
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.scc
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.scc
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg
> >>>  create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.scc
> >>>
> >>
> > 
> > 
> 



