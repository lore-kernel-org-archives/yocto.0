Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31E38E00747
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 12:29:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2012 12:29:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="139621111"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2012 12:29:24 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FAD3B0E.1020804@linux.intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<db3779a87c8877876dc4e5afe6bfa81914dc9725.1336697506.git.tom.zanussi@intel.com>
	<4FAD3B0E.1020804@linux.intel.com>
Date: Fri, 11 May 2012 14:29:19 -0500
Message-ID: <1336764559.27950.1.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 04/10] meta/common-pc: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 19:29:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-11 at 09:15 -0700, Darren Hart wrote:
> 
> On 05/10/2012 06:00 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Refactor bsp/common-pc/common-pc* to keep hardware-related options in
> > the base common-pc.scc while moving the more 'policy'-related options
> > into the files that include the base common-pc.scc fragment.
> > 
> > This allows the different kernel types to make use of the basic
> > machine support without dragging along possibly unwanted options that
> > fall under the heading of 'policy' for a specific kernel type.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  .../bsp/common-pc/common-pc-preempt-rt.scc         |    7 +++++++
> >  .../bsp/common-pc/common-pc-standard.scc           |    6 ++++++
> >  .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |    5 +----
> >  meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    4 ----
> >  4 files changed, 14 insertions(+), 8 deletions(-)
> > 
> > diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
> > index f8716ee..706f669 100644
> > --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
> > +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
> > @@ -4,4 +4,11 @@ define KARCH i386
> >  
> >  # no new branch required, re-use the ktypes/preempt-rt branch
> >  include ktypes/preempt-rt
> > +
> >  include bsp/common-pc/common-pc.scc
> > +
> > +# default policy for preempt-rt kernels
> 
> 
> needs  usb-mass-storage here
> 

Again, note that the original common-pc* doesn't have these options
other than CONFIG_USB_STORAGE and CONFIG_SCSI.

> > +include cfg/boot-live.scc
> > +include features/latencytop/latencytop.scc
> > +include features/profiling/profiling.scc
> > +include cfg/virtio.scc
> > diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
> > index f5baf52..83d49fd 100644
> > --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
> > +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
> > @@ -6,3 +6,9 @@ include ktypes/standard
> >  branch common-pc
> >  
> >  include common-pc.scc
> > +
> > +# default policy for standard kernels
> 
> needs  usb-mass-storage here and the config removed from common-pc.cfg
> 

Same here...

Tom

> > +include cfg/boot-live.scc
> > +include features/latencytop/latencytop.scc
> > +include features/profiling/profiling.scc
> > +include cfg/virtio.scc
> > diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
> > index 8d7a498..900eb27 100644
> > --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
> > +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
> > @@ -5,8 +5,5 @@ define KARCH i386
> >  include ktypes/tiny
> >  branch common-pc
> >  
> > -# Don't include common-pc.scc directly,
> > -# it pulls in too many non-hardware options
> > -kconf hardware common-pc.cfg
> > -kconf hardware common-pc-gfx.cfg
> > +include common-pc.scc
> 
> Nice!
> 
> > diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> > index 2338ea6..9bd72c1 100644
> > --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> > +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> > @@ -1,11 +1,7 @@
> >  kconf hardware common-pc.cfg
> >  kconf hardware common-pc-gfx.cfg
> >  
> > -include cfg/boot-live.scc
> >  include features/usb/ehci-hcd.scc
> >  include features/usb/uhci-hcd.scc
> >  include features/intel-e1xxxx/intel-e100.scc
> >  include features/intel-e1xxxx/intel-e1xxxx.scc
> > -include features/latencytop/latencytop.scc
> > -include features/profiling/profiling.scc
> > -include cfg/virtio.scc
> 
> Nice.
> 



