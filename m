Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DF59E004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:04:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 20:04:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120780002"
Received: from unknown (HELO [10.255.15.131]) ([10.255.15.131])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2012 20:04:06 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4N=oU9qB83gfGhDFghp8wLD69_x9Edyz1w_hFke9wAs=Q@mail.gmail.com>
References: <cover.1331610171.git.tom.zanussi@intel.com>
	<86eeec9f1963b57809b988e148ddf43562e2f0bc.1331610171.git.tom.zanussi@intel.com>
	<4F5FA04C.7080901@linux.intel.com> <1331667871.21321.12.camel@elmorro>
	<CADkTA4N=oU9qB83gfGhDFghp8wLD69_x9Edyz1w_hFke9wAs=Q@mail.gmail.com>
Date: Tue, 13 Mar 2012 22:03:43 -0500
Message-ID: <1331694223.21321.21.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Wed, 14 Mar 2012 03:04:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-13 at 22:40 -0400, Bruce Ashfield wrote:
> On Tue, Mar 13, 2012 at 3:44 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > On Tue, 2012-03-13 at 12:30 -0700, Darren Hart wrote:
> >> Hi Tom,
> >>
> >> Some thoughts on this with respect to cleaning up and simplifying the
> >> recipes per our earlier discussions.
> >>
> >> On 03/12/2012 09:37 PM, tom.zanussi@intel.com wrote:
> >> > From: Tom Zanussi <tom.zanussi@intel.com>
> >> >
> >> > Switch crownbay and crownbay-noemgd to the 3.2 kernel.
> >> >
> >> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> >> > ---
> >> >  meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 ++
> >> >  meta-crownbay/conf/machine/crownbay.conf           |    2 ++
> >> >  .../linux/linux-yocto-rt_3.2.bbappend              |   20 ++++++++++++++++++++
> >> >  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   17 +++++++++++++++++
> >> >  4 files changed, 41 insertions(+), 0 deletions(-)
> >> >  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> >> >  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >
> >> > diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> >> > index 2c80bd8..af85b00 100644
> >> > --- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
> >> > +++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> >> > @@ -4,6 +4,8 @@
> >> >  #@DESCRIPTION: Machine configuration for Crown Bay systems, without Intel-proprietary graphics bits
> >> >  # i.e. E660 + EG20T
> >> >
> >> > +PREFERRED_VERSION_linux-yocto ?= "3.2%"
> >> > +
> >> >  require conf/machine/include/tune-atom.inc
> >> >  require conf/machine/include/ia32-base.inc
> >> >
> >> > diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> >> > index 2c1ef3d..1458bff 100644
> >> > --- a/meta-crownbay/conf/machine/crownbay.conf
> >> > +++ b/meta-crownbay/conf/machine/crownbay.conf
> >> > @@ -4,6 +4,8 @@
> >> >  #@DESCRIPTION: Machine configuration for Crown Bay systems
> >> >  # i.e. E660 + EG20T
> >> >
> >> > +PREFERRED_VERSION_linux-yocto ?= "3.2%"
> >> > +
> >> >  require conf/machine/include/tune-atom.inc
> >> >  require conf/machine/include/ia32-base.inc
> >> >
> >> > diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> >> > new file mode 100644
> >> > index 0000000..dee9bce
> >> > --- /dev/null
> >> > +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> >> > @@ -0,0 +1,20 @@
> >> > +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >> > +
> >> > +COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
> >> > +KMACHINE_crownbay-noemgd = "crownbay"
> >> > +
> >> > +KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
> >>
> >> I think we start putting cfg/smp.scc in the BSP scc file directly rather
> >> than in the recipe itself. This can be a follow-on patch, or just with
> >> the next kernel release even. But I wanted to point it out.
> >>
> >
> > Yeah, I saw that and agree - I just don't want to spend the time to do
> > all that now.  I basically have this week to get them all moved over
> > into a basically functional state and will submit patches to do this and
> > the below as follow-ons once the basics are out of the way.
> >
> >> > +
> >> > +COMPATIBLE_MACHINE_crownbay = "crownbay"
> >> > +KMACHINE_crownbay = "crownbay"
> >> > +
> >> > +KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
> >> > +
> >> > +# Update the following to use a different BSP branch or meta SRCREV
> >> > +#KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
> >> > +#SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
> >> > +#SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
> >> > +
> >> > +#KBRANCH_crownbay = "yocto/standard/preempt-rt/base"
> >> > +#SRCREV_machine_pn-linux-yocto-rt_crownbay ?= XXXX
> >> > +#SRCREV_meta_pn-linux-yocto-rt_crownbay ?= XXXX
> >> > diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> > new file mode 100644
> >> > index 0000000..3b02076
> >> > --- /dev/null
> >> > +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> > @@ -0,0 +1,17 @@
> >> > +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >> > +
> >> > +COMPATIBLE_MACHINE_crownbay = "crownbay"
> >> > +KMACHINE_crownbay  = "crownbay"
> >> > +KBRANCH_crownbay  = "standard/default/crownbay"
> >>
> >> I believe crownbay no longer requires special patches right? Can we just
> >> use the standard/default/base branch here and squash the crownbay branch?
> >>
> >
> > At the moment it doesn't, and I'll probably submit a patch to do that
> > for everything that it make sense for again after things are functional
> > with the simple changes first.
> 
> There's one catch with this. We currently have the graphics drivers staged as
> topic branches so they can be in tree, and be kept pristine. The BSPs merge
> the graphics topic branch they want, and we can leverage common commits
> across all the users.
> 
> If you drop the BSP branch, then the graphics changes need to be universally
> safe for all similar BSPs, since that merge will now be to a shared branch.
> That's normally fine, but for the case where we have multiple emgd versions,
> it can break things.
> 
> We have complete flexibility to how we stage the branches, and how we
> generate the content that is built, so this can change .. but that's
> how we currently
> have it setup. Those graphics merges are board specific changes and require
> a branch.
> 

