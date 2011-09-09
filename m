Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD41E012AA
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 13:24:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Sep 2011 13:24:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,358,1312182000"; d="scan'208";a="49758823"
Received: from unknown (HELO [10.255.14.214]) ([10.255.14.214])
	by fmsmga001.fm.intel.com with ESMTP; 09 Sep 2011 13:24:09 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4E6A70A5.3090204@windriver.com>
References: <cover.1315509303.git.tom.zanussi@intel.com>
	<1315574255.1986.0.camel@ted> <1315576643.2367.25.camel@elmorro>
	<1315590304.1986.10.camel@ted> <1315595628.2367.67.camel@elmorro>
	<4E6A70A5.3090204@windriver.com>
Date: Fri, 09 Sep 2011 15:24:06 -0500
Message-ID: <1315599846.2367.71.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] More fixes for bug 1428
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
X-List-Received-Date: Fri, 09 Sep 2011 20:24:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-09 at 13:01 -0700, Mark Hatle wrote:
> On 9/9/11 2:13 PM, Tom Zanussi wrote:
> > On Fri, 2011-09-09 at 10:45 -0700, Richard Purdie wrote:
> >> On Fri, 2011-09-09 at 08:57 -0500, Tom Zanussi wrote:
> >>> On Fri, 2011-09-09 at 06:17 -0700, Richard Purdie wrote:
> >>>> On Thu, 2011-09-08 at 14:27 -0500, tom.zanussi@intel.com wrote:
> >>>>> From: Tom Zanussi <tom.zanussi@intel.com>
> >>>>>
> >>>>> oe-core commit dc3a8274c7e935fa564eea142d2535c9bcf2b272 for YOCTO #1428
> >>>>> broke meta-intel x86_64 builds:
> >>>>>
> >>>>> NOTE: Resolving any missing task queue dependencies
> >>>>> ERROR: Nothing RPROVIDES 'initramfs-live-install' (but /usr/local/src/yocto/sugarbay/meta/recipes-core/images/core-image-minimal-initramfs.bb RDEPENDS on or otherwise requires it)
> >>>>> ERROR: initramfs-live-install was skipped: incompatible with host x86_64-poky-linux
> >>>>>
> >>>>> This patchset restores the build.
> >>>>>
> >>>>> Build and install-tested on sugarbay and crownbay.
> >>>>>
> >>>>> More fixes for [YOCTO #1428]
> >>>>>
> >>>>> The following changes since commit b86f811663d834064af1e6778c408eb904fad0b9:
> >>>>>   Darren Hart (1):
> >>>>>         n450: update linux-yocto PREFERRED_VERSION to 3.0%
> >>>>>
> >>>>> are available in the git repository at:
> >>>>>
> >>>>>   git://git.yoctoproject.org/meta-intel.git tzanussi/1428-fix
> >>>>>   http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/1428-fix
> >>>>>
> >>>>> Tom Zanussi (2):
> >>>>>   meta-intel/common: create a grub2 version initramfs-live-install
> >>>>>   meta-intel/common: remove initramfs-live-install 1.0 bbappend
> >>>>
> >>>> Is there a disadvantage to moving to grub2 in OE-Core and then bringing
> >>>> these pieces into sync?
> >>>>
> >>>
> >>> Yes, it would make sense - the plan was to do that during the 1.2
> >>> cycle...
> >>
> >> If someone can confirm that 32 and 64 bit live images work with grub2
> >> and there is no good reason not to do this, I'd be in favour of doing
> >> this now rather than explain why its a mess...
> >>
> > 
> > I haven't tried the 32-bit BSPs with grub2 - been focused on other
> > things until this incomplete fix for 1428 seems to have forced the
> > issue, but can try it over the weekend and see what happens.
> > 
> > grub2 isn't a simple version bump from the legacy grub 0.97, but is a
> > completely incompatible re-write - I thought being more cautious in
> > removing the grub 0.97 that's worked fine for everything but the couple
> > of 64-bit meta-intel BSPs that need it would be something for 1.2, but
> > if it can go in now, why not...
> 
> We need to keep the older grub 0.97 as well.  grub2 is GPLv3 and a lot of people
> will refuse to use it based on that.
> 

Yeah, thanks for pointing that out.  Will keep the legacy version around
in any case...

Thanks,

Tom


> --Mark
> 
> > Tom
> > 
> >> Cheers,
> >>
> >> Richard
> >>
> > 
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



