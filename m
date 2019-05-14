Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CDF2E00C37; Tue, 14 May 2019 10:30:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71708E00B3E
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 10:30:50 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id z19so11040949qtz.13
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 10:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oMLRABz7krxDc1UZWA1X02rnPu0BJlAzLhUd0sbCfIE=;
	b=OOiDGKzdGgAoJx9rhfTm0zldbThOz3g55b3GpFOCuD5RH90/mdWMJOWtJVXGPNvlDh
	PzCrt+axvaKGgy+MftdIBs9SxM3TOKXnzOykqHIpccvcTk6nZ157Mh1Gdmmlqjd5CPpZ
	SSh2VIjz0KN55M1mMXpBexShdx9RYI7/N22pKoT8T9gZGZQnwLpd0wwvEpBoDiYV8YeC
	BB0XncQekEOjFlsddiHBDluAezI2FRBlzVgztDG1oNB0K+Zq5t1Kd/2tK+rX5NqpAJgv
	hAl/EgYAa4u83XUu+j8eYiuqNSu1lFLr6bnxjF64KmX7Kcc10gGRZAoJOVmoQXdsoEHL
	535A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oMLRABz7krxDc1UZWA1X02rnPu0BJlAzLhUd0sbCfIE=;
	b=HZEyuX+2gXDQn0UJbjsWxgBnOYXbgY+ReuQC87MTSwiy6ro/musXvKKstNNKnwm8Jt
	pNXO4O1Cz5R+a1x+31rCxiKcinOM0971XtDOBC60qff9ney+lHzHiv4RkZnLy+bDYHDz
	TEuFiIwoDdeOxfFRfpxF+3ambuZeyusTBnqCKJOsO9yh2CXli3SCGrYyLRX3RKC5HN6R
	qMxlMJju8KM9HVWzSg6iEm2W1SexPq/XvNQpavtBmilqdf7Xmj7PxzUVp26DF3ce/je1
	nDfJhF1PdBEYVg1bUeyoiVUZshYcIHBKoOB7nW6QY6MuSggBrRpkfNRpxt1uQroB50fN
	FkGA==
X-Gm-Message-State: APjAAAX9PfD94U0v0piQnqWBGjgHlxcfFjR0gFihmwxf6tszQQ+PyTEJ
	k8JS6ayoN19ZKl9pePXAEvRQEWP2LkaHylAxtVk=
X-Google-Smtp-Source: APXvYqwfxegzDFvn301JI3PSz5Ve3L+ir2voUZSXPQ4p2gA7/IyoqvouRSM1Pe4BILgjtN88UO/tsyqZ9PiaPYKcBEU=
X-Received: by 2002:ac8:45da:: with SMTP id e26mr21572562qto.235.1557855049619;
	Tue, 14 May 2019 10:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
	<903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
In-Reply-To: <903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 14 May 2019 19:30:37 +0200
Message-ID: <CAGAf8LyRa0AXf-097GAoJa=jUY3pK8fWxCaDXGReu+GqVJOi4A@mail.gmail.com>
To: chris@2net.co.uk
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
X-List-Received-Date: Tue, 14 May 2019 17:30:51 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Chris, Bruce,

I have some additional data to share with you both, since I have tried
something. And here is my take on the things!

> 1. Build using a bb recipe.
> Take a look at meta-skeleton/recipes-kernel/hello-mod for an example.
> You just need to add meta-skeleton to your bblayers.conf and then
>  bitbake hello-mod

I looked into this example, and, yes, it is classic kernel module
definition out of the tree. With some outdated data, all cool, the
YOCTO designer should take care himself to fix these data, if using
this stuff.

