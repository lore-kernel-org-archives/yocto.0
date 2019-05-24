Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F12D3E00A96; Fri, 24 May 2019 07:11:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE, US_DOLLARS_3 autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	*  1.4 US_DOLLARS_3 BODY: Mentions millions of $ ($NN,NNN,NNN.NN)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 584C2E00A5C
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 07:11:14 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id z6so7703479qkl.10
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 07:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=hCH8L7JLAEnGSnRaXCL1xt72DnbESmYi8z9JfHZQle8=;
	b=GBgwcJMCdAfbLZTgFOhzzG0BdLZf/OVNi9d0TmWzlOIEf35lzaF8QVRKqzoCG45P+4
	u+kk0NnIzMkYjwTWmywzZSKJPQfhXk9MA1mgfyuBSwZ/tmkmeeO965ObY2Pu0p3M48wk
	JKhkax8peBOJMKi9r01pkvFj7OfHwrT6iNTtK97rh3naPD1Zpprl6nR1rzvHi8A7mDwY
	LGtoDFZV9DNIg6bG2nXo9vt6i9i4uBF3L4+kEVHwFc3IamGERtECq4BZ374TNPExLMkO
	RiWw4XbfirUeFwdZRmUxmPs+bo+/mbBK6nQrMltIOZkfDR5Ok6CIKKM9DcnLYpU+MTK0
	4iSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hCH8L7JLAEnGSnRaXCL1xt72DnbESmYi8z9JfHZQle8=;
	b=fHFKd6S/NZbvXEWAtQSGoXhVx0D5SXdgd41X+RGXCkwXxHgUq/Cb5j1l4Nd9kRtuas
	mdg5UZeDGcJqxyIemezODlI5PXU91aarbuCI3y9rNVLG5RBqAi2+zklO+pQIOaqDXfVi
	Z2P1BdeZmvwM9d6gp7zsbasd2yRCQADXIovLSZkYFDka41sbgcvK+3vB0/2hOoaBvXiw
	m/fu1cbPDXwtFpZM/06VBRuP3xNzJuiAdz/4qkRu4boG50GJ0HGt3kD1tHuUU3hjJUaq
	CF72azkzoL+cWFocrURD4mjCyruWZFLshH1mraSeH/yW9Zlqy0ESCeiTaEMjviTLmKcp
	oCFg==
X-Gm-Message-State: APjAAAWhOQCzUbyPCqDve447CVhPy0VmGGnRTbbPUtTACx4nZXXZPMEw
	zuVn0zzgNxnmMCdOl877W1SiIaB3gmu7phz2Aaw=
X-Google-Smtp-Source: APXvYqxSoCQwBLe76v/dZrb9mLmR5hYlYmY3m4zre0UYNnpozSlFT6M2EQBs/IX3fKZZTuOOrljy0Dvi9PXvCNGdf6A=
X-Received: by 2002:a37:a541:: with SMTP id o62mr580619qke.90.1558707073463;
	Fri, 24 May 2019 07:11:13 -0700 (PDT)
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
	<CADkTA4PGK5r2MK3T5ruyswMTkZKJAxZHs1MRjxZ6-BuhB=sNHg@mail.gmail.com>
In-Reply-To: <CADkTA4PGK5r2MK3T5ruyswMTkZKJAxZHs1MRjxZ6-BuhB=sNHg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 24 May 2019 16:11:01 +0200
Message-ID: <CAGAf8Ly8NRP4Bh0UzphjVR0SMN1khB7+OE-jBbyhMK9fXnqz9g@mail.gmail.com>
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
X-List-Received-Date: Fri, 24 May 2019 14:11:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I'm going to create two new optional packages for the fall release
> that are simply captured kernel-source and kernel-headers for
> those uses cases where someone really does want the entire
> source tree, or just the headers. The details for that work are in
> bugzilla.

Could you, please, point to me which YOCTO bugzilla this is? I would
like to capture these in the
https://github.com/ZoranStojsavljevic/bbb-yocto/tree/master/Issues,
just to have them as addition/addendum to all this what we have
discussed here?

