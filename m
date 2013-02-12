Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2212E006AD
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 13:48:29 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Feb 2013 13:48:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,652,1355126400"; d="scan'208";a="256091416"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by azsmga001.ch.intel.com with ESMTP; 12 Feb 2013 13:48:27 -0800
Message-ID: <1360705707.1516.39.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Tue, 12 Feb 2013 15:48:27 -0600
In-Reply-To: <A873331A-C3F4-4E94-893D-A7C72FC0BFA7@keylevel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
	<E89AA40D-0FA6-4BC2-99D2-9548F06BDA5D@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A718D1C@ORSMSX101.amr.corp.intel.com>
	<000001ce08e6$9b51c250$d1f546f0$@annabooks.com>
	<1360699012.1516.26.camel@empanada>
	<A873331A-C3F4-4E94-893D-A7C72FC0BFA7@keylevel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: 'Yocto Discussion Mailing List' <yocto@yoctoproject.org>,
	'Darren Hart' <dvhart@linux.intel.com>
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Tue, 12 Feb 2013 21:48:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-02-12 at 21:34 +0000, Chris Tapp wrote:
> On 12 Feb 2013, at 19:56, Tom Zanussi wrote:
> 
> > On Mon, 2013-02-11 at 22:02 -0800, Sean Liming wrote:
> >> 
> >>> -----Original Message-----
> >>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>> bounces@yoctoproject.org] On Behalf Of Liu, Song
> >>> Sent: Monday, February 11, 2013 1:25 PM
> >>> To: Chris Tapp
> >>> Cc: Darren Hart; Yocto Discussion Mailing List
> >>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
> >>> 
> >>> Thanks for the reply, Chris! Feel free to let us know if you have any
> >>> questions. Hope your project will go well.
> >>> 
> >>> Song
> >>> 
> >>> -----Original Message-----
> >>> From: Chris Tapp [mailto:opensource@keylevel.com]
> >>> Sent: Monday, February 11, 2013 1:17 PM
> >>> To: Liu, Song
> >>> Cc: Bodke, Kishore K; Bruce Ashfield; Darren Hart; Saxena, Rahul; Zanussi,
> >>> Tom; Yocto Discussion Mailing List
> >>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
> >>> 
> >>> Hi Song / Kishore,
> >>> 
> >>> On 11 Feb 2013, at 18:47, Liu, Song wrote:
> >>> 
> >>>> Hi Chris,
> >>>> 
> >>>> Intel is still supporting critical fixes for the Cedar Trail BSP on
> >> Yocto Project
> >>> 1.3 release. If you need additional support for your project, I can
> >> connect you
> >>> with some Intel sales/support people who can help. At the same time, would
> >>> you be able to share more information about your project with me? It will
> >>> help when I ask them for additional support.
> >>> 
> >>> Thanks, that's good news.
> >>> 
> >>> The only slight down side from my perspective is we won't get the benefits
> >>> from 1.4 (and future) improvements. However, it will give me an excuse to
> >>> move the hardware on as new platforms become available ;-)
> >>> 
> >>> 
> >>>> Song
> >>>> 
> >>>> -----Original Message-----
> >>>> From: Chris Tapp [mailto:opensource@keylevel.com]
> >>>> Sent: Saturday, February 09, 2013 1:33 AM
> >>>> To: Bodke, Kishore K
> >>>> Cc: bruce.ashfield@windriver.com; dvhart@linux.intel.com; Saxena,
> >>>> Rahul; Liu, Song; Zanussi, Tom; linux-yocto@yoctoproject.org;
> >>>> yocto@yoctoproject.org
> >>>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail
> >>>> Machine
> >>>> 
> >>>> 
> >>>> On 8 Feb 2013, at 23:18, kishore.k.bodke@intel.com wrote:
> >>>> 
> >>>>> From: Kishore Bodke <kishore.k.bodke@intel.com>
> >>>>> 
> >>>>> 
> >>>>> Hi,
> >>>>> 
> >>>>> This patch set is to remove the Cedartail Machine from
> >>>>> Linux-yocto-3.4 Kernel.
> >>>>> Cedartrail BSP will not be supported for Yocto 1.4 Release.
> >>>> 
> >>>> Hi Kishore,
> >>>> 
> >>>> Are there any plans to bring support back in? We recently committed a
> >>> project to using this BSP for the Intel DN2800MT...
> >>>> 
> >>>>> Also Please remove the standard/cedartrail branch.
> >>>>> 
> >>>>> Please pull into linux-yocto-3.4/meta branch.
> >>>>> 
> >>>>> Thanks
> >>>>> Kishore.
> >>>>> 
> >>>>> The following changes since commit
> >>> f697e099bc76d5df3a307a5bc0cc25021dd6dfe0:
> >>>>> 
> >>>>> meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)
> >>>>> 
> >>>>> are available in the git repository at:
> >>>>> 
> >>>>> git://git.pokylinux.org/linux-yocto-contrib kishore/cedartrail_remove
> >>>>> http://git.pokylinux.org/cgit.cgi/linux-yocto-contrib/log/?h=kishore/
> >>>>> c
> >>>>> edartrail_remove
> >>>>> 
> >>>>> Kishore Bodke (1):
> >>>>> meta: Remove Cedartrail Machine
> >>>>> 
> >>>>> .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
> >>>>> .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
> >>>>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46
> >> --------------------
> >>>>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
> >>>>> 4 files changed, 82 deletions(-)
> >>>>> delete mode 100755
> >>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
> >>>>> delete mode 100755
> >>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
> >>>>> delete mode 100755
> >>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> >>>>> delete mode 100644
> >>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
> >>>>> 
> >>>>> --
> >>>>> 1.7.9.5
> >>>>> 
> >>>>> _______________________________________________
> >>>>> yocto mailing list
> >>>>> yocto@yoctoproject.org
> >>>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>> 
> >>>> Chris Tapp
> >>>> 
> >>>> opensource@keylevel.com
> >>>> www.keylevel.com
> >>>> 
> >>>> 
> >>>> 
> >>> 
> >>> Chris Tapp
> >>> 
> >>> opensource@keylevel.com
> >>> www.keylevel.com
> >>> 
> >>> 
> >>> 
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >> 
> >> 
> >> I haven't looked at the changes. Out of curiosity, is it possible to add a
> >> BSP back in for a new Yocto Project version? What would be the challenge?
> >> 
> > 
> > It probably wouldn't take much to bring it back - basically the pvr
> > graphics driver, which I assume is one of the most important features of
> > this BSP for users, is stuck at kernel version 3.0.  If everything else
> > stayed the same, forward-porting the GPL'ed kernel portion of the driver
> > would be all that would be needed to get it working again.  We've done
> > that routinely for other drivers such as EMGD, so I don't think that
> > would be too big a deal.
> 
> Would that mean only non-accelerated graphics? I remember someone on this list a while back saying they had seen it ported to (I think) 3.2 under a main-stream distro.
> 

