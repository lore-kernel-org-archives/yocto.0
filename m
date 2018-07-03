Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D6ABE013B3; Tue,  3 Jul 2018 16:33:28 -0700 (PDT)
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
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CB5AE0084E
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 16:33:27 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id e139-v6so626381vkf.6
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2018 16:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HacTTNsQS9VFjrkenZONoMSWYF46U+nvXNGFTjxEN/A=;
	b=HRax2X6Fwq6knJuRg2JE6ymoisrnzRqaKC481t2eBz2UWTPBHj4IjTx3AqhWzHQbd0
	TC0XKeRY1tA9ZnOuvNITK1vKbLV9vXOgEN0isWUssiq5Pecp3Y1GDTvW306C5AcllLYg
	v46MxeTN+V0ic9kU+Fe1OWJ719E7MnDK7yWdoKQ3bPqnicxnABG2xYyZ1M1cpw1hlF9r
	K/2JnB3+JTktAVoDp0vUdFpeeM/oia/mlk7TKi01izdS99LT6hpm+Pv/Xgr+0m1BO8oc
	SDBt33YbW5pyZ6Vvyll7peqDRiqHiudx1gcvCQVOPtVok6W7nZthQBx0GdsVsKQb/kph
	fiMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HacTTNsQS9VFjrkenZONoMSWYF46U+nvXNGFTjxEN/A=;
	b=OxZ085vJLhi0+7+Cyq5XsMr4NJu/A0VqTndtJbg5oGsDgRZBK6NXedFrfXYK0RVtK/
	6IZDHDz9BLlhnrbYmsDIuXjxGHD0z6coQm5yYFdI+RQuayxK71Kb/utqEduKzMvRCnVC
	EgGjFqP+/AwBE9ufXgELAc2+qUaJ1t6LfKzUIWkm1gaNYfLlbFQtHTwifH+8ShxmCNPv
	xYbzLitRwrpqtryHEy+oRfXvDPgjT63nEg2uzL00VyUiSNdZESv533HfndWP/NnfEPbl
	v2mpxYskU+znd+FRqSnT5JDSlSJpFz2Qr69vDSzdukTC61KJQWNAggFk/qtkszPxh4BR
	HH3A==
X-Gm-Message-State: APt69E1WcHGpU7ZptfzAaK38QI2zUhIoqY5ivq2SbOIHCr3r5aF/w1ob
	If4CE/nOX5U6Jv7hMKralvzLqw+O8F8JH31TorQ=
X-Google-Smtp-Source: AAOMgpeQIJAb/0Ks5hKKZrTW65AsAoOqXujXbZOFiq7Wqq0RZtg/KToaHPcTOV3gfzwOu4lvcQ3fXMDIUgW2mcdzBE8=
X-Received: by 2002:a1f:88:: with SMTP id
	130-v6mr18613991vka.154.1530660806711; 
	Tue, 03 Jul 2018 16:33:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Tue, 3 Jul 2018 16:33:26 -0700 (PDT)
In-Reply-To: <CALh9vaX7aAYi59jJABfr5JXtoHXE6XVupfAwaHvRnVAAA5nDdA@mail.gmail.com>
References: <CALh9vaX7aAYi59jJABfr5JXtoHXE6XVupfAwaHvRnVAAA5nDdA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 3 Jul 2018 16:33:26 -0700
Message-ID: <CAJ86T=VhArE8n+ne0zYCyf5DjO7V3=3SXUdqaWUUB-KUmxfheQ@mail.gmail.com>
To: Tim Hammer <tdhammer99@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 03 Jul 2018 23:33:28 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 3, 2018 at 11:02 AM, Tim Hammer <tdhammer99@gmail.com> wrote:
>
> Can anyone point me to a step-by-step tutorial or simple how-to on creating
> and using an initramfs with my kernel for ARM aarch64?
>
> I have tried creating my own:
>  - boot-image.bb file with IMAGE_FSTYPES = "cpio.gz".

