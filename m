Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3353DE0044D
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 14:59:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Mar 2012 14:59:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="131699805"
Received: from unknown (HELO [10.255.15.208]) ([10.255.15.208])
	by fmsmga001.fm.intel.com with ESMTP; 21 Mar 2012 14:59:46 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Autif Khan <autif.mlist@gmail.com>
In-Reply-To: <CADzUK1JtSDOp=3U3R14o_roY4scPc+EqV9P54aTiD695u8Faww@mail.gmail.com>
References: <CADzUK1L1JEveHaVgdXRUGh5a=GtfDnu6hFtcUt1vSmGkAyOVjg@mail.gmail.com>
	<1332361435.2322.209.camel@elmorro>
	<CADzUK1LbmYVNKsBGMBCaJs4GqPMh+8D-51D8tEvHV29rsEiWJg@mail.gmail.com>
	<1332362567.2322.222.camel@elmorro>
	<CADzUK1JtSDOp=3U3R14o_roY4scPc+EqV9P54aTiD695u8Faww@mail.gmail.com>
Date: Wed, 21 Mar 2012 16:59:54 -0500
Message-ID: <1332367194.2322.231.camel@elmorro>
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
X-List-Received-Date: Wed, 21 Mar 2012 21:59:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-03-21 at 17:28 -0400, Autif Khan wrote:
> >> >> Minor correction to the subject - I am using 1.2M3, not 1.2M2
> >> >>
> >> >> On Wed, Mar 21, 2012 at 4:14 PM, Autif Khan <autif.mlist@gmail.com> wrote:
> >> >> > I am trying to get hardware accelerated graphics (video in particular)
> >> >> > to work on my crownbay based hardware. I have EMGD 1.10 driver
> >> >> > integrated and working. The evidence for this is that when I use
> >> >> > glxgears (form mesa-demos) I get 115 fps instead of 4-5 fps.
> >> >> >
> >> >> > This is good, however, when I go over to the web2 browser (enabled by
> >> >> > defining WEB = "web-webkit" for recipe task-core-apps-x11-pimlico) - I
> >> >> > do not get graphics acceleration for javascript graphics. I also do
> >> >> > not get graphics acceleration when I watch an MP4 movie. I get 2-3 fps
> >> >> > instead of the standard 25 or 29 fps.
> >> >> >
> >> >> > This was not the case when Yocto used EMGD 1.8 driver - video worked
> >> >> > fine - I am not sure about accelerated javascript based graphics in
> >> >> > browser as I was not as far ahead in the project.
> >> >> >
> >> >> > Is this a known issue?
> >> >> >
> >> >
> >> > When I tested video using gst-launch, I saw the same thing, which was
> >> > due to a missing libva-tpi.  The latest commit in meta-intel added that
> >> > and fixed the problem for me.
> >> >
> >> > commit 162f3d1d3c538d7582a5e81205a9cdab74125b2b
> >> > Author: Tom Zanussi <tom.zanussi@intel.com>
> >> > Date:   Mon Mar 12 19:57:29 2012 -0500
> >> >
> >> >    ia32-base: add libva display dependencies to emgd xserver
> >> >
> >>
> >> I did a build today with tip - I have confirmed that I have this in the source.
> >>
> >> What files should have been added to the root filesystem image as a
> >> reult of adding libva-tpi, libva-glx and libva-egl?
> >>
> >
> > You should see those shared libraries in /usr/lib
> 
> I think that I do:
> 
> root@crownbay:/usr/lib# ls -l *libva*
> lrwxrwxrwx    1 root     root            19 Mar 21 17:38
> libva-egl.so.1 -> libva-egl.so.1.0.12
> -rwxr-xr-x    1 root     root          3040 Mar 21 17:07 libva-egl.so.1.0.12
> lrwxrwxrwx    1 root     root            19 Mar 21 17:38
> libva-glx.so.1 -> libva-glx.so.1.0.12
> -rwxr-xr-x    1 root     root         14868 Mar 21 17:07 libva-glx.so.1.0.12
> lrwxrwxrwx    1 root     root            19 Mar 21 17:38
> libva-tpi.so.1 -> libva-tpi.so.1.0.12
> -rwxr-xr-x    1 root     root          3856 Mar 21 17:07 libva-tpi.so.1.0.12
> lrwxrwxrwx    1 root     root            19 Mar 21 17:38
> libva-x11.so.1 -> libva-x11.so.1.0.12
> -rwxr-xr-x    1 root     root         28476 Mar 21 17:07 libva-x11.so.1.0.12
> lrwxrwxrwx    1 root     root            15 Mar 21 17:38 libva.so.1 ->
> libva.so.1.0.12
> -rwxr-xr-x    1 root     root         68816 Mar 21 17:07 libva.so.1.0.12
> 
> The older image did not have egl, glx and tpi
> 
> However, when I execute gst-launch -v playbin2 uri=file:///media/hdd/BBB.ogv
> 
> I get a lot of "There may be a timestamping problem, or this computer
> is too slow." warnings.
> 
> Attached are the logs created by the above command.
> 
> Is there something else that needs to be done?

Hmm, looks like the acceleration isn't kicking in.  Is that a supported
format for emgd accelaration? - I've been testing with 1080p .h264
videos, http://www.bigbuckbunny.org/index.php/download/, maybe if you
could try that so we know we're on the same page.

Tom