No, the value is in the accelerated graphics and the effort would be to
keep that going - nobody cares about the non-accelerated (or that I've
heard anyway).

I didn't realize there were already ports past 3.0 for the pvr driver
out there - so much the easier if that's the case.

> > The bigger problem is who would support it going forward.  I could do
> > the initial work to fix it up (if I had the hardware, which I don't - I
> > may get a cedartrail netbook in March, so that ) (or we could take
> > patches) but I wouldn't have the time to support it after that.
> > 
> > If someone stepped up to support it, though, that would make a
> > difference in keeping it around in 1.4 and beyond, I think.
> 
> What would that involve? Is it fairly stand-alone, or would in-depth knowledge of the kernel 'magic' be required?
> 

Basically it would entail keeping it building and responding to and
fixing user problems.  The 'kernel magic' knowledge should only come
into play when moving to a new kernel version, but also if there were
problems that were rooted in the kernel or required debugging the kernel
portion.

Maybe the current maintainer could shed some light on the kinds of
problems they've had to deal with from users - my impression is that
it's along the lines of 'the pvr driver doesn't work with my LVDS panel'
and things like that.  Which can be a huge time sink to have to deal
with...

As for anything kernel-related that came up, I believe that was mostly
handled by the Intel team that wrote the driver, whose support we'd no
longer have (and is the main reason the BSP is being abandoned IIRC).
Obviously with them out of the picture, the new maintainer (with help
from the Yocto team I presume and would volunteer to help with) would
have to take on that role.

Tom

> > Tom
> > 
> >> Regards,
> >> 
> >> Sean Liming
> >> 
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> > 
> > 
> 
> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 



