Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 480BFE00D50; Thu, 23 May 2019 03:32:44 -0700 (PDT)
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
	*      [209.85.160.174 listed in list.dnswl.org]
	*  1.4 US_DOLLARS_3 BODY: Mentions millions of $ ($NN,NNN,NNN.NN)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED5F5E00D3E
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 03:32:42 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id z19so3199443qtz.13
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 03:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lPYA+4lQItbe3HcJP/jAFo1tEoEDzl00HqT8FRpHFAI=;
	b=r2tW2G0B0KgWShbRUhmWQ/VaxUqTaHeChtWLPZYg5W12/1pf5pfrEbxim/ja54DozZ
	kBvcuN/tTGB1IDUkSamCrCSslRYSAsArK4i5ZHtOSUTigRHB5d+sec57R95nsvna/UKY
	hLiPnoQypIHSmIA15b0/Ewr379fvwurLly740tazx0r1ZBMnAK8+EKYSD7BlgB4s5cQg
	zK9cZosEGoBtIpYcI9pG884L3p2MLSFTr3iymXW0jdhiIwxeAwJFe1xEv34bAhytN0ru
	PtjAFLpoF3pKv3evZdgDfMOKLXz7wyMbqIDwr9xbe+jzhOeA5u7GKptjaIaOu1mwdGu9
	jGlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lPYA+4lQItbe3HcJP/jAFo1tEoEDzl00HqT8FRpHFAI=;
	b=RwyLRfZBWFoQ+VV7twmV7fLk6ZL33uDWqqGsEc0epsxULhvfxQ/3V25S4F58wFDgQK
	7zdnJBdbFGZjNs2VKk03wbTArHKXiCHF6/ESSCAYzuqmaTLGKHlW/YYc/q2Ud4VDXcGT
	sDbbMUGSznvcWKd9sU+f0a8LgnsNmifB2n+eD/un03gzU+W7bgxLVpw7pU6222QU4dyF
	u1WQxgfL3SS0d0G5YM6o2zUUylZbj4ulRtS5lBmAUT/8Dr9ECYtWGGAYrF4+03gwy75I
	Ysil8XX2v+y6UTqpH4tsEAKI9ff4FKKNHu9O2ky/ykNSIcRqiYdzv8AUb6t9gkc2VikI
	vZEw==
X-Gm-Message-State: APjAAAXTP3iJEjMwWCZowLRud8UJ50HVZXUEZNW+iQLzxMdwtxrX16m+
	5twQc5KLtpoJ1vRJFxa8PMKjCYi5AqXOFUcI+dM=
X-Google-Smtp-Source: APXvYqxBn3AHG1m42pHUxrwF4bkwz3+5M7FSz7X8+AL9YHzqNkFsI0jiOJHVIVu8dOAZNgDp6v99RsOKEBjtYfiHL8I=
X-Received: by 2002:ac8:fa9:: with SMTP id b38mr77323589qtk.22.1558607562123; 
	Thu, 23 May 2019 03:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
	<903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
	<CAGAf8LyRa0AXf-097GAoJa=jUY3pK8fWxCaDXGReu+GqVJOi4A@mail.gmail.com>
	<CADkTA4MQc=OYaTqTwoGv0mzLcQ3a6R911_UjCuCpRCootgtiwA@mail.gmail.com>
	<CAGAf8LwwfKq4kXE5=bf_1+Aa8aqOG+8NrL31Mii2TfLhXyLXKA@mail.gmail.com>
	<CADkTA4OYJs71BPbeM3+gz1+heAQw4L5zJ4U77emrywG5bzz-HQ@mail.gmail.com>
	<CAGAf8Lxcs7sigNHZxrOj1HUfn0x12=4o3bh85Ku-E=w=1iGGFg@mail.gmail.com>
	<CADkTA4NXu3qt+88TA_mjaDDaZooadX6_H=Z_mMsfi7Op0gFB6Q@mail.gmail.com>
