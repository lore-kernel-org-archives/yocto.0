Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 626C5E00D93; Sat,  3 Oct 2015 14:53:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C26EE006D5
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 14:53:09 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so74197852wic.0
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 14:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Z0HUjCHS6c2iQlNkOnDdHqO2Mf5PYxRHLF2OBXaACdQ=;
	b=c14Z4BLcRQYPiqGY3MzDcv+3uCvSYzO4r5begK2NvsAlCEPekCwq+QUZgoLqlaoivP
	44liHDPvofZyzzL6gXuKKqIwFwmbQjRHxJxznf7MBvjgdD1Epe0pmLV0nuRriBIYt1f7
	4yfUTcKtHJs6IV6jTDhiD+TmaOLE1xiwwfPJjE4kV37CtjJAcvp0WyCETqjoppYxyZFK
	u8ako8SPxzih01X4gf/7fbaYo/KKbQpSr+rLT/alZBt+oU3gM1NzTStWrS1Q+vNukSc9
	t2/jdbx9Rn0/Dv23Y0xmYcU4dyuJA6PVVnvDJQwZzD9XLuUgiW69+vtsUui/IrtQDtLr
	hDFA==
X-Gm-Message-State: ALoCoQnMpRY4RUuNf1qNVE4wTV27ZAjY3QYKimLa+aktMEAd3M8LNsEY7uBSZUWwhULxFRxgxvEa
X-Received: by 10.180.198.142 with SMTP id jc14mr4310223wic.32.1443909188593; 
	Sat, 03 Oct 2015 14:53:08 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	bv2sm18372538wjc.11.2015.10.03.14.53.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 14:53:07 -0700 (PDT)
