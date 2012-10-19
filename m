Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFE9DE0049B
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 08:29:37 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id e21so680794vbm.35
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 08:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=CxoWm4FUxW+hBMoQduOX9TkkAtQd60+/UBMGdyPl3T8=;
	b=Quta/2fLl0CS9DNn9B9/RjUBz//lTXxL0nlxo6WWq82oa2s0cKu+0P4d2gq9UE7Acf
	35AWHBcwHXYSMMpozl6kvJIgBBO2inMsUwFc707hxinWROvd3duN1SzLNVSdutmAKsdp
	NAj/vyro+EcBtC+CEbaE0FMnc44xIecgX7HfA5KtglseVasRCF3j4PogzVHO201zUUsv
	1QKIRo+9dIKOvJia4Cn9OIChPl/cLlqAuhweODlaWX63mM4XGN+fZt8O0qKFZ1c1Raqb
	ZQ6bdc3DL/EwP5YM8fEUyEZbYjWjCPRhNIJ9qgCYehPvwisLcsD2ITWo4UXGnPHMiYfp
	mFPQ==
MIME-Version: 1.0
Received: by 10.59.5.229 with SMTP id cp5mr2180122ved.32.1350660574539; Fri,
	19 Oct 2012 08:29:34 -0700 (PDT)
Received: by 10.58.116.196 with HTTP; Fri, 19 Oct 2012 08:29:34 -0700 (PDT)
In-Reply-To: <CAE8H0+Xuk6kZaBNTBA9ZBBZGOs4AADf8zF88WYecDMnD8wyFpg@mail.gmail.com>
References: <CAE8H0+Xuk6kZaBNTBA9ZBBZGOs4AADf8zF88WYecDMnD8wyFpg@mail.gmail.com>
Date: Fri, 19 Oct 2012 11:29:34 -0400
Message-ID: <CAE8H0+UEkNN_sAEH+KCm3Zj6sm4MwOMEVcU4AE8fMsszoHH9BA@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Crownbay .hddimg partition is corrupt...but works?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Oct 2012 15:29:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Oct 19, 2012 at 8:48 AM, r10kindsofpeople
<r10kindsofpeople@gmail.com> wrote:
> I've been following with interest the thread on creating multiple
> partitions, but before I get there, I seem to have a stumbling block.
>
> I've been using dd to copy the .hddimg onto an SDCard and booting from
> there.  It works fine.  The core-image-minimal image is about 32MB,
> copied onto a 16GB card.  When 'boot' is mounted under Ubuntu 12.04, I
> see the 5 files totaling about 31 MB with about 1 MB free.
>
> But when I run 'parted' on /dev/mmcblk0, I see one 16GB partition
> using the fat16 file system.  'parted check' warns me that Partition 1
> is 16.0GB, but the file system is 32.2MB.  GParted basically throws up
> its hands in frustration and gives up.
>
> It seems to me that before I start trying to get a class created that
> will create the partitions automatically, I ought to first figure out
> how to create the partitions by hand, but I'm not convinced that the
> .hddimg is giving me a solid foundation to start with.
>
> Can anyone give me clues to the why/wherefore of the partition that
> the build system is creating?  If I create my own partitions on the
> card first, won't the 'dd' operation simply wipe that out and replace
> it with the current situation?
>
> I'm using the Crownbay emgd layer, Denzil 7.0.1.
>
> John

Right.  Amazing what a cup of coffee can do...

So of course .hddimg has no knowledge of the drive size that I'm
using, so I can understand why the file system and the partition size
don't agree.

So I think what I want to create is an image class that:
1) creates an msdos partition table
2) creates a fat16 partition called 'boot' sized for the original
.hddimg (or larger) with the boot flag on
3) creates any additional partitions
4) puts the syslinux mbr in the first 440 bytes of the new disk image
5) puts the original .hddimg in the fat16 partition

Sound about right?  This seems to work by hand.  I'm using syslinux to
boot into a ramdisk loaded rootfs, I suspect others might want
different steps if they're booting into an ext3 image, etc.

John

