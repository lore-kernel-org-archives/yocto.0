Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF720E0050B; Fri, 18 Nov 2016 08:25:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AFCCE0049F
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 08:25:15 -0800 (PST)
Received: by mail-qk0-f174.google.com with SMTP id n21so269700298qka.3
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 08:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fwtGnLPQQCPyNMpaRsfTANJhzOZnUlim0tODNEkQU00=;
	b=t4IfqpLPPBti/97oZDM+HekEngZSzxUralp47PJG5brFvlRF2cZGedr9blu7yL3QOe
	tMLIWVviLvPDdCSdwLR1Q2O6ewOndhQoJa1LYQ5GND+N8TTAoFn5uZmy4/xyK/1R/OpD
	WTSwy397kgoNKAlF1cj7onPc9KQXJTlJ1TM7krusvIc6Y5m/75l3dRgpAHt5s2KA0aGO
	GWNgtxvTqW41A6dsg6WvYjOVObtYaT5CJbgKzjOAYFGw9Yo6pN1Mz8B+qcOv3W8+afWs
	gV9R0+I/CuVkYZZcVKcUSZraxmmj6vS3pZk82uUrZG5TMnxaw/JlbuHOYklWNgHLqLaW
	tMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fwtGnLPQQCPyNMpaRsfTANJhzOZnUlim0tODNEkQU00=;
	b=OIk2blRFvU/Srazk1Uge8XCPskr/zegEXhjzXHIRw+Vup8whZwUb0FUqyGXL0rzlfc
	M7A183dMdiAiXq6gQYmeQvQdeH/AbnDoOWJXZxVZ9AhkPWYjfqHfT+lo8nKSUSVP9yKD
	TY6j6wVGhKFWJKHQDQapRS1PaWytnNLanIURWCWh5U7S4TMDPJuAN/Zneg4N0NO7Vonn
	x5CEd/L3VCvvNvnm2AHBZDbdqUheJ6rUTFYlEPjQc/mVts3qZotC2Cxfj7ipO8Ddt120
	p3HaZxsaEQdaHeQ3jVSUflSXQk0UZ26wNompF9bkBr14FegYDst6VVA/JDWamaPNlbVR
	minQ==
X-Gm-Message-State: AKaTC03tfhLSZAQ7Qruh6FaCGmJozMMedZqzRLPCKDHW2sUVPbG9T3/f88/QjVOR4yY0G4P7xIr/KjFR9DtgwCLg
X-Received: by 10.55.106.134 with SMTP id f128mr672169qkc.121.1479486314768;
	Fri, 18 Nov 2016 08:25:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Fri, 18 Nov 2016 08:24:54 -0800 (PST)
In-Reply-To: <200347130.2920579.1479485216386@mail.yahoo.com>
References: <mailman.55098.1479481248.15860.yocto@yoctoproject.org>
	<200347130.2920579.1479485216386@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 18 Nov 2016 16:24:54 +0000
Message-ID: <CAJTo0LY6EXcK9Z-ir_oTZBdh=fjH-X6WSMNw0yHyDo=RUiG6aQ@mail.gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raspberry pi gtkmm_3.0.bb
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
X-List-Received-Date: Fri, 18 Nov 2016 16:25:18 -0000
Content-Type: multipart/alternative; boundary=001a114fddf63e2f09054195c019

--001a114fddf63e2f09054195c019
Content-Type: text/plain; charset=UTF-8

SRC_URI = "
http://ftp.gnome.org/pub/GNOME/sources/gtkmm/${PV}/gtkmm-${PV}.0.tar.bz2"
S = "${WORKDIR}/${BPN}-${PV}.0"

Just rename the recipe to gtkmm_3.0.0.bb, use ${BPN}-${PV}.tar.bz2, and
delete the S assignment.

That likely won't fix your problem but can't hurt.  Setting PR=r0 isn't
needed as that should be the default.

Ross

On 18 November 2016 at 16:06, Edward Vidal <develone@sbcglobal.net> wrote:

