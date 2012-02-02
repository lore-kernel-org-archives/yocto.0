Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FCEAE004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 17:20:43 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2012 17:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113062463"
Received: from unknown (HELO [10.255.14.106]) ([10.255.14.106])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2012 17:20:42 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: jfabernathy <jfabernathy@gmail.com>
In-Reply-To: <4F29DF85.9040605@gmail.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
	<4F29B248.4060202@linux.intel.com> <1328132827.2304.149.camel@elmorro>
	<4F29BF30.80808@gmail.com> <1328140929.2304.157.camel@elmorro>
	<4F29DF85.9040605@gmail.com>
Date: Wed, 01 Feb 2012 19:20:34 -0600
Message-ID: <1328145634.2304.159.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: Gaku music player
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
X-List-Received-Date: Thu, 02 Feb 2012 01:20:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-02-01 at 19:57 -0500, jfabernathy wrote:
> On 02/01/2012 07:02 PM, Tom Zanussi wrote:
> > On Wed, 2012-02-01 at 17:39 -0500, jfabernathy wrote:
> >> On 02/01/2012 04:47 PM, Tom Zanussi wrote:
> >>> On Wed, 2012-02-01 at 13:44 -0800, Darren Hart wrote:
> >>>> On 02/01/2012 01:36 PM, Saxena, Rahul wrote:
> >>>>> Hi Darren,
> >>>>>
> >>>>> Thanks for the clarification.
> >>>>>
> >>>>> I am building on Edison.  I found that ogg music files play
> >>>>> OK on my gaku player.  I think that should be good enough, but just for my information purposes
> >>>>> can you help me understand how does one accept the commercial iirc license ?
> >>>> This has changed relatively recently, and I'm not finding the details in
> >>>> the current docs. For example, the gst-fluendo-mp3 recipe includes:
> >>>>
> >>>> LICENSE_FLAGS = "commercial"
> >>>>
> >>>> Taking a look at the git logs with "LICENSE_FLAGS" in them, in order to
> >>>> allow for building of such recipes, you must include "commercial" in the
> >>>> LICENSE_FLAGS_WHITELIST variable. I would attempt this with something
> >>>> like the following in my local.conf:
> >>>>
> >>>> LICENSE_FLAGS_WHITELIST += "commercial"
> >>>>
> >>>> Tom, can you confirm I've got this right?
> >>>>
> >>> Yeah, that's right.
> >>>
> >>> Tom
> >> I'm interested in this subject also.  If I use hob to look at a nice
> >> display of packages, I see that their are a lot of gst-fluendo-*
> >> pckages with MPLv1.1 Licenses. However, I don't see gst-fluendo-mp3
> >> specifically.
> >>       1. Is that package not a part of Yocto and a recipe has to be
> >>          written to get it from somewhere?
> > It is a part of yocto, it probably doesn't show up in HOB because of the
> > restricted license (nothing has changed there, I guess that also would
> > have been the case before with COMMERCIAL_LICENSE).
> >
> > Basically, the documentation hasn't caught up with the change yet
> > (actually it (COMMERCIAL_LICENSE) was never documented, we need to
> > change that in any case).
> >
> > The current 'documentation' for this, which I'll work with Scott on
> > adapting to the actual documentation, is in the text of this poky
> > commit:
> >
> > b68ea543603c35f4e3519d358e0d1e1e24bd5851
> >
> > and the set of packages that were changed from COMMERCIAL_LICENSE to
> > LICENSE_FLAGS is here:
> >
> > 7b81ef8d95d82c55e3650981d3010000cd493832
> >
> > Tom
> Okay, I found gst-fluendo-mp3 in the meta-recipes-multimedia. So is 
> including it the same as other packages you want in the image, putting 
> the following statements in the local.conf:
> 
> LICENSE_FLAGS_WHITELIST += "commercial"
> POKY_EXTRA_INSTALL += "gst-fluendo-mp3"
> 
> 
> I would think that specifying the media player in the image would bring in the dependent CODECs if the licenses were right, but what do I know.
> 

Yes, that LICENSE_FLAGS_WHITELIST line would allow gst-fluendo-mp3 in,
and that in turn bring in its dependencies.

Tom

> Jim A
> 
> 
> 
> >>       1. I know I can get the fluendo MP3 for Ubuntu with a
> >>          click-through license for personal use.
> >>>> Scott, once Tom confirms, this is a mechanism we need to get documented
> >>>> in the reference manual.
> >>>>
> >>>> --
> >>>> Darren
> >>>>
> >>>>
> >>>>> Thanks
> >>>>> Rahul
> >>>>>
> >>>>> -----Original Message-----
> >>>>> From: Darren Hart [mailto:dvhart@linux.intel.com]
> >>>>> Sent: Wednesday, February 01, 2012 10:54 AM
> >>>>> To: Saxena, Rahul
> >>>>> Cc: yocto@yoctoproject.org
> >>>>> Subject: Re: [yocto] Gaku music player
> >>>>>
> >>>>>
> >>>>>
> >>>>> On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
> >>>>>> Hello,
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>> What type of music files is the Gaku music player on Sato desk top
> >>>>>> supposed to play ?
> >>>>>>
> >>>>>> For me it did not work with mp3 files..however it is playing the
> >>>>>> soundtrack from a .ogg video file
> >>>>> It depends on which licenses you allow (the gstreamer mp3 plugin
> >>>>> requires acceptance of the commercial license iirc). Are you building on
> >>>>> edison or master?
> >>>>>
> >>>>> --
> >>>>> Darren Hart
> >>>>> Intel Open Source Technology Center
> >>>>> Yocto Project - Linux Kernel
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> 



