Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89EF5E00746
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 12:26:33 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 May 2012 12:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165092631"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2012 12:26:32 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FAD3A75.7070403@linux.intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<4b87723a74ddeb8a322878d1eab1d519d4d065ae.1336697506.git.tom.zanussi@intel.com>
	<4FAD3A75.7070403@linux.intel.com>
Date: Fri, 11 May 2012 14:26:27 -0500
Message-ID: <1336764387.27808.36.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 02/10] meta/common-pc: use usb features
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
X-List-Received-Date: Fri, 11 May 2012 19:26:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-11 at 09:12 -0700, Darren Hart wrote:
> 
> On 05/10/2012 05:59 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Use the available ehci and uhci usb features and remove the associated
> > config settings from the top-level common-pc feature.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> 
> For what this does:
> 
> Acked-by: Darren Hart <dvhart@linux.intel.com>
> 
> Further thoughts:
> 
> I wonder why common-pc does not include OHCI HCDs?
> 
> >  CONFIG_USB_STORAGE=y
> 
> This should really be pulled out as well and added to the standard and
> preempt-rt bsp-ktype.scc files.
> 

The CONFIG_USB_STORAGE setting here is standalone, and the common-pc*
don't have the other options contained in the usb-mass-storage feature,
so that's why this was left behind.  Perhaps they should also include
the usb-mass-storage feature as well, but that would be adding more than
cleanup at this point.

Anyway, note that the later patches do add the usb-mass-storage to the
standard and preempt-rt files for the other non-common-pc* BSPs in the
patchset. 

> 
> >  CONFIG_USB_HID=y
> >  CONFIG_USB_HIDDEV=y
> > diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> > index bab45e6..2338ea6 100644
> > --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> > +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> > @@ -2,6 +2,8 @@ kconf hardware common-pc.cfg
> >  kconf hardware common-pc-gfx.cfg
> >  
> >  include cfg/boot-live.scc
> 
> This should be moved to the standard and preempt-rt bsp-ktype.scc files
> as well.
> 

The later patches do this for the boot-live feature.

Tom

> > +include features/usb/ehci-hcd.scc
> > +include features/usb/uhci-hcd.scc
> >  include features/intel-e1xxxx/intel-e100.scc
> >  include features/intel-e1xxxx/intel-e1xxxx.scc
> >  include features/latencytop/latencytop.scc
> 