> Hello All,
>
> Thanks to Piotr Lewicki who noticed
> package version (PV) is "3.0-r0=" and not
> "3.0-r0" ?? Maybe this "=" sign causes some problem.
> There were 2 occurrences and 7 without the "="
> /poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-
> linux-gnueabi/gtkmm/3.0-r0=/usr
>
> He recommended that I add PR = "r0" to the recipe.
> The log indicates
> arm-poky-linux-gnueabi-libtool: warning: library
> '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/
> sysroots/raspberrypi2/usr/lib/libatkmm-1.6.la' was moved.
> arm-poky-linux-gnueabi-libtool:
> error: cannot find the library '/usr/lib/libatk-1.0.la' or unhandled
> argument '=/usr/lib/libatk-1.0.la'
>
> Makefile:748: recipe for target 'all-recursive' failed
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory '/home/vidal/wkg/yocto/
> RaspberryPi2/poky/build/tmp/work/cortexa7hf-neon-vfpv4-
> poky-linux-gnueabi/gtkmm/3.0-r0/build'
> Makefile:534: recipe for target 'all' failed
> make: *** [all] Error 2
>
>  Thanks in advance.
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>
>
> On Friday, November 18, 2016 8:04 AM, "yocto-request@yoctoproject.org" <
> yocto-request@yoctoproject.org> wrote:
>
>
> Send yocto mailing list submissions to
>     yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>     https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>     yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>     yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>   1. raspberry pi gtkmm_3.0.bb (Edward Vidal)
>   2. Re: populate_sdk_ext: Unable to locate package
>       nativesdk-buildtools-perl-dummy (Paul Eggleton)
>   3. uninative vs. BB_NO_NETWORK (Vuille, Martin (Martin))
>   4. Re: undefined references to `__dso_handle' (Daniel.)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Thu, 17 Nov 2016 21:01:33 +0000 (UTC)
> From: Edward Vidal <develone@sbcglobal.net>
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: [yocto] raspberry pi gtkmm_3.0.bb
> Message-ID: <1211982120.2332029.1479416493434@mail.yahoo.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hello All,
> I working with software that needs gtkmm_3.0.
> Poky 2.2 provides gtkmm_2.24.3 in
> meta-oe/reipes-gnome/gtk+
> I used recipetool and created gtkmm_3.0.bb
> I modified some lines and was able to get the
> recipe to fetch, unpack, and configure.
> when it tries to compile I am getting errors.
>
> Makefile:748: recipe for target 'all-recursive' failed
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory '/home/vidal/wkg/yocto/
> RaspberryPi2/poky/build/tmp/work/cortexa7hf-neon-vfpv4-
> poky-linux-gnueabi/gtkmm/3.0-r0/build'
> Makefile:534: recipe for target 'all' failed
> make: *** [all] Error 2
> ERROR: Function failed: do_compile (log file is located at
> /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/
> work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm/3.0-
> r0/temp/log.do_compile.17760)
>
> The recipe that I am trying to create is
> https://gist.github.com/develone/ffa79327ccd49e9aa9f5c07e4db9ad7d
>
> Any an all help is appreciated.
>
> Thanks in advance ?Edward Vidal Jr. e-mail develone@sbcglobal.net
> 915-595-1613
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/
> attachments/20161117/e682ad6a/attachment-0001.html>
>
> ------------------------------
>
> Message: 2
> Date: Fri, 18 Nov 2016 14:46:07 +1300
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> To: Michel D'HOOGE <michel.dhooge@free.fr>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] populate_sdk_ext: Unable to locate package
>     nativesdk-buildtools-perl-dummy
> Message-ID: <4182204.ZX1RAfnfPO@peggleto-mobl.ger.corp.intel.com>
> Content-Type: text/plain; charset="us-ascii"
>
> Hi Michel,
>
> On Wed, 16 Nov 2016 11:48:21 Michel D'HOOGE wrote:
> > I try to produce an extensible SDK for core-image-sato with the following
> > configuration:
> >
> > BB_VERSION = "1.32.0"
> > BUILD_SYS = "x86_64-linux"
> > NATIVELSBSTRING = "universal"
> > TARGET_SYS = "x86_64-poky-linux"
> > MACHINE = "vtc7200"
> > DISTRO = "poky-systemd"
> > DISTRO_VERSION = "2.2"
> > TUNE_FEATURES = "m64 corei7"
> >
> > The machine is based on an intel-corei7, with some features removed. And
> the
> > distro is poky-based, with only systemd (as detailed in the ref manual).
> > And I get the following error:
> >
> >
> > ERROR : buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install
> > packages. Command '/mnt/Yocto/vedecom-x86/build/tmp/sysroots/x86_
> > 64-linux/usr/bin/apt-get install --force-yes --allow-unauthenticated
> > nativesdk-locale-base-en-us nativesdk-git nativesdk-make native
> > sdk-ca-certificates nativesdk-tar nativesdk-python3-modules
> > nativesdk-texinfo nativesdk-python3-git nativesdk-ncurses-terminfo-base
> n
> > ativesdk-chrpath nativesdk-python3-misc nativesdk-git-perltools
> > nativesdk-buildtools-perl-dummy nativesdk-pigz nativesdk-wget natives
> > dk-python3-core' returned 100:
> > Reading package lists...
> > Building dependency tree...
> > Reading state information...
> > E: Unable to locate package nativesdk-buildtools-perl-dummy
> >
> > The package exists and is in:
> > tmp/deploy/deb/buildtools-dummy-nativesdk/nativesdk-
> buildtools-perl-dummy_1.
> > 0-r2_allarch.deb while the other listed packages are in
> > tmp/deploy/deb/x86_64-nativesdk.
> >
> > It seems this package is empty, so maybe I should simply remove it from
> > poky/meta/recipes-core/meta/buildtools-tarball.bb.
>
> FYI the purpose of this package is to take precedence over the real
> nativesdk-
> perl so that it doesn't get into the buildtools, since we prefer to avoid
> the
> issues associated with overriding the host perl there. If you remove this
> package then perl will enter buildtools and you will experience other
> issues.
>
> I think the issue is this hasn't really been tested with deb packaging.
> You
> have hit a genuine bug though - would you mind filing a bug at
> http://bugzilla.yoctoproject.org?
>
> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>
> ------------------------------
>
> Message: 3
> Date: Fri, 18 Nov 2016 14:58:04 +0000
> From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: [yocto] uninative vs. BB_NO_NETWORK
> Message-ID:
>     <30C2D590D16A5C46ADFE6521910377987FF82A5C@AZ-US1EXMB02.
> global.avaya.com>
>
> Content-Type: text/plain; charset="us-ascii"
>
> Currently using Yocto 1.8, planning upgrade to 2.2
>
> Per the Reference Manual, "The uninative class is now enabled by default
> in Poky. [...]
> With this class enabled, a tarball containing a pre-built C library is
> downloaded at the start of the build."
>
> We have to build with BB_NO_NETWORK = "1"
>
> How will this interact with uninative? Do we have to download the
> pre-built C library
> to our local mirror, like other package tarballs?
>
> MV
>
>
> ------------------------------
>
> Message: 4
> Date: Fri, 18 Nov 2016 13:00:45 -0200
> From: "Daniel." <danielhilst@gmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] undefined references to `__dso_handle'
> Message-ID:
>     <CAF3SDA4KAw53kXoU73B3GB+HYLcLqaJ2WPtg3BdEKzwxL5h9rg@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi,
>
> Did you have multilib installed!?
>
> Regards,
>
> 2016-11-17 15:27 GMT-02:00 Elazar Leibovich <elazarl@gmail.com>:
>
> > As far as I  know, no customization, I didn't even switch GCC's version.
> I
> > installed clang alongside gcc, but didn't change the default.
> >
> > Can you refer me to what you have in mind that might be customized, and
> > I'll check?
> >
> > On Thu, Nov 17, 2016 at 7:23 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >
> >>
> >>
> >> On 11/16/16 2:05 AM, Elazar Leibovich wrote:
> >> > Hi,
> >> >
> >> > I followed the quickstart tutorial, branch morty, to create the most
> >> basic
> >> > image on local QEMU, and I got compilation errors for __dso_handle
> >> missing.
> >> > I'm using ubuntu 16.
> >> > Here is an example output:
> >> > ++ -nostdlib++  -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib
> >> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
> >> raspberrypi3/usr/lib/crti.o
> >> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
> >> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0/crtbeginS.o
> >> >  .libs/compatibility.o .libs/compatibility-debug_list.o
> >> > .libs/compatibility-debug_list-2.o .libs/compatibility-c++0x.o
> >> > .libs/compatibility-atomic-c++0x.o .libs/compatibility-thread-c++0x.o
> >> > .libs/compatibility-chrono.o .libs/compatibility-condvar.o
> >> >  -Wl,--whole-archive ../libsupc++/.libs/libsupc++convenience.a
> >> > ../src/c++98/.libs/libc++98convenience.a
> >> > ../src/c++11/.libs/libc++11convenience.a -Wl,--no-whole-archive  -lm
> >> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
> >> x86_64-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-
> >> linux-gnueabi/6.2.0
> >> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
> >> raspberrypi3/lib
> >> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
> >> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0
> >> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
> >> raspberrypi3/usr/lib
> >> > -lc -lgcc_s
> >> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
> >> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0/crtendS.o
> >> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
> >> raspberrypi3/usr/lib/crtn.o
> >> >  -march=armv7ve -marm -mfpu=neon-vfpv4 -mfloat-abi=hard
> -mcpu=cortex-a7
> >> > -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1
> -Wl,--hash-style=gnu
> >> > -Wl,--as-needed -Wl,--version-script=libstdc++-symbols.ver
> >>  -Wl,-soname
> >> > -Wl,libstdc++.so.6 -o .libs/libstdc++.so.6.0.22
> >> > | .libs/compatibility-c++0x.o: In function
> >> > `__static_initialization_and_destruction_0':
> >> > |
> >> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
> >> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
> >> /libstdc++-v3/src/../../../../../../../../../work-shared/
> >> gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/
> compatibility-c++0x.cc:215:
> >> > undefined reference to `__dso_handle'
> >> > | ../src/c++11/.libs/libc++11convenience.a(system_error.o): In
> function
> >> > `__static_initialization_and_destruction_0':
> >> > |
> >> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
> >> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
> >> /libstdc++-v3/src/c++11/../../../../../../../../../../work-
> >> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/system_
> error.cc:71:
> >> > undefined reference to `__dso_handle'
> >> > | ../src/c++98/.libs/libc++98convenience.a(mt_allocator.o): In
> function
> >> > `get_freelist':
> >> > |
> >> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
> >> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
> >> /libstdc++-v3/src/c++98/../../../../../../../../../../work-
> >> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++98/mt_
> allocator.cc:64:
> >> > undefined reference to `__dso_handle'
> >> > | ../src/c++98/.libs/libc++98convenience.a(c++locale.o): In function
> >> > `std::get_catalogs()':
> >> > |
> >> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
> >> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
> >> /libstdc++-v3/src/c++98/c++locale.cc:251:
> >> > undefined reference to `__dso_handle'
> >> > | ../src/c++11/.libs/libc++11convenience.a(condition_variable.o): In
> >> function
> >> > `key_init':
> >> > |
> >> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
> >> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
> >> /libstdc++-v3/src/c++11/../../../../../../../../../../work-
> >> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/
> >> condition_variable.cc:133:
> >> > undefined reference to `__dso_handle'
> >> > |
> >> > ../src/c++11/.libs/libc++11convenience.a(future.o):/usr/src/
> >> debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux
> >> -gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/
> >> libstdc++-v3/src/c++11/../../../../../../../../../../work-
> >> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/future.cc:64:
> >> > more undefined references to `__dso_handle' follow
> >> > | collect2: error: ld returned 1 exit status
> >> >
> >> > I'll be happy for help, haven't found similar error when searching the
> >> web
> >>
> >> is it pristine ubuntu 16.04 or do you have any customization, new
> >> packages etc
> >> installed on top
> >>
> >> >
> >> >
> >>
> >>
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/
> attachments/20161118/f9a3c7ad/attachment.html>
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 74, Issue 77
> *************************************
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114fddf63e2f09054195c019
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">SRC_URI =3D &quot;<a href=3D"http://ftp.gnome.org/pub/GNOM=
E/sources/gtkmm/${PV}/gtkmm-${PV}.0.tar.bz2">http://ftp.gnome.org/pub/GNOME=
/sources/gtkmm/${PV}/gtkmm-${PV}.0.tar.bz2</a>&quot;<br>S =3D &quot;${WORKD=
IR}/${BPN}-${PV}.0&quot;<br><div><br></div><div>Just rename the recipe to <=
a href=3D"http://gtkmm_3.0.0.bb">gtkmm_3.0.0.bb</a>, use ${BPN}-${PV}.tar.b=
z2, and delete the S assignment.</div><div><br></div><div>That likely won&#=
39;t fix your problem but can&#39;t hurt.=C2=A0 Setting PR=3Dr0 isn&#39;t n=
eeded as that should be the default.</div><div><br></div><div>Ross</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 18 November=
 2016 at 16:06, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mailto:develo=
ne@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div><div style=3D"color:#000;backg=
round-color:#fff;font-family:HelveticaNeue,Helvetica Neue,Helvetica,Arial,L=
ucida Grande,sans-serif;font-size:16px"><div id=3D"m_-2770838884405269538yu=
i_3_16_0_ym19_1_1479471299913_59061" dir=3D"ltr"><span id=3D"m_-27708388844=
05269538yui_3_16_0_ym19_1_1479471299913_59122">Hello All,<br id=3D"m_-27708=
38884405269538yui_3_16_0_ym19_1_1479471299913_59157"><br id=3D"m_-277083888=
4405269538yui_3_16_0_ym19_1_1479471299913_59158">Thanks to Piotr Lewicki wh=
o noticed <br id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_5=
9159">package version (PV) is &quot;3.0-r0=3D&quot; and not <br id=3D"m_-27=
70838884405269538yui_3_16_0_ym19_1_1479471299913_59160">&quot;3.0-r0&quot; =
?? Maybe this &quot;=3D&quot; sign causes some problem.<br id=3D"m_-2770838=
884405269538yui_3_16_0_ym19_1_1479471299913_59161"></span></div><div dir=3D=
"ltr" id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_61226"><s=
pan id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_59122">Ther=
e were 2 occurrences and 7 without the &quot;=3D&quot;<br></span></div><div=
 dir=3D"ltr" id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_61=
228"><span id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_5912=
2">/poky/build/tmp/work/<wbr>cortexa7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/=
gtkmm/3.0-r0=3D/<wbr>usr</span></div><div dir=3D"ltr" id=3D"m_-277083888440=
5269538yui_3_16_0_ym19_1_1479471299913_61224"><span id=3D"m_-27708388844052=
69538yui_3_16_0_ym19_1_1479471299913_59122"><br></span></div><div dir=3D"lt=
r" id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_61221"><span=
 id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_59122">He reco=
mmended that I add PR =3D &quot;r0&quot; to the recipe.<br id=3D"m_-2770838=
884405269538yui_3_16_0_ym19_1_1479471299913_59163">The log indicates <br id=
=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_59164">arm-poky-l=
inux-gnueabi-<wbr>libtool: warning: library <br id=3D"m_-277083888440526953=
8yui_3_16_0_ym19_1_1479471299913_59165">&#39;/home/vidal/wkg/yocto/<wbr>Ras=
pberryPi2/poky/build/tmp/<wbr>sysroots/raspberrypi2/usr/lib/<a href=3D"http=
://libatkmm-1.6.la" target=3D"_blank"><wbr>libatkmm-1.6.la</a>&#39; was mov=
ed.<br id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_59166">a=
rm-poky-linux-gnueabi-<wbr>libtool:=C2=A0=C2=A0 <br id=3D"m_-27708388844052=
69538yui_3_16_0_ym19_1_1479471299913_59167">error: cannot find the library =
&#39;/usr/lib/<a href=3D"http://libatk-1.0.la" target=3D"_blank">libatk-1.0=
.la</a>&#39; or unhandled argument &#39;=3D/usr/lib/<a href=3D"http://libat=
k-1.0.la" target=3D"_blank">libatk-1.0.la</a>&#39;<br id=3D"m_-277083888440=
5269538yui_3_16_0_ym19_1_1479471299913_59168"><br id=3D"m_-2770838884405269=
538yui_3_16_0_ym19_1_1479471299913_59169">Makefile:748: recipe for target &=
#39;all-recursive&#39; failed<br id=3D"m_-2770838884405269538yui_3_16_0_ym1=
9_1_1479471299913_59170">make[1]: *** [all-recursive] Error 1<br id=3D"m_-2=
770838884405269538yui_3_16_0_ym19_1_1479471299913_59171">make[1]: Leaving d=
irectory &#39;/home/vidal/wkg/yocto/<wbr>RaspberryPi2/poky/build/tmp/<wbr>w=
ork/cortexa7hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtkmm/3.0-<wbr>r0/build&#=
39;<br id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_59172">M=
akefile:534: recipe for target &#39;all&#39; failed<br id=3D"m_-27708388844=
05269538yui_3_16_0_ym19_1_1479471299913_59173">make: *** [all] Error 2</spa=
n></div><div id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_59=
059"><div id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_1479471299913_59457=
"><br></div><div id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_147947129991=
3_59504">=C2=A0Thanks in advance.</div><div id=3D"m_-2770838884405269538yui=
_3_16_0_ym19_1_1479471299913_59510"><br></div></div><div class=3D"m_-277083=
8884405269538signature" id=3D"m_-2770838884405269538yui_3_16_0_ym19_1_14794=
71299913_59063">Edward Vidal Jr. e-mail <a href=3D"mailto:develone@sbcgloba=
l.net" target=3D"_blank">develone@sbcglobal.net</a> <a href=3D"tel:915-595-=
1613" value=3D"+19155951613" target=3D"_blank">915-595-1613</a></div> <div =
class=3D"m_-2770838884405269538qtdSeparateBR"><br><br></div><div class=3D"m=
_-2770838884405269538yahoo_quoted" style=3D"display:block"> <div style=3D"f=
ont-family:HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-=
serif;font-size:16px"> <div style=3D"font-family:HelveticaNeue,Helvetica Ne=
ue,Helvetica,Arial,Lucida Grande,sans-serif;font-size:16px"> <div dir=3D"lt=
r"><font size=3D"2" face=3D"Arial"> On Friday, November 18, 2016 8:04 AM, &=
quot;<a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_blank">yo=
cto-request@yoctoproject.<wbr>org</a>&quot; &lt;<a href=3D"mailto:yocto-req=
uest@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.<wbr>or=
g</a>&gt; wrote:<br></font></div>  <br><br> <div class=3D"m_-27708388844052=
69538y_msg_container">Send yocto mailing list submissions to<br>=C2=A0=C2=
=A0=C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br><br>To subscribe or unsubscribe via the World Wide=
 Web, visit<br>=C2=A0=C2=A0=C2=A0 <a href=3D"https://lists.yoctoproject.org=
/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<wbr>org/list=
info/yocto</a><br>or, via email, send a message with subject or body &#39;h=
elp&#39; to<br>=C2=A0=C2=A0=C2=A0 <a href=3D"mailto:yocto-request@yoctoproj=
ect.org" target=3D"_blank">yocto-request@yoctoproject.org</a><br><br>You ca=
n reach the person managing the list at<br>=C2=A0=C2=A0=C2=A0 <a href=3D"ma=
ilto:yocto-owner@yoctoproject.org" target=3D"_blank">yocto-owner@yoctoproje=
ct.org</a><br><br>When replying, please edit your Subject line so it is mor=
e specific<br>than &quot;Re: Contents of yocto digest...&quot;<br><br><br>T=
oday&#39;s Topics:<br><br>=C2=A0  1. raspberry pi <a href=3D"http://gtkmm_3=
.0.bb" target=3D"_blank">gtkmm_3.0.bb</a> (Edward Vidal)<br>=C2=A0  2. Re: =
populate_sdk_ext: Unable to locate package<br>=C2=A0 =C2=A0 =C2=A0 nativesd=
k-buildtools-perl-<wbr>dummy (Paul Eggleton)<br>=C2=A0  3. uninative vs. BB=
_NO_NETWORK (Vuille, Martin (Martin))<br>=C2=A0  4. Re: undefined reference=
s to `__dso_handle&#39; (Daniel.)<br><br><br>------------------------------=
<wbr>------------------------------<wbr>----------<br><br>Message: 1<br>Dat=
e: Thu, 17 Nov 2016 21:01:33 +0000 (UTC)<br>From: Edward Vidal &lt;<a href=
=3D"mailto:develone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net=
</a>&gt;<br>To: &quot;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctopr=
oject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>Subject: [yo=
cto] raspberry pi <a href=3D"http://gtkmm_3.0.bb" target=3D"_blank">gtkmm_3=
.0.bb</a><br>Message-ID: &lt;<a href=3D"mailto:1211982120.2332029.147941649=
3434@mail.yahoo.com" target=3D"_blank">1211982120.2332029.<wbr>147941649343=
4@mail.yahoo.com</a>&gt;<br>Content-Type: text/plain; charset=3D&quot;utf-8=
&quot;<br><br>Hello All,<br>I working with software that needs gtkmm_3.0.<b=
r>Poky 2.2 provides gtkmm_2.24.3 in <br>meta-oe/reipes-gnome/gtk+<br>I used=
 recipetool and created <a href=3D"http://gtkmm_3.0.bb" target=3D"_blank">g=
