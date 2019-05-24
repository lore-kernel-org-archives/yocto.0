Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 122D5E00A96; Fri, 24 May 2019 08:46:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE, US_DOLLARS_3 autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
	*  1.4 US_DOLLARS_3 BODY: Mentions millions of $ ($NN,NNN,NNN.NN)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7425E006D2
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 08:46:38 -0700 (PDT)
Received: by mail-qk1-f195.google.com with SMTP id t64so8016405qkh.1
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 08:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=KfahtvtsASFXHEw8a1I+MCxBMFB7c98IC7n94YpxW1c=;
	b=i21WyVW/n8JRYPdg8T+DY5fPp17j82Wjuhgc0Q7Lp00js7EFABwvstdYKud4D4HbP3
	DyC2QmxCg9n/Pm0XZSfudBolBoWx8i6xVAgir/JoVGjsMxLOS3yiG1oRmSv96MKsxQEr
	IDT5/MAMeztcsXZIUk8K/I6ogahbXKZqMlPXFSwsZa/gG7f9M9laA115KavLGXnH1ub+
	vIA14ktUmjZWzlY/uQYwfVBC4bMwK6fVo/NQXWIOjG5IP+Fg9rNcFdLeNGTLR7ezP2+x
	Cp03PkQUTB5YvXNgS5AKd6zwcaqc05ygZJ1NGQAwJwI4UASOblYlcEtXp1Vl3Ouz2CN8
	9HRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=KfahtvtsASFXHEw8a1I+MCxBMFB7c98IC7n94YpxW1c=;
	b=bjZmyuWm+wQFoJN8PjpDZtWepUcTR6gIVDpv0b2VZvKKxxs77s4p+9w9Z9X83RsdO2
	TTAzRh7vayv/jmxgsSFyZ4j+tfFvuqfKVeiIyqH4JGT8mUV7//qtVXXqWpUPHlgqLOAW
	MW5vL72kdXGOimF6UBoVkq8/0rwRUzeSp+mHKeqxOJhsPTmCGk7pz9dHt/H2/k9qtXgY
	yspmxBbRr0lp5i2M16NVgDpQzUUMi1mUTIKP+ex5M/yKAP/0s03x0hbyOgh6LeyvOI5F
	PUoFPqFve4q0jkIItH2QZ9E/HBx4MzIwvtuPiq2bPYvKW422SQzxb040ZmnS8KsFJnh0
	tAGA==
X-Gm-Message-State: APjAAAWJ+58vK1AqytH6OALxTTUxpE3C+nLDn0NThJLaSqPF53+u1ZU+
	qS32nbd6g9R6SVNCNFUIElVUEA3mf4sFepIEL4MDnJZg
X-Google-Smtp-Source: APXvYqwgpttxB2RuvRdZXSB6FlwD4Davr+fm4jAnIixd2P8DxAh+Kl0TbYCytsvPL0vSLsnIyB0NH2u5vmiZAQYC3XI=
X-Received: by 2002:ac8:3231:: with SMTP id x46mr86405782qta.328.1558712797702;
	Fri, 24 May 2019 08:46:37 -0700 (PDT)
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
	<CAGAf8LzPV5iZjQ0hFfdBr58Nfb-QT_ft0cLZ0X3NegMAddXhcg@mail.gmail.com>
	<CADkTA4MZwRUkkmZHe+eN+PCd_j819XxNB1Zi+gTXABnWTYvZ0Q@mail.gmail.com>
	<CADkTA4Od7gpBXQq=Ar803Dr=VJH0+5wB+swF5O=C-n6EXrcukw@mail.gmail.com>
In-Reply-To: <CADkTA4Od7gpBXQq=Ar803Dr=VJH0+5wB+swF5O=C-n6EXrcukw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 24 May 2019 17:46:25 +0200
Message-ID: <CAGAf8Lx5YiB1Y9Ly-eqwQw5S5ib2kh+Jd0UOcZZ6AZVyXpqU_w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Fri, 24 May 2019 15:46:40 -0000
Content-Type: text/plain; charset="UTF-8"

YUP! Thank you for the fix (I totally forgot about scripts directory).

Command: make scripts prepare solved it all!

