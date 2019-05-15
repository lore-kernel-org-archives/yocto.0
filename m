Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DF75E00CB3; Wed, 15 May 2019 13:09:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0477E00CB3
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 13:09:45 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id c15so851496qkl.2
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 13:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=OfIt7AFcICNh/W70L0keapLikrUwBTOOBEvIwvzKZWg=;
	b=mL/OUciMBotLq1IQVi44u0q6WwkmYRhfz7eFqWw9TP+Joi3Io3QJgHq3+0g9g7IsHK
	v6gnAuxrN0br2IzIctNyiPpFr4biVYywQyMZYflq0LiP0/9U3PyPp45yC31C4J6xTzUX
	fDGtOUPrznZV9B3nbximBrhD71Q+FQuliZStZe+3+rWOxt7+wrXfRfYysdrJp2p88NsJ
	oRyOuCoo/Cn2/fuxbKsK0cFqmt9E1v+lb++av3QZb3xSt/2QBYmIkMxKFRUETjiKz4Kn
	i7oNe67QMaT7FebpjftF4eYqa8syVgcKsoLuv2x6N3eY4zk6MpsmfONjPA0zRovL7lW0
	KdJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=OfIt7AFcICNh/W70L0keapLikrUwBTOOBEvIwvzKZWg=;
	b=hpN+DIy0GJxzky12F5UNrgpFpIHN0Rd9QlrNRQNns4h68qIr6CTAglOfsna/FjpamR
	h90tapTv09xGhwkxdtnlDXdOpAfNVA7yE32Yi78Wg584gjTOazeHep2S90dzPofDtGSl
	vuJznfKngfaXXRjrPiEaD5wj7a0qFIBgRcdkqgSjod8mdIxWcsbsoXstOgV/PCOsi7R/
	u0RfffyZBoQ3BqjKMA3OqIgOhwTsF1Z9LBgIEWaSTghhBzXUxGxBUdbgowqM9tNqfkep
	/JJPkBpbnB8o+KT8N9/oWq+nf+YdmBVEshPhmEqPuj/j1rGSGPS+HBNTs1JW7qpTPjqQ
	cf3Q==
X-Gm-Message-State: APjAAAWS/dSFZEZF2xW8NDSZEWPhN/oAAS3VHaUrJdRDM9RCrHqBn/qp
	/CtZJd/CyGeupA5cRMKXMlJD7xy2ZYfcQZ0/N+w=
X-Google-Smtp-Source: APXvYqxBVW6wWrnfyEompS2NWta/jwVBVYjAQDq2Rx2b+OYWtVkWfq91tpFZ339IxkgIhsU5mdOJx71MwcwttZBcbUY=
X-Received: by 2002:a37:790:: with SMTP id 138mr15175287qkh.267.1557950985023; 
	Wed, 15 May 2019 13:09:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
	<903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
	<CAGAf8LyRa0AXf-097GAoJa=jUY3pK8fWxCaDXGReu+GqVJOi4A@mail.gmail.com>
	<CADkTA4MQc=OYaTqTwoGv0mzLcQ3a6R911_UjCuCpRCootgtiwA@mail.gmail.com>
	<CAGAf8LwwfKq4kXE5=bf_1+Aa8aqOG+8NrL31Mii2TfLhXyLXKA@mail.gmail.com>
	<CADkTA4OYJs71BPbeM3+gz1+heAQw4L5zJ4U77emrywG5bzz-HQ@mail.gmail.com>
In-Reply-To: <CADkTA4OYJs71BPbeM3+gz1+heAQw4L5zJ4U77emrywG5bzz-HQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 15 May 2019 22:09:33 +0200
Message-ID: <CAGAf8Lxcs7sigNHZxrOj1HUfn0x12=4o3bh85Ku-E=w=1iGGFg@mail.gmail.com>
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
X-List-Received-Date: Wed, 15 May 2019 20:09:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> The core-image-kernel-dev image is how I do all my on target
> testing when I introduce a new reference kernel for a release.

Maybe you are correct. Maybe I should use/add in my local.conf the followin=
g:

KERNEL_DEV_TOOLS ?=3D "packagegroup-core-tools-profile
packagegroup-core-buildessential kernel-devsrc"
KERNEL_DEV_MODULE ?=3D "kernel-modules"
CORE_IMAGE_EXTRA_INSTALL +=3D "${KERNEL_DEV_MODULE} \
                             ${KERNEL_DEV_TOOLS} \
                             systemtap \
                            "
I need to try these... Maybe this addendum will solve the $1 mio USD proble=
m?!

> And IIRC the autobuilders are using a sato based image (Richard
> could confirm more easily that I could what image type the
> autobuilders are using for hello-world on target module tests).