Date: Sat, 3 Oct 2015 23:53:05 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20151003215305.GH24208@resin>
References: <CAMKF1so00WoUcYDPN4mY67P1Rp_ognr=9WgKpkt4b=u2Euss_w@mail.gmail.com>
	<20151003191846.GB24208@resin>
	<CAMKF1sre0u-rv4trRYYuy1_p1zTcgVg61V715_nXdY+fs7AY8Q@mail.gmail.com>
	<20151003201156.GC24208@resin>
	<CAMKF1srrD24mfm0DzBXLkiFM7DhMA1LaGUxnMZGJmy9_Rd2hRQ@mail.gmail.com>
	<20151003203312.GD24208@resin> <20151003204050.GE24208@resin>
	<20151003204607.GF24208@resin> <20151003212752.GG24208@resin>
	<CAMKF1srVj2-uquPvS6hSHxadZh3k9csDb4oBxgrW-29JVOhecA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srVj2-uquPvS6hSHxadZh3k9csDb4oBxgrW-29JVOhecA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V4 1/5] userland: Fix install prefix and generate pkgconfigs
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
X-List-Received-Date: Sat, 03 Oct 2015 21:53:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 03, 2015 at 02:47:24PM -0700, Khem Raj wrote:
> On Sat, Oct 3, 2015 at 2:27 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Sat, Oct 03, 2015 at 10:46:07PM +0200, Andrei Gherzan wrote:
> >> On Sat, Oct 03, 2015 at 10:40:50PM +0200, Andrei Gherzan wrote:
> >> > On Sat, Oct 03, 2015 at 10:33:12PM +0200, Andrei Gherzan wrote:
> >> > > On Sat, Oct 03, 2015 at 01:31:24PM -0700, Khem Raj wrote:
> >> > > > On Sat, Oct 3, 2015 at 1:11 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >> > > > > On Sat, Oct 03, 2015 at 01:06:55PM -0700, Khem Raj wrote:
> >> > > > >> On Sat, Oct 3, 2015 at 12:18 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >> > > > >> > I tested with and without - same result.
> >> > > > >> > DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia usbgadget
> >> > > > >> > usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 libc-backtrace
> >> > > > >> > libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt
> >> > > > >> > libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab
> >> > > > >> > libc-ftraverse                  libc-getlogin libc-idn libc-inet-anl libc-libm
> >> > > > >> > libc-locales libc-locale-code                   libc-memusage libc-nis
> >> > > > >> > libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc
> >> > > > >> > libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
> >> > > > >> > libc-posix-regexp-glibc                     libc-posix-wchar-io largefile
> >> > > > >> > opengl ptest multiarch wayland pulseaudio sysvinit bluez5"
> >> > > > >> >
> >> > > > >> > No modification to the default poky distro.
> >> > > > >>
> >> > > > >> hmm I am using angstrom and it works there and for verification I now
> >> > > > >> tried with OE-Core ( alone ) it works there too, can you check some
> >> > > > >> other parameters that are there in your sandbox ? here is my build
> >> > > > >>
> >> > > > >>  MACHINE=raspberrypi2 bitbake userland
> >> > > > >> Parsing recipes: 100%
> >> > > > >> |######################################################################################################################################################################################################|
> >> > > > >> ETA:  00:00:00
> >> > > > >> Parsing of 918 .bb files complete (0 cached, 918 parsed). 1350
> >> > > > >> targets, 59 skipped, 0 masked, 0 errors.
> >> > > > >> NOTE: Resolving any missing task queue dependencies
> >> > > > >>
> >> > > > >> Build Configuration:
> >> > > > >> BB_VERSION        = "1.28.0"
> >> > > > >> BUILD_SYS         = "x86_64-linux"
> >> > > > >> NATIVELSBSTRING   = "Ubuntu-14.04"
> >> > > > >> TARGET_SYS        = "arm-oe-linux-gnueabi"
> >> > > > >> MACHINE           = "raspberrypi2"
> >> > > > >> DISTRO            = "nodistro"
> >> > > > >> DISTRO_VERSION    = "nodistro.0"
> >> > > > >> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
> >> > > > >> vfpv4 cortexa7"
> >> > > > >> TARGET_FPU        = "vfp-vfpv4-neon"
> >> > > > >> meta-raspberrypi  = "kraj/master:a903a9cd18ae556121265da93ed74f857944a0da"
> >> > > > >> meta              = "kraj/master:602e512b92bcc78403144fedeb4211bbf56ff1c8"
> >> > > > >>
> >> > > > >> NOTE: Preparing RunQueue
> >> > > > >> NOTE: Executing SetScene Tasks
> >> > > > >> NOTE: Executing RunQueue Tasks
> >> > > > >> NOTE: Tasks Summary: Attempted 454 tasks of which 315 didn't need to
> >> > > > >> be rerun and all succeeded.
> >> > > > >
> >> > > > > Here is my build configuration.
> >> > > > >
> >> > > > > Build Configuration:
> >> > > > > BB_VERSION        = "1.28.0"
> >> > > > > BUILD_SYS         = "x86_64-linux"
> >> > > > > NATIVELSBSTRING   = "Arch-rolling"
> >> > > > > TARGET_SYS        = "arm-poky-linux-gnueabi"
> >> > > > > MACHINE           = "raspberrypi2"
> >> > > > > DISTRO            = "poky"
> >> > > > > DISTRO_VERSION    = "2.0"
> >> > > > > TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard vfpv4
> >> > > > > cortexa7"
> >> > > > > TARGET_FPU        = "vfp-vfpv4-neon"
> >> > > > > meta
> >> > > > > meta-yocto
> >> > > > > meta-yocto-bsp    = "master:eac61f37e36099f74485dab398b57f3812826d17"
> >> > > > > meta-raspberrypi  = "master:48da0cdc5fb147a20b41a77b2dfeef4efd483b32"
> >> > > > > meta-oe
> >> > > > > meta-multimedia   = "master:f4533380c8a5c1d229f692222ee0c2ef9d187ef8"
> >> > > > >
> >> > > > >
> >> > > > > But anyway can you please check in your userland install dir for the header I'm
> >> > > > > missing? Or in sysroot.
> >> > > >
> >> > > > its part of userland itself so no other package should be needed and
> >> > > > not required in sysroot
> >> > > >
> >> > > > ./work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/package/usr/src/debug/userland/git-r5/build/interface/vmcs_host/wayland-dispmanx-server-protocol.h
> >> > > > ./work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/packages-split/userland-dbg/usr/src/debug/userland/git-r5/build/interface/vmcs_host/wayland-dispmanx-server-protocol.h
> >> > > > ./work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/build/interface/khronos/wayland-dispmanx-server-protocol.h
> >> > > > ./work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/build/interface/vmcs_host/wayland-dispmanx-server-protocol.h
> >> > >
> >> > > This is odd... what revision of userland are you using? The one on current
> >> > > meta-rpi master?
> >> > >
> >> > > --
> >> > > Andrei Gherzan
> >> >
> >> > This is not even in the current HEAD of master in userland official repository:
> >> > https://github.com/raspberrypi/userland/tree/master/interface/vmcs_host
> >> >
> >> > Are you sure you don't inject the file somehow? I really don't know what's
> >> > going on.
> >> >
> >> > --
> >> > Andrei Gherzan
> >>
> >> I found the mistery. It gets generated in another path:
> >> ./build/interface/khronos/wayland-dispmanx-server-protocol.h
> >>
> >> Figuring out why.
> >>
> >> --
> >> Andrei Gherzan
> >
> > I managed to get to the bottom of this. It's a racing issue. Basically, with
> > MAKE_PARALLEL high enough, the
> >
> > add_library(EGL ${SHARED} ${EGL_SOURCE})
> >
> > in git/interface/khronos/CMakeLists.txt gets to run before the header is
> > generated. No dependency configured for that. And in the sources of EGL there
> > is egl_wayland.c which includes the generated header by the call:
> >
> > wayland_add_protocol_server(
> >        EGL_SOURCE
> >        ../../interface/wayland/dispmanx.xml
> >        dispmanx
> > )
> >
> > Any idea how to define this dependency? What is the value of your PARALLEL_MAKE
>
> I use -j16, can you add the .h file with path to EGL_SOURCE

Adding the path to EGL_SOURCE won't work because cmake will complain that the
header is not in place. We need a dependency definition.

--
Andrei Gherzan

