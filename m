Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40485E00BAA; Thu, 23 May 2019 21:37:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE, US_DOLLARS_3 autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	*  1.4 US_DOLLARS_3 BODY: Mentions millions of $ ($NN,NNN,NNN.NN)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4F0FE00B5F
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 21:37:51 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id w22so4310471pgi.6
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 21:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=e8KSif4ZewQ3osw47d94Yc4mRG2YCT8EmQGJy1vxe/s=;
	b=cRvNsxEh4ZJjDAzIuGk7ogNkhELRPhlowQBRFTqHE+OISBLMn3cguRm+gx+rIayPM2
	FyNtTbCspuVJdJJ8E15RvPMkRbe40g+1G9IPRT1rRLaqQ9YYYbSCR8WX3NegKuQe9eFc
	gSQ/ox1HChqESe6oAN9RbnZWp8b4yeCEUPFWfMj8gmZkdyFf/3oQxxsQ9liIXKtaFYe0
	jWMuKkJlw8VSf1w3ELEoTkluHn0MtpIiRLxVFYD19KLuU5phnC5s0unQgYAUxlQibJqN
	+Lwige7jlwa444TkPOA7KMov3lZh5QM7REmxzEmH/98VycV2lNoraXZCj2cs+MhnLvrX
	Tuew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=e8KSif4ZewQ3osw47d94Yc4mRG2YCT8EmQGJy1vxe/s=;
	b=Y5E03In9e5UOAmVL27YYf3TCsK3xvuLsCpb/DJIVICz2I0OTgft/Sz6Nemf+xfHYPh
	FOJNnh53NqAiN0/dQaKskdhaSF6KaGbTlEaub1bf5lYJ1MCr6szs9O6cp1Eoh2LAYrbr
	BwaU4SeauA4YzCzMwULtGUF6pX2kyS3YNvwypYtGMxz5wcB+50UDFTwWp4KqPHxHHJ83
	un6r5zBb9Gq71yahcMuiCTzibAGeD2+QfUoEduMMcMf+7XMk6xx1TprFjZBkgbdvzHXs
	PX1LBrWAXNqfGEGfRr3Icf4fXKXReQvAN3Zv2PfQlTSKpAFxkWocSFYeDmn9or71GleT
	9u2Q==
X-Gm-Message-State: APjAAAW1a8agvJOu125HvJM6mbRc5ANKH/RCsSBAMOFp7PXRMHHKcSAf
	pBjAqORffMjSxY4T8M+2SwcGyxIxuFY=
X-Google-Smtp-Source: APXvYqxn6peTG5pzRrvdX5FHJBpwF94p2OgYlPBeg3TjIovNthIeLX5KXnx9Q8av+D7YZDvvAlk6bQ==
X-Received: by 2002:a63:42:: with SMTP id 63mr103333497pga.337.1558672670508; 
	Thu, 23 May 2019 21:37:50 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:313d:8ef2:9687:9b74])
	by smtp.gmail.com with ESMTPSA id m12sm859268pgi.56.2019.05.23.21.37.49
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 21:37:49 -0700 (PDT)
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
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
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e24e42cd-19a2-8cf7-d032-8a27dbecd4b9@gmail.com>
Date: Thu, 23 May 2019 21:37:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LwfH9_=71tkO-Y=MuG-6tGKXmSCOS6bzWx6ekUsPzAQqQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 24 May 2019 04:37:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/23/19 9:14 PM, Zoran Stojsavljevic wrote:
>  > I think this is a fair suggestion. Having prebuilt kernel available
>  > that contains the configuration and header files used in the build is
>  > all that is required for external modules to build in addition to
>  > toolchain, so maybe its worth a try to create such a package and then
>  > have kernel-source separated out which can be installed on top if one
>  > needs
> 
> I am man of experimental try-outs. So, in order to see how big kernel is,
> I did the following:
> Fedora 29 (which I am using as a host) with kernel-headers (NOT full
> kernel source tree):
> [vuser@fedora29-ssd 5.0.16-200.fc29.x86_64]$ pwd
> /usr/src/kernels/5.0.16-200.fc29.x86_64
> [vuser@fedora29-ssd 5.0.16-200.fc29.x86_64]$ du --summarize
> /*102124    . <<======= ~95MB*/
> 
> Kernel.org kernel 5.0.6, the full kernel source tree size:
> [vuser@fedora29-ssd linux-5.0.6]$ pwd
> /home/vuser/projects/kernel.org/linux-5.0.6 <http://kernel.org/linux-5.0.6>
> [vuser@fedora29-ssd linux-5.0.6]$ du --summarize
> /*960592    . <<======= ~900MB*/
> 
> These are ballpark numbers. You can draw conclusions for yourselves!
> 
> It is ~ 7x to 9x reduction in size. Having BBB's DDR2 of size 512MB,
> and initramfs for testing purposes, in speaks for itself.
> 

