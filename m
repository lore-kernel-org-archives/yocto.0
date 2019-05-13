Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BFA9E00C93; Mon, 13 May 2019 10:47:40 -0700 (PDT)
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
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46381E00C93
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 10:47:39 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id t1so6858135qtc.12
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 10:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ER3Ej736WEE/PqlQ5psHij/KkuOeO7tRehxm0iw8yps=;
	b=cX2OR3GYavr0OnqzCYzVYgeELg8evvM1k+9thBH6eTs+1pI4+lcQ58ZvrlzA4unJrb
	luGGSRZrV+7fPUIxtGatSL/fiVBfQ+mmxCipA0JkqAxwJPRBhjQEnoL+0PwyXgCLiSVW
	2Xl59JgWL0cYwPVdDWCfPv8eevS+V1hK1Z+pWYAWTOPQbMVq7cMxf0A8j2VoVhj8EySF
	95/jbN7/pp91GRyT8i6ZL5uJOKSk5uB/9X5MwGB32NDsEOOfJutXo1CbGJa6UEnhue5f
	gxcMjc57+wPxSzcYRC2tBkD0rUFCMf+9Pb0SV/w7SsRIYs4lRPgZkc6xUKFvwrVInvUy
	nmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ER3Ej736WEE/PqlQ5psHij/KkuOeO7tRehxm0iw8yps=;
	b=okHfGRg06QDEByYAzosd6+Ofxy6b6PPtwAIXLDpZjuJLwtXXJB7YAjK68h35XsthYh
	nqH/C8buGUotImm6GE/tZ13dqSrT40FQOA24tBCtN6I149AExdP08EPfZqEef38h/fkd
	swpp8J4GRWyKDlw08bJSbO1blRjC/RibJDrnhlLWTjCHeixp4Wv6ct+fTQ+VRRyJMCuH
	mn9CGjj+ZEWFwaLZ4RM0OTEi7G+3jzq85h4wz56FlY6EdOS6EVQ7RxGHLG/MetZmfjcX
	SAFzdfc+0UdEmVn3o313iQxjog0LbJuhPbH89cV40qm4SKq6al/D/zc5K/wTe0KGGiWr
	brGg==
X-Gm-Message-State: APjAAAXZ4Ibp1cLIIAKcCFWJqFO2oW4Rlgojy7U9lDl6qY+kmaifqxNH
	wFolA2Urri/cg4wGMaTIy/PCmXrYU8nzGJJLKnE=
X-Google-Smtp-Source: APXvYqyXAuYRd1m9lBq0gTrVzMHYyJEm6ls1ZGQn7SiDHpVydEMkjPB7pKDCRyGtwNyJORZkz6zJWzdPii28eC4vAmk=
X-Received: by 2002:a0c:af5c:: with SMTP id j28mr18562341qvc.226.1557769658383;
	Mon, 13 May 2019 10:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
	<903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
In-Reply-To: <903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 13 May 2019 19:47:25 +0200
Message-ID: <CAGAf8Lw1z1k7=YrbXU0diQcS84wMEqF2YEoLG7u-BUNEu-1r2w@mail.gmail.com>
To: chris@2net.co.uk, Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Mon, 13 May 2019 17:47:40 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Bruce, Chris,

Thank you both for the replies.

Usually, the kernel header files/kernel source code for the used
kernels are put under: /usr/src/kernels/`uname -r`/

But this, my best guess, is an implementation detail (probably each
distro has its own rule/merit).

Since YOCTO is just one of many areas I work on... I expected the
routine. But, hey... ;-)
_______

In my opinion it would be nice to have this all by default implemented
outside of SDK. Included by default in rootfs. But this is only my
desperate wish (I am, after all, old, very lazy person)!

I figured it out in BBB related Embedded Debian (there are few tricks
to be done) today (aside that my HOST EFI grub2 failed very badly
(some bad sectors on my SSD), so I had some emergency to figure out
how to recover it - all done).

So, in embedded Debian I am able to build it on BBB target out of the
tree (few steps must be done to accomplish that).

I'll try what you both suggested to me for YOCTO (I still need some time):

> 1. Build using a bb recipe.
> Take a look at meta-skeleton/recipes-kernel/hello-mod for an example.
> You just need to add meta-skeleton to your bblaysers.conf and then
>  bitbake hello-mod

Please, stay tuned!

Thank you once again,
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