In-Reply-To: <CADkTA4NXu3qt+88TA_mjaDDaZooadX6_H=Z_mMsfi7Op0gFB6Q@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 23 May 2019 12:32:29 +0200
Message-ID: <CAGAf8LwUfCGHkKjE-VWpZjvh9Q9A1ZUEDkGbZ-+syQpnyMWf-g@mail.gmail.com>
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
X-List-Received-Date: Thu, 23 May 2019 10:32:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After some tests (and I had other problems to take care of, as well),
here is the following:

> These have all been discussed off an on over the past 5 years.
> I can't get at bugzilla right now, but all the details are logged in case=
s.
> A survey of all the distros, their kernel package, etc, were all looked a=
t.
> We had to balance the traditional packaging with some new concepts
> and landed with what we have now.

I tried several tests. This is my final conclusion (two cases):
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/kernel-d=
evelopment.txt

The kernel issue is described here: there is need to have the YOCTO
minimum configuration with the kernel setup:
[1] The entire kernel source code in:
/usr/src/kernel/`uname-r`/<kernel source code>
[2] The header files in: /usr/src/kernel/`uname-r`/<header file
directory structures>

Point [1] is achieved with the following local.config file:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/local-de=
vsrc.conf

Namely, with the following snippets in the local.conf:
TOOLCHAIN_TARGET_TASK_append =3D " packagegroup-core-tools-profile
packagegroup-core-buildessential kernel-devsrc"
KERNEL_DEV_TOOLS =3D "packagegroup-core-tools-profile
packagegroup-core-buildessential kernel-devsrc"
KERNEL_DEV_MODULE =3D "kernel-modules"
CORE_IMAGE_EXTRA_INSTALL +=3D "${KERNEL_DEV_MODULE} \
${KERNEL_DEV_TOOLS} \
systemtap \
"

Problem with this approach is that such a kernel makes the rootfs too
big and impractical:
-rw-r--r--. 2 user vboxusers 101499952 May 17 14:32
core-image-minimal-beaglebone.rootfs.tar.xz

The main issue is point [2]: how to achieve it?
The suggestion is to introduce the new package in YOCTO kernel,
called: kernel-headers
The OBVIOUS benefit is that it will serve to the purpose of building
modules out of the tree on the target with
minimal mpact to rootfs!

Thank you,
Zoran Stojsavljevic
_______

