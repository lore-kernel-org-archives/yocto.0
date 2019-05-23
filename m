Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D77CDE00994; Thu, 23 May 2019 05:36:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE,US_DOLLARS_3 autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	*  1.4 US_DOLLARS_3 BODY: Mentions millions of $ ($NN,NNN,NNN.NN)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D9FE00951
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 05:36:49 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id h11so5325964ljb.2
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 05:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YIgEbwOPmkBxI9GaBznxD9QUJeLo6knoTzaq9nbHpXk=;
	b=n8zpg/TvjEhFd0of6boMntBYXUCIoDistC8OJ/nV9WNh05nopC2WquCjzQpTjm5oKj
	tdkpgIUGlehaubAacmlE4YW7dTLrbxD0U/gvbOD+lehL1FT/RUbRvkXv01msqlgq0pS2
	CI/UvewVUP9ip9pYfD88kmpYAxidQ6lHMvTqMFWkTmK2k1X2V51VCucAWeokV5jqXuaI
	fxzV17rlp5VrTzpwNKQ0rLvoSSosIsgYvXRjch19pYBKdLcJ82Zvd7SCWhCwEjF/uHxu
	b9n18y2W3rMCK/O7yB81RTQSxZaGhazKA3eoPPDwnvNUVYk2QMn7xClLkHKLHQLY478o
	SBxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YIgEbwOPmkBxI9GaBznxD9QUJeLo6knoTzaq9nbHpXk=;
	b=FsCAa6XD+l47UGTht8brlGE5ydfn2vC8iigTVb1bo8WjeBZf/1IMGyCwi/EvuuyDnr
	yLsMJiHddeb5NoBK6CggAQ09GwUSX0ba1Gwv2FguR1ufJF57w1xwgM2QRZOwfkM8Sfb0
	RjCJ15ZWHzoEbyaTS3OC/6Vyjb6GE1wb3wTO8xGlMZDZp2IFgpZvqfXnjMn4hlanMxeh
	9GkckGT9P/h0lvCMfX5SHRZpODlbbgolw6BQ2Op3V9wX+mb8PxBcVe72Fx3s6m6oYIqf
	O7NQSL+F+2g+e6O/Go+qbwR/eRyJJmiC29XhCr5od2om1hK6/HcjNEI8oNKMaFjQ1ExF
	TGbg==
X-Gm-Message-State: APjAAAU0HdZ8klXPb08IcmwuN8JvDomNRhC9si2/rNRfo438peK43jBK
	m6IZBLHrR3Iqm+Wle0HXC2sBCJfCduDQJd/Gt94=
X-Google-Smtp-Source: APXvYqwBqGdBGom12C4QpqLqQHagryPVGRXV6NX8crKRDT3/9SydsQPYK6gnZ0vaYTTtRsXDLXT6WzT951nuYmqwRs8=
X-Received: by 2002:a2e:6c01:: with SMTP id h1mr22842022ljc.103.1558615007950; 
	Thu, 23 May 2019 05:36:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
	<903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
	<CAGAf8LyRa0AXf-097GAoJa=jUY3pK8fWxCaDXGReu+GqVJOi4A@mail.gmail.com>
	<CADkTA4MQc=OYaTqTwoGv0mzLcQ3a6R911_UjCuCpRCootgtiwA@mail.gmail.com>
	<CAGAf8LwwfKq4kXE5=bf_1+Aa8aqOG+8NrL31Mii2TfLhXyLXKA@mail.gmail.com>
	<CADkTA4OYJs71BPbeM3+gz1+heAQw4L5zJ4U77emrywG5bzz-HQ@mail.gmail.com>
	<CAGAf8Lxcs7sigNHZxrOj1HUfn0x12=4o3bh85Ku-E=w=1iGGFg@mail.gmail.com>
	<CADkTA4NXu3qt+88TA_mjaDDaZooadX6_H=Z_mMsfi7Op0gFB6Q@mail.gmail.com>
	<CAGAf8LwUfCGHkKjE-VWpZjvh9Q9A1ZUEDkGbZ-+syQpnyMWf-g@mail.gmail.com>
In-Reply-To: <CAGAf8LwUfCGHkKjE-VWpZjvh9Q9A1ZUEDkGbZ-+syQpnyMWf-g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 23 May 2019 08:36:35 -0400
Message-ID: <CADkTA4PzzpJwzG05NPDOUYLYDp15Y_wc+_-Nn=LmpJtuEfowmg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Building Out-of-Tree Modules on the BBB Target
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
X-List-Received-Date: Thu, 23 May 2019 12:36:51 -0000
Content-Type: multipart/alternative; boundary="000000000000e3fabf05898d55c2"

--000000000000e3fabf05898d55c2
Content-Type: text/plain; charset="UTF-8"