Here is all captured (in order of execution):
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/LKM/prepare_modules.log

These bugzillas will be still nice to have, Bruce, if possible (net
pointers to them).

I am acting as Scott Rifenbark, since I would like all of these
details to be rock-solid documented!

Thank you.
Zoran
_______



On Fri, May 24, 2019 at 4:16 PM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
>
>
> On Fri, May 24, 2019 at 8:50 AM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>>
>>
>>
>> On Fri, May 24, 2019 at 7:24 AM Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>>>
>>> As I said, I am a man of experimental try-outs. And here is the try!
>>>
>>> Now, after setting sources, I tried to compile the example (from my Git):
>>> https://github.com/ZoranStojsavljevic/bbb-yocto/tree/master/Issues/LKM
>>>
>>> The results are the following (all on the target):
>>> root@beaglebone:~# pwd
>>> /home/root
>>> root@beaglebone:~# ls -al
>>> drwx------    2 root     root             0 May 24 13:11 .
>>> drwxr-xr-x    3 root     root             0 May 23 13:03 ..
>>> -rw-r--r--    1 root     root           159 May 24 12:54 Makefile
>>> -rw-r--r--    1 root     root          1228 May 24 12:54 p15_test.c
>>> root@beaglebone:~# make all
>>> make -C /lib/modules/5.0.15-jumpnow/build M=/home/root modules
>>> make[1]: Entering directory '/lib/modules/5.0.15-jumpnow/build'
>>>   CC [M]  /home/root/p15_test.o
>>> In file included from ./include/asm-generic/int-ll64.h:11,
>>>                  from ./arch/arm/include/uapi/asm/types.h:5,
>>>                  from ./include/uapi/linux/types.h:5,
>>>                  from ./include/linux/types.h:6,
>>>                  from ./include/linux/list.h:5,
>>>                  from ./include/linux/module.h:9,
>>>                  from /home/root/p15_test.c:5:
>>> ./include/uapi/asm-generic/int-ll64.h:12:10: fatal error: asm/bitsperlong.h: No such file or directory
>>>  #include <asm/bitsperlong.h>
>>>           ^~~~~~~~~~~~~~~~~~~
>>> compilation terminated.
>>> make[2]: *** [scripts/Makefile.build:283: /home/root/p15_test.o] Error 1
>>> make[1]: *** [Makefile:1577: _module_/home/root] Error 2
>>> make[1]: Leaving directory '/lib/modules/5.0.15-jumpnow/build'
>>> make: *** [Makefile:4: all] Error 2
>>
>>
>> I'll try some test builds and see what I can find. Some new issues may have crept in.
>
>
> I can confirm that after wget'ing the files from your github, that I can build the module just by using
> kernel-devsrc (on the core-image-kernel-dev image).
>
> I only had my qemux86-64 build handy, so I commented out the inline assembly in the module to make sure it would build :D
>
> Outside of that, I only ran: 'make scripts prepare' in the kernel source dir that dev-src installed to the image.
> root@qemux86-64:/tmp/f# make all
> make -C /lib/modules/5.0.17-yocto-standard/build M=/tmp/f modules
> make[1]: Entering directory '/lib/modules/5.0.17-yocto-standard/build'
>   CC [M]  /tmp/f/p15_test.o
>   Building modules, stage 2.
>   MODPOST 1 modules
>   CC      /tmp/f/p15_test.mod.o
>   LD [M]  /tmp/f/p15_test.ko
> make[1]: Leaving directory '/lib/modules/5.0.17-yocto-standard/build'
>
> Bruce
>
>
>>
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>>
>>>
>>> I see that you have changed the kernel from 5.0.7-jumpnow to 5.0.15-jumpnow . Did you?
>>>
>>> This example works on the same target out of Debian (flashed in eMMC), without the problems.
>>>
>>> Something is wrong with the YOCTO source kernel tree.
>>>
>>> You are free to try example on YOCTO and Embedded Debian yourselves!
>>>
>>> Zoran
>>> _______
>>>
>>> On Fri, May 24, 2019 at 6:37 AM Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>>
>>>>
>>>> On 5/23/19 9:14 PM, Zoran Stojsavljevic wrote:
>>>> >  > I think this is a fair suggestion. Having prebuilt kernel available
>>>> >  > that contains the configuration and header files used in the build is
>>>> >  > all that is required for external modules to build in addition to
>>>> >  > toolchain, so maybe its worth a try to create such a package and then
>>>> >  > have kernel-source separated out which can be installed on top if one
>>>> >  > needs
>>>> >
>>>> > I am man of experimental try-outs. So, in order to see how big kernel is,
>>>> > I did the following:
>>>> > Fedora 29 (which I am using as a host) with kernel-headers (NOT full
>>>> > kernel source tree):
>>>> > [vuser@fedora29-ssd 5.0.16-200.fc29.x86_64]$ pwd
>>>> > /usr/src/kernels/5.0.16-200.fc29.x86_64
>>>> > [vuser@fedora29-ssd 5.0.16-200.fc29.x86_64]$ du --summarize
>>>> > /*102124    . <<======= ~95MB*/
>>>> >
>>>> > Kernel.org kernel 5.0.6, the full kernel source tree size:
>>>> > [vuser@fedora29-ssd linux-5.0.6]$ pwd
>>>> > /home/vuser/projects/kernel.org/linux-5.0.6 <http://kernel.org/linux-5.0.6>
>>>> > [vuser@fedora29-ssd linux-5.0.6]$ du --summarize
>>>> > /*960592    . <<======= ~900MB*/
>>>> >
>>>> > These are ballpark numbers. You can draw conclusions for yourselves!
>>>> >
>>>> > It is ~ 7x to 9x reduction in size. Having BBB's DDR2 of size 512MB,
>>>> > and initramfs for testing purposes, in speaks for itself.
>>>> >
>>>>
>>>> yes thats what I was expecting too. Anything smaller helps.
>>>>
>>>>
>>>> > (I am aware that YOCTO kernels are less/smaller in size, but how smaller?)
>>>> >
>>>>
>>>> Not in source. The binaries may be
>>>>
>>>> > Zoran
>>>> > _______
>>>> >
>>>> >
>>>> > On Fri, May 24, 2019 at 3:00 AM Khem Raj <raj.khem@gmail.com
>>>> > <mailto:raj.khem@gmail.com>> wrote:
>>>> >
>>>> >
>>>> >
>>>> >     On 5/23/19 3:32 AM, Zoran Stojsavljevic wrote:
>>>> >      > After some tests (and I had other problems to take care of, as well),
>>>> >      > here is the following:
>>>> >      >
>>>> >      >> These have all been discussed off an on over the past 5 years.
>>>> >      >> I can't get at bugzilla right now, but all the details are
>>>> >     logged in cases.
>>>> >      >> A survey of all the distros, their kernel package, etc, were all
>>>> >     looked at.
>>>> >      >> We had to balance the traditional packaging with some new concepts
>>>> >      >> and landed with what we have now.
>>>> >      >
>>>> >      > I tried several tests. This is my final conclusion (two cases):
>>>> >      >
>>>> >     https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/kernel-development.txt
>>>> >      >
>>>> >      > The kernel issue is described here: there is need to have the YOCTO
>>>> >      > minimum configuration with the kernel setup:
>>>> >      > [1] The entire kernel source code in:
>>>> >      > /usr/src/kernel/`uname-r`/<kernel source code>
>>>> >      > [2] The header files in: /usr/src/kernel/`uname-r`/<header file
>>>> >      > directory structures>
>>>> >      >
>>>> >      > Point [1] is achieved with the following local.config file:
>>>> >      >
>>>> >     https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/local-devsrc.conf
>>>> >      >
>>>> >      > Namely, with the following snippets in the local.conf:
>>>> >      > TOOLCHAIN_TARGET_TASK_append = " packagegroup-core-tools-profile
>>>> >      > packagegroup-core-buildessential kernel-devsrc"
>>>> >      > KERNEL_DEV_TOOLS = "packagegroup-core-tools-profile
>>>> >      > packagegroup-core-buildessential kernel-devsrc"
>>>> >      > KERNEL_DEV_MODULE = "kernel-modules"
>>>> >      > CORE_IMAGE_EXTRA_INSTALL += "${KERNEL_DEV_MODULE} \
>>>> >      > ${KERNEL_DEV_TOOLS} \
>>>> >      > systemtap \
>>>> >      > "
>>>> >      >
>>>> >      > Problem with this approach is that such a kernel makes the rootfs too
>>>> >      > big and impractical:
>>>> >      > -rw-r--r--. 2 user vboxusers 101499952 May 17 14:32
>>>> >      > core-image-minimal-beaglebone.rootfs.tar.xz
>>>> >      >
>>>> >      > The main issue is point [2]: how to achieve it?
>>>> >      > The suggestion is to introduce the new package in YOCTO kernel,
>>>> >      > called: kernel-headers
>>>> >      > The OBVIOUS benefit is that it will serve to the purpose of building
>>>> >      > modules out of the tree on the target with
>>>> >      > minimal mpact to rootfs!
>>>> >
>>>> >     I think this is a fair suggestion. Having prebuilt kernel available
>>>> >     that contains the configuration and header files used in the build is
>>>> >     all that is required for external modules to build in addition to
>>>> >     toolchain, so maybe its worth a try to create such a package and then
>>>> >     have kernel-source separated out which can be installed on top if one
>>>> >     needs
>>>> >
>>>> >      >
>>>> >      > Thank you,
>>>> >      > Zoran Stojsavljevic
>>>> >      > _______
>>>> >      >
>>>> >      > On Thu, May 16, 2019 at 12:04 AM Bruce Ashfield
>>>> >      > <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
>>>> >      >>
>>>> >      >>
>>>> >      >>
>>>> >      >> On Wed, May 15, 2019 at 4:09 PM Zoran Stojsavljevic
>>>> >     <zoran.stojsavljevic@gmail.com
>>>> >     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
>>>> >      >>>
>>>> >      >>>> The core-image-kernel-dev image is how I do all my on target
>>>> >      >>>> testing when I introduce a new reference kernel for a release.
>>>> >      >>>
>>>> >      >>> Maybe you are correct. Maybe I should use/add in my local.conf
>>>> >     the following:
>>>> >      >>>
>>>> >      >>> KERNEL_DEV_TOOLS ?= "packagegroup-core-tools-profile
>>>> >      >>> packagegroup-core-buildessential kernel-devsrc"
>>>> >      >>> KERNEL_DEV_MODULE ?= "kernel-modules"
>>>> >      >>> CORE_IMAGE_EXTRA_INSTALL += "${KERNEL_DEV_MODULE} \
>>>> >      >>>                               ${KERNEL_DEV_TOOLS} \
>>>> >      >>>                               systemtap \
>>>> >      >>>                              "
>>>> >      >>> I need to try these... Maybe this addendum will solve the $1
>>>> >     mio USD problem?!
>>>> >      >>>
>>>> >      >>>> And IIRC the autobuilders are using a sato based image (Richard
>>>> >      >>>> could confirm more easily that I could what image type the
>>>> >      >>>> autobuilders are using for hello-world on target module tests).
>>>> >      >>>
>>>> >      >>> I am just advertising something more simple. To have mandatory
>>>> >      >>> /lib/modules/`uname -r` directory. And introduce few more
>>>> >     packages, as
>>>> >      >>> Fedora distro, for example, has: kernel-headers (assuming YOCTO
>>>> >      >>> rootfs, the following will be installed: /usr/src/kernel/`uname
>>>> >      >>> -r`/<header file directory structures>. This also makes addition of
>>>> >      >>> /lib/modules/`uname -r`/build file (which is soft link to
>>>> >      >>> usr/src/kernel/`uname -r`).
>>>> >      >>
>>>> >      >>
>>>> >      >> These have all been discussed off an on over the past 5 years. I
>>>> >     can't get at bugzilla right now, but all the details are logged in
>>>> >     cases. A survey of all the distros, their kernel package, etc, were
>>>> >     all looked at. We had to balance the traditional packaging with some
>>>> >     new concepts and landed with what we have now.
>>>> >      >>
>>>> >      >>
>>>> >      >>>
>>>> >      >>> Or kernel-devel package. Then, the whole current kernel source code
>>>> >      >>> will be introduced, and also support for it.
>>>> >      >>
>>>> >      >>
>>>> >      >> There's a case for this one as well, I'll probably have it done
>>>> >     for the fall release. But our devsrc used to pretty much be the full
>>>> >     source it has now been pruned down to something more manageable.
>>>> >     There are definitely some cases for having the full source on the
>>>> >     target again, and it will be a separate package, just not the
>>>> >     minimal one to build out of tree modules, etc.
>>>> >      >>
>>>> >      >>
>>>> >      >>
>>>> >      >>>
>>>> >      >>>
>>>> >      >>> SDK building with such a support is good/cool. But sometimes,
>>>> >     before
>>>> >      >>> introducing SDK, some tests should be done on target. NO need to
>>>> >      >>> optionally include built-in layer hello-world driver example.
>>>> >     Since I
>>>> >      >>> (or you name the person) have own test drivers, which will be
>>>> >     imported
>>>> >      >>> out of tree, externally, to the target test bed!
>>>> >      >>>
>>>> >      >>
>>>> >      >> I never use the SDK myself, so you are not alone in not going to
>>>> >     it first. Hopefully I'll get some new patches out in the coming
>>>> >     month before summer holidays really kick in.
>>>> >      >>
>>>> >      >> Bruce
>>>> >      >>
>>>> >      >>
>>>> >      >>>
>>>> >      >>> Just thinking loud...
>>>> >      >>>
>>>> >      >>> Zoran
>>>> >      >>> _______
>>>> >      >>>
>>>> >      >>> On Wed, May 15, 2019 at 4:25 PM Bruce Ashfield
>>>> >     <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
>>>> >      >>>>
>>>> >      >>>>
>>>> >      >>>>
>>>> >      >>>> On Wed, May 15, 2019 at 3:44 AM Zoran Stojsavljevic
>>>> >     <zoran.stojsavljevic@gmail.com
>>>> >     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
>>>> >      >>>>>
>>>> >      >>>>>> That's correct. That command only adds the kernel source and
>>>> >      >>>>>> build infrastructure to the SDK, not to your target image.
>>>> >     You'd still
>>>> >      >>>>>> need to arrange to have the kernel-devsrc package installed
>>>> >     on the
>>>> >      >>>>>> target image if you want it on the board's rootfs. How you
>>>> >     arrange
>>>> >      >>>>>> to have the package installed to the image varies with the image
>>>> >      >>>>>> (since they all don't have the same image install variables,
>>>> >     etc).
>>>> >      >>>>>
>>>> >      >>>>> And here is a $1,000,000 USD question? How to do it on Poky (as
>>>> >      >>>>> example of what you have stated in RED)? ;-)
>>>> >      >>>>>
>>>> >      >>>>> In other words: how to arrange it on Poky (as a Referent
>>>> >     example)?
>>>> >      >>>>
>>>> >      >>>>
>>>> >      >>>> The core-image-kernel-dev image is how I do all my on target
>>>> >     testing when I introduce a new reference kernel for a release. And
>>>> >     IIRC the autobuilders are using a sato based image (Richard could
>>>> >     confirm more easily that I could what image type the autobuilders
>>>> >     are using for hello-world on target module tests).
>>>> >      >>>>
>>>> >      >>>> Bruce
>>>> >      >>>>
>>>> >      >>>>
>>>> >      >>>>>
>>>> >      >>>>>
>>>> >      >>>>> Thank you,
>>>> >      >>>>> Zoran
>>>> >      >>>>> _______
>>>> >      >>>>>
>>>> >      >>>>>
>>>> >      >>>>> On Wed, May 15, 2019 at 7:41 AM Bruce Ashfield
>>>> >     <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
>>>> >      >>>>>>
>>>> >      >>>>>>
>>>> >      >>>>>>
>>>> >      >>>>>> On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic
>>>> >     <zoran.stojsavljevic@gmail.com
>>>> >     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
>>>> >      >>>>>>>
>>>> >      >>>>>>> Hello Chris, Bruce,
>>>> >      >>>>>>>
>>>> >      >>>>>>> I have some additional data to share with you both, since I
>>>> >     have tried
>>>> >      >>>>>>> something. And here is my take on the things!
>>>> >      >>>>>>>
>>>> >      >>>>>>>> 1. Build using a bb recipe.
>>>> >      >>>>>>>> Take a look at meta-skeleton/recipes-kernel/hello-mod for
>>>> >     an example.
>>>> >      >>>>>>>> You just need to add meta-skeleton to your bblayers.conf
>>>> >     and then
>>>> >      >>>>>>>>   bitbake hello-mod
>>>> >      >>>>>>>
>>>> >      >>>>>>> I looked into this example, and, yes, it is classic kernel
>>>> >     module
>>>> >      >>>>>>> definition out of the tree. With some outdated data, all
>>>> >     cool, the
>>>> >      >>>>>>> YOCTO designer should take care himself to fix these data,
>>>> >     if using
>>>> >      >>>>>>> this stuff.
>>>> >      >>>>>>>
>>>> >      >>>>>>> But this is NOT mandatory, since I can add out of the tree
>>>> >     module NOT
>>>> >      >>>>>>> actually using built-in module. I just use
>>>> >     .../tmp/deploy/images/bbb/*
>>>> >      >>>>>>> generated stuff, since I have automated scripts which are
>>>> >     bringing all
>>>> >      >>>>>>> these on my BBB target. Then I tftp my source code module
>>>> >     to the
>>>> >      >>>>>>> target.
>>>> >      >>>>>>>
>>>> >      >>>>>>>> 2. Build from the SDK:
>>>> >      >>>>>>>> First, add the kernel source to the SDK by adding this to
>>>> >     conf/local.conf
>>>> >      >>>>>>>>   TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
>>>> >      >>>>>>>
>>>> >      >>>>>>> YES, this is THE command which should generate
>>>> >      >>>>>>> /usr/src/kernel(s)/`uname -r` or similar... But adding it to
>>>> >      >>>>>>> local.conf and after deleting kernel, then regenerating
>>>> >     bitbake -k
>>>> >      >>>>>>> core-image-minimal does not bring this path into the rootfs
>>>> >     image!?
>>>> >      >>>>>>
>>>> >      >>>>>>
>>>> >      >>>>>> That's correct. That command only adds the kernel source and
>>>> >     build infrastructure to the SDK, not to your target image. You'd
>>>> >     still need to arrange to have the kernel-devsrc package installed on
>>>> >     the target image if you want it on the board's rootfs. How you
>>>> >     arrange to have the package installed to the image varies with the
>>>> >     image (since they all don't have the same image install variables, etc).
>>>> >      >>>>>>
>>>> >      >>>>>>
>>>> >      >>>>>>>
>>>> >      >>>>>>>
>>>> >      >>>>>>> I did it actually using meta-bbb, and using poky referent
>>>> >     distro as
>>>> >      >>>>>>> two additional layers to the more complex bbb image!
>>>> >      >>>>>>> https://github.com/jumpnow/meta-bbb.git
>>>> >      >>>>>>>
>>>> >      >>>>>>> The (KAS - you can figure out out of it local.conf) script
>>>> >     I am using
>>>> >      >>>>>>> to build such a BBB image is here:
>>>> >      >>>>>>>
>>>> >     https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml
>>>> >      >>>>>>>
>>>> >      >>>>>>> I did not try it with BBB reference poky only! Maybe I
>>>> >     should try it
>>>> >      >>>>>>> as only referent poky? What do you think?
>>>> >      >>>>>>>
>>>> >      >>>>>>> Does in this case is SDK build really mandatory??? Should
>>>> >     NOT be!
>>>> >      >>>>>>>
>>>> >      >>>>>>
>>>> >      >>>>>> You only do the SDK steps if you want to support building
>>>> >     out of tree modules in an SDK install. So it is not mandatory for on
>>>> >     target module builds.
>>>> >      >>>>>>
>>>> >      >>>>>> Bruce
>>>> >      >>>>>>
>>>> >      >>>>>>
>>>> >      >>>>>>>
>>>> >      >>>>>>>> Once the SDK is installed, generate the kernel headers:
>>>> >      >>>>>>>>   sudo -i
>>>> >      >>>>>>>>   .
>>>> >     /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
>>>> >      >>>>>>>>   cd
>>>> >     /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>>>> >      >>>>>>>>   cd /usr/src/kernel
>>>> >      >>>>>>>>   make oldconfig scripts
>>>> >      >>>>>>>>   exit
>>>> >      >>>>>>>
>>>> >      >>>>>>> This is in nutshell the same what I did (a bit different)
>>>> >     for Embedded
>>>> >      >>>>>>> Debian. This is already on the target BBB, NOT while
>>>> >     building YOCTO
>>>> >      >>>>>>> BBB image!
>>>> >      >>>>>>>
>>>> >      >>>>>>>> Finally, build your module using a Makefile like this
>>>> >      >>>>>>>>   obj-m := hello-mod.o
>>>> >      >>>>>>>>   all:
>>>> >      >>>>>>>>         make -C $(SDKTARGETSYSROOT)/usr/src/kernel
>>>> >     M=$(shell pwd)
>>>> >      >>>>>>>
>>>> >      >>>>>>> As said before: bringing my own module into the target BBB
>>>> >     (I have my
>>>> >      >>>>>>> own examples, and I build them on the target with the
>>>> >     almost the same
>>>> >      >>>>>>> Makefiles)
>>>> >      >>>>>>>
>>>> >      >>>>>>> Zoran
>>>> >      >>>>>>> _______
>>>> >      >>>>>>>
>>>> >      >>>>>>> On Sun, May 12, 2019 at 3:15 PM Chris Simmonds
>>>> >     <chris@2net.co.uk <mailto:chris@2net.co.uk>> wrote:
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> Hi Zoran,
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> There are two ways to do this
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> 1. Build using a bb recipe.
>>>> >      >>>>>>>> Take a look at meta-skeleton/recipes-kernel/hello-mod for
>>>> >     an example.
>>>> >      >>>>>>>> You just need to add meta-skeleton to your bblaysers.conf
>>>> >     and then
>>>> >      >>>>>>>>    bitbake hello-mod
>>>> >      >>>>>>>>
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> 2. Build from the SDK:
>>>> >      >>>>>>>> First, add the kernel source to the SDK by adding this to
>>>> >     conf/local/conf
>>>> >      >>>>>>>>    TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> Then build the SDK
>>>> >      >>>>>>>>    bitbake -c populate_sdk [your image recipe]
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> Once the SDK is installed, generate the kernel headers:
>>>> >      >>>>>>>>    sudo -i
>>>> >      >>>>>>>>    .
>>>> >     /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
>>>> >      >>>>>>>>    cd
>>>> >     /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>>>> >      >>>>>>>>    cd /usr/src/kernel
>>>> >      >>>>>>>>    make oldconfig scripts
>>>> >      >>>>>>>>    exit
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> Finally, build your module using a Makefile like this
>>>> >      >>>>>>>>
>>>> >      >>>>>>>>    obj-m := hello-mod.o
>>>> >      >>>>>>>>    all:
>>>> >      >>>>>>>>          make -C $(SDKTARGETSYSROOT)/usr/src/kernel
>>>> >     M=$(shell pwd)
>>>> >      >>>>>>>>
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> HTH,
>>>> >      >>>>>>>> Chris
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
>>>> >      >>>>>>>>> Hello to the YOCTO community,
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> I am using (to build the target for Beagle Bone Black)
>>>> >     the following script:
>>>> >      >>>>>>>>> https://github.com/ZoranStojsavljevic/bbb-yocto
>>>> >      >>>>>>>>>
>>>> >     https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> The latest kernel I am using from the following repo:
>>>> >      >>>>>>>>> https://github.com/jumpnow/meta-bbb
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> Is kernel 5.0.14 .
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> Here is the snippet of the boot traces:
>>>> >      >>>>>>>>> Starting kernel ...
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> [    0.000000] Booting Linux on physical CPU 0x0
>>>> >      >>>>>>>>> [    0.000000] Linux version 5.0.14-jumpnow
>>>> >     (oe-user@oe-host) (gcc
>>>> >      >>>>>>>>> version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
>>>> >      >>>>>>>>> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2
>>>> >     (ARMv7), cr=10c5387d
>>>> >      >>>>>>>>> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache,
>>>> >     VIPT aliasing
>>>> >      >>>>>>>>> instruction cache
>>>> >      >>>>>>>>> [    0.000000] OF: fdt: Machine model: TI AM335x
>>>> >     BeagleBone Black
>>>> >      >>>>>>>>> [    0.000000] Memory policy: Data cache writeback
>>>> >      >>>>>>>>> [    0.000000] cma: Reserved 16 MiB at 0x9f000000
>>>> >      >>>>>>>>> [    0.000000] CPU: All CPU(s) started in SVC mode.
>>>> >      >>>>>>>>> [    0.000000] AM335X ES2.1 (sgx neon)
>>>> >      >>>>>>>>> [    0.000000] random: get_random_bytes called from
>>>> >      >>>>>>>>> start_kernel+0xa4/0x460 with crng_init=0
>>>> >      >>>>>>>>> [    0.000000] Built 1 zonelists, mobility grouping on.
>>>> >     Total pages: 130048
>>>> >      >>>>>>>>> [    0.000000] Kernel command line: console=ttyO0,115200n8
>>>> >      >>>>>>>>> root=/dev/ram0 ip=dhcp
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> According to the documentation, the following:
>>>> >      >>>>>>>>> 2.10.1. Building Out-of-Tree Modules on the Target
>>>> >      >>>>>>>>>
>>>> >     https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> I tried to find /usr/src/kernels/5.0.14.
>>>> >     <http://5.0.14.>.. Directory, since I see
>>>> >      >>>>>>>>> from the build that kernel-dev and kernel-devsrc are
>>>> >     included:
>>>> >      >>>>>>>>> [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
>>>> >      >>>>>>>>> core-image-kernel-dev                                 :1.0-r0
>>>> >      >>>>>>>>> kernel-devsrc                                         :1.0-r0
>>>> >      >>>>>>>>> kernel-selftest                                       :1.0-r0
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> THE PROBLEM: But I could not find ob BBB target
>>>> >     /usr/src/kernels
>>>> >      >>>>>>>>> directory at all!?
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> Two questions here?
>>>> >      >>>>>>>>> [1] Do you have any advice on this problem (what I am
>>>> >     missing here)?
>>>> >      >>>>>>>>> [2] Alternative to [1]: how I can use cross compiler from
>>>> >      >>>>>>>>> .../build/tmp to build Out-of-Tree Module for the BBB
>>>> >     target on the
>>>> >      >>>>>>>>> host?
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>> Thank you,
>>>> >      >>>>>>>>> Zoran
>>>> >      >>>>>>>>> _______
>>>> >      >>>>>>>>>
>>>> >      >>>>>>>>
>>>> >      >>>>>>>>
>>>> >      >>>>>>>> --
>>>> >      >>>>>>>> Chris Simmonds, trainer and consultant at 2net
>>>> >      >>>>>>>> http://www.2net.co.uk
>>>> >      >>>>>>>> Author of "Mastering Embedded Linux Programming"
>>>> >      >>>>>>
>>>> >      >>>>>>
>>>> >      >>>>>>
>>>> >      >>>>>> --
>>>> >      >>>>>> - Thou shalt not follow the NULL pointer, for chaos and
>>>> >     madness await thee at its end
>>>> >      >>>>>> - "Use the force Harry" - Gandalf, Star Trek II
>>>> >      >>>>>>
>>>> >      >>>>
>>>> >      >>>>
>>>> >      >>>> --
>>>> >      >>>> - Thou shalt not follow the NULL pointer, for chaos and
>>>> >     madness await thee at its end
>>>> >      >>>> - "Use the force Harry" - Gandalf, Star Trek II
>>>> >      >>>>
>>>> >      >>
>>>> >      >>
>>>> >      >>
>>>> >      >> --
>>>> >      >> - Thou shalt not follow the NULL pointer, for chaos and madness
>>>> >     await thee at its end
>>>> >      >> - "Use the force Harry" - Gandalf, Star Trek II
>>>> >      >>
>>>> >
>>
>>
>>
>> --
>> - Thou shalt not follow the NULL pointer, for chaos and madness await thee at its end
>> - "Use the force Harry" - Gandalf, Star Trek II
>>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

