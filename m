Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78246E008C3; Wed, 12 Nov 2014 17:12:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nickdademo[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C38E005B7
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 17:12:49 -0800 (PST)
Received: by mail-oi0-f47.google.com with SMTP id v63so378368oia.34
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 17:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0qNvIdX5uYS3Li0dVaIDfHiKU9H8OJ3+UF7uwbeWENg=;
	b=ViYuWm4CFiY1Nb1vsvNo9s3YWog6D10Ogt+emwmoDId78Xg1/vhjiRXlfswJGdY8tq
	G3Q0ndFyUT/RyqaBVWLU8hCXPoMZF5Gi8RaarmgSB0OvouA3K/Pg74Nu+vPRx4lJiXgL
	Tui86GdowRJD5AFWXG6ZY8DME5EYg1oFDRYbev5ZlWmPQf4qC7bNh1uVId5QbEX40/rQ
	C8sYmz+Ls7zqGtZoHDELK5/iU3xJa1tzJ1J71BZDIQXcHtmiYlDBKCSBYuAxrfWCon35
	ftJmQ3BR4zFm0CWVEjJM/NR49GTpwayRwHXEe7XusHyBIb1ZEtxHL6o6bpzMKHfkr1jT
	AQfw==
X-Received: by 10.182.142.70 with SMTP id ru6mr40529068obb.11.1415841169342;
	Wed, 12 Nov 2014 17:12:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.167.163 with HTTP; Wed, 12 Nov 2014 17:12:28 -0800 (PST)
In-Reply-To: <54622212.7060802@gmail.com>
References: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>
	<CANR6C57voYqR9t-7P-=qUuudn6t7u=PFgGcWTy92xUUOy4H-Kw@mail.gmail.com>
	<5460169F.8090001@gmail.com>
	<CANR6C56k7M=kQV=sq8dXf3KK5zEXk_KPZ+TmrL5BqDoWV_hYMg@mail.gmail.com>
	<546018F8.2030201@gmail.com>
	<CANR6C55j8Q08JhyGx1nekPqPyuwGcau52tJe=8=r59ACjewrfA@mail.gmail.com>
	<54601BC4.1080409@gmail.com>
	<CANR6C54hAYqnvjrtg6_pNcTqAibrCKhaCFEOhkfr=6j2jLPjZg@mail.gmail.com>
	<54602A9F.1040907@gmail.com>
	<CANR6C57+VqbBTT1UwE-JNqdaqt4+tg2J9OPqs+u=i-z98NgsOQ@mail.gmail.com>
	<5460346B.1080207@gmail.com>
	<CANR6C54h_9yEfro=3P-qEz9Am-RdTHO_ezidrfDRdJtUpqEJdw@mail.gmail.com>
	<54609D5F.2000604@gmail.com>
	<CANR6C55w60UE-HoRyvBrSz1p+UCD=sqUe8QZku5qmnW28kGSqg@mail.gmail.com>
	<CAPDOMViVWRXHGFbaipcy4x+kxVDKX6wW5GoKYiiK=6kPpQ65hA@mail.gmail.com>
	<CANR6C56cEgXYO-7BUpL_-_uojYUqUcqzzrfA+nB4GH8zd8Kftw@mail.gmail.com>
	<54621AC5.7080707@gmail.com>
	<CANR6C57n+_=d-8mC4TszXoMSpObiCNPwWLoytwnGu--KKTMFcQ@mail.gmail.com>
	<54622212.7060802@gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Thu, 13 Nov 2014 12:12:28 +1100
Message-ID: <CANR6C54=ZZtnW0MVNcBk--Agmohw7WtnfioQLtJqHpWbdFricw@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Unable to find the ncurses libraries when running menuconfig
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
X-List-Received-Date: Thu, 13 Nov 2014 01:12:52 -0000
Content-Type: multipart/alternative; boundary=001a11c2f57cf52a520507b33560

--001a11c2f57cf52a520507b33560
Content-Type: text/plain; charset=UTF-8

OK, I'll come up with a simple test case + procedure to reproduce it.

Cheers,
Nick

On Wed, Nov 12, 2014 at 1:49 AM, nick <xerofoify@gmail.com> wrote:

> I would state so as if you need it and it doesn't work then it probably is
> a bug
> with bitbake.
> Cheers Nick
>
> On 14-11-11 09:37 AM, Nick D'Ademo wrote:
> > Would this be classified as a BitBake bug then?
> >
> > I actually have a recipe which requires 32-bit libs - I'll see if
> there's a
> > way around it.
> >
> > Thanks for your help thus far.
> >
> > Nick
> >
> > On Wed, Nov 12, 2014 at 1:18 AM, nick <xerofoify@gmail.com> wrote:
> >
> >> That was my issue with your build, but I wasn't sure if that was going
> to
> >> prevent the build from you companies requirements. I would recommend
> only
> >> making the build 64 bit as it seems that there is no reason for
> backwards
> >> compatibility with older 32 bit libraries for your build.
> >> Regards Nick
> >>
> >> On 14-11-11 06:23 AM, Nick D'Ademo wrote:
> >>> A bit of progress (found the cause of the error at least):
> >>>
> >>> The script that is failing is: linux/scripts/kconfig/lxdialog/
> >>> *check-lxdialog.sh*
> >>>
> >>> I added 'set -x' to the script so I could see the output as BitBake
> >>> executes it... The function within that script which is failing is
> >> *check()
> >>> *- in particular the following is failing:
> >>>
> >>>
> >>>
> >>>
> >>> *$cc -x c - -o $tmp 2>/dev/null <<'EOF'#include CURSES_LOCmain() {}EOF*
> >>>
> >>> *Script output:*
> >>> *gcc
> -isystem/home/nick/poky/build/tmp/sysroots/x86_64-linux/usr/include
> >>> -O2 -pipe -L/home/nick/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> >>> -L/home/nick/poky/build/tmp/sysroots/x86_64-linux/lib
> >>> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> >>> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/x86_64-linux/lib
> >>> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> >>> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-O1
> >>> '-DCURSES_LOC=<ncurses.h>' -DLOCALE
> >>> -L/home/nick/poky/build/tmp/sysroots/custom_machine_name/usr/lib64
> >>> -lncursesw -ltinfo -x c - -o .lxdialog.tmp*
> >>>
> >>> This command is returning 1 when it should be returning 0 (i.e.
> >> successful
> >>> compile).
> >>>
> >>> The exact error is:
> >>>
> >>>
> >>> */usr/bin/ld: cannot find /lib64/libc.so.6/usr/bin/ld: cannot find
> >>> /usr/lib64/libc_nonshared.acollect2: error: ld returned 1 exit status*
> >>>
> >>> Where is it trying to find those libraries? In my host system (they
> don't
> >>> exist!) or the system root of my build? The files *only* exist in my
> >> system
> >>> root @
> */home/nick/poky/build/tmp/sysroots/custom_machine_name/usr/lib64
> >> *and
> >>> */home/nick/poky/build/tmp/sysroots/custom_machine_name/lib64.*
> >>>
> >>> I suspect that this may be due to the fact that my custom machine conf
> >> is a
> >>> multilib configuration...
> >>>
> >>> Any further ideas?
> >>>
> >>>
> >>> On Tue, Nov 11, 2014 at 2:10 AM, Nick Krause <xerofoify@gmail.com>
> >> wrote:
> >>>
> >>>> On Mon, Nov 10, 2014 at 7:56 AM, Nick D'Ademo <nickdademo@gmail.com>
> >>>> wrote:
> >>>>> If I do the following (from the same Terminal that oe-init-build-env
> >> has
> >>>>> been run):
> >>>>> 1) cd
> >>>>>
> >>>>
> >>
> /home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build
> >>>>> 2) make menuconfig
> >>>>>
> >>>>> Menu config loads correctly.
> >>>>>
> >>>>> So for some reason, 'bitbake linux-yocto -c menuconfig' is not
> invoking
> >>>>> menuconfig properly.
> >>>>>
> >>>>> Any ideas where to look in regard to my custom machine config?
> >>>>>
> >>>>>
> >>>>>
> >>>>> On Mon, Nov 10, 2014 at 10:11 PM, nick <xerofoify@gmail.com> wrote:
> >>>>>>
> >>>>>> Nick,
> >>>>>> Yes this is a issue with your custom machine and I believe this is a
> >>>> issue
> >>>>>> with your your machine
> >>>>>> conf is located in the build directories.
> >>>>>> Cheers Nick
> >>>>>>
> >>>>>> On 14-11-10 02:26 AM, Nick D'Ademo wrote:
> >>>>>>> menuconfig works with a core-image-minimal vanilla build:
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>> *Build Configuration:BB_VERSION        = "1.24.0"BUILD_SYS
>  =
> >>>>>>> "x86_64-linux"NATIVELSBSTRING   = "Ubuntu-14.04"TARGET_SYS        =
> >>>>>>> "arm-poky-linux-gnueabi"MACHINE           = "qemuarm"DISTRO
> >>>>   =
> >>>>>>> "poky"DISTRO_VERSION    = "1.7"TUNE_FEATURES     = "arm armv5 thumb
> >>>>>>> dsp"TARGET_FPU        = "soft"meta              meta-yocto
> >>>>>>> meta-yocto-bsp    =
> >>>>>>> "master:45bb9e3323073070453647a32289dc1792f3d660"meta-oe
> >>>>>>> meta-multimedia   meta-gnome        =
> >>>>>>> "master:dac2422f737c351c37a8405a76b5f0b5df9311a0"*
> >>>>>>>
> >>>>>>>
> >>>>>>> So this must be an issue with my custom machine.
> >>>>>>>
> >>>>>>>
> >>>>>>> On Mon, Nov 10, 2014 at 2:43 PM, nick <xerofoify@gmail.com> wrote:
> >>>>>>>
> >>>>>>>> Nick,
> >>>>>>>> Then this is an issue with your machine conf or paths required for
> >>>>>>>> kernel
> >>>>>>>> building. Are you able
> >>>>>>>> to build a poky distro with a working kernel and this is just a
> >> issue
> >>>>>>>> with
> >>>>>>>> you building the yocto
> >>>>>>>> kernel alone or can you also not build poky too?
> >>>>>>>> Cheers Nick
> >>>>>>>>
> >>>>>>>> On 14-11-09 10:36 PM, Nick D'Ademo wrote:
> >>>>>>>>> Just tried with the latest 3.17.2 kernel. 'make menuconfig' works
> >>>> fine
> >>>>>>>> and
> >>>>>>>>> loads the interactive kernel config.
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>> On Mon, Nov 10, 2014 at 2:01 PM, nick <xerofoify@gmail.com>
> wrote:
> >>>>>>>>>
> >>>>>>>>>> Try downloading a stock kernel for kernel.org and extract it in
> >>>> your
> >>>>>>>> home
> >>>>>>>>>> directory and run make menuconfig in
> >>>>>>>>>> the root of the kernel source tree, if this works then I am
> >>>> assuming
> >>>>>>>>>> either ncurses or your machine conf is wrong
> >>>>>>>>>> somewhere.
> >>>>>>>>>> Cheers Nick
> >>>>>>>>>>
> >>>>>>>>>> On 14-11-09 09:51 PM, Nick D'Ademo wrote:
> >>>>>>>>>>> Hi Nick,
> >>>>>>>>>>>
> >>>>>>>>>>> I removed build/tmp/ and performed a rebuild - I'm still
> >>>>>>>>>>> experiencing
> >>>>>>>> the
> >>>>>>>>>>> same error message unfortunately.
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>> On Mon, Nov 10, 2014 at 12:58 PM, nick <xerofoify@gmail.com>
> >>>> wrote:
> >>>>>>>>>>>
> >>>>>>>>>>>> Seems to after reading and doing some research a build issue
> >> with
> >>>>>>>>>> multiple
> >>>>>>>>>>>> jobs or try running rm -r tmp in your
> >>>>>>>>>>>> build and then rebuild as it may be an issue with out of date
> >>>> temp
> >>>>>>>>>> files.
> >>>>>>>>>>>> Cheers Nick
> >>>>>>>>>>>>
> >>>>>>>>>>>> On 14-11-09 08:51 PM, Nick D'Ademo wrote:
> >>>>>>>>>>>>> Thanks for trying that out Nick.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Issue is present on both 3.14 and 3.17 for me.
> >>>>>>>>>>>>> All paths in the require lines are correct too.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Any other ideas?
> >>>>>>>>>>>>>
> >>>>>>>>>>>>>
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> On Mon, Nov 10, 2014 at 12:46 PM, nick <xerofoify@gmail.com>
> >>>>>>>>>>>>> wrote:
> >>>>>>>>>>>>>
> >>>>>>>>>>>>>> I tried bitbake linux-yocto -c menuconfig on my own system
> >>>>>>>>>>>>>> running
> >>>>>>>> the
> >>>>>>>>>>>>>> same distro and it seems to my
> >>>>>>>>>>>>>> default use kernel 3.14 not 3.17 otherwise this seems be
> fine
> >>>>>>>>>>>>>> from
> >>>>>>>> my
> >>>>>>>>>>>>>> understanding. Also check all the
> >>>>>>>>>>>>>> paths in your require lines as there may be an issue with
> your
> >>>>>>>> builds
> >>>>>>>>>>>> and
> >>>>>>>>>>>>>> the path set up by these files
> >>>>>>>>>>>>>> that you are linking to for your kernel build.
> >>>>>>>>>>>>>> Nick
> >>>>>>>>>>>>>> On 14-11-09 08:40 PM, Nick D'Ademo wrote:
> >>>>>>>>>>>>>>> Thanks Nick.
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> Machine conf is as follows (it's actually nearly identical
> to
> >>>>>>>>>> nuc.conf
> >>>>>>>>>>>> -
> >>>>>>>>>>>>>>> however, BT support, multilib, and preferred providers have
> >>>> been
> >>>>>>>>>>>> added):
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> #@TYPE: Machine
> >>>>>>>>>>>>>>> #@NAME: chiefriver
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> #@WEBTITLE: Intel Next Unit of Computing (NUC) Model:
> >>>> DC3217IYE
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> #@DESCRIPTION: Machine configuration for Intel NUC model
> >>>>>>>>>>>>>>> DC3217IYE
> >>>>>>>>>>>>>>> # i.e. Ivy Bridge + Panther Point
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> PREFERRED_VERSION_linux-yocto ?= "3.17%"
> >>>>>>>>>>>>>>> MACHINE_FEATURES += "va-impl-intel wifi efi bluetooth"
> >>>>>>>>>>>>>>> MACHINE_FEATURES += "intel-ucode"
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> require conf/machine/include/meta-intel.inc
> >>>>>>>>>>>>>>> require conf/machine/include/intel-corei7-64-common.inc
> >>>>>>>>>>>>>>> require conf/machine/include/intel-common-pkgarch.inc
> >>>>>>>>>>>>>>> require multilib.conf
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> MACHINE_HWCODECS ?= "va-intel gst-va-intel"
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> XSERVER ?= "${XSERVER_X86_BASE} \
> >>>>>>>>>>>>>>>            ${XSERVER_X86_EXT} \
> >>>>>>>>>>>>>>>            ${XSERVER_X86_I965} \
> >>>>>>>>>>>>>>>            "
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> MACHINE_EXTRA_RRECOMMENDS +=
> >> "linux-firmware-iwlwifi-6000g2b-6
> >>>>>>>> lms8"
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> # disable the serial port configuration
> >>>>>>>>>>>>>>> SERIAL_CONSOLE = ""
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> PREFERRED_PROVIDER_jpeg = "jpeg"
> >>>>>>>>>>>>>>> PREFERRED_PROVIDER_jpeg-native = "jpeg-native"
> >>>>>>>>>>>>>>> PREFERRED_PROVIDER_virtual/fftw = "fftw"
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> On Mon, Nov 10, 2014 at 12:36 PM, nick <
> xerofoify@gmail.com>
> >>>>>>>> wrote:
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>> Hey Nick,
> >>>>>>>>>>>>>>>> This seems to then be an issue with incorrect paths or
> build
> >>>>>>>>>>>> information
> >>>>>>>>>>>>>>>> in your nuc.conf
> >>>>>>>>>>>>>>>> as the most likely culprit. If you can post your machine's
> >>>> conf
> >>>>>>>>>> file I
> >>>>>>>>>>>>>>>> will be glad to see
> >>>>>>>>>>>>>>>> if there are any issues I can spot.
> >>>>>>>>>>>>>>>> Nick
> >>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>> On 14-11-09 08:33 PM, Nick D'Ademo wrote:
> >>>>>>>>>>>>>>>>> 1) source oe-init-build-env is run before building.
> >>>>>>>>>>>>>>>>> 2) We are actually using a custom machine .conf based on
> >>>>>>>> nuc.conf,
> >>>>>>>>>> so
> >>>>>>>>>>>>>>>>> actually: MACHINE = "custom_machine_name". I replaced it
> >>>> with
> >>>>>>>> "nuc"
> >>>>>>>>>>>> in
> >>>>>>>>>>>>>>>> this
> >>>>>>>>>>>>>>>>> post to avoid confusion.
> >>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>> On Mon, Nov 10, 2014 at 12:25 PM, nick <
> >> xerofoify@gmail.com
> >>>>>
> >>>>>>>>>> wrote:
> >>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>> Do you run source oe-init-build-env before building and
> >> why
> >>>>>>>>>>>>>>>>>> is
> >>>>>>>>>> your
> >>>>>>>>>>>>>>>> machine
> >>>>>>>>>>>>>>>>>> set to nuc seems this may be an issue?
> >>>>>>>>>>>>>>>>>> Nick
> >>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>> On 14-11-09 08:15 PM, Nick D'Ademo wrote:
> >>>>>>>>>>>>>>>>>>> Thanks for the quick reply Nick.
> >>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>> Host system is Ubuntu 14.04. ncurses is already
> >> installed:
> >>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>> sudo apt-get install libncurses5-dev
> >>>>>>>>>>>>>>>>>>> Reading package lists... Done
> >>>>>>>>>>>>>>>>>>> Building dependency tree
> >>>>>>>>>>>>>>>>>>> Reading state information... Done
> >>>>>>>>>>>>>>>>>>> libncurses5-dev is already the newest version.
> >>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>> On Mon, Nov 10, 2014 at 12:09 PM, nick <
> >>>> xerofoify@gmail.com>
> >>>>>>>>>>>> wrote:
> >>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>> Check to see if you actuality have it installed on
> your
> >>>>>>>>>>>>>>>>>>>> host
> >>>>>>>>>>>> system
> >>>>>>>>>>>>>>>> for
> >>>>>>>>>>>>>>>>>>>> your package manager.
> >>>>>>>>>>>>>>>>>>>> The library for ncurses for compiling the kernel is
> >>>>>>>>>>>>>>>>>>>> different
> >>>>>>>>>>>> based
> >>>>>>>>>>>>>> on
> >>>>>>>>>>>>>>>>>>>> your distro, check
> >>>>>>>>>>>>>>>>>>>> your distro's installer and install the correct
> ncurses
> >>>>>>>> package
> >>>>>>>>>>>>>> first.
> >>>>>>>>>>>>>>>>>> If
> >>>>>>>>>>>>>>>>>>>> this is still an
> >>>>>>>>>>>>>>>>>>>> issue please reply with a newer error message.
> >>>>>>>>>>>>>>>>>>>> Cheers Nick
> >>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>> On 14-11-09 08:05 PM, Nick D'Ademo wrote:
> >>>>>>>>>>>>>>>>>>>>> Getting a strange error when attempting to configure
> >> the
> >>>>>>>> Yocto
> >>>>>>>>>>>>>> Linux
> >>>>>>>>>>>>>>>>>>>> kernel
> >>>>>>>>>>>>>>>>>>>>> via: bitbake linux-yocto -c menuconfig.
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>> Does anyone have any ideas? (error message below)
> >>>>>>>>>>>>>>>>>>>>> Much appreciated.
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>> Build Configuration:
> >>>>>>>>>>>>>>>>>>>>> BB_VERSION        = "1.24.0"
> >>>>>>>>>>>>>>>>>>>>> BUILD_SYS         = "x86_64-linux"
> >>>>>>>>>>>>>>>>>>>>> NATIVELSBSTRING   = "Ubuntu-14.04"
> >>>>>>>>>>>>>>>>>>>>> TARGET_SYS        = "x86_64-poky-linux"
> >>>>>>>>>>>>>>>>>>>>> MACHINE           = "nuc"
> >>>>>>>>>>>>>>>>>>>>> DISTRO            = "poky"
> >>>>>>>>>>>>>>>>>>>>> DISTRO_VERSION    = "1.7"
> >>>>>>>>>>>>>>>>>>>>> TUNE_FEATURES     = "m64 corei7"
> >>>>>>>>>>>>>>>>>>>>> TARGET_FPU        = ""
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>> *make[1]: Entering directory
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>
> >>
> `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
> >>>>>>>>>>>>>>>>>>>>> GEN     ./Makefile *** Unable to find the ncurses
> >>>>>>>>>>>>>>>>>>>>> libraries
> >>>>>>>> or
> >>>>>>>>>>>> the
> >>>>>>>>>>>>>>>> ***
> >>>>>>>>>>>>>>>>>>>>> required header files. *** 'make menuconfig' requires
> >>>> the
> >>>>>>>>>> ncurses
> >>>>>>>>>>>>>>>>>>>>> libraries. ***  *** Install ncurses (ncurses-devel)
> and
> >>>>>>>>>>>>>>>>>>>>> try
> >>>>>>>>>>>> again.
> >>>>>>>>>>>>>>>> ***
> >>>>>>>>>>>>>>>>>>>>> make[3]: *** [scripts/kconfig/dochecklxdialog] Error
> >>>>>>>> 1make[2]:
> >>>>>>>>>>>> ***
> >>>>>>>>>>>>>>>>>>>>> [menuconfig] Error 2make[1]: *** [sub-make] Error
> >> 2make:
> >>>>>>>>>>>>>>>>>>>>> ***
> >>>>>>>>>>>>>>>>>> [__sub-make]
> >>>>>>>>>>>>>>>>>>>>> Error 2Command failed.Press any key to continue... *
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>
> >>>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>
> >>>>>
> >>>> Clearly your machine config is not  in the correct directory or the
> >>>> layers needed for  you machine config are not being correctly
> >>>> configured. Look at the Yocto Manual on writing Board Support Scripts
> >>>> for more information.
> >>>> Cheers Nick
> >>>>
> >>>
> >>
> >
>

--001a11c2f57cf52a520507b33560
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK, I&#39;ll come up with a simple test case + procedure t=
o reproduce it.<br><br>Cheers,<br>Nick<br><div><div class=3D"gmail_extra">
<br><div class=3D"gmail_quote">On Wed, Nov 12, 2014 at 1:49 AM, nick <span =
dir=3D"ltr">&lt;<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xe=
rofoify@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I=
 would state so as if you need it and it doesn&#39;t work then it probably =
is a bug<br>
with bitbake.<br>
Cheers Nick<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 14-11-11 09:37 AM, Nick D&#39;Ademo wrote:<br>
&gt; Would this be classified as a BitBake bug then?<br>
&gt;<br>
&gt; I actually have a recipe which requires 32-bit libs - I&#39;ll see if =
there&#39;s a<br>
&gt; way around it.<br>
&gt;<br>
&gt; Thanks for your help thus far.<br>
&gt;<br>
&gt; Nick<br>
&gt;<br>
&gt; On Wed, Nov 12, 2014 at 1:18 AM, nick &lt;<a href=3D"mailto:xerofoify@=
gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; That was my issue with your build, but I wasn&#39;t sure if that w=
as going to<br>
&gt;&gt; prevent the build from you companies requirements. I would recomme=
nd only<br>
&gt;&gt; making the build 64 bit as it seems that there is no reason for ba=
ckwards<br>
&gt;&gt; compatibility with older 32 bit libraries for your build.<br>
&gt;&gt; Regards Nick<br>
&gt;&gt;<br>
&gt;&gt; On 14-11-11 06:23 AM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt; A bit of progress (found the cause of the error at least):<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The script that is failing is: linux/scripts/kconfig/lxdialog/=
<br>
&gt;&gt;&gt; *check-lxdialog.sh*<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I added &#39;set -x&#39; to the script so I could see the outp=
ut as BitBake<br>
&gt;&gt;&gt; executes it... The function within that script which is failin=
g is<br>
&gt;&gt; *check()<br>
&gt;&gt;&gt; *- in particular the following is failing:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; *$cc -x c - -o $tmp 2&gt;/dev/null &lt;&lt;&#39;EOF&#39;#inclu=
de CURSES_LOCmain() {}EOF*<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; *Script output:*<br>
&gt;&gt;&gt; *gcc -isystem/home/nick/poky/build/tmp/sysroots/x86_64-linux/u=
sr/include<br>
&gt;&gt;&gt; -O2 -pipe -L/home/nick/poky/build/tmp/sysroots/x86_64-linux/us=
r/lib<br>
&gt;&gt;&gt; -L/home/nick/poky/build/tmp/sysroots/x86_64-linux/lib<br>
&gt;&gt;&gt; -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/x86_64-linu=
x/usr/lib<br>
&gt;&gt;&gt; -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/x86_64-linu=
x/lib<br>
&gt;&gt;&gt; -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/x86_64-linux/usr=
/lib<br>
&gt;&gt;&gt; -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/x86_64-linux/lib=
 -Wl,-O1<br>
&gt;&gt;&gt; &#39;-DCURSES_LOC=3D&lt;ncurses.h&gt;&#39; -DLOCALE<br>
&gt;&gt;&gt; -L/home/nick/poky/build/tmp/sysroots/custom_machine_name/usr/l=
ib64<br>
&gt;&gt;&gt; -lncursesw -ltinfo -x c - -o .lxdialog.tmp*<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; This command is returning 1 when it should be returning 0 (i.e=
.<br>
&gt;&gt; successful<br>
&gt;&gt;&gt; compile).<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The exact error is:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; */usr/bin/ld: cannot find /lib64/libc.so.6/usr/bin/ld: cannot =
find<br>
&gt;&gt;&gt; /usr/lib64/libc_nonshared.acollect2: error: ld returned 1 exit=
 status*<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Where is it trying to find those libraries? In my host system =
(they don&#39;t<br>
&gt;&gt;&gt; exist!) or the system root of my build? The files *only* exist=
 in my<br>
&gt;&gt; system<br>
&gt;&gt;&gt; root @ */home/nick/poky/build/tmp/sysroots/custom_machine_name=
/usr/lib64<br>
&gt;&gt; *and<br>
&gt;&gt;&gt; */home/nick/poky/build/tmp/sysroots/custom_machine_name/lib64.=
*<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I suspect that this may be due to the fact that my custom mach=
ine conf<br>
&gt;&gt; is a<br>
&gt;&gt;&gt; multilib configuration...<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Any further ideas?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Nov 11, 2014 at 2:10 AM, Nick Krause &lt;<a href=3D"ma=
ilto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 at 7:56 AM, Nick D&#39;Ademo &lt;<a h=
ref=3D"mailto:nickdademo@gmail.com">nickdademo@gmail.com</a>&gt;<br>
&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt; If I do the following (from the same Terminal that oe-=
init-build-env<br>
&gt;&gt; has<br>
&gt;&gt;&gt;&gt;&gt; been run):<br>
&gt;&gt;&gt;&gt;&gt; 1) cd<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; /home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/l=
inux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel=
-common-standard-build<br>
&gt;&gt;&gt;&gt;&gt; 2) make menuconfig<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Menu config loads correctly.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; So for some reason, &#39;bitbake linux-yocto -c menuco=
nfig&#39; is not invoking<br>
&gt;&gt;&gt;&gt;&gt; menuconfig properly.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Any ideas where to look in regard to my custom machine=
 config?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 at 10:11 PM, nick &lt;<a href=3D"=
mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Nick,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Yes this is a issue with your custom machine and I=
 believe this is a<br>
&gt;&gt;&gt;&gt; issue<br>
&gt;&gt;&gt;&gt;&gt;&gt; with your your machine<br>
&gt;&gt;&gt;&gt;&gt;&gt; conf is located in the build directories.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Cheers Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-10 02:26 AM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; menuconfig works with a core-image-minimal van=
illa build:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; *Build Configuration:BB_VERSION=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;1.24.0&quot;BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; &quot;x86_64-linux&quot;NATIVELSBSTRING=C2=A0 =
=C2=A0=3D &quot;Ubuntu-14.04&quot;TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; &quot;arm-poky-linux-gnueabi&quot;MACHINE=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemuarm&quot;DISTRO<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0=3D<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; &quot;poky&quot;DISTRO_VERSION=C2=A0 =C2=A0 =
=3D &quot;1.7&quot;TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv5 thu=
mb<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; dsp&quot;TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =3D &quot;soft&quot;meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m=
eta-yocto<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; &quot;master:45bb9e3323073070453647a32289dc179=
2f3d660&quot;meta-oe<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; meta-multimedia=C2=A0 =C2=A0meta-gnome=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; &quot;master:dac2422f737c351c37a8405a76b5f0b5d=
f9311a0&quot;*<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; So this must be an issue with my custom machin=
e.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 at 2:43 PM, nick &lt;<a h=
ref=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Nick,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Then this is an issue with your machine co=
nf or paths required for<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; kernel<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; building. Are you able<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; to build a poky distro with a working kern=
el and this is just a<br>
&gt;&gt; issue<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; with<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; you building the yocto<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; kernel alone or can you also not build pok=
y too?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Cheers Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-09 10:36 PM, Nick D&#39;Ademo wro=
te:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Just tried with the latest 3.17.2 kern=
el. &#39;make menuconfig&#39; works<br>
&gt;&gt;&gt;&gt; fine<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; and<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; loads the interactive kernel config.<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 at 2:01 PM, nick =
&lt;<a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt; wrot=
e:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Try downloading a stock kernel for=
 <a href=3D"http://kernel.org" target=3D"_blank">kernel.org</a> and extract=
 it in<br>
&gt;&gt;&gt;&gt; your<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; home<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; directory and run make menuconfig =
in<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; the root of the kernel source tree=
, if this works then I am<br>
&gt;&gt;&gt;&gt; assuming<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; either ncurses or your machine con=
f is wrong<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; somewhere.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Cheers Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-09 09:51 PM, Nick D&#39;A=
demo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hi Nick,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I removed build/tmp/ and perfo=
rmed a rebuild - I&#39;m still<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; experiencing<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; same error message unfortunate=
ly.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 at 12:58 =
PM, nick &lt;<a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>=
&gt;<br>
&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Seems to after reading and=
 doing some research a build issue<br>
&gt;&gt; with<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; multiple<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; jobs or try running rm -r =
tmp in your<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; build and then rebuild as =
it may be an issue with out of date<br>
&gt;&gt;&gt;&gt; temp<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; files.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Cheers Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-09 08:51 PM, Nick=
 D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thanks for trying that=
 out Nick.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Issue is present on bo=
th 3.14 and 3.17 for me.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; All paths in the requi=
re lines are correct too.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Any other ideas?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 a=
t 12:46 PM, nick &lt;<a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail=
.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I tried bitbake li=
nux-yocto -c menuconfig on my own system<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; running<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; same distro and it=
 seems to my<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; default use kernel=
 3.14 not 3.17 otherwise this seems be fine<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; from<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; my<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; understanding. Als=
o check all the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; paths in your requ=
ire lines as there may be an issue with your<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; builds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; and<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; the path set up by=
 these files<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; that you are linki=
ng to for your kernel build.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-09 08:40 =
PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thanks Nick.<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Machine conf i=
s as follows (it&#39;s actually nearly identical to<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; nuc.conf<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; however, BT su=
pport, multilib, and preferred providers have<br>
&gt;&gt;&gt;&gt; been<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; added):<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #@TYPE: Machin=
e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #@NAME: chiefr=
iver<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #@WEBTITLE: In=
tel Next Unit of Computing (NUC) Model:<br>
&gt;&gt;&gt;&gt; DC3217IYE<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #@DESCRIPTION:=
 Machine configuration for Intel NUC model<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; DC3217IYE<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; # i.e. Ivy Bri=
dge + Panther Point<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; PREFERRED_VERS=
ION_linux-yocto ?=3D &quot;3.17%&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; MACHINE_FEATUR=
ES +=3D &quot;va-impl-intel wifi efi bluetooth&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; MACHINE_FEATUR=
ES +=3D &quot;intel-ucode&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; require conf/m=
achine/include/meta-intel.inc<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; require conf/m=
achine/include/intel-corei7-64-common.inc<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; require conf/m=
achine/include/intel-common-pkgarch.inc<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; require multil=
ib.conf<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; MACHINE_HWCODE=
CS ?=3D &quot;va-intel gst-va-intel&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; XSERVER ?=3D &=
quot;${XSERVER_X86_BASE} \<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86_EXT} \<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86_I965} \<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; MACHINE_EXTRA_=
RRECOMMENDS +=3D<br>
&gt;&gt; &quot;linux-firmware-iwlwifi-6000g2b-6<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; lms8&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; # disable the =
serial port configuration<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; SERIAL_CONSOLE=
 =3D &quot;&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; PREFERRED_PROV=
IDER_jpeg =3D &quot;jpeg&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; PREFERRED_PROV=
IDER_jpeg-native =3D &quot;jpeg-native&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; PREFERRED_PROV=
IDER_virtual/fftw =3D &quot;fftw&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10=
, 2014 at 12:36 PM, nick &lt;<a href=3D"mailto:xerofoify@gmail.com">xerofoi=
fy@gmail.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hey Nick,<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; This seems=
 to then be an issue with incorrect paths or build<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; information<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; in your nu=
c.conf<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; as the mos=
t likely culprit. If you can post your machine&#39;s<br>
&gt;&gt;&gt;&gt; conf<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; file I<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; will be gl=
ad to see<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; if there a=
re any issues I can spot.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-0=
9 08:33 PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1) sou=
rce oe-init-build-env is run before building.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 2) We =
are actually using a custom machine .conf based on<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; nuc.conf,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; so<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; actual=
ly: MACHINE =3D &quot;custom_machine_name&quot;. I replaced it<br>
&gt;&gt;&gt;&gt; with<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &quot;nuc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; in<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; this<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; post t=
o avoid confusion.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon=
, Nov 10, 2014 at 12:25 PM, nick &lt;<br>
&gt;&gt; <a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Do=
 you run source oe-init-build-env before building and<br>
&gt;&gt; why<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; is=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; your<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; machine<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; se=
t to nuc seems this may be an issue?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Ni=
ck<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On=
 14-11-09 08:15 PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; Thanks for the quick reply Nick.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; Host system is Ubuntu 14.04. ncurses is already<br>
&gt;&gt; installed:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; sudo apt-get install libncurses5-dev<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; Reading package lists... Done<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; Building dependency tree<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; Reading state information... Done<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; libncurses5-dev is already the newest version.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; On Mon, Nov 10, 2014 at 12:09 PM, nick &lt;<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com=
</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; Check to see if you actuality have it installed on your<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; host<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; system<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; for<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; your package manager.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; The library for ncurses for compiling the kernel is<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; different<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; based<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; on<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; your distro, check<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; your distro&#39;s installer and install the correct ncurses<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; package<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; first.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; If=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; this is still an<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; issue please reply with a newer error message.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; Cheers Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; On 14-11-09 08:05 PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; Getting a strange error when attempting to configure<br>
&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Yocto<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Linux<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt; kernel<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; via: bitbake linux-yocto -c menuconfig.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; Does anyone have any ideas? (error message below)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; Much appreciated.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; Build Configuration:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.24.0&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux=
&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-poky-linux=
&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;nuc&quo=
t;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&qu=
ot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.7&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;m64 corei7&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; *make[1]: Entering directory<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/=
linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-inte=
l-common-standard-build&#39;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; GEN=C2=A0 =C2=A0 =C2=A0./Makefile *** Unable to find the ncurses<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; libraries<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; or<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ***<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; required header files. *** &#39;make menuconfig&#39; requires<br>
&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ncurses<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; libraries. ***=C2=A0 *** Install ncurses (ncurses-devel) and<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; try<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; again.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ***<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; make[3]: *** [scripts/kconfig/dochecklxdialog] Error<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1make[2]:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ***<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; [menuconfig] Error 2make[1]: *** [sub-make] Error<br>
&gt;&gt; 2make:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; ***<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [_=
_sub-make]<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt; Error 2Command failed.Press any key to continue... *<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Clearly your machine config is not=C2=A0 in the correct di=
rectory or the<br>
&gt;&gt;&gt;&gt; layers needed for=C2=A0 you machine config are not being c=
orrectly<br>
&gt;&gt;&gt;&gt; configured. Look at the Yocto Manual on writing Board Supp=
ort Scripts<br>
&gt;&gt;&gt;&gt; for more information.<br>
&gt;&gt;&gt;&gt; Cheers Nick<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div>

--001a11c2f57cf52a520507b33560--