tkmm_3.0.bb</a><br>I modified some lines and was able to get the<br>recipe =
to fetch, unpack, and configure.<br>when it tries to compile I am getting e=
rrors.<br><br>Makefile:748: recipe for target &#39;all-recursive&#39; faile=
d<br>make[1]: *** [all-recursive] Error 1<br>make[1]: Leaving directory &#3=
9;/home/vidal/wkg/yocto/<wbr>RaspberryPi2/poky/build/tmp/<wbr>work/cortexa7=
hf-neon-vfpv4-<wbr>poky-linux-gnueabi/gtkmm/3.0-<wbr>r0/build&#39;<br>Makef=
ile:534: recipe for target &#39;all&#39; failed<br>make: *** [all] Error 2<=
br>ERROR: Function failed: do_compile (log file is located at /home/vidal/w=
kg/yocto/<wbr>RaspberryPi2/poky/build/tmp/<wbr>work/cortexa7hf-neon-vfpv4-<=
wbr>poky-linux-gnueabi/gtkmm/3.0-<wbr>r0/temp/log.do_compile.17760)<br><br>=
The recipe that I am trying to create is <br><a href=3D"https://gist.github=
.com/develone/ffa79327ccd49e9aa9f5c07e4db9ad7d" target=3D"_blank">https://g=
ist.github.com/<wbr>develone/<wbr>ffa79327ccd49e9aa9f5c07e4db9ad<wbr>7d</a>=
<br><br>Any an all help is appreciated.<br><br>Thanks in advance ?Edward Vi=
dal Jr. e-mail <a href=3D"mailto:develone@sbcglobal.net" target=3D"_blank">=
develone@sbcglobal.net</a> <a href=3D"tel:915-595-1613" value=3D"+191559516=
13" target=3D"_blank">915-595-1613</a><br>-------------- next part --------=
------<br>An HTML attachment was scrubbed...<br>URL: &lt;<a href=3D"http://=
lists.yoctoproject.org/pipermail/yocto/attachments/20161117/e682ad6a/attach=
ment-0001.html" target=3D"_blank">http://lists.yoctoproject.<wbr>org/piperm=
ail/yocto/<wbr>attachments/20161117/e682ad6a/<wbr>attachment-0001.html</a>&=
gt;<br><br>------------------------------<br><br>Message: 2<br>Date: Fri, 1=
8 Nov 2016 14:46:07 +1300<br>From: Paul Eggleton &lt;<a href=3D"mailto:paul=
.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com<=
/a><wbr>&gt;<br>To: Michel D&#39;HOOGE &lt;<a href=3D"mailto:michel.dhooge@=
free.fr" target=3D"_blank">michel.dhooge@free.fr</a>&gt;<br>Cc: <a href=3D"=
mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>=
<br>Subject: Re: [yocto] populate_sdk_ext: Unable to locate package<br>=C2=
=A0=C2=A0=C2=A0 nativesdk-buildtools-perl-<wbr>dummy<br>Message-ID: &lt;<a =
href=3D"mailto:4182204.ZX1RAfnfPO@peggleto-mobl.ger.corp.intel.com" target=
=3D"_blank">4182204.ZX1RAfnfPO@peggleto-<wbr>mobl.ger.corp.intel.com</a>&gt=
;<br>Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br><br>Hi Mic=
hel,<br><br>On Wed, 16 Nov 2016 11:48:21 Michel D&#39;HOOGE wrote:<br>&gt; =
I try to produce an extensible SDK for core-image-sato with the following<b=
r>&gt; configuration:<br>&gt; <br>&gt; BB_VERSION =3D &quot;1.32.0&quot;<br=
>&gt; BUILD_SYS =3D &quot;x86_64-linux&quot;<br>&gt; NATIVELSBSTRING =3D &q=
uot;universal&quot;<br>&gt; TARGET_SYS =3D &quot;x86_64-poky-linux&quot;<br=
>&gt; MACHINE =3D &quot;vtc7200&quot;<br>&gt; DISTRO =3D &quot;poky-systemd=
&quot;<br>&gt; DISTRO_VERSION =3D &quot;2.2&quot;<br>&gt; TUNE_FEATURES =3D=
 &quot;m64 corei7&quot;<br>&gt; <br>&gt; The machine is based on an intel-c=