On Thu, May 23, 2019 at 6:32 AM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> After some tests (and I had other problems to take care of, as well),
> here is the following:
>
> > These have all been discussed off an on over the past 5 years.
> > I can't get at bugzilla right now, but all the details are logged in
> cases.
> > A survey of all the distros, their kernel package, etc, were all looked
> at.
> > We had to balance the traditional packaging with some new concepts
> > and landed with what we have now.
>
> I tried several tests. This is my final conclusion (two cases):
>
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/kernel-development.txt
>
> The kernel issue is described here: there is need to have the YOCTO
> minimum configuration with the kernel setup:
> [1] The entire kernel source code in:
> /usr/src/kernel/`uname-r`/<kernel source code>
> [2] The header files in: /usr/src/kernel/`uname-r`/<header file
> directory structures>
>
> Point [1] is achieved with the following local.config file:
>
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/local-devsrc.conf
>
> Namely, with the following snippets in the local.conf:
> TOOLCHAIN_TARGET_TASK_append = " packagegroup-core-tools-profile
> packagegroup-core-buildessential kernel-devsrc"
> KERNEL_DEV_TOOLS = "packagegroup-core-tools-profile
> packagegroup-core-buildessential kernel-devsrc"
> KERNEL_DEV_MODULE = "kernel-modules"
> CORE_IMAGE_EXTRA_INSTALL += "${KERNEL_DEV_MODULE} \
> ${KERNEL_DEV_TOOLS} \
> systemtap \
> "
>
> Problem with this approach is that such a kernel makes the rootfs too
> big and impractical:
> -rw-r--r--. 2 user vboxusers 101499952 May 17 14:32
> core-image-minimal-beaglebone.rootfs.tar.xz
>
> The main issue is point [2]: how to achieve it?
> The suggestion is to introduce the new package in YOCTO kernel,
> called: kernel-headers
> The OBVIOUS benefit is that it will serve to the purpose of building
> modules out of the tree on the target with
> minimal mpact to rootfs!
>

There are already 2.8 development items for some new, optional kernel
packages. One for source and one for headers.
So in the coming months, things will be different.

That being said, they are optional. I might be misreading, but what exactly
are you trying to build that requires that specific structure ? We are both
rebuilding the entire kernel and out of tree modules all the time with the
existing structure/path of the on-target installs.

kernel-devsrc itself is a small package (size wise), so it shouldn't be the
cause of your expanded rootfs footprint.

Bruce