yes thats what I was expecting too. Anything smaller helps.


> (I am aware that YOCTO kernels are less/smaller in size, but how smaller?)
> 

Not in source. The binaries may be

> Zoran
> _______
> 
> 
> On Fri, May 24, 2019 at 3:00 AM Khem Raj <raj.khem@gmail.com 
> <mailto:raj.khem@gmail.com>> wrote:
> 
> 
> 
>     On 5/23/19 3:32 AM, Zoran Stojsavljevic wrote:
>      > After some tests (and I had other problems to take care of, as well),
>      > here is the following:
>      >
>      >> These have all been discussed off an on over the past 5 years.
>      >> I can't get at bugzilla right now, but all the details are
>     logged in cases.
>      >> A survey of all the distros, their kernel package, etc, were all
>     looked at.
>      >> We had to balance the traditional packaging with some new concepts
>      >> and landed with what we have now.
>      >
>      > I tried several tests. This is my final conclusion (two cases):
>      >
>     https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/kernel-development.txt
>      >
>      > The kernel issue is described here: there is need to have the YOCTO
>      > minimum configuration with the kernel setup:
>      > [1] The entire kernel source code in:
>      > /usr/src/kernel/`uname-r`/<kernel source code>
>      > [2] The header files in: /usr/src/kernel/`uname-r`/<header file
>      > directory structures>
>      >
>      > Point [1] is achieved with the following local.config file:
>      >
>     https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/local-devsrc.conf
>      >
>      > Namely, with the following snippets in the local.conf:
>      > TOOLCHAIN_TARGET_TASK_append = " packagegroup-core-tools-profile
>      > packagegroup-core-buildessential kernel-devsrc"
>      > KERNEL_DEV_TOOLS = "packagegroup-core-tools-profile
>      > packagegroup-core-buildessential kernel-devsrc"
>      > KERNEL_DEV_MODULE = "kernel-modules"
>      > CORE_IMAGE_EXTRA_INSTALL += "${KERNEL_DEV_MODULE} \
>      > ${KERNEL_DEV_TOOLS} \
>      > systemtap \
>      > "
>      >
>      > Problem with this approach is that such a kernel makes the rootfs too
>      > big and impractical:
>      > -rw-r--r--. 2 user vboxusers 101499952 May 17 14:32
>      > core-image-minimal-beaglebone.rootfs.tar.xz
>      >
>      > The main issue is point [2]: how to achieve it?
>      > The suggestion is to introduce the new package in YOCTO kernel,
>      > called: kernel-headers
>      > The OBVIOUS benefit is that it will serve to the purpose of building
>      > modules out of the tree on the target with
>      > minimal mpact to rootfs!
> 
>     I think this is a fair suggestion. Having prebuilt kernel available
>     that contains the configuration and header files used in the build is
>     all that is required for external modules to build in addition to
>     toolchain, so maybe its worth a try to create such a package and then
>     have kernel-source separated out which can be installed on top if one
>     needs
> 
>      >
>      > Thank you,
>      > Zoran Stojsavljevic
>      > _______
>      >
>      > On Thu, May 16, 2019 at 12:04 AM Bruce Ashfield
>      > <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
>      >>
>      >>
>      >>
>      >> On Wed, May 15, 2019 at 4:09 PM Zoran Stojsavljevic
>     <zoran.stojsavljevic@gmail.com
>     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
>      >>>
>      >>>> The core-image-kernel-dev image is how I do all my on target
>      >>>> testing when I introduce a new reference kernel for a release.
>      >>>
>      >>> Maybe you are correct. Maybe I should use/add in my local.conf
>     the following:
>      >>>
>      >>> KERNEL_DEV_TOOLS ?= "packagegroup-core-tools-profile
>      >>> packagegroup-core-buildessential kernel-devsrc"
>      >>> KERNEL_DEV_MODULE ?= "kernel-modules"
>      >>> CORE_IMAGE_EXTRA_INSTALL += "${KERNEL_DEV_MODULE} \
>      >>>                               ${KERNEL_DEV_TOOLS} \
>      >>>                               systemtap \
>      >>>                              "
>      >>> I need to try these... Maybe this addendum will solve the $1
>     mio USD problem?!
>      >>>
>      >>>> And IIRC the autobuilders are using a sato based image (Richard
>      >>>> could confirm more easily that I could what image type the
>      >>>> autobuilders are using for hello-world on target module tests).
>      >>>
>      >>> I am just advertising something more simple. To have mandatory
>      >>> /lib/modules/`uname -r` directory. And introduce few more
>     packages, as
>      >>> Fedora distro, for example, has: kernel-headers (assuming YOCTO
>      >>> rootfs, the following will be installed: /usr/src/kernel/`uname
>      >>> -r`/<header file directory structures>. This also makes addition of
>      >>> /lib/modules/`uname -r`/build file (which is soft link to
>      >>> usr/src/kernel/`uname -r`).
>      >>
>      >>
>      >> These have all been discussed off an on over the past 5 years. I
>     can't get at bugzilla right now, but all the details are logged in
>     cases. A survey of all the distros, their kernel package, etc, were
>     all looked at. We had to balance the traditional packaging with some
>     new concepts and landed with what we have now.
>      >>
>      >>
>      >>>
>      >>> Or kernel-devel package. Then, the whole current kernel source code
>      >>> will be introduced, and also support for it.
>      >>
>      >>
>      >> There's a case for this one as well, I'll probably have it done
>     for the fall release. But our devsrc used to pretty much be the full
>     source it has now been pruned down to something more manageable. 
>     There are definitely some cases for having the full source on the
>     target again, and it will be a separate package, just not the
>     minimal one to build out of tree modules, etc.
>      >>
>      >>
>      >>
>      >>>
>      >>>
>      >>> SDK building with such a support is good/cool. But sometimes,
>     before
>      >>> introducing SDK, some tests should be done on target. NO need to
>      >>> optionally include built-in layer hello-world driver example.
>     Since I
>      >>> (or you name the person) have own test drivers, which will be
>     imported
>      >>> out of tree, externally, to the target test bed!
>      >>>
>      >>
>      >> I never use the SDK myself, so you are not alone in not going to
>     it first. Hopefully I'll get some new patches out in the coming
>     month before summer holidays really kick in.
>      >>
>      >> Bruce
>      >>
>      >>
>      >>>
>      >>> Just thinking loud...
>      >>>
>      >>> Zoran
>      >>> _______
>      >>>
>      >>> On Wed, May 15, 2019 at 4:25 PM Bruce Ashfield
>     <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
>      >>>>
>      >>>>
>      >>>>
>      >>>> On Wed, May 15, 2019 at 3:44 AM Zoran Stojsavljevic
>     <zoran.stojsavljevic@gmail.com
>     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
>      >>>>>
>      >>>>>> That's correct. That command only adds the kernel source and
>      >>>>>> build infrastructure to the SDK, not to your target image.
>     You'd still
>      >>>>>> need to arrange to have the kernel-devsrc package installed
>     on the
>      >>>>>> target image if you want it on the board's rootfs. How you
>     arrange
>      >>>>>> to have the package installed to the image varies with the image
>      >>>>>> (since they all don't have the same image install variables,
>     etc).
>      >>>>>
>      >>>>> And here is a $1,000,000 USD question? How to do it on Poky (as
>      >>>>> example of what you have stated in RED)? ;-)
>      >>>>>
>      >>>>> In other words: how to arrange it on Poky (as a Referent
>     example)?
>      >>>>
>      >>>>
>      >>>> The core-image-kernel-dev image is how I do all my on target
>     testing when I introduce a new reference kernel for a release. And
>     IIRC the autobuilders are using a sato based image (Richard could
>     confirm more easily that I could what image type the autobuilders
>     are using for hello-world on target module tests).
>      >>>>
>      >>>> Bruce
>      >>>>
>      >>>>
>      >>>>>
>      >>>>>
>      >>>>> Thank you,
>      >>>>> Zoran
>      >>>>> _______
>      >>>>>
>      >>>>>
>      >>>>> On Wed, May 15, 2019 at 7:41 AM Bruce Ashfield
>     <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
>      >>>>>>
>      >>>>>>
>      >>>>>>
>      >>>>>> On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic
>     <zoran.stojsavljevic@gmail.com
>     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
>      >>>>>>>
>      >>>>>>> Hello Chris, Bruce,
>      >>>>>>>
>      >>>>>>> I have some additional data to share with you both, since I
>     have tried
>      >>>>>>> something. And here is my take on the things!
>      >>>>>>>
>      >>>>>>>> 1. Build using a bb recipe.
>      >>>>>>>> Take a look at meta-skeleton/recipes-kernel/hello-mod for
>     an example.
>      >>>>>>>> You just need to add meta-skeleton to your bblayers.conf
>     and then
>      >>>>>>>>   bitbake hello-mod
>      >>>>>>>
>      >>>>>>> I looked into this example, and, yes, it is classic kernel
>     module
>      >>>>>>> definition out of the tree. With some outdated data, all
>     cool, the
>      >>>>>>> YOCTO designer should take care himself to fix these data,
>     if using
>      >>>>>>> this stuff.
>      >>>>>>>
>      >>>>>>> But this is NOT mandatory, since I can add out of the tree
>     module NOT
>      >>>>>>> actually using built-in module. I just use
>     .../tmp/deploy/images/bbb/*
>      >>>>>>> generated stuff, since I have automated scripts which are
>     bringing all
>      >>>>>>> these on my BBB target. Then I tftp my source code module
>     to the
>      >>>>>>> target.
>      >>>>>>>
>      >>>>>>>> 2. Build from the SDK:
>      >>>>>>>> First, add the kernel source to the SDK by adding this to
>     conf/local.conf
>      >>>>>>>>   TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
>      >>>>>>>
>      >>>>>>> YES, this is THE command which should generate
>      >>>>>>> /usr/src/kernel(s)/`uname -r` or similar... But adding it to
>      >>>>>>> local.conf and after deleting kernel, then regenerating
>     bitbake -k
>      >>>>>>> core-image-minimal does not bring this path into the rootfs
>     image!?
>      >>>>>>
>      >>>>>>
>      >>>>>> That's correct. That command only adds the kernel source and
>     build infrastructure to the SDK, not to your target image. You'd
>     still need to arrange to have the kernel-devsrc package installed on
>     the target image if you want it on the board's rootfs. How you
>     arrange to have the package installed to the image varies with the
>     image (since they all don't have the same image install variables, etc).
>      >>>>>>
>      >>>>>>
>      >>>>>>>
>      >>>>>>>
>      >>>>>>> I did it actually using meta-bbb, and using poky referent
>     distro as
>      >>>>>>> two additional layers to the more complex bbb image!
>      >>>>>>> https://github.com/jumpnow/meta-bbb.git
>      >>>>>>>
>      >>>>>>> The (KAS - you can figure out out of it local.conf) script
>     I am using
>      >>>>>>> to build such a BBB image is here:
>      >>>>>>>
>     https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml
>      >>>>>>>
>      >>>>>>> I did not try it with BBB reference poky only! Maybe I
>     should try it
>      >>>>>>> as only referent poky? What do you think?
>      >>>>>>>
>      >>>>>>> Does in this case is SDK build really mandatory??? Should
>     NOT be!
>      >>>>>>>
>      >>>>>>
>      >>>>>> You only do the SDK steps if you want to support building
>     out of tree modules in an SDK install. So it is not mandatory for on
>     target module builds.
>      >>>>>>
>      >>>>>> Bruce
>      >>>>>>
>      >>>>>>
>      >>>>>>>
>      >>>>>>>> Once the SDK is installed, generate the kernel headers:
>      >>>>>>>>   sudo -i
>      >>>>>>>>   .
>     /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
>      >>>>>>>>   cd
>     /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>      >>>>>>>>   cd /usr/src/kernel
>      >>>>>>>>   make oldconfig scripts
>      >>>>>>>>   exit
>      >>>>>>>
>      >>>>>>> This is in nutshell the same what I did (a bit different)
>     for Embedded
>      >>>>>>> Debian. This is already on the target BBB, NOT while
>     building YOCTO
>      >>>>>>> BBB image!
>      >>>>>>>
>      >>>>>>>> Finally, build your module using a Makefile like this
>      >>>>>>>>   obj-m := hello-mod.o
>      >>>>>>>>   all:
>      >>>>>>>>         make -C $(SDKTARGETSYSROOT)/usr/src/kernel
>     M=$(shell pwd)
>      >>>>>>>
>      >>>>>>> As said before: bringing my own module into the target BBB
>     (I have my
>      >>>>>>> own examples, and I build them on the target with the
>     almost the same
>      >>>>>>> Makefiles)
>      >>>>>>>
>      >>>>>>> Zoran
>      >>>>>>> _______
>      >>>>>>>
>      >>>>>>> On Sun, May 12, 2019 at 3:15 PM Chris Simmonds
>     <chris@2net.co.uk <mailto:chris@2net.co.uk>> wrote:
>      >>>>>>>>
>      >>>>>>>> Hi Zoran,
>      >>>>>>>>
>      >>>>>>>> There are two ways to do this
>      >>>>>>>>
>      >>>>>>>> 1. Build using a bb recipe.
>      >>>>>>>> Take a look at meta-skeleton/recipes-kernel/hello-mod for
>     an example.
>      >>>>>>>> You just need to add meta-skeleton to your bblaysers.conf
>     and then
>      >>>>>>>>    bitbake hello-mod
>      >>>>>>>>
>      >>>>>>>>
>      >>>>>>>> 2. Build from the SDK:
>      >>>>>>>> First, add the kernel source to the SDK by adding this to
>     conf/local/conf
>      >>>>>>>>    TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
>      >>>>>>>>
>      >>>>>>>> Then build the SDK
>      >>>>>>>>    bitbake -c populate_sdk [your image recipe]
>      >>>>>>>>
>      >>>>>>>> Once the SDK is installed, generate the kernel headers:
>      >>>>>>>>    sudo -i
>      >>>>>>>>    .
>     /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
>      >>>>>>>>    cd
>     /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>      >>>>>>>>    cd /usr/src/kernel
>      >>>>>>>>    make oldconfig scripts
>      >>>>>>>>    exit
>      >>>>>>>>
>      >>>>>>>> Finally, build your module using a Makefile like this
>      >>>>>>>>
>      >>>>>>>>    obj-m := hello-mod.o
>      >>>>>>>>    all:
>      >>>>>>>>          make -C $(SDKTARGETSYSROOT)/usr/src/kernel
>     M=$(shell pwd)
>      >>>>>>>>
>      >>>>>>>>
>      >>>>>>>> HTH,
>      >>>>>>>> Chris
>      >>>>>>>>
>      >>>>>>>> On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
>      >>>>>>>>> Hello to the YOCTO community,
>      >>>>>>>>>
>      >>>>>>>>> I am using (to build the target for Beagle Bone Black)
>     the following script:
>      >>>>>>>>> https://github.com/ZoranStojsavljevic/bbb-yocto
>      >>>>>>>>>
>     https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh
>      >>>>>>>>>
>      >>>>>>>>> The latest kernel I am using from the following repo:
>      >>>>>>>>> https://github.com/jumpnow/meta-bbb
>      >>>>>>>>>
>      >>>>>>>>> Is kernel 5.0.14 .
>      >>>>>>>>>
>      >>>>>>>>> Here is the snippet of the boot traces:
>      >>>>>>>>> Starting kernel ...
>      >>>>>>>>>
>      >>>>>>>>> [    0.000000] Booting Linux on physical CPU 0x0
>      >>>>>>>>> [    0.000000] Linux version 5.0.14-jumpnow
>     (oe-user@oe-host) (gcc
>      >>>>>>>>> version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
>      >>>>>>>>> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2
>     (ARMv7), cr=10c5387d
>      >>>>>>>>> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache,
>     VIPT aliasing
>      >>>>>>>>> instruction cache
>      >>>>>>>>> [    0.000000] OF: fdt: Machine model: TI AM335x
>     BeagleBone Black
>      >>>>>>>>> [    0.000000] Memory policy: Data cache writeback
>      >>>>>>>>> [    0.000000] cma: Reserved 16 MiB at 0x9f000000
>      >>>>>>>>> [    0.000000] CPU: All CPU(s) started in SVC mode.
>      >>>>>>>>> [    0.000000] AM335X ES2.1 (sgx neon)
>      >>>>>>>>> [    0.000000] random: get_random_bytes called from
>      >>>>>>>>> start_kernel+0xa4/0x460 with crng_init=0
>      >>>>>>>>> [    0.000000] Built 1 zonelists, mobility grouping on. 
>     Total pages: 130048
>      >>>>>>>>> [    0.000000] Kernel command line: console=ttyO0,115200n8
>      >>>>>>>>> root=/dev/ram0 ip=dhcp
>      >>>>>>>>>
>      >>>>>>>>> According to the documentation, the following:
>      >>>>>>>>> 2.10.1. Building Out-of-Tree Modules on the Target
>      >>>>>>>>>
>     https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html
>      >>>>>>>>>
>      >>>>>>>>> I tried to find /usr/src/kernels/5.0.14.
>     <http://5.0.14.>.. Directory, since I see
>      >>>>>>>>> from the build that kernel-dev and kernel-devsrc are
>     included:
>      >>>>>>>>> [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
>      >>>>>>>>> core-image-kernel-dev                                 :1.0-r0
>      >>>>>>>>> kernel-devsrc                                         :1.0-r0
>      >>>>>>>>> kernel-selftest                                       :1.0-r0
>      >>>>>>>>>
>      >>>>>>>>> THE PROBLEM: But I could not find ob BBB target
>     /usr/src/kernels
>      >>>>>>>>> directory at all!?
>      >>>>>>>>>
>      >>>>>>>>> Two questions here?
>      >>>>>>>>> [1] Do you have any advice on this problem (what I am
>     missing here)?
>      >>>>>>>>> [2] Alternative to [1]: how I can use cross compiler from
>      >>>>>>>>> .../build/tmp to build Out-of-Tree Module for the BBB
>     target on the
>      >>>>>>>>> host?
>      >>>>>>>>>
>      >>>>>>>>> Thank you,
>      >>>>>>>>> Zoran
>      >>>>>>>>> _______
>      >>>>>>>>>
>      >>>>>>>>
>      >>>>>>>>
>      >>>>>>>> --
>      >>>>>>>> Chris Simmonds, trainer and consultant at 2net
>      >>>>>>>> http://www.2net.co.uk
>      >>>>>>>> Author of "Mastering Embedded Linux Programming"
>      >>>>>>
>      >>>>>>
>      >>>>>>
>      >>>>>> --
>      >>>>>> - Thou shalt not follow the NULL pointer, for chaos and
>     madness await thee at its end
>      >>>>>> - "Use the force Harry" - Gandalf, Star Trek II
>      >>>>>>
>      >>>>
>      >>>>
>      >>>> --
>      >>>> - Thou shalt not follow the NULL pointer, for chaos and
>     madness await thee at its end
>      >>>> - "Use the force Harry" - Gandalf, Star Trek II
>      >>>>
>      >>
>      >>
>      >>
>      >> --
>      >> - Thou shalt not follow the NULL pointer, for chaos and madness
>     await thee at its end
>      >> - "Use the force Harry" - Gandalf, Star Trek II
>      >>
> 