I am just advertising something more simple. To have mandatory
/lib/modules/`uname -r` directory. And introduce few more packages, as
Fedora distro, for example, has: kernel-headers (assuming YOCTO
rootfs, the following will be installed: /usr/src/kernel/`uname
-r`/<header file directory structures>. This also makes addition of
/lib/modules/`uname -r`/build file (which is soft link to
usr/src/kernel/`uname -r`).

Or kernel-devel package. Then, the whole current kernel source code
will be introduced, and also support for it.

SDK building with such a support is good/cool. But sometimes, before
introducing SDK, some tests should be done on target. NO need to
optionally include built-in layer hello-world driver example. Since I
(or you name the person) have own test drivers, which will be imported
out of tree, externally, to the target test bed!

Just thinking loud...

Zoran
_______

On Wed, May 15, 2019 at 4:25 PM Bruce Ashfield <bruce.ashfield@gmail.com> w=
rote:
>
>
>
> On Wed, May 15, 2019 at 3:44 AM Zoran Stojsavljevic <zoran.stojsavljevic@=
gmail.com> wrote:
>>
>> > That's correct. That command only adds the kernel source and
>> > build infrastructure to the SDK, not to your target image. You'd still
>> > need to arrange to have the kernel-devsrc package installed on the
>> > target image if you want it on the board's rootfs. How you arrange
>> > to have the package installed to the image varies with the image
>> > (since they all don't have the same image install variables, etc).
>>
>> And here is a $1,000,000 USD question? How to do it on Poky (as
>> example of what you have stated in RED)? ;-)
>>
>> In other words: how to arrange it on Poky (as a Referent example)?
>
>
> The core-image-kernel-dev image is how I do all my on target testing when=
 I introduce a new reference kernel for a release. And IIRC the autobuilder=
s are using a sato based image (Richard could confirm more easily that I co=
uld what image type the autobuilders are using for hello-world on target mo=
dule tests).
>
> Bruce
>
>
>>
>>
>> Thank you,
>> Zoran
>> _______
>>
>>
>> On Wed, May 15, 2019 at 7:41 AM Bruce Ashfield <bruce.ashfield@gmail.com=
> wrote:
>>>
>>>
>>>
>>> On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic <zoran.stojsavljevi=
c@gmail.com> wrote:
>>>>
>>>> Hello Chris, Bruce,
>>>>
>>>> I have some additional data to share with you both, since I have tried
>>>> something. And here is my take on the things!
>>>>
>>>> > 1. Build using a bb recipe.
>>>> > Take a look at meta-skeleton/recipes-kernel/hello-mod for an example=
.
>>>> > You just need to add meta-skeleton to your bblayers.conf and then
>>>> >  bitbake hello-mod
>>>>
>>>> I looked into this example, and, yes, it is classic kernel module
>>>> definition out of the tree. With some outdated data, all cool, the
>>>> YOCTO designer should take care himself to fix these data, if using
>>>> this stuff.
>>>>
>>>> But this is NOT mandatory, since I can add out of the tree module NOT
>>>> actually using built-in module. I just use .../tmp/deploy/images/bbb/*
>>>> generated stuff, since I have automated scripts which are bringing all
>>>> these on my BBB target. Then I tftp my source code module to the
>>>> target.
>>>>
>>>> > 2. Build from the SDK:
>>>> > First, add the kernel source to the SDK by adding this to conf/local=
.conf
>>>> >  TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"
>>>>
>>>> YES, this is THE command which should generate
>>>> /usr/src/kernel(s)/`uname -r` or similar... But adding it to
>>>> local.conf and after deleting kernel, then regenerating bitbake -k
>>>> core-image-minimal does not bring this path into the rootfs image!?
>>>
>>>
>>> That's correct. That command only adds the kernel source and build infr=
astructure to the SDK, not to your target image. You'd still need to arrang=
e to have the kernel-devsrc package installed on the target image if you wa=
nt it on the board's rootfs. How you arrange to have the package installed =
to the image varies with the image (since they all don't have the same imag=
e install variables, etc).
>>>
>>>
>>>>
>>>>
>>>> I did it actually using meta-bbb, and using poky referent distro as
>>>> two additional layers to the more complex bbb image!
>>>> https://github.com/jumpnow/meta-bbb.git
>>>>
>>>> The (KAS - you can figure out out of it local.conf) script I am using
>>>> to build such a BBB image is here:
>>>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releas=
es/bbb-warrior/kas-bbb-warrior.yml
>>>>
>>>> I did not try it with BBB reference poky only! Maybe I should try it
>>>> as only referent poky? What do you think?
>>>>
>>>> Does in this case is SDK build really mandatory??? Should NOT be!
>>>>
>>>
>>> You only do the SDK steps if you want to support building out of tree m=
odules in an SDK install. So it is not mandatory for on target module build=
s.
>>>
>>> Bruce
>>>
>>>
>>>>
>>>> > Once the SDK is installed, generate the kernel headers:
>>>> >  sudo -i
>>>> >  . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnue=
abi
>>>> >  cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>>>> >  cd /usr/src/kernel
>>>> >  make oldconfig scripts
>>>> >  exit
>>>>
>>>> This is in nutshell the same what I did (a bit different) for Embedded
>>>> Debian. This is already on the target BBB, NOT while building YOCTO
>>>> BBB image!
>>>>
>>>> > Finally, build your module using a Makefile like this
>>>> >  obj-m :=3D hello-mod.o
>>>> >  all:
>>>> >        make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=3D$(shell pwd)
>>>>
>>>> As said before: bringing my own module into the target BBB (I have my
>>>> own examples, and I build them on the target with the almost the same
>>>> Makefiles)
>>>>
>>>> Zoran
>>>> _______
>>>>
>>>> On Sun, May 12, 2019 at 3:15 PM Chris Simmonds <chris@2net.co.uk> wrot=
e:
>>>> >
>>>> > Hi Zoran,
>>>> >
>>>> > There are two ways to do this
>>>> >
>>>> > 1. Build using a bb recipe.
>>>> > Take a look at meta-skeleton/recipes-kernel/hello-mod for an example=
.
>>>> > You just need to add meta-skeleton to your bblaysers.conf and then
>>>> >   bitbake hello-mod
>>>> >
>>>> >
>>>> > 2. Build from the SDK:
>>>> > First, add the kernel source to the SDK by adding this to conf/local=
/conf
>>>> >   TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"
>>>> >
>>>> > Then build the SDK
>>>> >   bitbake -c populate_sdk [your image recipe]
>>>> >
>>>> > Once the SDK is installed, generate the kernel headers:
>>>> >   sudo -i
>>>> >   . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnu=
eabi
>>>> >   cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>>>> >   cd /usr/src/kernel
>>>> >   make oldconfig scripts
>>>> >   exit
>>>> >
>>>> > Finally, build your module using a Makefile like this
>>>> >
>>>> >   obj-m :=3D hello-mod.o
>>>> >   all:
>>>> >         make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=3D$(shell pwd)
>>>> >
>>>> >
>>>> > HTH,
>>>> > Chris
>>>> >
>>>> > On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
>>>> > > Hello to the YOCTO community,
>>>> > >
>>>> > > I am using (to build the target for Beagle Bone Black) the followi=
ng script:
>>>> > > https://github.com/ZoranStojsavljevic/bbb-yocto
>>>> > > https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yo=
cto.sh
>>>> > >
>>>> > > The latest kernel I am using from the following repo:
>>>> > > https://github.com/jumpnow/meta-bbb
>>>> > >
>>>> > > Is kernel 5.0.14 .
>>>> > >
>>>> > > Here is the snippet of the boot traces:
>>>> > > Starting kernel ...
>>>> > >
>>>> > > [    0.000000] Booting Linux on physical CPU 0x0
>>>> > > [    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) (gcc
>>>> > > version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
>>>> > > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),=
 cr=3D10c5387d
>>>> > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT alias=
ing
>>>> > > instruction cache
>>>> > > [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
>>>> > > [    0.000000] Memory policy: Data cache writeback
>>>> > > [    0.000000] cma: Reserved 16 MiB at 0x9f000000
>>>> > > [    0.000000] CPU: All CPU(s) started in SVC mode.
>>>> > > [    0.000000] AM335X ES2.1 (sgx neon)
>>>> > > [    0.000000] random: get_random_bytes called from
>>>> > > start_kernel+0xa4/0x460 with crng_init=3D0
>>>> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pag=
es: 130048
>>>> > > [    0.000000] Kernel command line: console=3DttyO0,115200n8
>>>> > > root=3D/dev/ram0 ip=3Ddhcp
>>>> > >
>>>> > > According to the documentation, the following:
>>>> > > 2.10.1. Building Out-of-Tree Modules on the Target
>>>> > > https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.htm=
l
>>>> > >
>>>> > > I tried to find /usr/src/kernels/5.0.14... Directory, since I see
>>>> > > from the build that kernel-dev and kernel-devsrc are included:
>>>> > > [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
>>>> > > core-image-kernel-dev                                 :1.0-r0
>>>> > > kernel-devsrc                                         :1.0-r0
>>>> > > kernel-selftest                                       :1.0-r0
>>>> > >
>>>> > > THE PROBLEM: But I could not find ob BBB target /usr/src/kernels
>>>> > > directory at all!?
>>>> > >
>>>> > > Two questions here?
>>>> > > [1] Do you have any advice on this problem (what I am missing here=
)?
>>>> > > [2] Alternative to [1]: how I can use cross compiler from
>>>> > > .../build/tmp to build Out-of-Tree Module for the BBB target on th=
e
>>>> > > host?
>>>> > >
>>>> > > Thank you,
>>>> > > Zoran
>>>> > > _______
>>>> > >
>>>> >
>>>> >
>>>> > --
>>>> > Chris Simmonds, trainer and consultant at 2net
>>>> > http://www.2net.co.uk
>>>> > Author of "Mastering Embedded Linux Programming"
>>>
>>>
>>>
>>> --
>>> - Thou shalt not follow the NULL pointer, for chaos and madness await t=
hee at its end
>>> - "Use the force Harry" - Gandalf, Star Trek II
>>>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await the=
e at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

