Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCECDC48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 08:25:38 +0000 (UTC)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web11.14571.1708071935232292758
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 00:25:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y18zfUZV;
 spf=pass (domain: gmail.com, ip: 209.85.222.41, mailfrom: twoerner@gmail.com)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-7d643a40a91so272283241.0
        for <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 00:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708071934; x=1708676734; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mdAroZl9c2wj9CLfEEofPN2G6ek349Ym8XvyY4ssg+Y=;
        b=Y18zfUZVasmUnRY6jPiJ4zTs6LlgFGeAp2J2VA+u6xRtI5BkaYIRe8UBSj+uW8FGsP
         MZeWaitoFhvJylW1j3MsPnZN2oOnyM4xizIlyrohs6bqZcjjZeMb7W6OCyffcRk9yyaA
         dY1SAb881NHM7xhySQc7HGUtsXM9VtApXGLBVNYs8112/Io/5kSX78irmLTSXTqzBEDN
         puNvWpSlmXZGB+jQ57pLmnRdUgKG8lEHUcaZxPiLd+qruKP39paMs9yG/peZfSQqTVWY
         mu32LnT7Icj+XJ2QNzf6mWf8wzJTl7gkL511KIkjb/gC2U0S1sCBTiPjJvwWJdsUdk2t
         tALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708071934; x=1708676734;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mdAroZl9c2wj9CLfEEofPN2G6ek349Ym8XvyY4ssg+Y=;
        b=fkz5mMnUUEFHgazGt3bHN+4WKP9xujqKfGvipHhLQBLwYylx0/X36xTCjvkETRovet
         yrAipNHqmp9Axv+toP7I6prReI5tg8FPkaCF5Qyw5xKzTUuJySGvYlrW7N+YsDSwkfwo
         NzAPYsU3WS5Pjkilarca5A3wVFG2Ud234cxm04mDAXwQjZuAHT2tLnoz7wq+B3vg+jE+
         JrhJvpqe5YTBqW7GBkz14lM91Kpv1W3lHXxzBJrportovvFa+mB+6I43q/i4FmhjXhle
         bP64dJ/dVGY8p03zT/6PHiy6CV3Fuy5Me3VTlYNAKFqPxWy1KNolXrRk1lCXcyp+KvV/
         4EVA==
X-Gm-Message-State: AOJu0YylXifRq5lse5jGReRFxB7JgQy5MO9TJx3/kkEFcZsDlAvYcmnB
	2hIOHGpskQsXH7RkVSfaKoVN76nMblHSzhzOEYGtSsjKQ6NkZ9cH
X-Google-Smtp-Source: AGHT+IHFUzJTpfFqqr4D3sRAujrRE2Yyrzo8lTvZvSS+8muxhbNfqGXNlZwV/Iws51zSQshAFyG80Q==
X-Received: by 2002:a05:6102:290f:b0:46d:200b:584a with SMTP id cz15-20020a056102290f00b0046d200b584amr5287418vsb.4.1708071934123;
        Fri, 16 Feb 2024 00:25:34 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id q15-20020a05622a030f00b0042c7f028606sm1337544qtw.32.2024.02.16.00.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 00:25:33 -0800 (PST)
Date: Fri, 16 Feb 2024 03:25:31 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 3/4] remove /boot partition from
 wic:bootimg-paritition
Message-ID: <20240216082531.GA2571@localhost>
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-3-twoerner@gmail.com>
 <ebaf257d-6822-4e23-bc09-7606a90a4f7a@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ebaf257d-6822-4e23-bc09-7606a90a4f7a@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 08:25:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62511

On Thu 2024-02-15 @ 06:45:59 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
> > In order to boot successfully, most Rockchip SoCs require a specific
> > partitioning scheme which was defined many years (and many SoCs) ago. That
> > partitioning scheme places the SPL and U-Boot at specific offsets at the
> > start of the boot block device:
> > 
> > 	https://opensource.rock-chips.com/wiki_Partitions
> > 
> > The Rockchip partitioning scheme goes on to also define the locations and
> > sizes of a number of additional partitions, including the "boot" and "root"
> > partitions.
> > 
> > Since both the SPL and U-Boot have already been placed on the block device,
> > the "boot" partition only contains the extlinux config file and the
> > kernel+dtb/fitImage; it doesn't contain any bootloader artifacts (other
> > than the extlinux config).
> > 
> > The locations and sizes of the SPL and U-Boot partitions are hard
> > dependencies since the BOOTROM etched inside the Rockchip SoCs is > programmed to blindly load and run what it finds at these locations. The
> 
> What matters is the location of TPL+SPL, U-Boot proper can be
> programmatically be put anywhere (not where TPL+SPL is of course :) ). The
> SPL actually stores in itself where to look for U-Boot proper in the storage
> media (and different storage media may have different locations, we have
> this for Puma RK3399 which has a differnet location for U-Boot proper on
> SPI-NOR and on eMMC/SD card). We do this on Puma RK3399 and Ringneck PX30
> for example (but we're not using this wks file so this isn't really
> relevant). Also, IIRC, the BootROM tries a few locations for the TPL+SPL in
> the boot storage medium (e.g. every 32KB offsets for the first 2/3/4).
> 
> Also, "blindly" is a bit of a stretch, the BootROM checks for a magic header
> value and then another magic string (e.g. RK33 for RK3399 and PX30). RK3568
> and RK3588 have a different header layout also (headerv1 vs headerv2).
> There's also secure boot that is possible, doing a bunch of extra checks
> directly from the BootROM, etc. :)

