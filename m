Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAFECE0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 08:57:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 30 Jul 2012 08:57:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128479873"
Received: from unknown (HELO [10.255.12.188]) ([10.255.12.188])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Jul 2012 08:57:36 -0700
Message-ID: <1343663854.21025.32.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 30 Jul 2012 10:57:34 -0500
In-Reply-To: <5016A805.4050807@linux.intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<118e9c4c78b61e5debac285efa420486c145993b.1343037893.git.nitin.a.kamble@intel.com>
	<5011A43F.50904@linux.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C0318E9CE@ORSMSX106.amr.corp.intel.com>
	<501212EE.8030507@linux.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C0318EA3C@ORSMSX106.amr.corp.intel.com>
	<50130EB2.7010300@linux.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C0318F3FC@ORSMSX106.amr.corp.intel.com>
	<5016A805.4050807@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/6] crownbay: customize the xorg.conf for the flat panel on the corwnbay kit
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
X-List-Received-Date: Mon, 30 Jul 2012 15:57:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-07-30 at 08:28 -0700, Darren Hart wrote:
> 
> On 07/30/2012 02:50 AM, Kamble, Nitin A wrote:
> > 
> > 
> >> -----Original Message----- From: Darren Hart
> >> [mailto:dvhart@linux.intel.com] Sent: Saturday, July 28, 2012 3:27
> >> AM To: Kamble, Nitin A Cc: yocto@yoctoproject.org;
> >> bruce.ashfield@windriver.com; Zanussi, Tom Subject: Re: [yocto]
> >> [PATCH 2/6] crownbay: customize the xorg.conf for the flat panel on
> >> the corwnbay kit
> >> 
> >> 
> >> 
> >> On 07/26/2012 10:31 PM, Kamble, Nitin A wrote:
> >>>>>> On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
> >>>>>>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> >>>>>>> 
> >>>>>>> The kit has Auo 800x600 LCD screen. Configuring Xorg for
> >>>>>>> it.
> >>>>>> 
> >>>>>> I presume the crownbay has additional display options? how
> >>>>>> does this impact those?
> >>>>>> 
> >>>>> This change sets the resolution of the screen to 800x600. And
> >>>>> this is applicable to LCD screen on the kit as well as
> >>>>> external monitor. I will add a note about it in the log.
> >>>> 
> >>>> I presume that without this change it was able to detect the 
> >>>> appropriate resolution of the connected monitor, but not of the
> >>>> LCD?
> >>>> 
> >>>> If so, this change effectively breaks that autodetection and
> >>>> forces everything to the 800x600 display which is arguably
> >>>> very low-resolution by today's standards. Why should this be
> >>>> the default? When you refer to "the kit", what exactly are you
> >>>> referring to?
> >>>> 
> >>>> Also, is this a discussion you have already had with Tom? I
> >>>> don't want to contradict what he has said regarding this BSP.
> >>> 
> >>> 
> >>> EMGD driver on crownbay gives few resolutions as options. By
> >>> default it tries to set 1366x768 resolution for both LCD and
> >>> external monitor. The Crownbay kit is a suitcase kind of box,
> >>> which has builtin LCD screen of resolution 800x600. This LCD
> >>> screen shows only 800x600 of the default 1366x768 area. So The
> >>> LCD is not able to show all the screen, and IMO it is a
> >>> functional issue.
> >>> 
> >>> For my Dell 1704FPTi monitor which has 1280x1024 native
> >>> resolution; When connected to the crownbay,  X cannot find a
> >>> working mode for this monitor. But if I set 800x600 in the
> >>> xorg.conf as this commit does, then both LCD & external monitor
> >>> can show the X screen without any issues.
> >> 
> >> This seems like a bug to me. The driver should be able to probe the
> >> display and use the optimal resolution without it being specified
> >> in the Xorg.conf. So far as I know we don't specify resolution in
> >> any of the meta-intel BSPs:
> >> 
> >> dvhart@envy:~/source/poky/layers/meta-intel [denzil] $ find .
> >> -name xorg.conf | xargs grep -i Modes
> >> 
> >> So while I agree the kit screen should work out of the box, the
> >> fact that even your dell lcd monitor doesn't work is cause for
> >> concern. Is there anything in the Xorg log that indicates why it
> >> isn't able to get the EDID data?
> >> 
> >> -- Darren
> >> 
> > 
> > In the xorg log I do not see any useful EDID information. Either
> > these displays do not support EDID, or the EDID support in the EMGD
> > driver is not working well with these devices. And the EMGD driver is
> > closed source. So we can't fix it. So IMO keeping the resolution to
> > 800x600 is the best possible solution for crownbay BSP.
> 
> Tom,
> 
> I've never booted a crownbay machine. What has your experience been with
> the displays on this board?
> 

I've never had any problems with X autodetecting the correct resolution
for either the LVDS or DVI output.  I actually had the unit Nitin has
now, but the first thing I did with that was unhook the dinky little
built-in panel and hook up a normal-sized LVDS screen that I could stand
up separately for testing.

In any case, I don't think it makes sense to hard-code a resolution for
a particular unusual screen in the default BSP - I'd suggest opening a
bug to find out why this screen can't be auto-detected if it's
important...

Tom 