Thank you,
Zoran

(PS. I'll continue some investigation as well)
_______


On Fri, May 24, 2019 at 2:48 PM Bruce Ashfield <bruce.ashfield@gmail.com> w=
rote:
>
>
>
> On Thu, May 23, 2019 at 9:00 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On 5/23/19 3:32 AM, Zoran Stojsavljevic wrote:
>> > After some tests (and I had other problems to take care of, as well),
>> > here is the following:
>> >
>> >> These have all been discussed off an on over the past 5 years.
>> >> I can't get at bugzilla right now, but all the details are logged in =
cases.
>> >> A survey of all the distros, their kernel package, etc, were all look=
ed at.
>> >> We had to balance the traditional packaging with some new concepts
>> >> and landed with what we have now.
>> >
>> > I tried several tests. This is my final conclusion (two cases):
>> > https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/ker=
nel-development.txt
>> >
>> > The kernel issue is described here: there is need to have the YOCTO
>> > minimum configuration with the kernel setup:
>> > [1] The entire kernel source code in:
>> > /usr/src/kernel/`uname-r`/<kernel source code>
>> > [2] The header files in: /usr/src/kernel/`uname-r`/<header file
>> > directory structures>
>> >
>> > Point [1] is achieved with the following local.config file:
>> > https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/loc=
al-devsrc.conf
>> >
>> > Namely, with the following snippets in the local.conf:
>> > TOOLCHAIN_TARGET_TASK_append =3D " packagegroup-core-tools-profile
>> > packagegroup-core-buildessential kernel-devsrc"
>> > KERNEL_DEV_TOOLS =3D "packagegroup-core-tools-profile
>> > packagegroup-core-buildessential kernel-devsrc"
>> > KERNEL_DEV_MODULE =3D "kernel-modules"
>> > CORE_IMAGE_EXTRA_INSTALL +=3D "${KERNEL_DEV_MODULE} \
>> > ${KERNEL_DEV_TOOLS} \
>> > systemtap \
>> > "
>> >
>> > Problem with this approach is that such a kernel makes the rootfs too
>> > big and impractical:
>> > -rw-r--r--. 2 user vboxusers 101499952 May 17 14:32
>> > core-image-minimal-beaglebone.rootfs.tar.xz
>> >
>> > The main issue is point [2]: how to achieve it?
>> > The suggestion is to introduce the new package in YOCTO kernel,
>> > called: kernel-headers
>> > The OBVIOUS benefit is that it will serve to the purpose of building
>> > modules out of the tree on the target with
>> > minimal mpact to rootfs!
>>
>> I think this is a fair suggestion. Having prebuilt kernel available
>> that contains the configuration and header files used in the build is
>> all that is required for external modules to build in addition to
>> toolchain, so maybe its worth a try to create such a package and then
>> have kernel-source separated out which can be installed on top if one
>> needs
>
>
> That's exactly what the kernel-devsrc package is. It is about 90 Megs (un=
packed) and is the headers + config required to build out of tree modules a=
gainst the kernel.
>
> I'm going to create two new optional packages for the fall release that a=
re simply captured kernel-source and kernel-headers for those uses cases wh=
ere someone really does want the entire source tree, or just the headers. T=
he details for that work are in bugzilla.
>
> Bruce
>
>
>>
>>
>> >
>> > Thank you,
>> > Zoran Stojsavljevic
>> > _______
>> >
>> > On Thu, May 16, 2019 at 12:04 AM Bruce Ashfield
>> > <bruce.ashfield@gmail.com> wrote:
>> >>
>> >>
>> >>
>> >> On Wed, May 15, 2019 at 4:09 PM Zoran Stojsavljevic <zoran.stojsavlje=
vic@gmail.com> wrote:
>> >>>
>> >>>> The core-image-kernel-dev image is how I do all my on target
>> >>>> testing when I introduce a new reference kernel for a release.
>> >>>
>> >>> Maybe you are correct. Maybe I should use/add in my local.conf the f=
ollowing:
>> >>>
>> >>> KERNEL_DEV_TOOLS ?=3D "packagegroup-core-tools-profile
>> >>> packagegroup-core-buildessential kernel-devsrc"
>> >>> KERNEL_DEV_MODULE ?=3D "kernel-modules"
>> >>> CORE_IMAGE_EXTRA_INSTALL +=3D "${KERNEL_DEV_MODULE} \
>> >>>                               ${KERNEL_DEV_TOOLS} \
>> >>>                               systemtap \
>> >>>                              "
>> >>> I need to try these... Maybe this addendum will solve the $1 mio USD=
 problem?!