Good points. I've updated the commit message accordingly.

> > locations, sizes, and contents of the "boot" and "root" partitions are
> > not so rigid since it is U-Boot which interacts with them. U-Boot is very
> > flexible with how it finds boot components, and in its support for various
> > devices, filesystems, sizes, etc.
> > 
> > Both oe-core's U-Boot metadata and wic's bootimg-partition script contain
> > logic to generate the extlinux pieces required for a bootloader to boot
> > a Linux system. If both are enabled, the wic pieces silently clobber the
> > U-Boot pieces. However, the mechanisms contained in the U-Boot metadata are
> > much more flexible, from a user's point of view, than the mechanisms in
> > bootimg-partition.
> > 
> > Also, if a user wishes to setup some sort of A/B redundant update
> > mechanism, they must have redundant root partitions (in order to update
> > their filesystem contents) but they also need to have redundant boot
> > partitions if they wish to update the kernel as part of their update
> > mechanism. Pairing redundant kernel partitions with redundant filesystem
> > partitions becomes unnecessarily complicated. Therefore it makes sense
> > to combine the kernel and the filesystem into the same partition so that
> > both the kernel and filesystem are updated, or rolled back, in lock-step
> > as one unit. Specific kernel versions and configurations often have
> > dependencies on user-space components and versions.
> > 
> 
> And now users would have to update a potentially multi-gigabyte image only
> to update their kernel or dtb :)
> 
> > The boot partition is not going away. This patch simply transfers
> > responsibility for its creation to the more flexible U-Boot mechanism and
> > includes the kernel as part of the same partition as the root filesystem.
> 
> This means the boot partition is going away :) which is confirmed by the
> change in wic/rockchip.wks.
> 
> I think you meant to say the boot directory is not going away, or rather the
> content of the boot partition is not going away?

Yes.

> > Not only does it add flexibility, it also makes update schemes more
> > straightforward. Although having a separate /boot partition is a
> > "requirement" of the Rockchip partitioning scheme, it is not an actual
> > hard requirement when using a flexible, open-source bootloader (such as
> > U-Boot) instead of using Rockchip's proprietary miniloader, preloader, and
> > trust.img.
> > 
> 
> The upgrade path from current state to the new one is not straightforward
> though? The boot partition would disappear IF the partition table is
> reflashed (which is rarely done I guess?) Otherwise it would still exist,
> with the old and never-to-be-updated-again kernel binaries in the /boot
> partition (which does very much still exist unless you reflash the partition
> table AND flash on the / partition with the update mechanism). This also
> means that a rollback is impossible.
> 
> > Boot-tested on:
> > 	nanopi-m4b, nanopi-r2s, nanopi-r4s, roc-rk3328-cc, rock-3a,
> > 	rock-pi-4b, rock-5a, rock-5b, rock-pi-e, rock-pi-s, rock64
> > 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >   conf/machine/include/rockchip-defaults.inc |  2 ++
> >   conf/machine/include/rockchip-extlinux.inc | 10 ++++++++++
> >   conf/machine/include/rockchip-wic.inc      | 17 ++---------------
> >   wic/rockchip.wks                           |  5 ++---
> >   4 files changed, 16 insertions(+), 18 deletions(-)
> >   create mode 100644 conf/machine/include/rockchip-extlinux.inc
> > 
> > diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
> > index 3ce2e246ab0b..2387eb909934 100644
> > --- a/conf/machine/include/rockchip-defaults.inc
> > +++ b/conf/machine/include/rockchip-defaults.inc
> > @@ -19,3 +19,5 @@ XSERVER = " \
> >   # misc
> >   SERIAL_CONSOLES ?= "1500000;ttyS2"
> > +RK_CONSOLE_BAUD ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
> > +RK_CONSOLE_DEVICE ?= "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
> > diff --git a/conf/machine/include/rockchip-extlinux.inc b/conf/machine/include/rockchip-extlinux.inc
> > new file mode 100644
> > index 000000000000..c73fb7d17e02
> > --- /dev/null
> > +++ b/conf/machine/include/rockchip-extlinux.inc
> > @@ -0,0 +1,10 @@
> > +UBOOT_EXTLINUX ?= "1"
> > +UBOOT_EXTLINUX_ROOT ?= "root=PARTLABEL=root"
> > +UBOOT_EXTLINUX_FDTDIR ?= ""
> 
> This should probably be checking for IMAGETYPE!=fitImage and then install at
> the very least the first entry in KERNEL_DEVICETREE? The same way it was
> done in IMAGE_BOOT_FILES before?