On Thu, May 16, 2019 at 12:04 AM Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
>
>
>
> On Wed, May 15, 2019 at 4:09 PM Zoran Stojsavljevic <zoran.stojsavljevic@=
gmail.com> wrote:
>>
>> > The core-image-kernel-dev image is how I do all my on target
>> > testing when I introduce a new reference kernel for a release.
>>
>> Maybe you are correct. Maybe I should use/add in my local.conf the follo=
wing:
>>
>> KERNEL_DEV_TOOLS ?=3D "packagegroup-core-tools-profile
>> packagegroup-core-buildessential kernel-devsrc"
>> KERNEL_DEV_MODULE ?=3D "kernel-modules"
>> CORE_IMAGE_EXTRA_INSTALL +=3D "${KERNEL_DEV_MODULE} \
>>                              ${KERNEL_DEV_TOOLS} \
>>                              systemtap \
>>                             "
>> I need to try these... Maybe this addendum will solve the $1 mio USD pro=
blem?!
>>
>> > And IIRC the autobuilders are using a sato based image (Richard
>> > could confirm more easily that I could what image type the
>> > autobuilders are using for hello-world on target module tests).
>>
>> I am just advertising something more simple. To have mandatory
>> /lib/modules/`uname -r` directory. And introduce few more packages, as
>> Fedora distro, for example, has: kernel-headers (assuming YOCTO
>> rootfs, the following will be installed: /usr/src/kernel/`uname
>> -r`/<header file directory structures>. This also makes addition of
>> /lib/modules/`uname -r`/build file (which is soft link to
>> usr/src/kernel/`uname -r`).
>
>
> These have all been discussed off an on over the past 5 years. I can't ge=
t at bugzilla right now, but all the details are logged in cases. A survey =
of all the distros, their kernel package, etc, were all looked at. We had t=
o balance the traditional packaging with some new concepts and landed with =
what we have now.
>
>
>>
>> Or kernel-devel package. Then, the whole current kernel source code
>> will be introduced, and also support for it.
>
>
> There's a case for this one as well, I'll probably have it done for the f=
all release. But our devsrc used to pretty much be the full source it has n=
ow been pruned down to something more manageable.  There are definitely som=
e cases for having the full source on the target again, and it will be a se=
parate package, just not the minimal one to build out of tree modules, etc.
>
>
>
>>
>>
>> SDK building with such a support is good/cool. But sometimes, before
>> introducing SDK, some tests should be done on target. NO need to
>> optionally include built-in layer hello-world driver example. Since I
>> (or you name the person) have own test drivers, which will be imported
>> out of tree, externally, to the target test bed!
>>
>
> I never use the SDK myself, so you are not alone in not going to it first=
. Hopefully I'll get some new patches out in the coming month before summer=
 holidays really kick in.
>
> Bruce
>
>
>>
>> Just thinking loud...
>>
>> Zoran
>> _______
>>
>> On Wed, May 15, 2019 at 4:25 PM Bruce Ashfield <bruce.ashfield@gmail.com=
> wrote:
>> >
>> >
>> >
>> > On Wed, May 15, 2019 at 3:44 AM Zoran Stojsavljevic <zoran.stojsavljev=
ic@gmail.com> wrote:
>> >>
>> >> > That's correct. That command only adds the kernel source and
>> >> > build infrastructure to the SDK, not to your target image. You'd st=
ill
>> >> > need to arrange to have the kernel-devsrc package installed on the
>> >> > target image if you want it on the board's rootfs. How you arrange
>> >> > to have the package installed to the image varies with the image
>> >> > (since they all don't have the same image install variables, etc).
>> >>
>> >> And here is a $1,000,000 USD question? How to do it on Poky (as
>> >> example of what you have stated in RED)? ;-)
>> >>
>> >> In other words: how to arrange it on Poky (as a Referent example)?
>> >
>> >
>> > The core-image-kernel-dev image is how I do all my on target testing w=
hen I introduce a new reference kernel for a release. And IIRC the autobuil=
ders are using a sato based image (Richard could confirm more easily that I=
 could what image type the autobuilders are using for hello-world on target=
 module tests).
>> >
>> > Bruce
>> >
>> >
>> >>
>> >>
>> >> Thank you,
>> >> Zoran
>> >> _______
>> >>
>> >>
>> >> On Wed, May 15, 2019 at 7:41 AM Bruce Ashfield <bruce.ashfield@gmail.=
com> wrote:
>> >>>
>> >>>
>> >>>
>> >>> On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic <zoran.stojsavlj=
evic@gmail.com> wrote:
>> >>>>
>> >>>> Hello Chris, Bruce,
>> >>>>
>> >>>> I have some additional data to share with you both, since I have tr=
ied
>> >>>> something. And here is my take on the things!
>> >>>>
>> >>>> > 1. Build using a bb recipe.
>> >>>> > Take a look at meta-skeleton/recipes-kernel/hello-mod for an exam=
ple.
>> >>>> > You just need to add meta-skeleton to your bblayers.conf and then
>> >>>> >  bitbake hello-mod
>> >>>>
>> >>>> I looked into this example, and, yes, it is classic kernel module
>> >>>> definition out of the tree. With some outdated data, all cool, the
>> >>>> YOCTO designer should take care himself to fix these data, if using
>> >>>> this stuff.
>> >>>>
>> >>>> But this is NOT mandatory, since I can add out of the tree module N=
OT
>> >>>> actually using built-in module. I just use .../tmp/deploy/images/bb=
b/*
>> >>>> generated stuff, since I have automated scripts which are bringing =
all
>> >>>> these on my BBB target. Then I tftp my source code module to the
>> >>>> target.
>> >>>>
>> >>>> > 2. Build from the SDK:
>> >>>> > First, add the kernel source to the SDK by adding this to conf/lo=
cal.conf
>> >>>> >  TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"
>> >>>>
>> >>>> YES, this is THE command which should generate
>> >>>> /usr/src/kernel(s)/`uname -r` or similar... But adding it to
>> >>>> local.conf and after deleting kernel, then regenerating bitbake -k
>> >>>> core-image-minimal does not bring this path into the rootfs image!?
>> >>>
>> >>>
>> >>> That's correct. That command only adds the kernel source and build i=
nfrastructure to the SDK, not to your target image. You'd still need to arr=
ange to have the kernel-devsrc package installed on the target image if you=
 want it on the board's rootfs. How you arrange to have the package install=
ed to the image varies with the image (since they all don't have the same i=
mage install variables, etc).
>> >>>
>> >>>
>> >>>>
>> >>>>
>> >>>> I did it actually using meta-bbb, and using poky referent distro as
>> >>>> two additional layers to the more complex bbb image!
>> >>>> https://github.com/jumpnow/meta-bbb.git
>> >>>>
>> >>>> The (KAS - you can figure out out of it local.conf) script I am usi=
ng
>> >>>> to build such a BBB image is here:
>> >>>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-rel=
eases/bbb-warrior/kas-bbb-warrior.yml
>> >>>>
>> >>>> I did not try it with BBB reference poky only! Maybe I should try i=
t
>> >>>> as only referent poky? What do you think?
>> >>>>
>> >>>> Does in this case is SDK build really mandatory??? Should NOT be!
>> >>>>
>> >>>
>> >>> You only do the SDK steps if you want to support building out of tre=
e modules in an SDK install. So it is not mandatory for on target module bu=
ilds.
>> >>>
>> >>> Bruce
>> >>>
>> >>>
>> >>>>
>> >>>> > Once the SDK is installed, generate the kernel headers:
>> >>>> >  sudo -i
>> >>>> >  . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-g=
nueabi
>> >>>> >  cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>> >>>> >  cd /usr/src/kernel
>> >>>> >  make oldconfig scripts
>> >>>> >  exit
>> >>>>
>> >>>> This is in nutshell the same what I did (a bit different) for Embed=
ded
>> >>>> Debian. This is already on the target BBB, NOT while building YOCTO
>> >>>> BBB image!
>> >>>>
>> >>>> > Finally, build your module using a Makefile like this
>> >>>> >  obj-m :=3D hello-mod.o
>> >>>> >  all:
>> >>>> >        make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=3D$(shell pwd=
)
>> >>>>
>> >>>> As said before: bringing my own module into the target BBB (I have =
my
>> >>>> own examples, and I build them on the target with the almost the sa=
me
>> >>>> Makefiles)
>> >>>>
>> >>>> Zoran
>> >>>> _______
>> >>>>
>> >>>> On Sun, May 12, 2019 at 3:15 PM Chris Simmonds <chris@2net.co.uk> w=
rote:
>> >>>> >
>> >>>> > Hi Zoran,
>> >>>> >
>> >>>> > There are two ways to do this
>> >>>> >
>> >>>> > 1. Build using a bb recipe.
>> >>>> > Take a look at meta-skeleton/recipes-kernel/hello-mod for an exam=
ple.
>> >>>> > You just need to add meta-skeleton to your bblaysers.conf and the=
n
>> >>>> >   bitbake hello-mod
>> >>>> >
>> >>>> >
>> >>>> > 2. Build from the SDK:
>> >>>> > First, add the kernel source to the SDK by adding this to conf/lo=
cal/conf
>> >>>> >   TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"
>> >>>> >
>> >>>> > Then build the SDK
>> >>>> >   bitbake -c populate_sdk [your image recipe]
>> >>>> >
>> >>>> > Once the SDK is installed, generate the kernel headers:
>> >>>> >   sudo -i
>> >>>> >   . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-=
gnueabi
>> >>>> >   cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>> >>>> >   cd /usr/src/kernel
>> >>>> >   make oldconfig scripts
>> >>>> >   exit
>> >>>> >
>> >>>> > Finally, build your module using a Makefile like this
>> >>>> >
>> >>>> >   obj-m :=3D hello-mod.o
>> >>>> >   all:
>> >>>> >         make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=3D$(shell pw=
d)
>> >>>> >
>> >>>> >
>> >>>> > HTH,
>> >>>> > Chris
>> >>>> >
>> >>>> > On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
>> >>>> > > Hello to the YOCTO community,
>> >>>> > >
>> >>>> > > I am using (to build the target for Beagle Bone Black) the foll=
owing script:
>> >>>> > > https://github.com/ZoranStojsavljevic/bbb-yocto
>> >>>> > > https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb=
-yocto.sh
>> >>>> > >
>> >>>> > > The latest kernel I am using from the following repo:
>> >>>> > > https://github.com/jumpnow/meta-bbb
>> >>>> > >
>> >>>> > > Is kernel 5.0.14 .
>> >>>> > >
>> >>>> > > Here is the snippet of the boot traces:
>> >>>> > > Starting kernel ...
>> >>>> > >
>> >>>> > > [    0.000000] Booting Linux on physical CPU 0x0
>> >>>> > > [    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) (=
gcc
>> >>>> > > version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
>> >>>> > > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv=
7), cr=3D10c5387d
>> >>>> > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT al=
iasing
>> >>>> > > instruction cache
>> >>>> > > [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Bla=
ck
>> >>>> > > [    0.000000] Memory policy: Data cache writeback
>> >>>> > > [    0.000000] cma: Reserved 16 MiB at 0x9f000000
>> >>>> > > [    0.000000] CPU: All CPU(s) started in SVC mode.
>> >>>> > > [    0.000000] AM335X ES2.1 (sgx neon)
>> >>>> > > [    0.000000] random: get_random_bytes called from
>> >>>> > > start_kernel+0xa4/0x460 with crng_init=3D0
>> >>>> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total =
pages: 130048
>> >>>> > > [    0.000000] Kernel command line: console=3DttyO0,115200n8
>> >>>> > > root=3D/dev/ram0 ip=3Ddhcp
>> >>>> > >
>> >>>> > > According to the documentation, the following:
>> >>>> > > 2.10.1. Building Out-of-Tree Modules on the Target
>> >>>> > > https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.=
html
>> >>>> > >
>> >>>> > > I tried to find /usr/src/kernels/5.0.14... Directory, since I s=
ee
>> >>>> > > from the build that kernel-dev and kernel-devsrc are included:
>> >>>> > > [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
>> >>>> > > core-image-kernel-dev                                 :1.0-r0
>> >>>> > > kernel-devsrc                                         :1.0-r0
>> >>>> > > kernel-selftest                                       :1.0-r0
>> >>>> > >
>> >>>> > > THE PROBLEM: But I could not find ob BBB target /usr/src/kernel=
s
>> >>>> > > directory at all!?
>> >>>> > >
>> >>>> > > Two questions here?
>> >>>> > > [1] Do you have any advice on this problem (what I am missing h=
ere)?
>> >>>> > > [2] Alternative to [1]: how I can use cross compiler from
>> >>>> > > .../build/tmp to build Out-of-Tree Module for the BBB target on=
 the
>> >>>> > > host?
>> >>>> > >
>> >>>> > > Thank you,
>> >>>> > > Zoran
>> >>>> > > _______
>> >>>> > >
>> >>>> >
>> >>>> >
>> >>>> > --
>> >>>> > Chris Simmonds, trainer and consultant at 2net
>> >>>> > http://www.2net.co.uk
>> >>>> > Author of "Mastering Embedded Linux Programming"
>> >>>
>> >>>
>> >>>
>> >>> --
>> >>> - Thou shalt not follow the NULL pointer, for chaos and madness awai=
t thee at its end
>> >>> - "Use the force Harry" - Gandalf, Star Trek II
>> >>>
>> >
>> >
>> > --
>> > - Thou shalt not follow the NULL pointer, for chaos and madness await =
thee at its end
>> > - "Use the force Harry" - Gandalf, Star Trek II
>> >
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await the=
e at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

