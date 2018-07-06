Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42956E00DC3; Thu,  5 Jul 2018 18:13:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1285CE0086B
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 18:13:17 -0700 (PDT)
Received: by mail-ua0-f175.google.com with SMTP id x18-v6so6573649uaj.9
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 18:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BS4hJYr7sMdgozJfcegIEdVfdS35G+I4Yit7JqHmGvw=;
	b=FmubGWPOrE78AsrKuMPAJoXqrub+y8jmC9vyfmZwlfQdBp0JP65fuIPJgi8s3Am7Di
	twMnX8ZPG9b7XDs2daCP5LuMXQgBp0sVsdu5h43fJkDFJ8/UnvLL5zTbvgff1xmKUY7d
	hzGT/Z9Y5UShXD7QBql5k2DPKBkU8o/ESnJJjH/9aG/M1wgfxjrDsWXXCZs6C9s5Jr+8
	dP2bVMdMU3ZhnEWnKTKO14h1C7t3oVaIn4gq/KXJdz64gNmzqHji2Y4z7rV6YLZMmuD1
	l5tARl+Vdnk1/XJqUbqKaboK16Zr96VwhiAoht+ntu/Lon6oTy/+UAgK84HvbeLnXjeO
	H4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BS4hJYr7sMdgozJfcegIEdVfdS35G+I4Yit7JqHmGvw=;
	b=OUm81VYawZysB8E5Cj6FA0Kw35LBZNFE4khBLP+McyiNSwAUYBS3YGUoh0Od9i2FI9
	9WCkG4nZBUEI6NJWXAM2yRjLlPMHaz0ZXaWq8BTXNpIyuHkEhrVnYV4jeKD/EKpXapaJ
	3n7gWPDZqsKnooiKQgzCYk9+o0t/rFoR5wQDYLisCzjBkOgUqOr8apabrU08kOvTy3zx
	NFbnwk7X7RVEf7+OnY6r052Ruaag/CWMVdlH7khAYAlccXz+CN/XTB50WkK4K0hmPCcN
	NBN5iP1NEjZhaat+RiGe7JBu1/o2QdcmPcAO4B8GSmdSBw/H/zmt7T2CQaOtM57UUzY+
	M0Vg==
X-Gm-Message-State: APt69E2BFUKvXlH5q9ZV64UzpvhBl3iZkim/Q5jvgp3ZdmI3prmrHlBt
	/2PP8zyW1wObneqzlZb/pT/eQGZhvj5HS+wperI=
X-Google-Smtp-Source: AAOMgpeo08PIXmjT3/VLAFVQG3hU/XfAyLqpOKoia2CdcOLFRDCq6rJfE5nOklxDxaWxf0NVz3nr25Vs9ilnKvvWUMc=
X-Received: by 2002:ab0:15ac:: with SMTP id
	i41-v6mr5328596uae.150.1530839597428; 
	Thu, 05 Jul 2018 18:13:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Thu, 5 Jul 2018 18:13:16 -0700 (PDT)
In-Reply-To: <CAGAf8LyD4sNZXEDgPkFFqueUc-dou_8N_xureTdjtQcoT8jDHg@mail.gmail.com>
References: <CALh9vaX7aAYi59jJABfr5JXtoHXE6XVupfAwaHvRnVAAA5nDdA@mail.gmail.com>
	<phj56a$5q5$1@blaine.gmane.org>
	<CAGAf8LyD4sNZXEDgPkFFqueUc-dou_8N_xureTdjtQcoT8jDHg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 5 Jul 2018 18:13:16 -0700
Message-ID: <CAJ86T=XXhWAHFXc3XShY6w=oL7pq0s1c=ydEM3poDw=Xg4oq7g@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, ftoth@telfort.nl
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
X-List-Received-Date: Fri, 06 Jul 2018 01:13:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 4, 2018 at 11:23 PM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Hello to all,
>
> I have my own YOCTO recipe how I do the initramfs.
>
> Usually, some of these are missing in kernel .config file:
>
> CONFIG_BLK_DEV_INITRD=y
> CONFIG_RD_GZIP=y
> CONFIG_RD_BZIP2=y
> CONFIG_RD_LZMA=y
> CONFIG_RD_XZ=y
> CONFIG_RD_LZO=y
> CONFIG_RD_LZ4=y
>
> Please, check (they should be on) the CONFIG_DECOMPRESS_* options and if
> not, please, turn them on.
>
> To do this, please, for YOCTO use the following (to reconfigure kernel
> .config):
> bitbake -c menuconfig virtual/kernel
>
> Also, in the local.conf I have the following set:
>
> DISTRO_FEATURES_append = " ram"

