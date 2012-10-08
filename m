Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C63BE0027E
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 13:18:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Oct 2012 13:18:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,556,1344236400"; d="scan'208";a="231392285"
Received: from unknown (HELO [10.255.13.229]) ([10.255.13.229])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 13:18:45 -0700
Message-ID: <1349727525.1948.10.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Mon, 08 Oct 2012 15:18:45 -0500
In-Reply-To: <0E3AEF49-829E-47BC-BEF4-C66A23DA3DC7@keylevel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DBE54@ORSMSX105.amr.corp.intel.com>
	<0E3AEF49-829E-47BC-BEF4-C66A23DA3DC7@keylevel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel
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
X-List-Received-Date: Mon, 08 Oct 2012 20:18:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-08 at 21:02 +0100, Chris Tapp wrote:
> On 8 Oct 2012, at 17:35, Bodke, Kishore K wrote:
> 
> > 
> > 
> >> -----Original Message-----
> >> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >> bounces@yoctoproject.org] On Behalf Of Chris Tapp
> >> Sent: Monday, October 08, 2012 12:59 AM
> >> To: Bruce Ashfield
> >> Cc: yocto@yoctoproject.org Project
> >> Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs in the
> >> kernel
> >> 
> >> On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:
> >> 
> >>> On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp <opensource@keylevel.com>
> >> wrote:
> >>>> On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:
> >>>> 
> >>>>> Try adding the unionfs feature (below) to your kernel:
> >>>>> 
> >>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-
> >> 3.0/tree/meta/cfg/kernel-cache/features/unionfs?h=meta
> >>>>> 
> >>>>> create a file my_cedartrail.scc with following line:
> >>>>> include features/unionfs/unionfs.scc
> >>>>> 
> >>>>> put this file in a dir linux-yocto, the dir being created in
> >>>>> 
> >>>>> meta-cedartrail/recipes-kernel/linux
> >>>>> 
> >>>>> add following line in  meta-cedartrail/recipes-kernel/Linux/linux-
> >> yocto_3.0.bbappend
> >>>>> 
> >>>>> SRC_URI +="file://my_cedartrail.scc"
> >>>> 
> >>>> Thanks - I thought just running 'menuconfig' would allow me to enable it
> >> (for a quick test).
> >>>> 
> >>>> However, this still doesn't seem to be working. I can see that
> >> 'my_cedartrail.scc' gets fetched in to the build area, but I still don't see
> >> CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' folder in
> >> fs/ of the build tree.
> >>>> 
> >>>> Also, if I specify an invalid feature (e.g. feature2/unionfs/unionfs.scc) I'm
> >> not seeing any diagnostic.
> >>> 
> >>> unionfs was never merged to the 3.0 kernel, I re-added it to the
> >> development
> >>> trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tree at the moment). The
> >> meta
> >>> data is carried forward from the older kernels as a placeholder and is
> >>> documented
> >>> in the .scc file itself:
> >>> 
> >>> -----------------------
> >>> kconf non-hardware unionfs.cfg
> >>> 
> >>> # commented pending update to a newer version ported to 2.6.35+
> >>> # patch unionfs-2.5.4-integration.patch
> >>> -----------------------
> >>> 
> >>> So to get unionfs in the 3.0 kernel, we'd need a port .. but since
> >>> we've moved on
> >>> quite a bit past 3.0, I don't know of any pending ports myself.
> >> 
> >> Thanks Bruce.
> >> 
> >> I guess I need to ask the Intel guys if there are any plans to move Cedartrail on
> >> from 3.0 ?
> > 
> > If the interest is to have unionfs, you can still get it from 3.2 or 3.4 Kernel.
> > 
> > But the downside is you will be missing the PVR Graphics and will be falling back to the 
> > basic vesa graphics mode.
> 
> Tricky. One of the reasons for specifying Cedartrail was the accelerated graphics. However, I've got code running without acceleration and it looks like it should be fast enough to do what I need without it.
> 
> > PVR graphics has support only for  3.0 kernel only, so we had only put the 3.0 kernel recipe in the meta-intel.
> > 
> > We do not have plans to port PVR graphics to 3.4 kernel.
> 
> That's a pity, as this platform has a very good level of performance. I guess I'll have to be patient and wait for Ivy Bridge graphics ;-)
> 

Another option would be to try to do the kernel work needed to move the
driver to a later kernel - we have a similar situation with EMGD, which
also typically lags by a few kernel versions, so we just go ahead and
fix up whatever needs fixing up for the later kernels in order to keep
it working as we uprev the kernels.

Since 3.0 is going away soon and there seems to be interest in Cedar
Trail, we should see what we can do to keep it alive with the pvr
graphics support going forward.

Tom

> > We can update the Cedartrail BSP to have 3.2 and 3.4 kernel but it will be vesa graphics support only.
> 
> How much work would this take? It looks like there is no unification FS support in 3.0 that I could use instead, but this is only for a low-volume project and I wouldn't like to think it was using resource that could be deployed more effectively else where.
> 
> Thanks for your input on this - looks like I may need to revise my deployment strategy for this project ;-)
> 
> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