orei7, with some features removed. And the<br>&gt; distro is poky-based, wi=
th only systemd (as detailed in the ref manual).<br>&gt; And I get the foll=
owing error:<br>&gt; <br>&gt; <br>&gt; ERROR : buildtools-tarball-1.0-r0 do=
_populate_sdk: Unable to install<br>&gt; packages. Command &#39;/mnt/Yocto/=
vedecom-x86/build/<wbr>tmp/sysroots/x86_<br>&gt; 64-linux/usr/bin/apt-get i=
nstall --force-yes --allow-unauthenticated<br>&gt; nativesdk-locale-base-en=
-us nativesdk-git nativesdk-make native<br>&gt; sdk-ca-certificates natives=
dk-tar nativesdk-python3-modules<br>&gt; nativesdk-texinfo nativesdk-python=
3-git nativesdk-ncurses-terminfo-<wbr>base n<br>&gt; ativesdk-chrpath nativ=
esdk-python3-misc nativesdk-git-perltools<br>&gt; nativesdk-buildtools-perl=
-<wbr>dummy nativesdk-pigz nativesdk-wget natives<br>&gt; dk-python3-core&#=
39; returned 100:<br>&gt; Reading package lists...<br>&gt; Building depende=
ncy tree...<br>&gt; Reading state information...<br>&gt; E: Unable to locat=
e package nativesdk-buildtools-perl-<wbr>dummy<br>&gt; <br>&gt; The package=
 exists and is in:<br>&gt; tmp/deploy/deb/buildtools-<wbr>dummy-nativesdk/n=