>
> Thank you,
> Zoran Stojsavljevic
> _______
>
> On Thu, May 16, 2019 at 12:04 AM Bruce Ashfield
> <bruce.ashfield@gmail.com> wrote:
> >
> >
> >
> > On Wed, May 15, 2019 at 4:09 PM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> > The core-image-kernel-dev image is how I do all my on target
> >> > testing when I introduce a new reference kernel for a release.
> >>
> >> Maybe you are correct. Maybe I should use/add in my local.conf the
> following:
> >>
> >> KERNEL_DEV_TOOLS ?= "packagegroup-core-tools-profile
> >> packagegroup-core-buildessential kernel-devsrc"
> >> KERNEL_DEV_MODULE ?= "kernel-modules"
> >> CORE_IMAGE_EXTRA_INSTALL += "${KERNEL_DEV_MODULE} \
> >>                              ${KERNEL_DEV_TOOLS} \
> >>                              systemtap \
> >>                             "
> >> I need to try these... Maybe this addendum will solve the $1 mio USD
> problem?!
> >>
> >> > And IIRC the autobuilders are using a sato based image (Richard
> >> > could confirm more easily that I could what image type the
> >> > autobuilders are using for hello-world on target module tests).
> >>
> >> I am just advertising something more simple. To have mandatory
> >> /lib/modules/`uname -r` directory. And introduce few more packages, as
> >> Fedora distro, for example, has: kernel-headers (assuming YOCTO
> >> rootfs, the following will be installed: /usr/src/kernel/`uname
> >> -r`/<header file directory structures>. This also makes addition of
> >> /lib/modules/`uname -r`/build file (which is soft link to
> >> usr/src/kernel/`uname -r`).
> >
> >
> > These have all been discussed off an on over the past 5 years. I can't
> get at bugzilla right now, but all the details are logged in cases. A
> survey of all the distros, their kernel package, etc, were all looked at.
> We had to balance the traditional packaging with some new concepts and
> landed with what we have now.
> >
> >
> >>
> >> Or kernel-devel package. Then, the whole current kernel source code
> >> will be introduced, and also support for it.
> >
> >
> > There's a case for this one as well, I'll probably have it done for the
> fall release. But our devsrc used to pretty much be the full source it has
> now been pruned down to something more manageable.  There are definitely
> some cases for having the full source on the target again, and it will be a
> separate package, just not the minimal one to build out of tree modules,
> etc.
> >
> >
> >
> >>
> >>
> >> SDK building with such a support is good/cool. But sometimes, before
> >> introducing SDK, some tests should be done on target. NO need to
> >> optionally include built-in layer hello-world driver example. Since I
> >> (or you name the person) have own test drivers, which will be imported
> >> out of tree, externally, to the target test bed!
> >>
> >
> > I never use the SDK myself, so you are not alone in not going to it
> first. Hopefully I'll get some new patches out in the coming month before
> summer holidays really kick in.
> >
> > Bruce
> >
> >
> >>
> >> Just thinking loud...
> >>
> >> Zoran
> >> _______
> >>
> >> On Wed, May 15, 2019 at 4:25 PM Bruce Ashfield <
> bruce.ashfield@gmail.com> wrote:
> >> >
> >> >
> >> >
> >> > On Wed, May 15, 2019 at 3:44 AM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >> >>
> >> >> > That's correct. That command only adds the kernel source and
> >> >> > build infrastructure to the SDK, not to your target image. You'd
> still
> >> >> > need to arrange to have the kernel-devsrc package installed on the
> >> >> > target image if you want it on the board's rootfs. How you arrange
> >> >> > to have the package installed to the image varies with the image
> >> >> > (since they all don't have the same image install variables, etc).
> >> >>
> >> >> And here is a $1,000,000 USD question? How to do it on Poky (as
> >> >> example of what you have stated in RED)? ;-)
> >> >>
> >> >> In other words: how to arrange it on Poky (as a Referent example)?
> >> >
> >> >
> >> > The core-image-kernel-dev image is how I do all my on target testing
> when I introduce a new reference kernel for a release. And IIRC the
> autobuilders are using a sato based image (Richard could confirm more
> easily that I could what image type the autobuilders are using for
> hello-world on target module tests).
> >> >
> >> > Bruce
> >> >
> >> >
> >> >>
> >> >>
> >> >> Thank you,
> >> >> Zoran
> >> >> _______
> >> >>
> >> >>
> >> >> On Wed, May 15, 2019 at 7:41 AM Bruce Ashfield <
> bruce.ashfield@gmail.com> wrote:
> >> >>>
> >> >>>
> >> >>>
> >> >>> On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >> >>>>
> >> >>>> Hello Chris, Bruce,
> >> >>>>
> >> >>>> I have some additional data to share with you both, since I have
> tried
> >> >>>> something. And here is my take on the things!
> >> >>>>
> >> >>>> > 1. Build using a bb recipe.
> >> >>>> > Take a look at meta-skeleton/recipes-kernel/hello-mod for an
> example.
> >> >>>> > You just need to add meta-skeleton to your bblayers.conf and then
> >> >>>> >  bitbake hello-mod
> >> >>>>
> >> >>>> I looked into this example, and, yes, it is classic kernel module
> >> >>>> definition out of the tree. With some outdated data, all cool, the
> >> >>>> YOCTO designer should take care himself to fix these data, if using
> >> >>>> this stuff.
> >> >>>>
> >> >>>> But this is NOT mandatory, since I can add out of the tree module
> NOT
> >> >>>> actually using built-in module. I just use
> .../tmp/deploy/images/bbb/*
> >> >>>> generated stuff, since I have automated scripts which are bringing
> all
> >> >>>> these on my BBB target. Then I tftp my source code module to the
> >> >>>> target.
> >> >>>>
> >> >>>> > 2. Build from the SDK:
> >> >>>> > First, add the kernel source to the SDK by adding this to
> conf/local.conf
> >> >>>> >  TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
> >> >>>>
> >> >>>> YES, this is THE command which should generate
> >> >>>> /usr/src/kernel(s)/`uname -r` or similar... But adding it to
> >> >>>> local.conf and after deleting kernel, then regenerating bitbake -k
> >> >>>> core-image-minimal does not bring this path into the rootfs image!?
> >> >>>
> >> >>>
> >> >>> That's correct. That command only adds the kernel source and build
> infrastructure to the SDK, not to your target image. You'd still need to
> arrange to have the kernel-devsrc package installed on the target image if
> you want it on the board's rootfs. How you arrange to have the package
> installed to the image varies with the image (since they all don't have the
> same image install variables, etc).
> >> >>>
> >> >>>
> >> >>>>
> >> >>>>
> >> >>>> I did it actually using meta-bbb, and using poky referent distro as
> >> >>>> two additional layers to the more complex bbb image!
> >> >>>> https://github.com/jumpnow/meta-bbb.git
> >> >>>>
> >> >>>> The (KAS - you can figure out out of it local.conf) script I am
> using
> >> >>>> to build such a BBB image is here:
> >> >>>>
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml
> >> >>>>
> >> >>>> I did not try it with BBB reference poky only! Maybe I should try
> it
> >> >>>> as only referent poky? What do you think?
> >> >>>>
> >> >>>> Does in this case is SDK build really mandatory??? Should NOT be!
> >> >>>>
> >> >>>
> >> >>> You only do the SDK steps if you want to support building out of
> tree modules in an SDK install. So it is not mandatory for on target module
> builds.
> >> >>>
> >> >>> Bruce
> >> >>>
> >> >>>
> >> >>>>
> >> >>>> > Once the SDK is installed, generate the kernel headers:
> >> >>>> >  sudo -i
> >> >>>> >  .
> /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
> >> >>>> >  cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
> >> >>>> >  cd /usr/src/kernel
> >> >>>> >  make oldconfig scripts
> >> >>>> >  exit
> >> >>>>
> >> >>>> This is in nutshell the same what I did (a bit different) for
> Embedded
> >> >>>> Debian. This is already on the target BBB, NOT while building YOCTO
> >> >>>> BBB image!
> >> >>>>
> >> >>>> > Finally, build your module using a Makefile like this
> >> >>>> >  obj-m := hello-mod.o
> >> >>>> >  all:
> >> >>>> >        make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=$(shell pwd)
> >> >>>>
> >> >>>> As said before: bringing my own module into the target BBB (I have
> my
> >> >>>> own examples, and I build them on the target with the almost the
> same
> >> >>>> Makefiles)
> >> >>>>
> >> >>>> Zoran
> >> >>>> _______
> >> >>>>
> >> >>>> On Sun, May 12, 2019 at 3:15 PM Chris Simmonds <chris@2net.co.uk>
> wrote:
> >> >>>> >
> >> >>>> > Hi Zoran,
> >> >>>> >
> >> >>>> > There are two ways to do this
> >> >>>> >
> >> >>>> > 1. Build using a bb recipe.
> >> >>>> > Take a look at meta-skeleton/recipes-kernel/hello-mod for an
> example.
> >> >>>> > You just need to add meta-skeleton to your bblaysers.conf and
> then
> >> >>>> >   bitbake hello-mod
> >> >>>> >
> >> >>>> >
> >> >>>> > 2. Build from the SDK:
> >> >>>> > First, add the kernel source to the SDK by adding this to
> conf/local/conf
> >> >>>> >   TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
> >> >>>> >
> >> >>>> > Then build the SDK
> >> >>>> >   bitbake -c populate_sdk [your image recipe]
> >> >>>> >
> >> >>>> > Once the SDK is installed, generate the kernel headers:
> >> >>>> >   sudo -i
> >> >>>> >   .
> /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
> >> >>>> >   cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
> >> >>>> >   cd /usr/src/kernel
> >> >>>> >   make oldconfig scripts
> >> >>>> >   exit
> >> >>>> >
> >> >>>> > Finally, build your module using a Makefile like this
> >> >>>> >
> >> >>>> >   obj-m := hello-mod.o
> >> >>>> >   all:
> >> >>>> >         make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=$(shell pwd)
> >> >>>> >
> >> >>>> >
> >> >>>> > HTH,
> >> >>>> > Chris
> >> >>>> >
> >> >>>> > On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
> >> >>>> > > Hello to the YOCTO community,
> >> >>>> > >
> >> >>>> > > I am using (to build the target for Beagle Bone Black) the
> following script:
> >> >>>> > > https://github.com/ZoranStojsavljevic/bbb-yocto
> >> >>>> > >
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh
> >> >>>> > >
> >> >>>> > > The latest kernel I am using from the following repo:
> >> >>>> > > https://github.com/jumpnow/meta-bbb
> >> >>>> > >
> >> >>>> > > Is kernel 5.0.14 .
> >> >>>> > >
> >> >>>> > > Here is the snippet of the boot traces:
> >> >>>> > > Starting kernel ...
> >> >>>> > >
> >> >>>> > > [    0.000000] Booting Linux on physical CPU 0x0
> >> >>>> > > [    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host)
> (gcc
> >> >>>> > > version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
> >> >>>> > > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2
> (ARMv7), cr=10c5387d
> >> >>>> > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT
> aliasing
> >> >>>> > > instruction cache
> >> >>>> > > [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone
> Black
> >> >>>> > > [    0.000000] Memory policy: Data cache writeback
> >> >>>> > > [    0.000000] cma: Reserved 16 MiB at 0x9f000000
> >> >>>> > > [    0.000000] CPU: All CPU(s) started in SVC mode.
> >> >>>> > > [    0.000000] AM335X ES2.1 (sgx neon)
> >> >>>> > > [    0.000000] random: get_random_bytes called from
> >> >>>> > > start_kernel+0xa4/0x460 with crng_init=0
> >> >>>> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total
> pages: 130048
> >> >>>> > > [    0.000000] Kernel command line: console=ttyO0,115200n8
> >> >>>> > > root=/dev/ram0 ip=dhcp
> >> >>>> > >
> >> >>>> > > According to the documentation, the following:
> >> >>>> > > 2.10.1. Building Out-of-Tree Modules on the Target
> >> >>>> > >
> https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html
> >> >>>> > >
> >> >>>> > > I tried to find /usr/src/kernels/5.0.14... Directory, since I
> see
> >> >>>> > > from the build that kernel-dev and kernel-devsrc are included:
> >> >>>> > > [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
> >> >>>> > > core-image-kernel-dev                                 :1.0-r0
> >> >>>> > > kernel-devsrc                                         :1.0-r0
> >> >>>> > > kernel-selftest                                       :1.0-r0
> >> >>>> > >
> >> >>>> > > THE PROBLEM: But I could not find ob BBB target
> /usr/src/kernels
> >> >>>> > > directory at all!?
> >> >>>> > >
> >> >>>> > > Two questions here?
> >> >>>> > > [1] Do you have any advice on this problem (what I am missing
> here)?
> >> >>>> > > [2] Alternative to [1]: how I can use cross compiler from
> >> >>>> > > .../build/tmp to build Out-of-Tree Module for the BBB target
> on the
> >> >>>> > > host?
> >> >>>> > >
> >> >>>> > > Thank you,
> >> >>>> > > Zoran
> >> >>>> > > _______
> >> >>>> > >
> >> >>>> >
> >> >>>> >
> >> >>>> > --
> >> >>>> > Chris Simmonds, trainer and consultant at 2net
> >> >>>> > http://www.2net.co.uk
> >> >>>> > Author of "Mastering Embedded Linux Programming"
> >> >>>
> >> >>>
> >> >>>
> >> >>> --
> >> >>> - Thou shalt not follow the NULL pointer, for chaos and madness
> await thee at its end
> >> >>> - "Use the force Harry" - Gandalf, Star Trek II
> >> >>>
> >> >
> >> >
> >> > --
> >> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> >> > - "Use the force Harry" - Gandalf, Star Trek II
> >> >
> >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II
> >
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000e3fabf05898d55c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 23, 2019 at 6:32 AM Zoran Stojsavljevic=
 &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">After some tests (and I had other problems to take care of, as well=
),<br>
here is the following:<br>
<br>
&gt; These have all been discussed off an on over the past 5 years.<br>
&gt; I can&#39;t get at bugzilla right now, but all the details are logged =
in cases.<br>
&gt; A survey of all the distros, their kernel package, etc, were all looke=
d at.<br>
&gt; We had to balance the traditional packaging with some new concepts<br>
&gt; and landed with what we have now.<br>
<br>
I tried several tests. This is my final conclusion (two cases):<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issu=
es/kernel-development.txt" rel=3D"noreferrer" target=3D"_blank">https://git=
hub.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/kernel-development.=
txt</a><br>
<br>
The kernel issue is described here: there is need to have the YOCTO<br>
minimum configuration with the kernel setup:<br>
[1] The entire kernel source code in:<br>
/usr/src/kernel/`uname-r`/&lt;kernel source code&gt;<br>
[2] The header files in: /usr/src/kernel/`uname-r`/&lt;header file<br>
directory structures&gt;<br>
<br>
Point [1] is achieved with the following local.config file:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issu=
es/local-devsrc.conf" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/local-devsrc.conf</a><br=
>
<br>
Namely, with the following snippets in the local.conf:<br>
TOOLCHAIN_TARGET_TASK_append =3D &quot; packagegroup-core-tools-profile<br>
packagegroup-core-buildessential kernel-devsrc&quot;<br>
KERNEL_DEV_TOOLS =3D &quot;packagegroup-core-tools-profile<br>
packagegroup-core-buildessential kernel-devsrc&quot;<br>
KERNEL_DEV_MODULE =3D &quot;kernel-modules&quot;<br>
CORE_IMAGE_EXTRA_INSTALL +=3D &quot;${KERNEL_DEV_MODULE} \<br>
${KERNEL_DEV_TOOLS} \<br>
systemtap \<br>
&quot;<br>
<br>
Problem with this approach is that such a kernel makes the rootfs too<br>
big and impractical:<br>
-rw-r--r--. 2 user vboxusers 101499952 May 17 14:32<br>
core-image-minimal-beaglebone.rootfs.tar.xz<br>
<br>
The main issue is point [2]: how to achieve it?<br>
The suggestion is to introduce the new package in YOCTO kernel,<br>
called: kernel-headers<br>
The OBVIOUS benefit is that it will serve to the purpose of building<br>
modules out of the tree on the target with<br>
minimal mpact to rootfs!<br></blockquote><div><br></div><div><div class=3D"=
gmail_default" style=3D"font-size:small">There are already 2.8 development =
items for some new, optional kernel packages. One for source and one for he=
aders.=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small">So=
 in the coming months, things will be different.</div><div class=3D"gmail_d=
efault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" st=
yle=3D"font-size:small">That being said, they are optional. I might be misr=
eading, but what exactly are you trying to build that requires that specifi=
c structure ? We are both rebuilding the entire kernel and out of tree modu=
les all the time with the existing structure/path of the on-target installs=
.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small">kernel-devsrc itself is=
 a small package (size wise), so it shouldn&#39;t be the cause of your expa=
nded rootfs footprint.=C2=A0</div><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
<br>
Thank you,<br>
Zoran Stojsavljevic<br>
_______<br>
<br>
On Thu, May 16, 2019 at 12:04 AM Bruce Ashfield<br>
&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ash=
field@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, May 15, 2019 at 4:09 PM Zoran Stojsavljevic &lt;<a href=3D"mai=
lto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gm=
ail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; The core-image-kernel-dev image is how I do all my on target<=
br>
&gt;&gt; &gt; testing when I introduce a new reference kernel for a release=
.<br>
&gt;&gt;<br>
&gt;&gt; Maybe you are correct. Maybe I should use/add in my local.conf the=
 following:<br>
&gt;&gt;<br>
&gt;&gt; KERNEL_DEV_TOOLS ?=3D &quot;packagegroup-core-tools-profile<br>
&gt;&gt; packagegroup-core-buildessential kernel-devsrc&quot;<br>
&gt;&gt; KERNEL_DEV_MODULE ?=3D &quot;kernel-modules&quot;<br>
&gt;&gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot;${KERNEL_DEV_MODULE} \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${KERNEL_DEV_TOOLS} \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 systemtap \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt;&gt; I need to try these... Maybe this addendum will solve the $1 mio U=
SD problem?!<br>
&gt;&gt;<br>
&gt;&gt; &gt; And IIRC the autobuilders are using a sato based image (Richa=
rd<br>
&gt;&gt; &gt; could confirm more easily that I could what image type the<br=
>
&gt;&gt; &gt; autobuilders are using for hello-world on target module tests=
).<br>
&gt;&gt;<br>
&gt;&gt; I am just advertising something more simple. To have mandatory<br>
&gt;&gt; /lib/modules/`uname -r` directory. And introduce few more packages=
, as<br>
&gt;&gt; Fedora distro, for example, has: kernel-headers (assuming YOCTO<br=
>
&gt;&gt; rootfs, the following will be installed: /usr/src/kernel/`uname<br=
>
&gt;&gt; -r`/&lt;header file directory structures&gt;. This also makes addi=
tion of<br>
&gt;&gt; /lib/modules/`uname -r`/build file (which is soft link to<br>
&gt;&gt; usr/src/kernel/`uname -r`).<br>
&gt;<br>
&gt;<br>
&gt; These have all been discussed off an on over the past 5 years. I can&#=
39;t get at bugzilla right now, but all the details are logged in cases. A =
survey of all the distros, their kernel package, etc, were all looked at. W=
e had to balance the traditional packaging with some new concepts and lande=
d with what we have now.<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; Or kernel-devel package. Then, the whole current kernel source cod=
e<br>
&gt;&gt; will be introduced, and also support for it.<br>
&gt;<br>
&gt;<br>
&gt; There&#39;s a case for this one as well, I&#39;ll probably have it don=
e for the fall release. But our devsrc used to pretty much be the full sour=
ce it has now been pruned down to something more manageable.=C2=A0 There ar=
e definitely some cases for having the full source on the target again, and=
 it will be a separate package, just not the minimal one to build out of tr=
ee modules, etc.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; SDK building with such a support is good/cool. But sometimes, befo=
re<br>
&gt;&gt; introducing SDK, some tests should be done on target. NO need to<b=
r>
&gt;&gt; optionally include built-in layer hello-world driver example. Sinc=
e I<br>
&gt;&gt; (or you name the person) have own test drivers, which will be impo=
rted<br>
&gt;&gt; out of tree, externally, to the target test bed!<br>
&gt;&gt;<br>
&gt;<br>
&gt; I never use the SDK myself, so you are not alone in not going to it fi=
rst. Hopefully I&#39;ll get some new patches out in the coming month before=
 summer holidays really kick in.<br>
&gt;<br>
&gt; Bruce<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; Just thinking loud...<br>
&gt;&gt;<br>
&gt;&gt; Zoran<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; On Wed, May 15, 2019 at 4:25 PM Bruce Ashfield &lt;<a href=3D"mail=
to:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>=
&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, May 15, 2019 at 3:44 AM Zoran Stojsavljevic &lt;<a hr=
ef=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsav=
ljevic@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; That&#39;s correct. That command only adds the kerne=
l source and<br>
&gt;&gt; &gt;&gt; &gt; build infrastructure to the SDK, not to your target =
image. You&#39;d still<br>
&gt;&gt; &gt;&gt; &gt; need to arrange to have the kernel-devsrc package in=
stalled on the<br>
&gt;&gt; &gt;&gt; &gt; target image if you want it on the board&#39;s rootf=
s. How you arrange<br>
&gt;&gt; &gt;&gt; &gt; to have the package installed to the image varies wi=
th the image<br>
&gt;&gt; &gt;&gt; &gt; (since they all don&#39;t have the same image instal=
l variables, etc).<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; And here is a $1,000,000 USD question? How to do it on Po=
ky (as<br>
&gt;&gt; &gt;&gt; example of what you have stated in RED)? ;-)<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; In other words: how to arrange it on Poky (as a Referent =
example)?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The core-image-kernel-dev image is how I do all my on target =
testing when I introduce a new reference kernel for a release. And IIRC the=
 autobuilders are using a sato based image (Richard could confirm more easi=
ly that I could what image type the autobuilders are using for hello-world =
on target module tests).<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Bruce<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thank you,<br>
&gt;&gt; &gt;&gt; Zoran<br>
&gt;&gt; &gt;&gt; _______<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, May 15, 2019 at 7:41 AM Bruce Ashfield &lt;<a hre=
f=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmai=
l.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic &=
lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran=
.stojsavljevic@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; Hello Chris, Bruce,<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; I have some additional data to share with you bot=
h, since I have tried<br>
&gt;&gt; &gt;&gt;&gt;&gt; something. And here is my take on the things!<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; 1. Build using a bb recipe.<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Take a look at meta-skeleton/recipes-kernel/=
hello-mod for an example.<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; You just need to add meta-skeleton to your b=
blayers.conf and then<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 bitbake hello-mod<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; I looked into this example, and, yes, it is class=
ic kernel module<br>
&gt;&gt; &gt;&gt;&gt;&gt; definition out of the tree. With some outdated da=
ta, all cool, the<br>
&gt;&gt; &gt;&gt;&gt;&gt; YOCTO designer should take care himself to fix th=
ese data, if using<br>
&gt;&gt; &gt;&gt;&gt;&gt; this stuff.<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; But this is NOT mandatory, since I can add out of=
 the tree module NOT<br>
&gt;&gt; &gt;&gt;&gt;&gt; actually using built-in module. I just use .../tm=
p/deploy/images/bbb/*<br>
&gt;&gt; &gt;&gt;&gt;&gt; generated stuff, since I have automated scripts w=
hich are bringing all<br>
&gt;&gt; &gt;&gt;&gt;&gt; these on my BBB target. Then I tftp my source cod=
e module to the<br>
&gt;&gt; &gt;&gt;&gt;&gt; target.<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; 2. Build from the SDK:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; First, add the kernel source to the SDK by a=
dding this to conf/local.conf<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 TOOLCHAIN_TARGET_TASK_append =3D &quot=
; kernel-devsrc&quot;<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; YES, this is THE command which should generate<br=
>
&gt;&gt; &gt;&gt;&gt;&gt; /usr/src/kernel(s)/`uname -r` or similar... But a=
dding it to<br>
&gt;&gt; &gt;&gt;&gt;&gt; local.conf and after deleting kernel, then regene=
rating bitbake -k<br>
&gt;&gt; &gt;&gt;&gt;&gt; core-image-minimal does not bring this path into =
the rootfs image!?<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; That&#39;s correct. That command only adds the kernel=
 source and build infrastructure to the SDK, not to your target image. You&=
#39;d still need to arrange to have the kernel-devsrc package installed on =
the target image if you want it on the board&#39;s rootfs. How you arrange =
to have the package installed to the image varies with the image (since the=
y all don&#39;t have the same image install variables, etc).<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; I did it actually using meta-bbb, and using poky =
referent distro as<br>
&gt;&gt; &gt;&gt;&gt;&gt; two additional layers to the more complex bbb ima=
ge!<br>
&gt;&gt; &gt;&gt;&gt;&gt; <a href=3D"https://github.com/jumpnow/meta-bbb.gi=
t" rel=3D"noreferrer" target=3D"_blank">https://github.com/jumpnow/meta-bbb=
.git</a><br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; The (KAS - you can figure out out of it local.con=
f) script I am using<br>
&gt;&gt; &gt;&gt;&gt;&gt; to build such a BBB image is here:<br>
&gt;&gt; &gt;&gt;&gt;&gt; <a href=3D"https://github.com/ZoranStojsavljevic/=
bbb-yocto/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/ZoranStojsavljevic/bbb-yoc=
to/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml</a><br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; I did not try it with BBB reference poky only! Ma=
ybe I should try it<br>
&gt;&gt; &gt;&gt;&gt;&gt; as only referent poky? What do you think?<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; Does in this case is SDK build really mandatory??=
? Should NOT be!<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; You only do the SDK steps if you want to support buil=
ding out of tree modules in an SDK install. So it is not mandatory for on t=
arget module builds.<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Bruce<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Once the SDK is installed, generate the kern=
el headers:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 sudo -i<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 . /opt/poky/2.6.2/environment-setup-co=
rtexa8hf-neon-poky-linux-gnueabi<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 cd /opt/poky/2.6.2/sysroots/cortexa8hf=
-neon-poky-linux-gnueabi<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 cd /usr/src/kernel<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 make oldconfig scripts<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 exit<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; This is in nutshell the same what I did (a bit di=
fferent) for Embedded<br>
&gt;&gt; &gt;&gt;&gt;&gt; Debian. This is already on the target BBB, NOT wh=
ile building YOCTO<br>
&gt;&gt; &gt;&gt;&gt;&gt; BBB image!<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Finally, build your module using a Makefile =
like this<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 obj-m :=3D hello-mod.o<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 all:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 make -C $(SDKTARG=
ETSYSROOT)/usr/src/kernel M=3D$(shell pwd)<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; As said before: bringing my own module into the t=
arget BBB (I have my<br>
&gt;&gt; &gt;&gt;&gt;&gt; own examples, and I build them on the target with=
 the almost the same<br>
&gt;&gt; &gt;&gt;&gt;&gt; Makefiles)<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; Zoran<br>
&gt;&gt; &gt;&gt;&gt;&gt; _______<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; On Sun, May 12, 2019 at 3:15 PM Chris Simmonds &l=
t;<a href=3D"mailto:chris@2net.co.uk" target=3D"_blank">chris@2net.co.uk</a=
>&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Hi Zoran,<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; There are two ways to do this<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; 1. Build using a bb recipe.<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Take a look at meta-skeleton/recipes-kernel/=
hello-mod for an example.<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; You just need to add meta-skeleton to your b=
blaysers.conf and then<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0bitbake hello-mod<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; 2. Build from the SDK:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; First, add the kernel source to the SDK by a=
dding this to conf/local/conf<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0TOOLCHAIN_TARGET_TASK_append =3D=
 &quot; kernel-devsrc&quot;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Then build the SDK<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0bitbake -c populate_sdk [your im=
age recipe]<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Once the SDK is installed, generate the kern=
el headers:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0sudo -i<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0. /opt/poky/2.6.2/environment-se=
tup-cortexa8hf-neon-poky-linux-gnueabi<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0cd /opt/poky/2.6.2/sysroots/cort=
exa8hf-neon-poky-linux-gnueabi<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0cd /usr/src/kernel<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0make oldconfig scripts<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0exit<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Finally, build your module using a Makefile =
like this<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0obj-m :=3D hello-mod.o<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0all:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make -C $(S=
DKTARGETSYSROOT)/usr/src/kernel M=3D$(shell pwd)<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; HTH,<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Chris<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; On 12/05/2019 11:53, Zoran Stojsavljevic wro=
te:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; Hello to the YOCTO community,<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; I am using (to build the target for Bea=
gle Bone Black) the following script:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; <a href=3D"https://github.com/ZoranStoj=
savljevic/bbb-yocto" rel=3D"noreferrer" target=3D"_blank">https://github.co=
m/ZoranStojsavljevic/bbb-yocto</a><br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; <a href=3D"https://github.com/ZoranStoj=
savljevic/bbb-yocto/blob/master/bbb-yocto.sh" rel=3D"noreferrer" target=3D"=
_blank">https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yoc=
to.sh</a><br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; The latest kernel I am using from the f=
ollowing repo:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; <a href=3D"https://github.com/jumpnow/m=
eta-bbb" rel=3D"noreferrer" target=3D"_blank">https://github.com/jumpnow/me=
ta-bbb</a><br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; Is kernel 5.0.14 .<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; Here is the snippet of the boot traces:=
<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; Starting kernel ...<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] Booting Linux =
on physical CPU 0x0<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] Linux version =
5.0.14-jumpnow (oe-user@oe-host) (gcc<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; version 8.3.0 (GCC)) #1 Fri May 10 13:1=
2:33 UTC 2019<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: ARMv7 Pro=
cessor [413fc082] revision 2 (ARMv7), cr=3D10c5387d<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: PIPT / VI=
PT nonaliasing data cache, VIPT aliasing<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; instruction cache<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] OF: fdt: Machi=
ne model: TI AM335x BeagleBone Black<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] Memory policy:=
 Data cache writeback<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] cma: Reserved =
16 MiB at 0x9f000000<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: All CPU(s=
) started in SVC mode.<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] AM335X ES2.1 (=
sgx neon)<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] random: get_ra=
ndom_bytes called from<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; start_kernel+0xa4/0x460 with crng_init=
=3D0<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] Built 1 zoneli=
sts, mobility grouping on.=C2=A0 Total pages: 130048<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [=C2=A0 =C2=A0 0.000000] Kernel command=
 line: console=3DttyO0,115200n8<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; root=3D/dev/ram0 ip=3Ddhcp<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; According to the documentation, the fol=
lowing:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; 2.10.1. Building Out-of-Tree Modules on=
 the Target<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; <a href=3D"https://www.yoctoproject.org=
/docs/latest/kernel-dev/kernel-dev.html" rel=3D"noreferrer" target=3D"_blan=
k">https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html</a><=
br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; I tried to find /usr/src/kernels/<a hre=
f=3D"http://5.0.14." rel=3D"noreferrer" target=3D"_blank">5.0.14.</a>.. Dir=
ectory, since I see<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; from the build that kernel-dev and kern=
el-devsrc are included:<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [user@fedora29-ssd bbb-yocto]$ bitbake =
-s | grep kernel<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; core-image-kernel-dev=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0:1.0-r0<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; kernel-devsrc=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:1.0-r0<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; kernel-selftest=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:1.0-r0<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; THE PROBLEM: But I could not find ob BB=
B target /usr/src/kernels<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; directory at all!?<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; Two questions here?<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [1] Do you have any advice on this prob=
lem (what I am missing here)?<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; [2] Alternative to [1]: how I can use c=
ross compiler from<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; .../build/tmp to build Out-of-Tree Modu=
le for the BBB target on the<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; host?<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; Thank you,<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; Zoran<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt; _______<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Chris Simmonds, trainer and consultant at 2n=
et<br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; <a href=3D"http://www.2net.co.uk" rel=3D"nor=
eferrer" target=3D"_blank">http://www.2net.co.uk</a><br>
&gt;&gt; &gt;&gt;&gt;&gt; &gt; Author of &quot;Mastering Embedded Linux Pro=
gramming&quot;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; --<br>
&gt;&gt; &gt;&gt;&gt; - Thou shalt not follow the NULL pointer, for chaos a=
nd madness await thee at its end<br>
&gt;&gt; &gt;&gt;&gt; - &quot;Use the force Harry&quot; - Gandalf, Star Tre=
k II<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; - Thou shalt not follow the NULL pointer, for chaos and madne=
ss await thee at its end<br>
&gt;&gt; &gt; - &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; - Thou shalt not follow the NULL pointer, for chaos and madness await =
thee at its end<br>
&gt; - &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000e3fabf05898d55c2--
