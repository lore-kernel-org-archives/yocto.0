Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBD55E00C99; Mon, 28 Aug 2017 13:17:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9885DE00C89
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 13:17:11 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP; 28 Aug 2017 13:17:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,442,1498546800"; d="scan'208";a="123357396"
Received: from pchenn1x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.73.212])
	by orsmga004.jf.intel.com with ESMTP; 28 Aug 2017 13:17:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Tue, 29 Aug 2017 08:17:06 +1200
Message-ID: <3635644.FYUI1l1HSK@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAGsrAHfG5Ea1Fmq-50oHjyUAkwrz85ivS93ic8SgyLJWKBDwxw@mail.gmail.com>
References: <CAGsrAHcUUDgB=+3HnsMEVys2W9+ObMg=fB3AsKOyJLgP0SkCbg@mail.gmail.com>
	<CAGsrAHfG5Ea1Fmq-50oHjyUAkwrz85ivS93ic8SgyLJWKBDwxw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How can I make it for rpi3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Aug 2017 20:17:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mohammed,

You'd need to set MACHINE to "raspberrypi3" but for that to work I would 
assume you need to upgrade to current (latest stable at least) versions of all 
the layers.

I don't have a Raspberry Pi 3 board so I can't really advise you further on 
that side of things.

Cheers,
Paul

PS please use "reply all" so that replies stay on the mailing list, thanks.


On Tuesday, 29 August 2017 12:19:59 AM NZST you wrote:
> Hi Paul,
> I build that image but as you said it is not supporting...
> Now what changes I have to make in order to make it work for rpi3?
> 
> Thanks,
> Mohammed aqdam
> 
> On Aug 28, 2017 3:14 PM, "mohammed aqdam" <mohammedaqdam@gmail.com> wrote:
> 
> Thanks for your reply...
> 
> How can I add mirrors for that particular package?
> 
> Thanks
> Mohammed aqdam
> 
> On Aug 28, 2017 2:58 PM, "Paul Eggleton" <paul.eggleton@linux.intel.com>
> wrote:
> 
> > Hi Mohammed,
> >
> > On Monday, 28 August 2017 8:41:51 PM NZST mohammed aqdam wrote:
> > > I was build image for rpi3 using yocto, but the image which i build
> > > was not supporting camera(picamera),so after googling for a while i 
found
> > > this link
> > >
> > > https://github.com/pauldotknopf/raspberry-pi-camera-source
> > >
> > > now while building, i'm getting the following message...
> > >
> > > root@(none):/u/my_poky/test_poky/cam_poky/raspberry-pi-camer
> > a-source/build#
> > > bitbake -k camera-image-minimal
> > > Loading cache: 100%
> > > |
> > ############################################################
> > ############################################################
> > ####################|
> > > ETA:  00:00:00
> > > Loaded 3645 entries from dependency cache.
> > > NOTE: Resolving any missing task queue dependencies
> > >
> > > Build Configuration:
> > > BB_VERSION        = "1.28.0"
> > > BUILD_SYS         = "x86_64-linux"
> > > NATIVELSBSTRING   = "Ubuntu-14.04"
> > > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > > MACHINE           = "raspberrypi2"
> > > DISTRO            = "poky"
> > > DISTRO_VERSION    = "2.0.1"
> > > TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
> > > vfpv4 cortexa7"
> > > TARGET_FPU        = "vfp-vfpv4-neon"
> > > meta
> > > meta-yocto
> > > meta-yocto-bsp    = "HEAD:3b223f75eec1738fbc913858e8e11c8305e3edcb"
> > > meta-raspberrypi  = "HEAD:f2cff839f52a6e6211337fc45c7c3eabf0fac113"
> > > meta              = "HEAD:4d879cb8d7384ac4a96f22c1664b8875f2d8f615"
> > > meta-oe
> > > meta-python
> > > meta-networking   = "HEAD:c305ac5d2f5285d5eec8952a4ca7f3b4f89aed96"
> > > meta-camera-source = "master:62521e29499baf0be515e0b73ead80e34645fe33"
> > >
> > > NOTE: Preparing RunQueue
> > > NOTE: Executing SetScene Tasks
> > > NOTE: Executing RunQueue Tasks
> > > WARNING: Failed to fetch URL
> > > ftp://ftp.freedesktop.org/pub/mesa/10.6.3/mesa-10.6.3.tar.xz,
> > > attempting MIRRORS if available
> > > ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
> > > No such directory 'pub/mesa/10.6.3'.
> > >
> > >
> > > ERROR: Function failed: Fetcher failure for URL:
> > > 'ftp://ftp.freedesktop.org/pub/mesa/10.6.3/mesa-10.6.3.tar.xz'. Unable
> > > to fetch URL from any source.
> > > ERROR: Logfile of failure stored in:
> > > /u/my_poky/test_poky/cam_poky/raspberry-pi-camera-source/build/tmp/work/
> > cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/mesa-gl/2_10.6.3-r0/temp/
> > log.do_fetch.5133
> > > ERROR: Task 2426
> > > (/u/my_poky/test_poky/cam_poky/raspberry-pi-camera-source/build/../
> > openembedded-core/meta/recipes-graphics/mesa/mesa-gl_10.6.3.bb,
> > > do_fetch) failed with exit code '1'
> > >
> > > so tried to download the above file and copy that into download
> > > folder.but even after the coping downloaded file i'm getting the same
> > > error and
> > > the file which download and copy into downloaded folder is getting
> > replaced
> > > with mesa.10.6.3.lock file.
> > >
> > > how to solve this error? am i missing anything?
> > > Don't know what to do...
> >
> > Firstly, this error shouldn't have occurred because our source mirror has
> > this
> > file:
> >
> >   http://downloads.yoctoproject.org/mirror/sources/mesa-10.6.3.tar.xz
> >
> > I'm unsure as to why that wouldn't have worked unless your configuration
> > clears out the default value of MIRRORS, or our source mirror couldn't be
> > accessed by you for some reason. mesa-gl's log.do_fetch (path shown in 
your
> > error log) would explain exactly which URLs it tried if you did want to
> > figure
> > that out.
> >
> > Secondly, regarding copying the file into the downloads directory, that
> > alone
> > isn't enough, you also have to touch a ".done" file next to the file in 
the
> > downloads directory (the name of the file with .done appended to it) so
> > that
> > it assumes the file completely downloaded.
> >
> > Thirdly, you are using what is by now quite an old version of the build
> > system
> > - and you're building for rasperrypi2 which isn't the board you say you
> > have
> > (rasperrypi3) - perhaps because the raspberrypi3 configuration isn't
> > available
> > in that version, not sure. Maybe someone else can chime in regarding the
> > camera software for newer versions, I'm not sure about that either.
> >
> > Cheers,
> > Paul
> >
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> >
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre

