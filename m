Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61F1BE00BAA; Fri, 24 May 2019 04:24:22 -0700 (PDT)
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
	*      [209.85.222.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	*  1.4 US_DOLLARS_3 BODY: Mentions millions of $ ($NN,NNN,NNN.NN)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B342E00B58
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 04:24:19 -0700 (PDT)
Received: by mail-qk1-f181.google.com with SMTP id j1so6895110qkk.12
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 04:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oGpD4vHW556cIKCShxWt47wLX7VMWr6k3vAFXURvadM=;
	b=W/rtTmfEC8LFVF5Rk+cF8wfgp1IO7SfY8Vm0OfJ8uETeT4m/NHFf+WFoceyN3fIx8n
	1CpU26GEdb8Z/JAD61f4kHLSFr4LXb+P/DiB783SOOPZ6LqwjZzjn0NrilCgDeaj1q8z
	mbct8k42ts5LaOqoNaZoxO0T2BjJf0OnobhWkQZg1SUJksvCSk8IwzPaDkILhtiemsOi
	RzawypjGy9p9LacrwmqqW6AvweoAC0+DeMXGuiQgQZW046N0y8G3YKzHxKsPgMOrZocV
	hYey5sDqd/fkiH7A+SSL88qgbkbt6j226WuMh81685w5innP2vgoP+p6o69Hyu577ton
	7oWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oGpD4vHW556cIKCShxWt47wLX7VMWr6k3vAFXURvadM=;
	b=dm8eGeZa9oHWaJ9jVvgqI5wQIQvk4zi2QPnxRrdl1/fgdjPHkAQkj/nAWfbfJbcr+K
	vSIOQwcfs8DhzynA7+fAgFjCHu2rAyJathqmFsjzawfuookCizygmT8U6Rvx/Y5Vgtqd
	jSA2r93jld+5QzoJYa0VonNDqZs6jvbFjL+6gV4+RBft2dBWNbJuogNBa/6CsFws2rAL
	o8AG6R+bAbNZOQP1TAs7R+aFZ8VCQfd9MfPDh+tSboQDZgvmOp8T80FMyt0zJE41MOCL
	n9qWeKgjRlf1nZnuywh+OyyJJMAOSreljvMAJ9l0SK53ZuJ9VutNLmfwDipMIJB/yxVL
	96lg==
X-Gm-Message-State: APjAAAWlX2+b5FnKIfzjtcZ01+4l4tKL8xF2uEzB3/rBoZyH4LMH7bNI
	axDE0dmgXAnKX0U3eZTP1VmW1CISanpnMkWOBy8=
X-Google-Smtp-Source: APXvYqx0SCMWDXCI4gJxOshwig1CTPGOkBLDTHlAdOfnPwis3FSC6ivuHwgHm0gW22G6QUrYgnwb5995Q9mf+xlJMJk=
X-Received: by 2002:a37:69c5:: with SMTP id e188mr9880149qkc.119.1558697058291;
	Fri, 24 May 2019 04:24:18 -0700 (PDT)
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
	<c554f8bb-6ca3-e432-955c-a2eb32c48a54@gmail.com>
	<CAGAf8LwfH9_=71tkO-Y=MuG-6tGKXmSCOS6bzWx6ekUsPzAQqQ@mail.gmail.com>
	<e24e42cd-19a2-8cf7-d032-8a27dbecd4b9@gmail.com>
In-Reply-To: <e24e42cd-19a2-8cf7-d032-8a27dbecd4b9@gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 24 May 2019 13:24:06 +0200
Message-ID: <CAGAf8LzPV5iZjQ0hFfdBr58Nfb-QT_ft0cLZ0X3NegMAddXhcg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Fri, 24 May 2019 11:24:22 -0000
Content-Type: multipart/alternative; boundary="00000000000078d5ef0589a0701f"

--00000000000078d5ef0589a0701f
Content-Type: text/plain; charset="UTF-8"

As I said, I am a man of experimental try-outs. And here is the try!

Now, after setting sources, I tried to compile the example (from my Git):
https://github.com/ZoranStojsavljevic/bbb-yocto/tree/master/Issues/LKM

The results are the following (all on the target):
root@beaglebone:~# pwd
/home/root
root@beaglebone:~# ls -al
drwx------    2 root     root             0 May 24 13:11 .
drwxr-xr-x    3 root     root             0 May 23 13:03 ..
-rw-r--r--    1 root     root           159 May 24 12:54 Makefile
-rw-r--r--    1 root     root          1228 May 24 12:54 p15_test.c
root@beaglebone:~# make all
make -C /lib/modules/5.0.15-jumpnow/build M=/home/root modules
make[1]: Entering directory '/lib/modules/5.0.15-jumpnow/build'
  CC [M]  /home/root/p15_test.o
In file included from ./include/asm-generic/int-ll64.h:11,
                 from ./arch/arm/include/uapi/asm/types.h:5,
                 from ./include/uapi/linux/types.h:5,
                 from ./include/linux/types.h:6,
                 from ./include/linux/list.h:5,
                 from ./include/linux/module.h:9,
                 from /home/root/p15_test.c:5:
*./include/uapi/asm-generic/int-ll64.h:12:10: fatal error:
asm/bitsperlong.h: No such file or directory*
 #include <asm/bitsperlong.h>
          ^~~~~~~~~~~~~~~~~~~
compilation terminated.



*make[2]: *** [scripts/Makefile.build:283: /home/root/p15_test.o] Error
1make[1]: *** [Makefile:1577: _module_/home/root] Error 2make[1]: Leaving
directory '/lib/modules/5.0.15-jumpnow/build'make: *** [Makefile:4: all]
Error 2*

I see that you have changed the kernel from 5.0.7-jumpnow to 5.0.15-jumpnow
. Did you?

This example works on the same target out of Debian (flashed in eMMC),
without the problems.

Something is wrong with the YOCTO source kernel tree.

You are free to try example on YOCTO and Embedded Debian yourselves!

Zoran
_______

On Fri, May 24, 2019 at 6:37 AM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 5/23/19 9:14 PM, Zoran Stojsavljevic wrote:
> >  > I think this is a fair suggestion. Having prebuilt kernel available
> >  > that contains the configuration and header files used in the build is
> >  > all that is required for external modules to build in addition to
> >  > toolchain, so maybe its worth a try to create such a package and then
> >  > have kernel-source separated out which can be installed on top if one
> >  > needs
> >
> > I am man of experimental try-outs. So, in order to see how big kernel is,
> > I did the following:
> > Fedora 29 (which I am using as a host) with kernel-headers (NOT full
> > kernel source tree):
> > [vuser@fedora29-ssd 5.0.16-200.fc29.x86_64]$ pwd
> > /usr/src/kernels/5.0.16-200.fc29.x86_64
> > [vuser@fedora29-ssd 5.0.16-200.fc29.x86_64]$ du --summarize
> > /*102124    . <<======= ~95MB*/
> >
> > Kernel.org kernel 5.0.6, the full kernel source tree size:
> > [vuser@fedora29-ssd linux-5.0.6]$ pwd
> > /home/vuser/projects/kernel.org/linux-5.0.6 <
> http://kernel.org/linux-5.0.6>
> > [vuser@fedora29-ssd linux-5.0.6]$ du --summarize
> > /*960592    . <<======= ~900MB*/
> >
> > These are ballpark numbers. You can draw conclusions for yourselves!
> >
> > It is ~ 7x to 9x reduction in size. Having BBB's DDR2 of size 512MB,
> > and initramfs for testing purposes, in speaks for itself.
> >
>
> yes thats what I was expecting too. Anything smaller helps.
>
>
> > (I am aware that YOCTO kernels are less/smaller in size, but how
> smaller?)
> >
>
> Not in source. The binaries may be
>
> > Zoran
> > _______
> >
> >
> > On Fri, May 24, 2019 at 3:00 AM Khem Raj <raj.khem@gmail.com
> > <mailto:raj.khem@gmail.com>> wrote:
> >
> >
> >
> >     On 5/23/19 3:32 AM, Zoran Stojsavljevic wrote:
> >      > After some tests (and I had other problems to take care of, as
> well),
> >      > here is the following:
> >      >
> >      >> These have all been discussed off an on over the past 5 years.
> >      >> I can't get at bugzilla right now, but all the details are
> >     logged in cases.
> >      >> A survey of all the distros, their kernel package, etc, were all
> >     looked at.
> >      >> We had to balance the traditional packaging with some new
> concepts
> >      >> and landed with what we have now.
> >      >
> >      > I tried several tests. This is my final conclusion (two cases):
> >      >
> >
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/kernel-development.txt
> >      >
> >      > The kernel issue is described here: there is need to have the
> YOCTO
> >      > minimum configuration with the kernel setup:
> >      > [1] The entire kernel source code in:
> >      > /usr/src/kernel/`uname-r`/<kernel source code>
> >      > [2] The header files in: /usr/src/kernel/`uname-r`/<header file
> >      > directory structures>
> >      >
> >      > Point [1] is achieved with the following local.config file:
> >      >
> >
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/local-devsrc.conf
> >      >
> >      > Namely, with the following snippets in the local.conf:
> >      > TOOLCHAIN_TARGET_TASK_append = " packagegroup-core-tools-profile
> >      > packagegroup-core-buildessential kernel-devsrc"
> >      > KERNEL_DEV_TOOLS = "packagegroup-core-tools-profile
> >      > packagegroup-core-buildessential kernel-devsrc"
> >      > KERNEL_DEV_MODULE = "kernel-modules"
> >      > CORE_IMAGE_EXTRA_INSTALL += "${KERNEL_DEV_MODULE} \
> >      > ${KERNEL_DEV_TOOLS} \
> >      > systemtap \
> >      > "
> >      >
> >      > Problem with this approach is that such a kernel makes the rootfs
> too
> >      > big and impractical:
> >      > -rw-r--r--. 2 user vboxusers 101499952 May 17 14:32
> >      > core-image-minimal-beaglebone.rootfs.tar.xz
> >      >
> >      > The main issue is point [2]: how to achieve it?
> >      > The suggestion is to introduce the new package in YOCTO kernel,
> >      > called: kernel-headers
> >      > The OBVIOUS benefit is that it will serve to the purpose of
> building
> >      > modules out of the tree on the target with
> >      > minimal mpact to rootfs!
> >
> >     I think this is a fair suggestion. Having prebuilt kernel available
> >     that contains the configuration and header files used in the build is
> >     all that is required for external modules to build in addition to
> >     toolchain, so maybe its worth a try to create such a package and then
> >     have kernel-source separated out which can be installed on top if one
> >     needs
> >
> >      >
> >      > Thank you,
> >      > Zoran Stojsavljevic
> >      > _______
> >      >
> >      > On Thu, May 16, 2019 at 12:04 AM Bruce Ashfield
> >      > <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>>
> wrote:
> >      >>
> >      >>
> >      >>
> >      >> On Wed, May 15, 2019 at 4:09 PM Zoran Stojsavljevic
> >     <zoran.stojsavljevic@gmail.com
> >     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
> >      >>>
> >      >>>> The core-image-kernel-dev image is how I do all my on target
> >      >>>> testing when I introduce a new reference kernel for a release.
> >      >>>
> >      >>> Maybe you are correct. Maybe I should use/add in my local.conf
> >     the following:
> >      >>>
> >      >>> KERNEL_DEV_TOOLS ?= "packagegroup-core-tools-profile
> >      >>> packagegroup-core-buildessential kernel-devsrc"
> >      >>> KERNEL_DEV_MODULE ?= "kernel-modules"
> >      >>> CORE_IMAGE_EXTRA_INSTALL += "${KERNEL_DEV_MODULE} \
> >      >>>                               ${KERNEL_DEV_TOOLS} \
> >      >>>                               systemtap \
> >      >>>                              "
> >      >>> I need to try these... Maybe this addendum will solve the $1
> >     mio USD problem?!
> >      >>>
> >      >>>> And IIRC the autobuilders are using a sato based image (Richard
> >      >>>> could confirm more easily that I could what image type the
> >      >>>> autobuilders are using for hello-world on target module tests).
> >      >>>
> >      >>> I am just advertising something more simple. To have mandatory
> >      >>> /lib/modules/`uname -r` directory. And introduce few more
> >     packages, as
> >      >>> Fedora distro, for example, has: kernel-headers (assuming YOCTO
> >      >>> rootfs, the following will be installed: /usr/src/kernel/`uname
> >      >>> -r`/<header file directory structures>. This also makes
> addition of
> >      >>> /lib/modules/`uname -r`/build file (which is soft link to
> >      >>> usr/src/kernel/`uname -r`).
> >      >>
> >      >>
> >      >> These have all been discussed off an on over the past 5 years. I
> >     can't get at bugzilla right now, but all the details are logged in
> >     cases. A survey of all the distros, their kernel package, etc, were
> >     all looked at. We had to balance the traditional packaging with some
> >     new concepts and landed with what we have now.
> >      >>
> >      >>
> >      >>>
> >      >>> Or kernel-devel package. Then, the whole current kernel source
> code
> >      >>> will be introduced, and also support for it.
> >      >>
> >      >>
> >      >> There's a case for this one as well, I'll probably have it done
> >     for the fall release. But our devsrc used to pretty much be the full
> >     source it has now been pruned down to something more manageable.
> >     There are definitely some cases for having the full source on the
> >     target again, and it will be a separate package, just not the
> >     minimal one to build out of tree modules, etc.
> >      >>
> >      >>
> >      >>
> >      >>>
> >      >>>
> >      >>> SDK building with such a support is good/cool. But sometimes,
> >     before
> >      >>> introducing SDK, some tests should be done on target. NO need to
> >      >>> optionally include built-in layer hello-world driver example.
> >     Since I
> >      >>> (or you name the person) have own test drivers, which will be
> >     imported
> >      >>> out of tree, externally, to the target test bed!
> >      >>>
> >      >>
> >      >> I never use the SDK myself, so you are not alone in not going to
> >     it first. Hopefully I'll get some new patches out in the coming
> >     month before summer holidays really kick in.
> >      >>
> >      >> Bruce
> >      >>
> >      >>
> >      >>>
> >      >>> Just thinking loud...
> >      >>>
> >      >>> Zoran
> >      >>> _______
> >      >>>
> >      >>> On Wed, May 15, 2019 at 4:25 PM Bruce Ashfield
> >     <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
> >      >>>>
> >      >>>>
> >      >>>>
> >      >>>> On Wed, May 15, 2019 at 3:44 AM Zoran Stojsavljevic
> >     <zoran.stojsavljevic@gmail.com
> >     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
> >      >>>>>
> >      >>>>>> That's correct. That command only adds the kernel source and
> >      >>>>>> build infrastructure to the SDK, not to your target image.
> >     You'd still
> >      >>>>>> need to arrange to have the kernel-devsrc package installed
> >     on the
> >      >>>>>> target image if you want it on the board's rootfs. How you
> >     arrange
> >      >>>>>> to have the package installed to the image varies with the
> image
> >      >>>>>> (since they all don't have the same image install variables,
> >     etc).
> >      >>>>>
> >      >>>>> And here is a $1,000,000 USD question? How to do it on Poky
> (as
> >      >>>>> example of what you have stated in RED)? ;-)
> >      >>>>>
> >      >>>>> In other words: how to arrange it on Poky (as a Referent
> >     example)?
> >      >>>>
> >      >>>>
> >      >>>> The core-image-kernel-dev image is how I do all my on target
> >     testing when I introduce a new reference kernel for a release. And
> >     IIRC the autobuilders are using a sato based image (Richard could
> >     confirm more easily that I could what image type the autobuilders
> >     are using for hello-world on target module tests).
> >      >>>>
> >      >>>> Bruce
> >      >>>>
> >      >>>>
> >      >>>>>
> >      >>>>>
> >      >>>>> Thank you,
> >      >>>>> Zoran
> >      >>>>> _______
> >      >>>>>
> >      >>>>>
> >      >>>>> On Wed, May 15, 2019 at 7:41 AM Bruce Ashfield
> >     <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
> >      >>>>>>
> >      >>>>>>
> >      >>>>>>
> >      >>>>>> On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic
> >     <zoran.stojsavljevic@gmail.com
> >     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
> >      >>>>>>>
> >      >>>>>>> Hello Chris, Bruce,
> >      >>>>>>>
> >      >>>>>>> I have some additional data to share with you both, since I
> >     have tried
> >      >>>>>>> something. And here is my take on the things!
> >      >>>>>>>
> >      >>>>>>>> 1. Build using a bb recipe.
> >      >>>>>>>> Take a look at meta-skeleton/recipes-kernel/hello-mod for
> >     an example.
> >      >>>>>>>> You just need to add meta-skeleton to your bblayers.conf
> >     and then
> >      >>>>>>>>   bitbake hello-mod
> >      >>>>>>>
> >      >>>>>>> I looked into this example, and, yes, it is classic kernel
> >     module
> >      >>>>>>> definition out of the tree. With some outdated data, all
> >     cool, the
> >      >>>>>>> YOCTO designer should take care himself to fix these data,
> >     if using
> >      >>>>>>> this stuff.
> >      >>>>>>>
> >      >>>>>>> But this is NOT mandatory, since I can add out of the tree
> >     module NOT
> >      >>>>>>> actually using built-in module. I just use
> >     .../tmp/deploy/images/bbb/*
> >      >>>>>>> generated stuff, since I have automated scripts which are
> >     bringing all
> >      >>>>>>> these on my BBB target. Then I tftp my source code module
> >     to the
> >      >>>>>>> target.
> >      >>>>>>>
> >      >>>>>>>> 2. Build from the SDK:
> >      >>>>>>>> First, add the kernel source to the SDK by adding this to
> >     conf/local.conf
> >      >>>>>>>>   TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
> >      >>>>>>>
> >      >>>>>>> YES, this is THE command which should generate
> >      >>>>>>> /usr/src/kernel(s)/`uname -r` or similar... But adding it to
> >      >>>>>>> local.conf and after deleting kernel, then regenerating
> >     bitbake -k
> >      >>>>>>> core-image-minimal does not bring this path into the rootfs
> >     image!?
> >      >>>>>>
> >      >>>>>>
> >      >>>>>> That's correct. That command only adds the kernel source and
> >     build infrastructure to the SDK, not to your target image. You'd
> >     still need to arrange to have the kernel-devsrc package installed on
> >     the target image if you want it on the board's rootfs. How you
> >     arrange to have the package installed to the image varies with the
> >     image (since they all don't have the same image install variables,
> etc).
> >      >>>>>>
> >      >>>>>>
> >      >>>>>>>
> >      >>>>>>>
> >      >>>>>>> I did it actually using meta-bbb, and using poky referent
> >     distro as
> >      >>>>>>> two additional layers to the more complex bbb image!
> >      >>>>>>> https://github.com/jumpnow/meta-bbb.git
> >      >>>>>>>
> >      >>>>>>> The (KAS - you can figure out out of it local.conf) script
> >     I am using
> >      >>>>>>> to build such a BBB image is here:
> >      >>>>>>>
> >
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml
> >      >>>>>>>
> >      >>>>>>> I did not try it with BBB reference poky only! Maybe I
> >     should try it
> >      >>>>>>> as only referent poky? What do you think?
> >      >>>>>>>
> >      >>>>>>> Does in this case is SDK build really mandatory??? Should
> >     NOT be!
> >      >>>>>>>
> >      >>>>>>
> >      >>>>>> You only do the SDK steps if you want to support building
> >     out of tree modules in an SDK install. So it is not mandatory for on
> >     target module builds.
> >      >>>>>>
> >      >>>>>> Bruce
> >      >>>>>>
> >      >>>>>>
> >      >>>>>>>
> >      >>>>>>>> Once the SDK is installed, generate the kernel headers:
> >      >>>>>>>>   sudo -i
> >      >>>>>>>>   .
> >     /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
> >      >>>>>>>>   cd
> >     /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
> >      >>>>>>>>   cd /usr/src/kernel
> >      >>>>>>>>   make oldconfig scripts
> >      >>>>>>>>   exit
> >      >>>>>>>
> >      >>>>>>> This is in nutshell the same what I did (a bit different)
> >     for Embedded
> >      >>>>>>> Debian. This is already on the target BBB, NOT while
> >     building YOCTO
> >      >>>>>>> BBB image!
> >      >>>>>>>
> >      >>>>>>>> Finally, build your module using a Makefile like this
> >      >>>>>>>>   obj-m := hello-mod.o
> >      >>>>>>>>   all:
> >      >>>>>>>>         make -C $(SDKTARGETSYSROOT)/usr/src/kernel
> >     M=$(shell pwd)
> >      >>>>>>>
> >      >>>>>>> As said before: bringing my own module into the target BBB
> >     (I have my
> >      >>>>>>> own examples, and I build them on the target with the
> >     almost the same
> >      >>>>>>> Makefiles)
> >      >>>>>>>
> >      >>>>>>> Zoran
> >      >>>>>>> _______
> >      >>>>>>>
> >      >>>>>>> On Sun, May 12, 2019 at 3:15 PM Chris Simmonds
> >     <chris@2net.co.uk <mailto:chris@2net.co.uk>> wrote:
> >      >>>>>>>>
> >      >>>>>>>> Hi Zoran,
> >      >>>>>>>>
> >      >>>>>>>> There are two ways to do this
> >      >>>>>>>>
> >      >>>>>>>> 1. Build using a bb recipe.
> >      >>>>>>>> Take a look at meta-skeleton/recipes-kernel/hello-mod for
> >     an example.
> >      >>>>>>>> You just need to add meta-skeleton to your bblaysers.conf
> >     and then
> >      >>>>>>>>    bitbake hello-mod
> >      >>>>>>>>
> >      >>>>>>>>
> >      >>>>>>>> 2. Build from the SDK:
> >      >>>>>>>> First, add the kernel source to the SDK by adding this to
> >     conf/local/conf
> >      >>>>>>>>    TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
> >      >>>>>>>>
> >      >>>>>>>> Then build the SDK
> >      >>>>>>>>    bitbake -c populate_sdk [your image recipe]
> >      >>>>>>>>
> >      >>>>>>>> Once the SDK is installed, generate the kernel headers:
> >      >>>>>>>>    sudo -i
> >      >>>>>>>>    .
> >     /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
> >      >>>>>>>>    cd
> >     /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
> >      >>>>>>>>    cd /usr/src/kernel
> >      >>>>>>>>    make oldconfig scripts
> >      >>>>>>>>    exit
> >      >>>>>>>>
> >      >>>>>>>> Finally, build your module using a Makefile like this
> >      >>>>>>>>
> >      >>>>>>>>    obj-m := hello-mod.o
> >      >>>>>>>>    all:
> >      >>>>>>>>          make -C $(SDKTARGETSYSROOT)/usr/src/kernel
> >     M=$(shell pwd)
> >      >>>>>>>>
> >      >>>>>>>>
> >      >>>>>>>> HTH,
> >      >>>>>>>> Chris
> >      >>>>>>>>
> >      >>>>>>>> On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
> >      >>>>>>>>> Hello to the YOCTO community,
> >      >>>>>>>>>
> >      >>>>>>>>> I am using (to build the target for Beagle Bone Black)
> >     the following script:
> >      >>>>>>>>> https://github.com/ZoranStojsavljevic/bbb-yocto
> >      >>>>>>>>>
> >
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh
> >      >>>>>>>>>
> >      >>>>>>>>> The latest kernel I am using from the following repo:
> >      >>>>>>>>> https://github.com/jumpnow/meta-bbb
> >      >>>>>>>>>
> >      >>>>>>>>> Is kernel 5.0.14 .
> >      >>>>>>>>>
> >      >>>>>>>>> Here is the snippet of the boot traces:
> >      >>>>>>>>> Starting kernel ...
> >      >>>>>>>>>
> >      >>>>>>>>> [    0.000000] Booting Linux on physical CPU 0x0
> >      >>>>>>>>> [    0.000000] Linux version 5.0.14-jumpnow
> >     (oe-user@oe-host) (gcc
> >      >>>>>>>>> version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
> >      >>>>>>>>> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2
> >     (ARMv7), cr=10c5387d
> >      >>>>>>>>> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache,
> >     VIPT aliasing
> >      >>>>>>>>> instruction cache
> >      >>>>>>>>> [    0.000000] OF: fdt: Machine model: TI AM335x
> >     BeagleBone Black
> >      >>>>>>>>> [    0.000000] Memory policy: Data cache writeback
> >      >>>>>>>>> [    0.000000] cma: Reserved 16 MiB at 0x9f000000
> >      >>>>>>>>> [    0.000000] CPU: All CPU(s) started in SVC mode.
> >      >>>>>>>>> [    0.000000] AM335X ES2.1 (sgx neon)
> >      >>>>>>>>> [    0.000000] random: get_random_bytes called from
> >      >>>>>>>>> start_kernel+0xa4/0x460 with crng_init=0
> >      >>>>>>>>> [    0.000000] Built 1 zonelists, mobility grouping on.
> >     Total pages: 130048
> >      >>>>>>>>> [    0.000000] Kernel command line: console=ttyO0,115200n8
> >      >>>>>>>>> root=/dev/ram0 ip=dhcp
> >      >>>>>>>>>
> >      >>>>>>>>> According to the documentation, the following:
> >      >>>>>>>>> 2.10.1. Building Out-of-Tree Modules on the Target
> >      >>>>>>>>>
> >     https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html
> >      >>>>>>>>>
> >      >>>>>>>>> I tried to find /usr/src/kernels/5.0.14.
> >     <http://5.0.14.>.. Directory, since I see
> >      >>>>>>>>> from the build that kernel-dev and kernel-devsrc are
> >     included:
> >      >>>>>>>>> [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
> >      >>>>>>>>> core-image-kernel-dev
>  :1.0-r0
> >      >>>>>>>>> kernel-devsrc
>  :1.0-r0
> >      >>>>>>>>> kernel-selftest
>  :1.0-r0
> >      >>>>>>>>>
> >      >>>>>>>>> THE PROBLEM: But I could not find ob BBB target
> >     /usr/src/kernels
> >      >>>>>>>>> directory at all!?
> >      >>>>>>>>>
> >      >>>>>>>>> Two questions here?
> >      >>>>>>>>> [1] Do you have any advice on this problem (what I am
> >     missing here)?
> >      >>>>>>>>> [2] Alternative to [1]: how I can use cross compiler from
> >      >>>>>>>>> .../build/tmp to build Out-of-Tree Module for the BBB
> >     target on the
> >      >>>>>>>>> host?
> >      >>>>>>>>>
> >      >>>>>>>>> Thank you,
> >      >>>>>>>>> Zoran
> >      >>>>>>>>> _______
> >      >>>>>>>>>
> >      >>>>>>>>
> >      >>>>>>>>
> >      >>>>>>>> --
> >      >>>>>>>> Chris Simmonds, trainer and consultant at 2net
> >      >>>>>>>> http://www.2net.co.uk
> >      >>>>>>>> Author of "Mastering Embedded Linux Programming"
> >      >>>>>>
> >      >>>>>>
> >      >>>>>>
> >      >>>>>> --
> >      >>>>>> - Thou shalt not follow the NULL pointer, for chaos and
> >     madness await thee at its end
> >      >>>>>> - "Use the force Harry" - Gandalf, Star Trek II
> >      >>>>>>
> >      >>>>
> >      >>>>
> >      >>>> --
> >      >>>> - Thou shalt not follow the NULL pointer, for chaos and
> >     madness await thee at its end
> >      >>>> - "Use the force Harry" - Gandalf, Star Trek II
> >      >>>>
> >      >>
> >      >>
> >      >>
> >      >> --
> >      >> - Thou shalt not follow the NULL pointer, for chaos and madness
> >     await thee at its end
> >      >> - "Use the force Harry" - Gandalf, Star Trek II
> >      >>
> >
>

--00000000000078d5ef0589a0701f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>As I said, I am a man of experimental try-outs. And h=
ere is the try!<br></div><div><br></div><div>Now, after setting sources, I =
tried to compile the example (from my Git):</div><div><a href=3D"https://gi=
thub.com/ZoranStojsavljevic/bbb-yocto/tree/master/Issues/LKM">https://githu=
b.com/ZoranStojsavljevic/bbb-yocto/tree/master/Issues/LKM</a></div><div><br=
></div><div>The results are the following (all on the target):</div><div>ro=
ot@beaglebone:~# pwd<br>/home/root<br>root@beaglebone:~# ls -al<br>drwx----=
-- =C2=A0 =C2=A02 root =C2=A0 =C2=A0 root =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0 May 24 13:11 .<br>drwxr-xr-x =C2=A0 =C2=A03 root =C2=A0 =C2=A0=
 root =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 May 23 13:03 ..<br>-rw-r-=
-r-- =C2=A0 =C2=A01 root =C2=A0 =C2=A0 root =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 159 May 24 12:54 Makefile<br>-rw-r--r-- =C2=A0 =C2=A01 root =C2=A0 =C2=
=A0 root =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01228 May 24 12:54 p15_test.c<br>=
</div><div>root@beaglebone:~# make all<br>make -C /lib/modules/5.0.15-jumpn=
ow/build M=3D/home/root modules<br>make[1]: Entering directory &#39;/lib/mo=
dules/5.0.15-jumpnow/build&#39;<br>=C2=A0 CC [M] =C2=A0/home/root/p15_test.=
o<br>In file included from ./include/asm-generic/int-ll64.h:11,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ./arch/arm/incl=
ude/uapi/asm/types.h:5,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0from ./include/uapi/linux/types.h:5,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ./include/linux/types.h:6,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ./inclu=
de/linux/list.h:5,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from ./include/linux/module.h:9,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/root/p15_test.c:5:<br><span st=
yle=3D"color:rgb(255,0,0)"><i><b>./include/uapi/asm-generic/int-ll64.h:12:1=
0: fatal error: asm/bitsperlong.h: No such file or directory</b></i></span>=
<br>=C2=A0#include &lt;asm/bitsperlong.h&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 ^~~~~~~~~~~~~~~~~~~<br>compilation terminated.<br><span style=3D"co=
lor:rgb(255,0,0)"><i><b>make[2]: *** [scripts/Makefile.build:283: /home/roo=
t/p15_test.o] Error 1<br>make[1]: *** [Makefile:1577: _module_/home/root] E=
rror 2<br>make[1]: Leaving directory &#39;/lib/modules/5.0.15-jumpnow/build=
&#39;<br>make: *** [Makefile:4: all] Error 2</b></i></span></div><div><span=
 style=3D"color:rgb(255,0,0)"><i><b><br></b></i></span></div><div><span sty=
le=3D"color:rgb(0,0,0)">I see that you have changed the kernel from 5.0.7-j=
umpnow to 5.0.15-jumpnow . Did you?<br></span></div><div><span style=3D"col=
or:rgb(0,0,0)"><br></span></div><div><span style=3D"color:rgb(0,0,0)">This =
example works on the same target out of Debian (flashed in eMMC), without t=
he problems.<br></span></div><div><span style=3D"color:rgb(0,0,0)"><br></sp=
an></div><div><span style=3D"color:rgb(0,0,0)">Something is wrong with the =
YOCTO source kernel tree.</span></div><div><span style=3D"color:rgb(0,0,0)"=
><br></span></div><div><span style=3D"color:rgb(0,0,0)">You are free to try=
 example on YOCTO and Embedded Debian yourselves!<br></span></div><div><spa=
n style=3D"color:rgb(0,0,0)"><br></span></div><div>Zoran</div><div>_______<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, May 24, 2019 at 6:37 AM Khem Raj &lt;<a href=3D"mailto:raj=
.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><br>
<br>
On 5/23/19 9:14 PM, Zoran Stojsavljevic wrote:<br>
&gt;=C2=A0 &gt; I think this is a fair suggestion. Having prebuilt kernel a=
vailable<br>
&gt;=C2=A0 &gt; that contains the configuration and header files used in th=
e build is<br>
&gt;=C2=A0 &gt; all that is required for external modules to build in addit=
ion to<br>
&gt;=C2=A0 &gt; toolchain, so maybe its worth a try to create such a packag=
e and then<br>
&gt;=C2=A0 &gt; have kernel-source separated out which can be installed on =
top if one<br>
&gt;=C2=A0 &gt; needs<br>
&gt; <br>
&gt; I am man of experimental try-outs. So, in order to see how big kernel =
is,<br>
&gt; I did the following:<br>
&gt; Fedora 29 (which I am using as a host) with kernel-headers (NOT full<b=
r>
&gt; kernel source tree):<br>
&gt; [vuser@fedora29-ssd 5.0.16-200.fc29.x86_64]$ pwd<br>
&gt; /usr/src/kernels/5.0.16-200.fc29.x86_64<br>
&gt; [vuser@fedora29-ssd 5.0.16-200.fc29.x86_64]$ du --summarize<br>
&gt; /*102124 =C2=A0 =C2=A0. &lt;&lt;=3D=3D=3D=3D=3D=3D=3D ~95MB*/<br>
&gt; <br>
&gt; Kernel.org kernel 5.0.6, the full kernel source tree size:<br>
&gt; [vuser@fedora29-ssd linux-5.0.6]$ pwd<br>
&gt; /home/vuser/projects/<a href=3D"http://kernel.org/linux-5.0.6" rel=3D"=
noreferrer" target=3D"_blank">kernel.org/linux-5.0.6</a> &lt;<a href=3D"htt=
p://kernel.org/linux-5.0.6" rel=3D"noreferrer" target=3D"_blank">http://ker=
nel.org/linux-5.0.6</a>&gt;<br>
&gt; [vuser@fedora29-ssd linux-5.0.6]$ du --summarize<br>
&gt; /*960592 =C2=A0 =C2=A0. &lt;&lt;=3D=3D=3D=3D=3D=3D=3D ~900MB*/<br>
&gt; <br>
&gt; These are ballpark numbers. You can draw conclusions for yourselves!<b=
r>
&gt; <br>
&gt; It is ~ 7x to 9x reduction in size. Having BBB&#39;s DDR2 of size 512M=
B,<br>
&gt; and initramfs for testing purposes, in speaks for itself.<br>
&gt; <br>
<br>
yes thats what I was expecting too. Anything smaller helps.<br>
<br>
<br>
&gt; (I am aware that YOCTO kernels are less/smaller in size, but how small=
er?)<br>
&gt; <br>
<br>
Not in source. The binaries may be<br>
<br>
&gt; Zoran<br>
&gt; _______<br>
&gt; <br>
&gt; <br>
&gt; On Fri, May 24, 2019 at 3:00 AM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/23/19 3:32 AM, Zoran Stojsavljevic wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; After some tests (and I had other problems to=
 take care of, as well),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; here is the following:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; These have all been discussed off an on o=
ver the past 5 years.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; I can&#39;t get at bugzilla right now, bu=
t all the details are<br>
&gt;=C2=A0 =C2=A0 =C2=A0logged in cases.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; A survey of all the distros, their kernel=
 package, etc, were all<br>
&gt;=C2=A0 =C2=A0 =C2=A0looked at.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; We had to balance the traditional packagi=
ng with some new concepts<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; and landed with what we have now.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I tried several tests. This is my final concl=
usion (two cases):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/ZoranStojsavljevic/bb=
b-yocto/blob/master/Issues/kernel-development.txt" rel=3D"noreferrer" targe=
t=3D"_blank">https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Is=
sues/kernel-development.txt</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The kernel issue is described here: there is =
need to have the YOCTO<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; minimum configuration with the kernel setup:<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; [1] The entire kernel source code in:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; /usr/src/kernel/`uname-r`/&lt;kernel source c=
ode&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; [2] The header files in: /usr/src/kernel/`una=
me-r`/&lt;header file<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; directory structures&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Point [1] is achieved with the following loca=
l.config file:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/ZoranStojsavljevic/bb=
b-yocto/blob/master/Issues/local-devsrc.conf" rel=3D"noreferrer" target=3D"=
_blank">https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/=
local-devsrc.conf</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Namely, with the following snippets in the lo=
cal.conf:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; TOOLCHAIN_TARGET_TASK_append =3D &quot; packa=
gegroup-core-tools-profile<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; packagegroup-core-buildessential kernel-devsr=
c&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; KERNEL_DEV_TOOLS =3D &quot;packagegroup-core-=
tools-profile<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; packagegroup-core-buildessential kernel-devsr=
c&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; KERNEL_DEV_MODULE =3D &quot;kernel-modules&qu=
ot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot;${KERNEL_=
DEV_MODULE} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ${KERNEL_DEV_TOOLS} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; systemtap \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Problem with this approach is that such a ker=
nel makes the rootfs too<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; big and impractical:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -rw-r--r--. 2 user vboxusers 101499952 May 17=
 14:32<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; core-image-minimal-beaglebone.rootfs.tar.xz<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The main issue is point [2]: how to achieve i=
t?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The suggestion is to introduce the new packag=
e in YOCTO kernel,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; called: kernel-headers<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The OBVIOUS benefit is that it will serve to =
the purpose of building<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; modules out of the tree on the target with<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; minimal mpact to rootfs!<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I think this is a fair suggestion. Having prebuilt =
kernel available<br>
&gt;=C2=A0 =C2=A0 =C2=A0that contains the configuration and header files us=
ed in the build is<br>
&gt;=C2=A0 =C2=A0 =C2=A0all that is required for external modules to build =
in addition to<br>
&gt;=C2=A0 =C2=A0 =C2=A0toolchain, so maybe its worth a try to create such =
a package and then<br>
&gt;=C2=A0 =C2=A0 =C2=A0have kernel-source separated out which can be insta=
lled on top if one<br>
&gt;=C2=A0 =C2=A0 =C2=A0needs<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thank you,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Zoran Stojsavljevic<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; _______<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Thu, May 16, 2019 at 12:04 AM Bruce Ashfie=
ld<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;<a href=3D"mailto:bruce.ashfield@gmail.co=
m" target=3D"_blank">bruce.ashfield@gmail.com</a> &lt;mailto:<a href=3D"mai=
lto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a=
>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; On Wed, May 15, 2019 at 4:09 PM Zoran Sto=
jsavljevic<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com=
" target=3D"_blank">zoran.stojsavljevic@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:zoran.stojsavljevic@gm=
ail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;&gt; wrote:=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; The core-image-kernel-dev image i=
s how I do all my on target<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; testing when I introduce a new re=
ference kernel for a release.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Maybe you are correct. Maybe I should=
 use/add in my local.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0the following:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; KERNEL_DEV_TOOLS ?=3D &quot;packagegr=
oup-core-tools-profile<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; packagegroup-core-buildessential kern=
el-devsrc&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; KERNEL_DEV_MODULE ?=3D &quot;kernel-m=
odules&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot;$=
{KERNEL_DEV_MODULE} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${=
KERNEL_DEV_TOOLS} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sy=
stemtap \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; I need to try these... Maybe this add=
endum will solve the $1<br>
&gt;=C2=A0 =C2=A0 =C2=A0mio USD problem?!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; And IIRC the autobuilders are usi=
ng a sato based image (Richard<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; could confirm more easily that I =
could what image type the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; autobuilders are using for hello-=
world on target module tests).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; I am just advertising something more =
simple. To have mandatory<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; /lib/modules/`uname -r` directory. An=
d introduce few more<br>
&gt;=C2=A0 =C2=A0 =C2=A0packages, as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Fedora distro, for example, has: kern=
el-headers (assuming YOCTO<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; rootfs, the following will be install=
ed: /usr/src/kernel/`uname<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; -r`/&lt;header file directory structu=
res&gt;. This also makes addition of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; /lib/modules/`uname -r`/build file (w=
hich is soft link to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; usr/src/kernel/`uname -r`).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; These have all been discussed off an on o=
ver the past 5 years. I<br>
&gt;=C2=A0 =C2=A0 =C2=A0can&#39;t get at bugzilla right now, but all the de=
tails are logged in<br>
&gt;=C2=A0 =C2=A0 =C2=A0cases. A survey of all the distros, their kernel pa=
ckage, etc, were<br>
&gt;=C2=A0 =C2=A0 =C2=A0all looked at. We had to balance the traditional pa=
ckaging with some<br>
&gt;=C2=A0 =C2=A0 =C2=A0new concepts and landed with what we have now.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Or kernel-devel package. Then, the wh=
ole current kernel source code<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; will be introduced, and also support =
for it.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; There&#39;s a case for this one as well, =
I&#39;ll probably have it done<br>
&gt;=C2=A0 =C2=A0 =C2=A0for the fall release. But our devsrc used to pretty=
 much be the full<br>
&gt;=C2=A0 =C2=A0 =C2=A0source it has now been pruned down to something mor=
e manageable. <br>
&gt;=C2=A0 =C2=A0 =C2=A0There are definitely some cases for having the full=
 source on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0target again, and it will be a separate package, ju=
st not the<br>
&gt;=C2=A0 =C2=A0 =C2=A0minimal one to build out of tree modules, etc.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; SDK building with such a support is g=
ood/cool. But sometimes,<br>
&gt;=C2=A0 =C2=A0 =C2=A0before<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; introducing SDK, some tests should be=
 done on target. NO need to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; optionally include built-in layer hel=
lo-world driver example.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Since I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; (or you name the person) have own tes=
t drivers, which will be<br>
&gt;=C2=A0 =C2=A0 =C2=A0imported<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; out of tree, externally, to the targe=
t test bed!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; I never use the SDK myself, so you are no=
t alone in not going to<br>
&gt;=C2=A0 =C2=A0 =C2=A0it first. Hopefully I&#39;ll get some new patches o=
ut in the coming<br>
&gt;=C2=A0 =C2=A0 =C2=A0month before summer holidays really kick in.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Bruce<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Just thinking loud...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Zoran<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; _______<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; On Wed, May 15, 2019 at 4:25 PM Bruce=
 Ashfield<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" tar=
get=3D"_blank">bruce.ashfield@gmail.com</a> &lt;mailto:<a href=3D"mailto:br=
uce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;&=
gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; On Wed, May 15, 2019 at 3:44 AM Z=
oran Stojsavljevic<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com=
" target=3D"_blank">zoran.stojsavljevic@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:zoran.stojsavljevic@gm=
ail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;&gt; wrote:=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; That&#39;s correct. That =
command only adds the kernel source and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; build infrastructure to t=
he SDK, not to your target image.<br>
&gt;=C2=A0 =C2=A0 =C2=A0You&#39;d still<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; need to arrange to have t=
he kernel-devsrc package installed<br>
&gt;=C2=A0 =C2=A0 =C2=A0on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; target image if you want =
it on the board&#39;s rootfs. How you<br>
&gt;=C2=A0 =C2=A0 =C2=A0arrange<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; to have the package insta=
lled to the image varies with the image<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; (since they all don&#39;t=
 have the same image install variables,<br>
&gt;=C2=A0 =C2=A0 =C2=A0etc).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; And here is a $1,000,000 USD =
question? How to do it on Poky (as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; example of what you have stat=
ed in RED)? ;-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; In other words: how to arrang=
e it on Poky (as a Referent<br>
&gt;=C2=A0 =C2=A0 =C2=A0example)?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; The core-image-kernel-dev image i=
s how I do all my on target<br>
&gt;=C2=A0 =C2=A0 =C2=A0testing when I introduce a new reference kernel for=
 a release. And<br>
&gt;=C2=A0 =C2=A0 =C2=A0IIRC the autobuilders are using a sato based image =
(Richard could<br>
&gt;=C2=A0 =C2=A0 =C2=A0confirm more easily that I could what image type th=
e autobuilders<br>
&gt;=C2=A0 =C2=A0 =C2=A0are using for hello-world on target module tests).<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; Bruce<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Thank you,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; Zoran<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; _______<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt; On Wed, May 15, 2019 at 7:41 =
AM Bruce Ashfield<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" tar=
get=3D"_blank">bruce.ashfield@gmail.com</a> &lt;mailto:<a href=3D"mailto:br=
uce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;&=
gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; On Tue, May 14, 2019 at 1=
:30 PM Zoran Stojsavljevic<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com=
" target=3D"_blank">zoran.stojsavljevic@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:zoran.stojsavljevic@gm=
ail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;&gt; wrote:=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello Chris, Bruce,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; I have some additiona=
l data to share with you both, since I<br>
&gt;=C2=A0 =C2=A0 =C2=A0have tried<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; something. And here i=
s my take on the things!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1. Build using a =
bb recipe.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Take a look at me=
ta-skeleton/recipes-kernel/hello-mod for<br>
&gt;=C2=A0 =C2=A0 =C2=A0an example.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; You just need to =
add meta-skeleton to your bblayers.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0and then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0bitba=
ke hello-mod<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; I looked into this ex=
ample, and, yes, it is classic kernel<br>
&gt;=C2=A0 =C2=A0 =C2=A0module<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; definition out of the=
 tree. With some outdated data, all<br>
&gt;=C2=A0 =C2=A0 =C2=A0cool, the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; YOCTO designer should=
 take care himself to fix these data,<br>
&gt;=C2=A0 =C2=A0 =C2=A0if using<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; this stuff.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; But this is NOT manda=
tory, since I can add out of the tree<br>
&gt;=C2=A0 =C2=A0 =C2=A0module NOT<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; actually using built-=
in module. I just use<br>
&gt;=C2=A0 =C2=A0 =C2=A0.../tmp/deploy/images/bbb/*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; generated stuff, sinc=
e I have automated scripts which are<br>
&gt;=C2=A0 =C2=A0 =C2=A0bringing all<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; these on my BBB targe=
t. Then I tftp my source code module<br>
&gt;=C2=A0 =C2=A0 =C2=A0to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; target.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 2. Build from the=
 SDK:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; First, add the ke=
rnel source to the SDK by adding this to<br>
&gt;=C2=A0 =C2=A0 =C2=A0conf/local.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0TOOLC=
HAIN_TARGET_TASK_append =3D &quot; kernel-devsrc&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; YES, this is THE comm=
and which should generate<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; /usr/src/kernel(s)/`u=
name -r` or similar... But adding it to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; local.conf and after =
deleting kernel, then regenerating<br>
&gt;=C2=A0 =C2=A0 =C2=A0bitbake -k<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; core-image-minimal do=
es not bring this path into the rootfs<br>
&gt;=C2=A0 =C2=A0 =C2=A0image!?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; That&#39;s correct. That =
command only adds the kernel source and<br>
&gt;=C2=A0 =C2=A0 =C2=A0build infrastructure to the SDK, not to your target=
 image. You&#39;d<br>
&gt;=C2=A0 =C2=A0 =C2=A0still need to arrange to have the kernel-devsrc pac=
kage installed on<br>
&gt;=C2=A0 =C2=A0 =C2=A0the target image if you want it on the board&#39;s =
rootfs. How you<br>
&gt;=C2=A0 =C2=A0 =C2=A0arrange to have the package installed to the image =
varies with the<br>
&gt;=C2=A0 =C2=A0 =C2=A0image (since they all don&#39;t have the same image=
 install variables, etc).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; I did it actually usi=
ng meta-bbb, and using poky referent<br>
&gt;=C2=A0 =C2=A0 =C2=A0distro as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; two additional layers=
 to the more complex bbb image!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"https://gi=
thub.com/jumpnow/meta-bbb.git" rel=3D"noreferrer" target=3D"_blank">https:/=
/github.com/jumpnow/meta-bbb.git</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; The (KAS - you can fi=
gure out out of it local.conf) script<br>
&gt;=C2=A0 =C2=A0 =C2=A0I am using<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; to build such a BBB i=
mage is here:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/ZoranStojsavljevic/bb=
b-yocto/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml" rel=3D"no=
referrer" target=3D"_blank">https://github.com/ZoranStojsavljevic/bbb-yocto=
/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; I did not try it with=
 BBB reference poky only! Maybe I<br>
&gt;=C2=A0 =C2=A0 =C2=A0should try it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; as only referent poky=
? What do you think?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; Does in this case is =
SDK build really mandatory??? Should<br>
&gt;=C2=A0 =C2=A0 =C2=A0NOT be!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; You only do the SDK steps=
 if you want to support building<br>
&gt;=C2=A0 =C2=A0 =C2=A0out of tree modules in an SDK install. So it is not=
 mandatory for on<br>
&gt;=C2=A0 =C2=A0 =C2=A0target module builds.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; Bruce<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Once the SDK is i=
nstalled, generate the kernel headers:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0sudo =
-i<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0.<br>
&gt;=C2=A0 =C2=A0 =C2=A0/opt/poky/2.6.2/environment-setup-cortexa8hf-neon-p=
oky-linux-gnueabi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0cd<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0/opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux=
-gnueabi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0cd /u=
sr/src/kernel<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0make =
oldconfig scripts<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0exit<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; This is in nutshell t=
he same what I did (a bit different)<br>
&gt;=C2=A0 =C2=A0 =C2=A0for Embedded<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; Debian. This is alrea=
dy on the target BBB, NOT while<br>
&gt;=C2=A0 =C2=A0 =C2=A0building YOCTO<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; BBB image!<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Finally, build yo=
ur module using a Makefile like this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0obj-m=
 :=3D hello-mod.o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0all:<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0make -C $(SDKTARGETSYSROOT)/usr/src/kernel<br>
&gt;=C2=A0 =C2=A0 =C2=A0M=3D$(shell pwd)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; As said before: bring=
ing my own module into the target BBB<br>
&gt;=C2=A0 =C2=A0 =C2=A0(I have my<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; own examples, and I b=
uild them on the target with the<br>
&gt;=C2=A0 =C2=A0 =C2=A0almost the same<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; Makefiles)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; Zoran<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; _______<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt; On Sun, May 12, 2019 =
at 3:15 PM Chris Simmonds<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:chris@2net.co.uk" target=3D"_=
blank">chris@2net.co.uk</a> &lt;mailto:<a href=3D"mailto:chris@2net.co.uk" =
target=3D"_blank">chris@2net.co.uk</a>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hi Zoran,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; There are two way=
s to do this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1. Build using a =
bb recipe.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Take a look at me=
ta-skeleton/recipes-kernel/hello-mod for<br>
&gt;=C2=A0 =C2=A0 =C2=A0an example.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; You just need to =
add meta-skeleton to your bblaysers.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0and then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 bitb=
ake hello-mod<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 2. Build from the=
 SDK:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; First, add the ke=
rnel source to the SDK by adding this to<br>
&gt;=C2=A0 =C2=A0 =C2=A0conf/local/conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 TOOL=
CHAIN_TARGET_TASK_append =3D &quot; kernel-devsrc&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Then build the SD=
K<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 bitb=
ake -c populate_sdk [your image recipe]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Once the SDK is i=
nstalled, generate the kernel headers:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 sudo=
 -i<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 .<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0/opt/poky/2.6.2/environment-setup-cortexa8hf-neon-p=
oky-linux-gnueabi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 cd<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0/opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux=
-gnueabi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 cd /=
usr/src/kernel<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 make=
 oldconfig scripts<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 exit=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Finally, build yo=
ur module using a Makefile like this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 obj-=
m :=3D hello-mod.o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 all:=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 make -C $(SDKTARGETSYSROOT)/usr/src/kernel<br>
&gt;=C2=A0 =C2=A0 =C2=A0M=3D$(shell pwd)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; HTH,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Chris<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 12/05/2019 11:=
53, Zoran Stojsavljevic wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello to the =
YOCTO community,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am using (t=
o build the target for Beagle Bone Black)<br>
&gt;=C2=A0 =C2=A0 =C2=A0the following script:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"ht=
tps://github.com/ZoranStojsavljevic/bbb-yocto" rel=3D"noreferrer" target=3D=
"_blank">https://github.com/ZoranStojsavljevic/bbb-yocto</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/ZoranStojsavljevic/bb=
b-yocto/blob/master/bbb-yocto.sh" rel=3D"noreferrer" target=3D"_blank">http=
s://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh</a><br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The latest ke=
rnel I am using from the following repo:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"ht=
tps://github.com/jumpnow/meta-bbb" rel=3D"noreferrer" target=3D"_blank">htt=
ps://github.com/jumpnow/meta-bbb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Is kernel 5.0=
.14 .<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Here is the s=
nippet of the boot traces:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Starting kern=
el ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] Booting Linux on physical CPU 0x0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] Linux version 5.0.14-jumpnow<br>
&gt;=C2=A0 =C2=A0 =C2=A0(oe-user@oe-host) (gcc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; version 8.3.0=
 (GCC)) #1 Fri May 10 13:12:33 UTC 2019<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] CPU: ARMv7 Processor [413fc082] revision 2<br>
&gt;=C2=A0 =C2=A0 =C2=A0(ARMv7), cr=3D10c5387d<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] CPU: PIPT / VIPT nonaliasing data cache,<br>
&gt;=C2=A0 =C2=A0 =C2=A0VIPT aliasing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; instruction c=
ache<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] OF: fdt: Machine model: TI AM335x<br>
&gt;=C2=A0 =C2=A0 =C2=A0BeagleBone Black<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] Memory policy: Data cache writeback<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] cma: Reserved 16 MiB at 0x9f000000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] CPU: All CPU(s) started in SVC mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] AM335X ES2.1 (sgx neon)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] random: get_random_bytes called from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; start_kernel+=
0xa4/0x460 with crng_init=3D0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] Built 1 zonelists, mobility grouping on. <br>
&gt;=C2=A0 =C2=A0 =C2=A0Total pages: 130048<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [=C2=A0 =C2=
=A0 0.000000] Kernel command line: console=3DttyO0,115200n8<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; root=3D/dev/r=
am0 ip=3Ddhcp<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; According to =
the documentation, the following:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 2.10.1. Build=
ing Out-of-Tree Modules on the Target<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.yoctoproject.org/docs/latest=
/kernel-dev/kernel-dev.html" rel=3D"noreferrer" target=3D"_blank">https://w=
ww.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I tried to fi=
nd /usr/src/kernels/<a href=3D"http://5.0.14." rel=3D"noreferrer" target=3D=
"_blank">5.0.14.</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://5.0.14" rel=3D"noreferrer" ta=
rget=3D"_blank">http://5.0.14</a>.&gt;.. Directory, since I see<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; from the buil=
d that kernel-dev and kernel-devsrc are<br>
&gt;=C2=A0 =C2=A0 =C2=A0included:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [user@fedora2=
9-ssd bbb-yocto]$ bitbake -s | grep kernel<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; core-image-ke=
rnel-dev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:1.0-r0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; kernel-devsrc=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:1=
.0-r0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; kernel-selfte=
st=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:1.0-r0<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; THE PROBLEM: =
But I could not find ob BBB target<br>
&gt;=C2=A0 =C2=A0 =C2=A0/usr/src/kernels<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; directory at =
all!?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Two questions=
 here?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [1] Do you ha=
ve any advice on this problem (what I am<br>
&gt;=C2=A0 =C2=A0 =C2=A0missing here)?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [2] Alternati=
ve to [1]: how I can use cross compiler from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; .../build/tmp=
 to build Out-of-Tree Module for the BBB<br>
&gt;=C2=A0 =C2=A0 =C2=A0target on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; host?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thank you,<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Zoran<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; _______<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Chris Simmonds, t=
rainer and consultant at 2net<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http:/=
/www.2net.co.uk" rel=3D"noreferrer" target=3D"_blank">http://www.2net.co.uk=
</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Author of &quot;M=
astering Embedded Linux Programming&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; - Thou shalt not follow t=
he NULL pointer, for chaos and<br>
&gt;=C2=A0 =C2=A0 =C2=A0madness await thee at its end<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt; - &quot;Use the force Har=
ry&quot; - Gandalf, Star Trek II<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; - Thou shalt not follow the NULL =
pointer, for chaos and<br>
&gt;=C2=A0 =C2=A0 =C2=A0madness await thee at its end<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt; - &quot;Use the force Harry&quot;=
 - Gandalf, Star Trek II<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; - Thou shalt not follow the NULL pointer,=
 for chaos and madness<br>
&gt;=C2=A0 =C2=A0 =C2=A0await thee at its end<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; - &quot;Use the force Harry&quot; - Ganda=
lf, Star Trek II<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt; <br>
</blockquote></div>

--00000000000078d5ef0589a0701f--