Good catch!

> > +UBOOT_EXTLINUX_CONSOLE ?= "console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8"
> > +UBOOT_EXTLINUX_KERNEL_ARGS ?= "rootwait rw rootfstype=ext4 earlycon"
> 
> earlycon seems to be new here. and also should probably be part of the
> console entry rather, no?

Sounds good.

> Maybe also abstract the ext4 type here into a variable and use that variable
> as fstype in the wks?

I'll do that as a separate, future patch.

> > +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
> 
> FWIW, I don't think /boot is required. bootstd/bootmeth in U-Boot (upstream
> at the very least) will check for / and then /boot prefix for the paths in
> extlinux.conf. Not providing /boot means if someone still wants to use a
> separate boot partition, they wouldn't have to update this variable. But
> since it's overridable, this is basically up to your preference.

This is a good example of working ahead. The next thing I have queued up is
a meta-rauc-rockchip example that works generically on all (most?) rockchip
boards. As part of the U-Boot script I need to make the A/B logic work, it
needs the "/boot" in there otherwise it doesn't work; therefore it's best to
set it up properly now.

> > +UBOOT_EXTLINUX_LABELS ?= "default"
> > +UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
> > +
> > +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "u-boot-extlinux"
> 
> Is the image actually bootable if we do NOT have u-boot-extlinux installed?
> I'm challenging the RRECOMMENDS basically. And wondering whether
> MACHINE_ESSENTIAL_EXTRA_* is always included (it seems like RDEPENDS one is
> part of packagegroup-core-boot which is virtually installed in all images).

I can double-check, but I'm pretty sure that line was added explicitly after
testing and noticing that it was needed. If we remove the extlinux artifacts
from the image, what boot method is U-Boot supposed to use?

> This is actually quite nice, I was wondering also if there was a way to
> create as many entries as there are Device Trees supported for the machine
> (and maybe even device tree overlays? but this one's difficult because we
> need knowledge of which device tree overlay can apply on top of which device
> tree(s) :) ). But I don't think we can have anonymous python in conf file?
> Or maybe we should do this in u-boot bbappend?

Yes. The bbclass has logic to generate as many entries as user-supplied labels
in UBOOT_EXTLINUX_LABELS:

https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/uboot-extlinux-config.bbclass#n114

I actually hint at the mechanism my providing the superfluous ":default"
entry.

> > diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
> > index 67a8310f7d6a..cae14c90e1db 100644
> > --- a/conf/machine/include/rockchip-wic.inc
> > +++ b/conf/machine/include/rockchip-wic.inc
> > @@ -1,5 +1,7 @@
> >   # common meta-rockchip wic/wks items
> > +require conf/machine/include/rockchip-extlinux.inc
> > +
> >   SPL_BINARY ?= "idbloader.img"
> >   IMAGE_FSTYPES += "wic wic.bmap"
> > @@ -11,23 +13,8 @@ WKS_FILE_DEPENDS ?= " \
> >   	virtual/bootloader \
> >   	virtual/kernel \
> >   	"
> 
> Does the WKS file still really depend on virtual/kernel or is it rather a
> misplaced dependency now?

Great catch! Also, since all the partitions now have explicit fstypes, and the
fact we no longer have a vfat-formatted /boot partition, the mtools-native and
dosfstools-native dependencies can also be removed.

It will probably get rejected, but I think I'm going to create a patch for wic
that assumes unspecified partitions are "none" instead of "vfat". I wonder how
many BSP layers are copy&past'ing the mtools and dosfstools dependencies that
aren't using vfat-based partitions and wondering why?

> The backward compatibility issues omitted, this is quite nice :)
> 
> Cheers,
> Quentin