ativesdk-<wbr>buildtools-perl-dummy_1.<br>&gt; 0-r2_allarch.deb while the o=
ther listed packages are in<br>&gt; tmp/deploy/deb/x86_64-<wbr>nativesdk.<b=
r>&gt; <br>&gt; It seems this package is empty, so maybe I should simply re=
move it from<br>&gt; poky/meta/recipes-core/meta/<a href=3D"http://buildtoo=
ls-tarball.bb" target=3D"_blank">bu<wbr>ildtools-tarball.bb</a>.<br><br>FYI=
 the purpose of this package is to take precedence over the real nativesdk-=
<br>perl so that it doesn&#39;t get into the buildtools, since we prefer to=
 avoid the <br>issues associated with overriding the host perl there. If yo=
u remove this <br>package then perl will enter buildtools and you will expe=
rience other issues.<br><br>I think the issue is this hasn&#39;t really bee=
n tested with deb packaging. You <br>have hit a genuine bug though - would =
you mind filing a bug at <br><a href=3D"http://bugzilla.yoctoproject.org" t=
arget=3D"_blank">http://bugzilla.yoctoproject.<wbr>org</a>?<br><br>Thanks,<=
br>Paul<br><br>-- <br><br>Paul Eggleton<br>Intel Open Source Technology Cen=
tre<br><br><br>------------------------------<br><br>Message: 3<br>Date: Fr=
i, 18 Nov 2016 14:58:04 +0000<br>From: &quot;Vuille, Martin (Martin)&quot; =
&lt;<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.co=
m</a>&gt;<br>To: &quot;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctop=
roject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>Subject: [y=
octo] uninative vs. BB_NO_NETWORK<br>Message-ID:<br>=C2=A0=C2=A0=C2=A0 &lt;=
<a href=3D"mailto:30C2D590D16A5C46ADFE6521910377987FF82A5C@AZ-US1EXMB02.glo=
bal.avaya.com" target=3D"_blank">30C2D590D16A5C46ADFE652191037<wbr>7987FF82=
A5C@AZ-US1EXMB02.<wbr>global.avaya.com</a>&gt;<br>=C2=A0=C2=A0=C2=A0 <br>Co=
ntent-Type: text/plain; charset=3D&quot;us-ascii&quot;<br><br>Currently usi=
ng Yocto 1.8, planning upgrade to 2.2<br><br>Per the Reference Manual, &quo=
t;The uninative class is now enabled by default in Poky. [...]<br>With this=
 class enabled, a tarball containing a pre-built C library is downloaded at=
 the start of the build.&quot;<br><br>We have to build with BB_NO_NETWORK =