That's fine, I'm perfectly happy to have per-BSP machine branches.
They're cheap, and I don't really see the reason to be so parsimonious
with them.  Also, they're always there, so if we do need to have a place
to put the odd machine-specific patch now and then we don't have to add
a new branch when we need to add those patches, or remove them once
they're gone.  I guess the system was kind of designed for that (machine
branches, even if empty)?

> 
> >
> >> > +KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
> >> > +
> >> > +COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
> >> > +KMACHINE_crownbay-noemgd  = "crownbay"
> >> > +KBRANCH_crownbay-noemgd  = "standard/default/crownbay"
> >> > +KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
> >> > +
> >> > +SRCREV_machine_pn-linux-yocto_crownbay ?= "4471c11c7755727219b673cb887d8a13b8715aba"
> >> > +SRCREV_meta_pn-linux-yocto_crownbay ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"
> >> > +
> >> > +SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "4471c11c7755727219b673cb887d8a13b8715aba"
> >> > +SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"
> >>
> >> The meta SRCREV shouldn't be unique from the base linux-yocto_3.2.bb
> >> recipe, so this can be dropped and save the effort of updating it later.
> >>
> >
> > I don't really want to let the meta SRCREV float - I've run into a
> > couple nasty problems in the past letting that happen. i.e. nobody does
> > runtime testing of the BSPs when they change the meta SRCREV in the base
> > recipe.
> 
> runtime testing is the hard part. I can build them .. but can't boot them all!
> 

Exactly, which is why I'm happy to push the SRCREVs for a BSP once I've
tested it...

Tom

> Cheers,
> 
> Bruce
> 
> >
> >> If we use the standard/default/base branch, the machine SRCREV can also
> >> be dropped.
> >>
> >
> > Agreed, if the machine branch changes to standard/default/base, I'll
> > change that too.
> >
> > Tom
> >
> >>
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 



