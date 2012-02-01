Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCB2AE004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 13:47:17 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2012 13:47:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119303678"
Received: from unknown (HELO [10.255.14.106]) ([10.255.14.106])
	by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2012 13:47:16 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F29B248.4060202@linux.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
	<4F29B248.4060202@linux.intel.com>
Date: Wed, 01 Feb 2012 15:47:07 -0600
Message-ID: <1328132827.2304.149.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 01 Feb 2012 21:47:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-02-01 at 13:44 -0800, Darren Hart wrote:
> 
> On 02/01/2012 01:36 PM, Saxena, Rahul wrote:
> > Hi Darren,
> > 
> > Thanks for the clarification.
> > 
> > I am building on Edison.  I found that ogg music files play
> > OK on my gaku player.  I think that should be good enough, but just for my information purposes
> > can you help me understand how does one accept the commercial iirc license ?
> 
> This has changed relatively recently, and I'm not finding the details in
> the current docs. For example, the gst-fluendo-mp3 recipe includes:
> 
> LICENSE_FLAGS = "commercial"
> 
> Taking a look at the git logs with "LICENSE_FLAGS" in them, in order to
> allow for building of such recipes, you must include "commercial" in the
> LICENSE_FLAGS_WHITELIST variable. I would attempt this with something
> like the following in my local.conf:
> 
> LICENSE_FLAGS_WHITELIST += "commercial"
> 
> Tom, can you confirm I've got this right?
> 

Yeah, that's right.

Tom

> Scott, once Tom confirms, this is a mechanism we need to get documented
> in the reference manual.
> 
> --
> Darren
> 
> 
> > 
> > Thanks
> > Rahul
> > 
> > -----Original Message-----
> > From: Darren Hart [mailto:dvhart@linux.intel.com] 
> > Sent: Wednesday, February 01, 2012 10:54 AM
> > To: Saxena, Rahul
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Gaku music player
> > 
> > 
> > 
> > On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
> >> Hello,
> >>
> >>  
> >>
> >> What type of music files is the Gaku music player on Sato desk top
> >> supposed to play ?
> >>
> >> For me it did not work with mp3 files..however it is playing the
> >> soundtrack from a .ogg video file
> > 
> > It depends on which licenses you allow (the gstreamer mp3 plugin
> > requires acceptance of the commercial license iirc). Are you building on
> > edison or master?
> > 
> > --
> > Darren Hart
> > Intel Open Source Technology Center
> > Yocto Project - Linux Kernel
> 