=3D &quot;1&quot;<br><br>How will this interact with uninative? Do we have =
to download the pre-built C library<br>to our local mirror, like other pack=
age tarballs?<br><br>MV<br><br><br>------------------------------<br><br>Me=
ssage: 4<br>Date: Fri, 18 Nov 2016 13:00:45 -0200<br>From: &quot;Daniel.&qu=
ot; &lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhi=
lst@gmail.com</a>&gt;<br>Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org=
" target=3D"_blank">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:=
yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br=
>Subject: Re: [yocto] undefined references to `__dso_handle&#39;<br>Message=
-ID:<br>=C2=A0=C2=A0=C2=A0 &lt;CAF3SDA4KAw53kXoU73B3GB+<a href=3D"mailto:HY=
LcLqaJ2WPtg3BdEKzwxL5h9rg@mail.gmail.com" target=3D"_blank">HYLcL<wbr>qaJ2W=
Ptg3BdEKzwxL5h9rg@mail.<wbr>gmail.com</a>&gt;<br>Content-Type: text/plain; =
charset=3D&quot;utf-8&quot;<br><br>Hi,<br><br>Did you have multilib install=
ed!?<br><br>Regards,<br><br>2016-11-17 15:27 GMT-02:00 Elazar Leibovich &lt=
;<a href=3D"mailto:elazarl@gmail.com" target=3D"_blank">elazarl@gmail.com</=
a>&gt;:<br><br>&gt; As far as I=C2=A0 know, no customization, I didn&#39;t =
even switch GCC&#39;s version. I<br>&gt; installed clang alongside gcc, but=
 didn&#39;t change the default.<br>&gt;<br>&gt; Can you refer me to what yo=
u have in mind that might be customized, and<br>&gt; I&#39;ll check?<br>&gt=
;<br>&gt; On Thu, Nov 17, 2016 at 7:23 PM, Khem Raj &lt;<a href=3D"mailto:r=
aj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>&=
gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt; On 11/16/16 2:05 AM, Elazar Leibovi=
ch wrote:<br>&gt;&gt; &gt; Hi,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; I followed=
 the quickstart tutorial, branch morty, to create the most<br>&gt;&gt; basi=
c<br>&gt;&gt; &gt; image on local QEMU, and I got compilation errors for __=
dso_handle<br>&gt;&gt; missing.<br>&gt;&gt; &gt; I&#39;m using ubuntu 16.<b=
r>&gt;&gt; &gt; Here is an example output:<br>&gt;&gt; &gt; ++ -nostdlib++=
=C2=A0 -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib<br>&gt;&gt; &gt; /me=
dia/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/<br>&gt;&gt; =
raspberrypi3/usr/lib/crti.o<br>&gt;&gt; &gt; /media/elazar/<wbr>788854CC885=
48B10/poky/build/<wbr>tmp/sysroots/<br>&gt;&gt; raspberrypi3/usr/lib/arm-po=
ky-<wbr>linux-gnueabi/6.2.0/crtbeginS.<wbr>o<br>&gt;&gt; &gt;=C2=A0 .libs/c=
ompatibility.o .libs/compatibility-debug_<wbr>list.o<br>&gt;&gt; &gt; .libs=
/compatibility-debug_<wbr>list-2.o .libs/compatibility-c++0x.o<br>&gt;&gt; =
&gt; .libs/compatibility-atomic-c++<wbr>0x.o .libs/compatibility-thread-c++=
<wbr>0x.o<br>&gt;&gt; &gt; .libs/compatibility-chrono.o .libs/compatibility=
-condvar.o<br>&gt;&gt; &gt;=C2=A0 -Wl,--whole-archive ../libsupc++/.libs/li=
bsupc++<wbr>convenience.a<br>&gt;&gt; &gt; ../src/c++98/.libs/libc++<wbr>98=
convenience.a<br>&gt;&gt; &gt; ../src/c++11/.libs/libc++<wbr>11convenience.=
a -Wl,--no-whole-archive=C2=A0 -lm<br>&gt;&gt; &gt; -L/media/elazar/<wbr>78=
8854CC88548B10/poky/build/<wbr>tmp/sysroots/<br>&gt;&gt; x86_64-linux/usr/l=
ib/arm-poky-<wbr>linux-gnueabi/gcc/arm-poky-<br>&gt;&gt; linux-gnueabi/6.2.=
0<br>&gt;&gt; &gt; -L/media/elazar/<wbr>788854CC88548B10/poky/build/<wbr>tm=
p/sysroots/<br>&gt;&gt; raspberrypi3/lib<br>&gt;&gt; &gt; -L/media/elazar/<=
wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/<br>&gt;&gt; raspberrypi3=
/usr/lib/arm-poky-<wbr>linux-gnueabi/6.2.0<br>&gt;&gt; &gt; -L/media/elazar=
/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/<br>&gt;&gt; raspberryp=
i3/usr/lib<br>&gt;&gt; &gt; -lc -lgcc_s<br>&gt;&gt; &gt; /media/elazar/<wbr=
>788854CC88548B10/poky/build/<wbr>tmp/sysroots/<br>&gt;&gt; raspberrypi3/us=
r/lib/arm-poky-<wbr>linux-gnueabi/6.2.0/crtendS.o<br>&gt;&gt; &gt; /media/e=
lazar/<wbr>788854CC88548B10/poky/build/<wbr>tmp/sysroots/<br>&gt;&gt; raspb=
errypi3/usr/lib/crtn.o<br>&gt;&gt; &gt;=C2=A0 -march=3Darmv7ve -marm -mfpu=
=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7<br>&gt;&gt; &gt; -Wl,-O1=
 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=3Dgnu<br>&gt;&=
gt; &gt; -Wl,--as-needed -Wl,--version-script=3Dlibstdc++<wbr>-symbols.ver<=
br>&gt;&gt;=C2=A0 -Wl,-soname<br>&gt;&gt; &gt; -Wl,libstdc++.so.6 -o .libs/=
libstdc++.so.6.0.22<br>&gt;&gt; &gt; | .libs/compatibility-c++0x.o: In func=
tion<br>&gt;&gt; &gt; `__static_initialization_and_<wbr>destruction_0&#39;:=
<br>&gt;&gt; &gt; |<br>&gt;&gt; &gt; /usr/src/debug/gcc-runtime/6.<wbr>2.0-=
r0/gcc-6.2.0/build.arm-<wbr>poky<br>&gt;&gt; -linux-gnueabi.arm-poky-linux-=
<wbr>gnueabi/arm-poky-linux-gnueabi<br>&gt;&gt; /libstdc++-v3/src/../../../=
../<wbr>../../../../../work-shared/<br>&gt;&gt; gcc-6.2.0-r0/gcc-6.2.0/<wbr=
>libstdc++-v3/src/c++11/<wbr>compatibility-c++0x.cc:215:<br>&gt;&gt; &gt; u=
ndefined reference to `__dso_handle&#39;<br>&gt;&gt; &gt; | ../src/c++11/.l=
ibs/libc++<wbr>11convenience.a(system_error.<wbr>o): In function<br>&gt;&gt=
; &gt; `__static_initialization_and_<wbr>destruction_0&#39;:<br>&gt;&gt; &g=
t; |<br>&gt;&gt; &gt; /usr/src/debug/gcc-runtime/6.<wbr>2.0-r0/gcc-6.2.0/bu=
ild.arm-<wbr>poky<br>&gt;&gt; -linux-gnueabi.arm-poky-linux-<wbr>gnueabi/ar=
m-poky-linux-gnueabi<br>&gt;&gt; /libstdc++-v3/src/c++11/../../<wbr>../../.=
./../../../../../work-<br>&gt;&gt; shared/gcc-6.2.0-r0/gcc-6.2.0/<wbr>libst=
dc++-v3/src/c++11/system_<wbr>error.cc:71:<br>&gt;&gt; &gt; undefined refer=
ence to `__dso_handle&#39;<br>&gt;&gt; &gt; | ../src/c++98/.libs/libc++<wbr=
>98convenience.a(mt_allocator.<wbr>o): In function<br>&gt;&gt; &gt; `get_fr=
eelist&#39;:<br>&gt;&gt; &gt; |<br>&gt;&gt; &gt; /usr/src/debug/gcc-runtime=
/6.<wbr>2.0-r0/gcc-6.2.0/build.arm-<wbr>poky<br>&gt;&gt; -linux-gnueabi.arm=
-poky-linux-<wbr>gnueabi/arm-poky-linux-gnueabi<br>&gt;&gt; /libstdc++-v3/s=
rc/c++98/../../<wbr>../../../../../../../../work-<br>&gt;&gt; shared/gcc-6.=
2.0-r0/gcc-6.2.0/<wbr>libstdc++-v3/src/c++98/mt_<wbr>allocator.cc:64:<br>&g=
t;&gt; &gt; undefined reference to `__dso_handle&#39;<br>&gt;&gt; &gt; | ..=
/src/c++98/.libs/libc++<wbr>98convenience.a(c++locale.o): In function<br>&g=
t;&gt; &gt; `std::get_catalogs()&#39;:<br>&gt;&gt; &gt; |<br>&gt;&gt; &gt; =
/usr/src/debug/gcc-runtime/6.<wbr>2.0-r0/gcc-6.2.0/build.arm-<wbr>poky<br>&=
gt;&gt; -linux-gnueabi.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-gnueabi<b=
r>&gt;&gt; /libstdc++-v3/src/c++98/c++<wbr>locale.cc:251:<br>&gt;&gt; &gt; =
undefined reference to `__dso_handle&#39;<br>&gt;&gt; &gt; | ../src/c++11/.=
libs/libc++<wbr>11convenience.a(condition_<wbr>variable.o): In<br>&gt;&gt; =
function<br>&gt;&gt; &gt; `key_init&#39;:<br>&gt;&gt; &gt; |<br>&gt;&gt; &g=
t; /usr/src/debug/gcc-runtime/6.<wbr>2.0-r0/gcc-6.2.0/build.arm-<wbr>poky<b=
r>&gt;&gt; -linux-gnueabi.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-gnueab=
i<br>&gt;&gt; /libstdc++-v3/src/c++11/../../<wbr>../../../../../../../../wo=
rk-<br>&gt;&gt; shared/gcc-6.2.0-r0/gcc-6.2.0/<wbr>libstdc++-v3/src/c++11/<=
br>&gt;&gt; condition_variable.cc:133:<br>&gt;&gt; &gt; undefined reference=
 to `__dso_handle&#39;<br>&gt;&gt; &gt; |<br>&gt;&gt; &gt; ../src/c++11/.li=
bs/libc++<wbr>11convenience.a(future.o):/<wbr>usr/src/<br>&gt;&gt; debug/gc=
c-runtime/6.2.0-r0/<wbr>gcc-6.2.0/build.arm-poky-linux<br>&gt;&gt; -gnueabi=
.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-<wbr>gnueabi/<br>&gt;&gt; libst=
dc++-v3/src/c++11/../../.<wbr>./../../../../../../../work-<br>&gt;&gt; shar=
ed/gcc-6.2.0-r0/gcc-6.2.0/<wbr>libstdc++-v3/src/c++11/future.<wbr>cc:64:<br=
>&gt;&gt; &gt; more undefined references to `__dso_handle&#39; follow<br>&g=
t;&gt; &gt; | collect2: error: ld returned 1 exit status<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; I&#39;ll be happy for help, haven&#39;t found similar error=
 when searching the<br>&gt;&gt; web<br>&gt;&gt;<br>&gt;&gt; is it pristine =
