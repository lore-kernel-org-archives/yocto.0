Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E618CE0140E
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 12:36:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 May 2012 12:36:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151113816"
Received: from unknown (HELO [10.255.12.248]) ([10.255.12.248])
	by fmsmga001.fm.intel.com with ESMTP; 09 May 2012 12:36:44 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FAAC15A.40508@linux.intel.com>
References: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
	<baa4fcbfd70feedeef680b214a6f4186743e3c4b.1336510044.git.tom.zanussi@intel.com>
	<4FAAB3EF.7000301@linux.intel.com> <1336589443.2323.99.camel@elmorro>
	<4FAAC15A.40508@linux.intel.com>
Date: Wed, 09 May 2012 14:36:59 -0500
Message-ID: <1336592219.2323.111.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/9][KERNEL] meta/jasperforest: remove boot-live options
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
X-List-Received-Date: Wed, 09 May 2012 19:36:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-05-09 at 12:11 -0700, Darren Hart wrote:
> 
> On 05/09/2012 11:50 AM, Tom Zanussi wrote:
> > On Wed, 2012-05-09 at 11:14 -0700, Darren Hart wrote:
> >>
> >> On 05/08/2012 02:37 PM, tom.zanussi@intel.com wrote:
> >>> From: Tom Zanussi <tom.zanussi@intel.com>
> >>>
> >>> The boot-live options are already included via common-pc-64 so remove
> >>> the associated config settings from the top-level feature.
> >>
> >> The appropriate place for these in my opinion is in BSP-standard.scc and
> >> BSP-preempt_rt.scc. That would be the common-pc-64-standard.scc for
> >> example in this case.
> >>
> >> This should not be part of a machine config fragment as it is more of a
> >> ktype policy item than it is a bsp item. I expect "standard" kernels to
> >> be able to do live boot, but "tiny" images should not.
> >>
> > 
> > Right, this patch does actually remove it from the machine fragment for
> > the BSP, but I take your point - I was noticing when adding the usb
> > features that there are plenty of opportunities for cleanup of the
> > common-pc-* fragments, and it probably does make sense to add
> > 'policy'-related features to the -standard/preempt-rt containers in
> > general, though not just for 'tiny' since I doubt anyone would ever want
> > a 'tiny' jasperforest BSP.
> > 
> 
> Right, tiny was just an example.
> 
> > So, agreed in principal, but that's a separate task from this patchset.
> 
> That's fine. I can do it as well when I update the others. Nice to do
> general changes like that at once so the BSPs remain consistent.
> 

I don't mind doing this, but once I'm done with current tasks - it's
simple to do, but it does require some amount of care and testing since
any breakage there will cause a lot more screaming...

Tom

> --
> Darren
> 
> > 
> > Tom 
> > 
> >> Note that usb-mass-storage.scc should also be added to the standard and
> >> preempt-rt scc files per BSP. I've done the former and am currently
> >> working through the latter with my BSPs.
> >>
> >> --
> >> Darren
> >>
> >>>
> >>> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> >>> ---
> >>>  .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    7 -------
> >>>  1 files changed, 0 insertions(+), 7 deletions(-)
> >>>
> >>> diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
> >>> index 0a81a19..e2310a5 100644
> >>> --- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
> >>> +++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
> >>> @@ -34,13 +34,6 @@ CONFIG_PM=y
> >>>  CONFIG_ACPI=y
> >>>  CONFIG_INPUT=y
> >>>  
> >>> -# Needed for booting (and using) USB memory sticks
> >>> -CONFIG_BLK_DEV_LOOP=y
> >>> -CONFIG_NLS_CODEPAGE_437=y
> >>> -CONFIG_NLS_ISO8859_1=y
> >>> -
> >>> -CONFIG_RD_GZIP=y
> >>> -
> >>>  # NUMA support
> >>>  CONFIG_NUMA=y
> >>>  CONFIG_X86_64_ACPI_NUMA=y
> >>
> > 
> > 
> 