>> >>>
>> >>>> And IIRC the autobuilders are using a sato based image (Richard
>> >>>> could confirm more easily that I could what image type the
>> >>>> autobuilders are using for hello-world on target module tests).
>> >>>
>> >>> I am just advertising something more simple. To have mandatory
>> >>> /lib/modules/`uname -r` directory. And introduce few more packages, =
as
>> >>> Fedora distro, for example, has: kernel-headers (assuming YOCTO
>> >>> rootfs, the following will be installed: /usr/src/kernel/`uname
>> >>> -r`/<header file directory structures>. This also makes addition of
>> >>> /lib/modules/`uname -r`/build file (which is soft link to
>> >>> usr/src/kernel/`uname -r`).
>> >>
>> >>
>> >> These have all been discussed off an on over the past 5 years. I can'=
t get at bugzilla right now, but all the details are logged in cases. A sur=
vey of all the distros, their kernel package, etc, were all looked at. We h=
ad to balance the traditional packaging with some new concepts and landed w=
ith what we have now.
>> >>
>> >>
>> >>>
>> >>> Or kernel-devel package. Then, the whole current kernel source code
>> >>> will be introduced, and also support for it.
>> >>
>> >>
>> >> There's a case for this one as well, I'll probably have it done for t=
he fall release. But our devsrc used to pretty much be the full source it h=
as now been pruned down to something more manageable.  There are definitely=
 some cases for having the full source on the target again, and it will be =
a separate package, just not the minimal one to build out of tree modules, =
etc.
>> >>
>> >>
>> >>
>> >>>
>> >>>
>> >>> SDK building with such a support is good/cool. But sometimes, before
>> >>> introducing SDK, some tests should be done on target. NO need to
>> >>> optionally include built-in layer hello-world driver example. Since =
I
>> >>> (or you name the person) have own test drivers, which will be import=
ed
>> >>> out of tree, externally, to the target test bed!
>> >>>
>> >>
>> >> I never use the SDK myself, so you are not alone in not going to it f=
irst. Hopefully I'll get some new patches out in the coming month before su=
mmer holidays really kick in.
>> >>
>> >> Bruce
>> >>
>> >>
>> >>>
>> >>> Just thinking loud...
>> >>>
>> >>> Zoran
>> >>> _______
>> >>>
>> >>> On Wed, May 15, 2019 at 4:25 PM Bruce Ashfield <bruce.ashfield@gmail=
.com> wrote:
>> >>>>
>> >>>>
>> >>>>
>> >>>> On Wed, May 15, 2019 at 3:44 AM Zoran Stojsavljevic <zoran.stojsavl=
jevic@gmail.com> wrote:
>> >>>>>
>> >>>>>> That's correct. That command only adds the kernel source and
>> >>>>>> build infrastructure to the SDK, not to your target image. You'd =
still
>> >>>>>> need to arrange to have the kernel-devsrc package installed on th=
e
>> >>>>>> target image if you want it on the board's rootfs. How you arrang=
e
>> >>>>>> to have the package installed to the image varies with the image
>> >>>>>> (since they all don't have the same image install variables, etc)=
.
>> >>>>>
>> >>>>> And here is a $1,000,000 USD question? How to do it on Poky (as
>> >>>>> example of what you have stated in RED)? ;-)
>> >>>>>
>> >>>>> In other words: how to arrange it on Poky (as a Referent example)?
>> >>>>
>> >>>>
>> >>>> The core-image-kernel-dev image is how I do all my on target testin=
g when I introduce a new reference kernel for a release. And IIRC the autob=
uilders are using a sato based image (Richard could confirm more easily tha=
t I could what image type the autobuilders are using for hello-world on tar=
get module tests).
>> >>>>
>> >>>> Bruce
>> >>>>
>> >>>>
>> >>>>>
>> >>>>>
>> >>>>> Thank you,
>> >>>>> Zoran
>> >>>>> _______
>> >>>>>
>> >>>>>
>> >>>>> On Wed, May 15, 2019 at 7:41 AM Bruce Ashfield <bruce.ashfield@gma=
il.com> wrote:
>> >>>>>>
>> >>>>>>
>> >>>>>>
>> >>>>>> On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic <zoran.stojsa=
vljevic@gmail.com> wrote:
>> >>>>>>>
>> >>>>>>> Hello Chris, Bruce,
>> >>>>>>>
>> >>>>>>> I have some additional data to share with you both, since I have=
 tried
>> >>>>>>> something. And here is my take on the things!
>> >>>>>>>
>> >>>>>>>> 1. Build using a bb recipe.
>> >>>>>>>> Take a look at meta-skeleton/recipes-kernel/hello-mod for an ex=
ample.
>> >>>>>>>> You just need to add meta-skeleton to your bblayers.conf and th=
en
>> >>>>>>>>   bitbake hello-mod
>> >>>>>>>
>> >>>>>>> I looked into this example, and, yes, it is classic kernel modul=
e
>> >>>>>>> definition out of the tree. With some outdated data, all cool, t=
he
>> >>>>>>> YOCTO designer should take care himself to fix these data, if us=
ing
>> >>>>>>> this stuff.
>> >>>>>>>
>> >>>>>>> But this is NOT mandatory, since I can add out of the tree modul=
e NOT
>> >>>>>>> actually using built-in module. I just use .../tmp/deploy/images=
/bbb/*
>> >>>>>>> generated stuff, since I have automated scripts which are bringi=
ng all
>> >>>>>>> these on my BBB target. Then I tftp my source code module to the
>> >>>>>>> target.
>> >>>>>>>
>> >>>>>>>> 2. Build from the SDK:
>> >>>>>>>> First, add the kernel source to the SDK by adding this to conf/=
local.conf
>> >>>>>>>>   TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"
>> >>>>>>>
>> >>>>>>> YES, this is THE command which should generate
>> >>>>>>> /usr/src/kernel(s)/`uname -r` or similar... But adding it to
>> >>>>>>> local.conf and after deleting kernel, then regenerating bitbake =
-k
>> >>>>>>> core-image-minimal does not bring this path into the rootfs imag=
e!?
>> >>>>>>
>> >>>>>>
>> >>>>>> That's correct. That command only adds the kernel source and buil=
d infrastructure to the SDK, not to your target image. You'd still need to =
arrange to have the kernel-devsrc package installed on the target image if =
you want it on the board's rootfs. How you arrange to have the package inst=
alled to the image varies with the image (since they all don't have the sam=
e image install variables, etc).
>> >>>>>>
>> >>>>>>
>> >>>>>>>
>> >>>>>>>
>> >>>>>>> I did it actually using meta-bbb, and using poky referent distro=
 as
>> >>>>>>> two additional layers to the more complex bbb image!
>> >>>>>>> https://github.com/jumpnow/meta-bbb.git
>> >>>>>>>
>> >>>>>>> The (KAS - you can figure out out of it local.conf) script I am =
using
>> >>>>>>> to build such a BBB image is here:
>> >>>>>>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-=
releases/bbb-warrior/kas-bbb-warrior.yml
>> >>>>>>>
>> >>>>>>> I did not try it with BBB reference poky only! Maybe I should tr=
y it
>> >>>>>>> as only referent poky? What do you think?
>> >>>>>>>
>> >>>>>>> Does in this case is SDK build really mandatory??? Should NOT be=
!
>> >>>>>>>
>> >>>>>>
>> >>>>>> You only do the SDK steps if you want to support building out of =
tree modules in an SDK install. So it is not mandatory for on target module=
 builds.
>> >>>>>>
>> >>>>>> Bruce
>> >>>>>>
>> >>>>>>
>> >>>>>>>
>> >>>>>>>> Once the SDK is installed, generate the kernel headers:
>> >>>>>>>>   sudo -i
>> >>>>>>>>   . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linu=
x-gnueabi
>> >>>>>>>>   cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueab=
i
>> >>>>>>>>   cd /usr/src/kernel
>> >>>>>>>>   make oldconfig scripts
>> >>>>>>>>   exit
>> >>>>>>>
>> >>>>>>> This is in nutshell the same what I did (a bit different) for Em=
bedded
>> >>>>>>> Debian. This is already on the target BBB, NOT while building YO=
CTO
>> >>>>>>> BBB image!
>> >>>>>>>
>> >>>>>>>> Finally, build your module using a Makefile like this
>> >>>>>>>>   obj-m :=3D hello-mod.o
>> >>>>>>>>   all:
>> >>>>>>>>         make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=3D$(shell =
pwd)
>> >>>>>>>
>> >>>>>>> As said before: bringing my own module into the target BBB (I ha=
ve my
>> >>>>>>> own examples, and I build them on the target with the almost the=
 same
>> >>>>>>> Makefiles)
>> >>>>>>>
>> >>>>>>> Zoran
>> >>>>>>> _______
>> >>>>>>>
>> >>>>>>> On Sun, May 12, 2019 at 3:15 PM Chris Simmonds <chris@2net.co.uk=
> wrote:
>> >>>>>>>>
>> >>>>>>>> Hi Zoran,
>> >>>>>>>>
>> >>>>>>>> There are two ways to do this
>> >>>>>>>>
>> >>>>>>>> 1. Build using a bb recipe.
>> >>>>>>>> Take a look at meta-skeleton/recipes-kernel/hello-mod for an ex=
ample.
>> >>>>>>>> You just need to add meta-skeleton to your bblaysers.conf and t=
hen
>> >>>>>>>>    bitbake hello-mod
>> >>>>>>>>
>> >>>>>>>>
>> >>>>>>>> 2. Build from the SDK:
>> >>>>>>>> First, add the kernel source to the SDK by adding this to conf/=
local/conf
>> >>>>>>>>    TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"
>> >>>>>>>>
>> >>>>>>>> Then build the SDK
>> >>>>>>>>    bitbake -c populate_sdk [your image recipe]
>> >>>>>>>>
>> >>>>>>>> Once the SDK is installed, generate the kernel headers:
>> >>>>>>>>    sudo -i
>> >>>>>>>>    . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-lin=
ux-gnueabi
>> >>>>>>>>    cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnuea=
bi
>> >>>>>>>>    cd /usr/src/kernel
>> >>>>>>>>    make oldconfig scripts
>> >>>>>>>>    exit
>> >>>>>>>>
>> >>>>>>>> Finally, build your module using a Makefile like this
>> >>>>>>>>
>> >>>>>>>>    obj-m :=3D hello-mod.o
>> >>>>>>>>    all:
>> >>>>>>>>          make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=3D$(shell=
 pwd)
>> >>>>>>>>
>> >>>>>>>>
>> >>>>>>>> HTH,
>> >>>>>>>> Chris
>> >>>>>>>>
>> >>>>>>>> On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
>> >>>>>>>>> Hello to the YOCTO community,
>> >>>>>>>>>
>> >>>>>>>>> I am using (to build the target for Beagle Bone Black) the fol=
lowing script:
>> >>>>>>>>> https://github.com/ZoranStojsavljevic/bbb-yocto
>> >>>>>>>>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bb=
b-yocto.sh
>> >>>>>>>>>
>> >>>>>>>>> The latest kernel I am using from the following repo:
>> >>>>>>>>> https://github.com/jumpnow/meta-bbb
>> >>>>>>>>>
>> >>>>>>>>> Is kernel 5.0.14 .
>> >>>>>>>>>
>> >>>>>>>>> Here is the snippet of the boot traces:
>> >>>>>>>>> Starting kernel ...
>> >>>>>>>>>
>> >>>>>>>>> [    0.000000] Booting Linux on physical CPU 0x0
>> >>>>>>>>> [    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) =
(gcc
>> >>>>>>>>> version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
>> >>>>>>>>> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARM=
v7), cr=3D10c5387d
>> >>>>>>>>> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT a=
liasing
>> >>>>>>>>> instruction cache
>> >>>>>>>>> [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Bl=
ack
>> >>>>>>>>> [    0.000000] Memory policy: Data cache writeback
>> >>>>>>>>> [    0.000000] cma: Reserved 16 MiB at 0x9f000000
>> >>>>>>>>> [    0.000000] CPU: All CPU(s) started in SVC mode.
>> >>>>>>>>> [    0.000000] AM335X ES2.1 (sgx neon)
>> >>>>>>>>> [    0.000000] random: get_random_bytes called from
>> >>>>>>>>> start_kernel+0xa4/0x460 with crng_init=3D0
>> >>>>>>>>> [    0.000000] Built 1 zonelists, mobility grouping on.  Total=
 pages: 130048
>> >>>>>>>>> [    0.000000] Kernel command line: console=3DttyO0,115200n8
>> >>>>>>>>> root=3D/dev/ram0 ip=3Ddhcp
>> >>>>>>>>>
>> >>>>>>>>> According to the documentation, the following:
>> >>>>>>>>> 2.10.1. Building Out-of-Tree Modules on the Target
>> >>>>>>>>> https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev=
.html
>> >>>>>>>>>
>> >>>>>>>>> I tried to find /usr/src/kernels/5.0.14... Directory, since I =
see
>> >>>>>>>>> from the build that kernel-dev and kernel-devsrc are included:
>> >>>>>>>>> [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
>> >>>>>>>>> core-image-kernel-dev                                 :1.0-r0
>> >>>>>>>>> kernel-devsrc                                         :1.0-r0
>> >>>>>>>>> kernel-selftest                                       :1.0-r0
>> >>>>>>>>>
>> >>>>>>>>> THE PROBLEM: But I could not find ob BBB target /usr/src/kerne=
ls
>> >>>>>>>>> directory at all!?
>> >>>>>>>>>
>> >>>>>>>>> Two questions here?
>> >>>>>>>>> [1] Do you have any advice on this problem (what I am missing =
here)?
>> >>>>>>>>> [2] Alternative to [1]: how I can use cross compiler from
>> >>>>>>>>> .../build/tmp to build Out-of-Tree Module for the BBB target o=
n the
>> >>>>>>>>> host?
>> >>>>>>>>>
>> >>>>>>>>> Thank you,
>> >>>>>>>>> Zoran
>> >>>>>>>>> _______
>> >>>>>>>>>
>> >>>>>>>>
>> >>>>>>>>
>> >>>>>>>> --
>> >>>>>>>> Chris Simmonds, trainer and consultant at 2net
>> >>>>>>>> http://www.2net.co.uk
>> >>>>>>>> Author of "Mastering Embedded Linux Programming"
>> >>>>>>
>> >>>>>>
>> >>>>>>
>> >>>>>> --
>> >>>>>> - Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end
>> >>>>>> - "Use the force Harry" - Gandalf, Star Trek II
>> >>>>>>
>> >>>>
>> >>>>
>> >>>> --
>> >>>> - Thou shalt not follow the NULL pointer, for chaos and madness awa=
it thee at its end
>> >>>> - "Use the force Harry" - Gandalf, Star Trek II
>> >>>>
>> >>
>> >>
>> >>
>> >> --
>> >> - Thou shalt not follow the NULL pointer, for chaos and madness await=
 thee at its end
>> >> - "Use the force Harry" - Gandalf, Star Trek II
>> >>
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await the=
e at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

