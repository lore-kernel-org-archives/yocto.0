Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6863DE0059A
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 13:42:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Mar 2012 13:42:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121652958"
Received: from unknown (HELO [10.255.15.208]) ([10.255.15.208])
	by azsmga001.ch.intel.com with ESMTP; 21 Mar 2012 13:42:39 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Autif Khan <autif.mlist@gmail.com>
In-Reply-To: <CADzUK1LbmYVNKsBGMBCaJs4GqPMh+8D-51D8tEvHV29rsEiWJg@mail.gmail.com>
References: <CADzUK1L1JEveHaVgdXRUGh5a=GtfDnu6hFtcUt1vSmGkAyOVjg@mail.gmail.com>
	<1332361435.2322.209.camel@elmorro>
	<CADzUK1LbmYVNKsBGMBCaJs4GqPMh+8D-51D8tEvHV29rsEiWJg@mail.gmail.com>
Date: Wed, 21 Mar 2012 15:42:47 -0500
Message-ID: <1332362567.2322.222.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: Graphics Acceleration on crownbay - 1.2M3 + meta-intel tip
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
X-List-Received-Date: Wed, 21 Mar 2012 20:42:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-03-21 at 16:29 -0400, Autif Khan wrote:
> On Wed, Mar 21, 2012 at 4:23 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > On Wed, 2012-03-21 at 16:15 -0400, Autif Khan wrote:
> >> Minor correction to the subject - I am using 1.2M3, not 1.2M2
> >>
> >> On Wed, Mar 21, 2012 at 4:14 PM, Autif Khan <autif.mlist@gmail.com> wrote:
> >> > I am trying to get hardware accelerated graphics (video in particular)
> >> > to work on my crownbay based hardware. I have EMGD 1.10 driver
> >> > integrated and working. The evidence for this is that when I use
> >> > glxgears (form mesa-demos) I get 115 fps instead of 4-5 fps.
> >> >
> >> > This is good, however, when I go over to the web2 browser (enabled by
> >> > defining WEB = "web-webkit" for recipe task-core-apps-x11-pimlico) - I
> >> > do not get graphics acceleration for javascript graphics. I also do
> >> > not get graphics acceleration when I watch an MP4 movie. I get 2-3 fps
> >> > instead of the standard 25 or 29 fps.
> >> >
> >> > This was not the case when Yocto used EMGD 1.8 driver - video worked
> >> > fine - I am not sure about accelerated javascript based graphics in
> >> > browser as I was not as far ahead in the project.
> >> >
> >> > Is this a known issue?
> >> >
> >
> > When I tested video using gst-launch, I saw the same thing, which was
> > due to a missing libva-tpi.  The latest commit in meta-intel added that
> > and fixed the problem for me.
> >
> > commit 162f3d1d3c538d7582a5e81205a9cdab74125b2b
> > Author: Tom Zanussi <tom.zanussi@intel.com>
> > Date:   Mon Mar 12 19:57:29 2012 -0500
> >
> >    ia32-base: add libva display dependencies to emgd xserver
> >
> 
> I did a build today with tip - I have confirmed that I have this in the source.
> 
> What files should have been added to the root filesystem image as a
> reult of adding libva-tpi, libva-glx and libva-egl?
> 

You should see those shared libraries in /usr/lib

Tom

> Thanks
> 
> Autif