There is no standard distro feature called "ram". Perhaps this is
something specific to your BSP layer?

> IMAGE_FSTYPES_append = " cpio.xz"
>
> Then I do: bitbake -k core-image-minimal, and from:
> .../build/tmp/tmp/deploy/images/<platform_name>
>
> Take my <initramfs_name>.cpio.xz as initramfs. Also, I take accordingly
> zImage and .dtb files as well.
>
> I prepend to initramfs.cpio.xz u-boot header:
> mkimage -n 'Ramdisk Image'  -A arm -O linux -T ramdisk -C gzip -d
> initramfs.cpio.xz initramfs.cpio.xz.uboot
>
> And then write tiny U-Boot ash script to tftp (from host) all three files to
> the target platform.

This advice and these instructions are all fine. However, just for the
record, creating a standalone cpio archive and arranging for the
bootloader to load the kernel and cpio archive into DRAM as separate
images before booting the kernel is not solving the same problem as
embedding a cpio archive inside the kernel image via OE's
INITRAMFS_IMAGE_BUNDLE option.

> On Wed, Jul 4, 2018 at 8:57 PM, Ferry Toth <ftoth@telfort.nl> wrote:
>>
>> Tim Hammer wrote:
>>
>> > Can anyone point me to a step-by-step tutorial or simple how-to on
>> > creating and using an initramfs with my kernel for ARM aarch64?
>> >
>> >
>> > I have tried creating my own:
>> >  - boot-image.bb file with IMAGE_FSTYPES = "cpio.gz".
>> >  - local.conf has INITRAMFS_IMAGE_BUNDLE = "1"
>> >  - linux.bbappend has INITRAMFS_IMAGE = "boot-image"
>> >
>> > This all seems to be "correct" to the extent that bitbake linux tries to
>> > do the right thing.
>> >
>> > However, I get a failure in do_bundle_initramfs- "mv: cannot stat
>> > 'arch/arm64/boot/Image': No such file or directory".
>> >
>> > To the best of my (limited) debugging abilities with Yocto, it seems
>> > like
>> > the kernel image backup has already been run when it gets to this point
>> > and the Image file in that directory has already been moved to
>> > Image.bak.
>> > If I comment out the mv statement in kernel.bbclass causing the failure,
>> > the process continues, but the initramfs does not seem to get populated
>> > or
>> > perhaps installed into my kernel image as I get kernel panics that I
>> > have
>> > been unable to get past.
>> >
>> >
>> > I decided to take a different approach and try using the
>> > core-image-minimal-initramfs recipe as INITRAMFS_IMAGE. By commenting
>> > out
>> > the COMPATIBLE_HOST entry I am able to build a kernel for ARM aarch64. I
>> > can even seem to boot into this initramfs- it counts down waiting for
>> > removable media; seems to find my primary rootfs on sda3, but there is
>> > no
>> > rootfs.img file there so says it is dropping to a shell (although I
>> > never
>> > get a prompt...).
>>
>> We have taken this approach here
>>
>> https://github.com/edison-fw/meta-intel-edison/tree/master/meta-intel-edison-distro/recipes-core
>>
>> There are 2 images, the rootfs and the initramfs. And we overload the
>> init-live.sh
>> to load certain kernel modules and acpi-tables then switchroot to the
>> rootfs.
>>
>> > Thinking I could start with that recipe and work to get rid of the live
>> > stuff and just get to a busybox prompt before trying to run my unique
>> > init
>> > commands, I copied  core-image-minimal-initramfs.bb to my-
>> > core-image-minimal-initramfs.bb in my layer and changed INITRAMFS_IMAGE
>> > to
>> > "my- core-image-minimal-initramfs".
>> > However, I obviously missed something in the configuration as I get an
>> > error in go_bundle_initramfs again:
>> >      kernel-source/scripts/gen_initramfs_list.sh:
>> >                  Cannot open
>> >
>> > '/.../linux-qoriq/4.14-r0/build/usr/my-core-image-minimal-initramfs-{machine}.cpio'
>> >
>> > Any help would be greatly appreciated.
>> > Thank you!
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

