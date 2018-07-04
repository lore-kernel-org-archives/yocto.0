Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00DEAE00E6A; Wed,  4 Jul 2018 11:57:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C3C6E0086B
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 11:57:26 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1famvp-0001jg-S0
	for yocto@yoctoproject.org; Wed, 04 Jul 2018 20:55:13 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@telfort.nl>
Date: Wed, 04 Jul 2018 20:57:18 +0200
Message-ID: <phj56a$5q5$1@blaine.gmane.org>
References: <CALh9vaX7aAYi59jJABfr5JXtoHXE6XVupfAwaHvRnVAAA5nDdA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: KNode/4.14.10
Subject: Re: struggling with initramfs
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
X-List-Received-Date: Wed, 04 Jul 2018 18:57:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7Bit

Tim Hammer wrote:

> Can anyone point me to a step-by-step tutorial or simple how-to on
> creating and using an initramfs with my kernel for ARM aarch64?
> 
> 
> I have tried creating my own:
>  - boot-image.bb file with IMAGE_FSTYPES = "cpio.gz".
>  - local.conf has INITRAMFS_IMAGE_BUNDLE = "1"
>  - linux.bbappend has INITRAMFS_IMAGE = "boot-image"
> 
> This all seems to be "correct" to the extent that bitbake linux tries to
> do the right thing.
> 
> However, I get a failure in do_bundle_initramfs- "mv: cannot stat
> 'arch/arm64/boot/Image': No such file or directory".
> 
> To the best of my (limited) debugging abilities with Yocto, it seems like
> the kernel image backup has already been run when it gets to this point
> and the Image file in that directory has already been moved to Image.bak.
> If I comment out the mv statement in kernel.bbclass causing the failure,
> the process continues, but the initramfs does not seem to get populated or
> perhaps installed into my kernel image as I get kernel panics that I have
> been unable to get past.
> 
> 
> I decided to take a different approach and try using the
> core-image-minimal-initramfs recipe as INITRAMFS_IMAGE. By commenting out
> the COMPATIBLE_HOST entry I am able to build a kernel for ARM aarch64. I
> can even seem to boot into this initramfs- it counts down waiting for
> removable media; seems to find my primary rootfs on sda3, but there is no
> rootfs.img file there so says it is dropping to a shell (although I never
> get a prompt...).

We have taken this approach here 
https://github.com/edison-fw/meta-intel-edison/tree/master/meta-intel-edison-distro/recipes-core

There are 2 images, the rootfs and the initramfs. And we overload the init-live.sh 
to load certain kernel modules and acpi-tables then switchroot to the rootfs.

> Thinking I could start with that recipe and work to get rid of the live
> stuff and just get to a busybox prompt before trying to run my unique init
> commands, I copied  core-image-minimal-initramfs.bb to my-
> core-image-minimal-initramfs.bb in my layer and changed INITRAMFS_IMAGE to
> "my- core-image-minimal-initramfs".
> However, I obviously missed something in the configuration as I get an
> error in go_bundle_initramfs again:
>      kernel-source/scripts/gen_initramfs_list.sh:
>                  Cannot open
> '/.../linux-qoriq/4.14-r0/build/usr/my-core-image-minimal-initramfs-{machine}.cpio'
> 
> Any help would be greatly appreciated.
> Thank you!