Note that the approach taken by kernel.bbclass is that the cpio image
is included uncompressed in the kernel and then (if you build a
compressed kernel image type) the kernel and cpio are compressed
together. What you've done is OK, but just be aware that
copy_initramfs() will uncompress the cpio image for you before it's
included in the kernel.

(If you want a compressed cpio image inside an uncompressed kernel
then kernel.bbclass would need some patching).

>  - local.conf has INITRAMFS_IMAGE_BUNDLE = "1"
>  - linux.bbappend has INITRAMFS_IMAGE = "boot-image"

Is your kernel recipe called linux? If not then the .bbappend might
not be applied when your actual kernel recipe is built. It doesn't
look like that's your issue as the error below from
do_bundle_initramfs() suggests that you got past the check that both
INITRAMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE are as expected, but In
general it's probably safest to keep INITRAMFS_IMAGE_BUNDLE and
INITRAMFS_IMAGE together in a global config file (e.g. local.conf)
rather than making either of them recipe specific.

> This all seems to be "correct" to the extent that bitbake linux tries to do
> the right thing.
>
> However, I get a failure in do_bundle_initramfs- "mv: cannot stat
> 'arch/arm64/boot/Image': No such file or directory".

You don't mention what version of OE you are using? The
do_bundle_initramfs() code has historically been quite fragile,
especially around the time support for multiple kernel image types was
merged a year or two back. Everything should be OK now and fixes
should have been backported to releases, but if you're using an older
release there could be a fix which didn't make it.

Are you manually over-riding KERNEL_OUTPUT_DIR? How are you setting
KERNEL_IMAGETYPE, KERNEL_ALT_IMAGETYPE, KERNEL_IMAGETYPES and
KERNEL_IMAGETYPE_FOR_MAKE?

Note that setting a kernel image type of "Image.gz" didn't work until
relatively recently. I'm not sure how far that fix got backported (if
at all).

> To the best of my (limited) debugging abilities with Yocto, it seems like
> the kernel image backup has already been run when it gets to this point and
> the Image file in that directory has already been moved to Image.bak. If I
> comment out the mv statement in kernel.bbclass causing the failure, the
> process continues, but the initramfs does not seem to get populated or
> perhaps installed into my kernel image as I get kernel panics that I have
> been unable to get past.

The error is odd as the mv commands in do_bundle_initramfs() are only
run to backup kernel images (or symlinks to images) as
do_bundle_initramfs() finds them, or to rename a kernel image after a
call to kernel_do_compile() to create it.

You don't mention specifically which mv command in
do_bundle_initramfs() is failing. If it's after the call to
kernel_do_compile() then it suggests that kernel_do_compile() isn't
creating the expected kernel image (or isn't creating it in the
expected directory).

If you add a few "ls" commands to do_bundle_initramfs() it should be
fairly easy to see where files are (and whether or not they are
symlinks) before and after the call to kernel_do_compile() from the
do_bundle_initramfs() log.

> I decided to take a different approach and try using the
> core-image-minimal-initramfs recipe as INITRAMFS_IMAGE. By commenting out
> the COMPATIBLE_HOST entry I am able to build a kernel for ARM aarch64. I can
> even seem to boot into this initramfs- it counts down waiting for removable
> media; seems to find my primary rootfs on sda3, but there is no rootfs.img
> file there so says it is dropping to a shell (although I never get a
> prompt...).
>
> Thinking I could start with that recipe and work to get rid of the live
> stuff and just get to a busybox prompt before trying to run my unique init
> commands, I copied  core-image-minimal-initramfs.bb to my-
> core-image-minimal-initramfs.bb in my layer and changed INITRAMFS_IMAGE to
> "my- core-image-minimal-initramfs".
> However, I obviously missed something in the configuration as I get an error
> in go_bundle_initramfs again:
>      kernel-source/scripts/gen_initramfs_list.sh:
>                  Cannot open
> '/.../linux-qoriq/4.14-r0/build/usr/my-core-image-minimal-initramfs-{machine}.cpio'
>
> Any help would be greatly appreciated.
> Thank you!
> --
>
> .Tim
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