But this is NOT mandatory, since I can add out of the tree module NOT
actually using built-in module. I just use .../tmp/deploy/images/bbb/*
generated stuff, since I have automated scripts which are bringing all
these on my BBB target. Then I tftp my source code module to the
target.

> 2. Build from the SDK:
> First, add the kernel source to the SDK by adding this to conf/local.conf
>  TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"

YES, this is THE command which should generate
/usr/src/kernel(s)/`uname -r` or similar... But adding it to
local.conf and after deleting kernel, then regenerating bitbake -k
core-image-minimal does not bring this path into the rootfs image!?

I did it actually using meta-bbb, and using poky referent distro as
two additional layers to the more complex bbb image!
https://github.com/jumpnow/meta-bbb.git

The (KAS - you can figure out out of it local.conf) script I am using
to build such a BBB image is here:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml

I did not try it with BBB reference poky only! Maybe I should try it
as only referent poky? What do you think?

Does in this case is SDK build really mandatory??? Should NOT be!

> Once the SDK is installed, generate the kernel headers:
>  sudo -i
>  . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
>  cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>  cd /usr/src/kernel
>  make oldconfig scripts
>  exit

This is in nutshell the same what I did (a bit different) for Embedded
Debian. This is already on the target BBB, NOT while building YOCTO
BBB image!

> Finally, build your module using a Makefile like this
>  obj-m := hello-mod.o
>  all:
>        make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=$(shell pwd)

As said before: bringing my own module into the target BBB (I have my
own examples, and I build them on the target with the almost the same
Makefiles)

Zoran
_______

On Sun, May 12, 2019 at 3:15 PM Chris Simmonds <chris@2net.co.uk> wrote:
>
> Hi Zoran,
>
> There are two ways to do this
>
> 1. Build using a bb recipe.
> Take a look at meta-skeleton/recipes-kernel/hello-mod for an example.
> You just need to add meta-skeleton to your bblaysers.conf and then
>   bitbake hello-mod
>
>
> 2. Build from the SDK:
> First, add the kernel source to the SDK by adding this to conf/local/conf
>   TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
>
> Then build the SDK
>   bitbake -c populate_sdk [your image recipe]
>
> Once the SDK is installed, generate the kernel headers:
>   sudo -i
>   . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
>   cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
>   cd /usr/src/kernel
>   make oldconfig scripts
>   exit
>
> Finally, build your module using a Makefile like this
>
>   obj-m := hello-mod.o
>   all:
>         make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=$(shell pwd)
>
>
> HTH,
> Chris
>
> On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
> > Hello to the YOCTO community,
> >
> > I am using (to build the target for Beagle Bone Black) the following script:
> > https://github.com/ZoranStojsavljevic/bbb-yocto
> > https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh
> >
> > The latest kernel I am using from the following repo:
> > https://github.com/jumpnow/meta-bbb
> >
> > Is kernel 5.0.14 .
> >
> > Here is the snippet of the boot traces:
> > Starting kernel ...
> >
> > [    0.000000] Booting Linux on physical CPU 0x0
> > [    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) (gcc
> > version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
> > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c5387d
> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> > instruction cache
> > [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
> > [    0.000000] Memory policy: Data cache writeback
> > [    0.000000] cma: Reserved 16 MiB at 0x9f000000
> > [    0.000000] CPU: All CPU(s) started in SVC mode.
> > [    0.000000] AM335X ES2.1 (sgx neon)
> > [    0.000000] random: get_random_bytes called from
> > start_kernel+0xa4/0x460 with crng_init=0
> > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 130048
> > [    0.000000] Kernel command line: console=ttyO0,115200n8
> > root=/dev/ram0 ip=dhcp
> >
> > According to the documentation, the following:
> > 2.10.1. Building Out-of-Tree Modules on the Target
> > https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html
> >
> > I tried to find /usr/src/kernels/5.0.14... Directory, since I see
> > from the build that kernel-dev and kernel-devsrc are included:
> > [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
> > core-image-kernel-dev                                 :1.0-r0
> > kernel-devsrc                                         :1.0-r0
> > kernel-selftest                                       :1.0-r0
> >
> > THE PROBLEM: But I could not find ob BBB target /usr/src/kernels
> > directory at all!?
> >
> > Two questions here?
> > [1] Do you have any advice on this problem (what I am missing here)?
> > [2] Alternative to [1]: how I can use cross compiler from
> > .../build/tmp to build Out-of-Tree Module for the BBB target on the
> > host?
> >
> > Thank you,
> > Zoran
> > _______
> >
>
>
> --
> Chris Simmonds, trainer and consultant at 2net
> http://www.2net.co.uk
> Author of "Mastering Embedded Linux Programming"