ubuntu 16.04 or do you have any customization, new<br>&gt;&gt; packages etc=
<br>&gt;&gt; installed on top<br>&gt;&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
<br>&gt;&gt;<br>&gt;&gt;<br>&gt;<br>&gt; --<br>&gt; _______________________=
_______<wbr>_________________<br>&gt; yocto mailing list<br>&gt; <a href=3D=
"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a=
><br>&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>&gt;<=
br>&gt;<span class=3D"HOEnZb"><font color=3D"#888888"><br><br><br>-- <br>*&=
quot;Do or do not. There is no try&quot;*<br>=C2=A0 *Yoda Master*<br>------=
-------- next part --------------<br>An HTML attachment was scrubbed...<br>=
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20161118/f9a3c7ad/attachment.html" target=3D"_blank">http://lists.yoctop=
roject.<wbr>org/pipermail/yocto/<wbr>attachments/20161118/f9a3c7ad/<wbr>att=
achment.html</a>&gt;<br><br>------------------------------<br><br>-- <br>__=
____________________________<wbr>_________________<br>yocto mailing list<br=
><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>=
<br><br>End of yocto Digest, Vol 74, Issue 77<br>**************************=
****<wbr>*******<br><br><br></font></span></div>  </div> </div>  </div></di=
v></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114fddf63e2f09054195c019--
