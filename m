Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1C49C48BC4
	for <webhook@archiver.kernel.org>; Sun, 18 Feb 2024 17:13:03 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.21940.1708276376693137460
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Feb 2024 09:12:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S3Us2SGj;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-68f51ba7043so8294306d6.3
        for <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 09:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708276376; x=1708881176; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TfC4nW++XBebif+/pTHkr5Dxgs/CVZ7DdvnliRiyGhM=;
        b=S3Us2SGjGozV81J0knTR8qSDyTiqRdIH4SNu3mySM+7CXjl0cirZGNYrhwYIfcrk+V
         N+rb9gtPuCOMzfRJ7uKmZxZZzVLntOu3TLcrtcW+YYzMih9cLFf35rtAkqsYIEB3XcbC
         yPJfsM7EpgdlmRZAgnmEA+01eV3s8fUcLwCJuxLEoDBddh0Qc5c0xd9arzhvnmkFJYkY
         8+sG6LrstH2+svr6DreBTEmPndt3GBRUnyRSowzWrUQ+3nXgiuNjq94Ynhl3YVi5eS2E
         K2XrTUhL4uppT0qLk8R73QjjSqM/0KF2ajLefMId8Jry73rNuEdwyZRAMrCTSrHZF/Wu
         uSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708276376; x=1708881176;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TfC4nW++XBebif+/pTHkr5Dxgs/CVZ7DdvnliRiyGhM=;
        b=DOZkQbtLORNY6GJzlDtiEm35uy7EpJLgjN2QhtZnOwVfTxameFjNpNrqbhfIb8kcGU
         cQlkCa1BumgVevmJ3zwkE0aVTkgt09iR+57HqlZwQosYdLkD7yP/DrAoEZO8LVVylYAD
         UtKg7IsggpAqNk0U+IQxuy3MGQZ+LoAn4+8jyOND9wstmaVL5N1hfVPY4BGMHhIKcDX/
         TQJdQaCsnk+sIT7j6Cjdl036iNxJoL1U1dczRBqD/mq8bUk3uNR/wD5ZFctJ/FjqlLV8
         5yEXzcpPRgpxuPnho9/b4Smy2VX6rhOoU1TEuLaW4LrJOGDYpdIJHqPSR2dpF8i6iQEi
         2Hbg==
X-Gm-Message-State: AOJu0YwLZ1EEQL3hzewsdYAP7cyPYet/PN18YnqCzQApGUMBZAHSwPLD
	8lnmZFjWJ7RGvWFLTTodeM3iFwtka37Aryy8rkiqt1YoNu/ORseBr8EquR4x
X-Google-Smtp-Source: AGHT+IEcG5t84lzbO4ZesUJrkzImI9K0d5J/PcwC2/NJKjsaKlVr5zhfQgEKHP8imEYkgwcdccU+Eg==
X-Received: by 2002:a05:6214:3110:b0:68c:a578:47df with SMTP id ks16-20020a056214311000b0068ca57847dfmr14322898qvb.21.1708276375624;
        Sun, 18 Feb 2024 09:12:55 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id e20-20020a056214163400b0068f128fc550sm30656qvw.131.2024.02.18.09.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 09:12:54 -0800 (PST)
Date: Sun, 18 Feb 2024 12:12:52 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH v2 2/4] rockchip.wks: add all
 Rockchip partitions
Message-ID: <20240218171252.GA28169@localhost>
References: <20240216082922.7873-1-twoerner@gmail.com>
 <20240216082922.7873-2-twoerner@gmail.com>
 <62ce91fe-9bb8-41fe-940d-59ce77ac9cfe@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <62ce91fe-9bb8-41fe-940d-59ce77ac9cfe@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 17:13:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62534

On Fri 2024-02-16 @ 10:48:59 AM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 2/16/24 09:29, Trevor Woerner via lists.yoctoproject.org wrote:
> > Rockchip defines the expected layout/map of the default storage device.
> > Fill out the wks description so it matches.
> > 
> > 	https://opensource.rock-chips.com/wiki_Partitions
> > 
> > Note: in the Rockchip layout, not all partitions are expected to show up
> > in the gpt partition table. This patch uses "--no-table" to only number the
> > partitions that are numbered in the Rockchip wiki, as well as to give these
> > partitions the partition numbers indicated in the wiki.
> > 
> > Note: there is a mistake in the Rockchip table (which I've copied
> > verbatim here). Going by the values of the "Start Sector", the size of
> > the "reserved1" partition is listed as being 2x its actual size/number of
> > sectors.
> > 
> > Expected:
> > 	Partition       Start Sector       Number of Sectors    Partition Size     PartNum in GPT    Requirements
> > 	MBR             0      00000000    1       00000001     512       0.5KB
> > 	Primary GPT     1      00000001    63      0000003F     32256     31.5KB
> > 	loader1         64     00000040    7104    00001bc0     4096000   2.5MB    1                 preloader (miniloader or U-Boot SPL)
> > 	Vendor Storage  7168   00001c00    512     00000200     262144    256KB                      SN, MAC and etc.
> > 	Reserved Space  7680   00001e00    384     00000180     196608    192KB                      Not used
> > 	reserved1       8064   00001f80    128     00000080     65536     64KB                       legacy DRM key
> > 	U-Boot ENV      8128   00001fc0    64      00000040     32768     32KB
> > 	reserved2       8192   00002000    8192    00002000     4194304   4MB                        legacy parameter
> > 	loader2         16384  00004000    8192    00002000     4194304   4MB      2                 U-Boot or UEFI
> > 	trust           24576  00006000    8192    00002000     4194304   4MB      3                 trusted-os like ATF, OP-TEE
> > 	boot            32768  00008000    229376  00038000     117440512 112MB    4                 kernel, dtb, extlinux.conf, ramdisk
> > 	rootfs          262144 00040000    -       -            -         -MB      5                 Linux system
> > 
> > Prior to this patch:
> > 	# fdisk -l /dev/mmcblk1
> > 	GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
> > 	The backup GPT table is not on the end of the device.
> > 	Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
> > 	Units: sectors of 1 * 512 = 512 bytes
> > 	Sector size (logical/physical): 512 bytes / 512 bytes
> > 	I/O size (minimum/optimal): 512 bytes / 512 bytes
> > 	Disklabel type: gpt
> > 	Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> > 
> > 	Device          Start     End Sectors   Size Type
> > 	/dev/mmcblk1p1     64    8063    8000   3.9M Microsoft basic data
> > 	/dev/mmcblk1p2   8064    8191     128    64K Microsoft basic data
> > 	/dev/mmcblk1p3   8192   16383    8192     4M Microsoft basic data
> > 	/dev/mmcblk1p4  16384   24575    8192     4M Microsoft basic data
> > 	/dev/mmcblk1p5  24576   32767    8192     4M Microsoft basic data
> > 	/dev/mmcblk1p6  32768  330955  298188 145.6M Microsoft basic data
> > 	/dev/mmcblk1p7 330956 1504693 1173738 573.1M Linux filesystem
> > 
> > New:
> > 	# fdisk -l /dev/mmcblk1
> > 	GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
> > 	The backup GPT table is not on the end of the device.
> > 	Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
> > 	Units: sectors of 1 * 512 = 512 bytes
> > 	Sector size (logical/physical): 512 bytes / 512 bytes
> > 	I/O size (minimum/optimal): 512 bytes / 512 bytes
> > 	Disklabel type: gpt
> > 	Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> > 
> > 	Device          Start     End Sectors   Size Type
> > 	/dev/mmcblk1p1     64    7167    7104   3.5M Linux filesystem
> > 	/dev/mmcblk1p2  16384   24575    8192     4M Linux filesystem
> > 	/dev/mmcblk1p3  24576   32767    8192     4M Linux filesystem
> > 	/dev/mmcblk1p4  32768  330955  298188 145.6M Microsoft basic data
> > 	/dev/mmcblk1p5 330956 1504693 1173738 573.1M Linux filesystem
> > 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> > changes in v2:
> > - expand the commit message to show past, expected, and new behaviour
> > - spell out that vstorage stands for "vendor storage"
> > ---
> >   wic/rockchip.wks | 20 +++++++++++++-------
> >   1 file changed, 13 insertions(+), 7 deletions(-)
> > 
> > diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> > index b14ec0d1690a..034443d90050 100644
> > --- a/wic/rockchip.wks
> > +++ b/wic/rockchip.wks
> > @@ -9,17 +9,23 @@
> >   # wic uses 1KB blocks. The following table uses 512 byte sectors:
> >   #
> >   #   Partition   Start Sector    Number of Sectors
> > -#   loader1     64              8000        (idbloader / U-Boot SPL)
> > -#   reserved1   8064            128
> > -#   reserved2   8192            8192
> > +#   loader1     64              7104        (idbloader / U-Boot SPL)
> > +#   vstorage    7168            512         (vendor storage: e.g. serial number, MAC address, etc)
> > +#   reserved    7680            384         (not used)
> > +#   reserved1   8064            64          (legacy DRM key)
> > +#   uboot_env   8128            64          (U-Boot environment)
> 
> I'm surprised this isn't a partition, because then I assume it'd be easier
> to use fw_setenv/fw_printenv from Linux userspace to interact with U-Boot's
> env?
> 
> But if we make it a partition, then the partition number for the next
> partitions are now off by one compared to what we have today, no perfect
> solution here :)

There are 2 pieces that need to be defined to interact with a U-Boot
environment:
- a U-Boot config
	to setup the environment's storage
- an /etc/fw_env.config file in Linux user-space
	so that the fw_printenv and fw_setenv Linux user-space programs can
	interact with the U-Boot environment from Linux user-space

If we use a partition in which to store the U-Boot environment then we need:
- U-Boot config (assuming it's stored in mmcblkXp6 of a fat partition):
	CONFIG_ENV_SIZE=0x8000
	CONFIG_ENV_IS_IN_FAT=y
	CONFIG_ENV_FAT_DEVICE_AND_PART="1:6"
- /etc/fw_env.config
	/boot/uboot.env 0x0000 ${UBOOT_ENV_SIZE}

If, instead, we use a raw block device:
- U-Boot
	CONFIG_ENV_SIZE=0x8000
	CONFIG_ENV_OFFSET=0x3f8000
	CONFIG_ENV_IS_IN_MMC=y
	CONFIG_SYS_MMC_ENV_DEV=1
- /etc/fw_env.config
	/dev/mmcblk1p6 0x0000 ${UBOOT_ENV_SIZE}

I don't think one is easier than the other. If they're configured properly
one is as easy, or as difficult, as the other. I already have plans and
patches to add this to meta-rockchip, so it will all be handled by the BSP.
From the user's point of view it will all work, regardless of which one is
actually implemented.

I'm working on making the "1", from above variable based on which MACHINE is
specified. The "6", "0x8000", "0x3f8000" should be synchronized with what's in
the wic/partitioning.

> > +#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
> >   #   loader2     16384           8192        (U-Boot proper)
> > -#   atf         24576           8192
> > +#   atf         24576           8192        (trusted OS e.g. ATR, OP-TEE, etc)
> >   #   boot        32768           229376
> >   #   root        262144          -           (suggested)
> > -part loader1    --offset 32     --fixed-size 4000K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> > -part reserved1  --offset 4032   --fixed-size 64K      --fstype=none
> > -part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
> > +part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> > +part vstorage   --offset 3584   --fixed-size 256K     --fstype=none  --no-table
> > +part reserved   --offset 3840   --fixed-size 192K     --fstype=none  --no-table
> > +part reserved1  --offset 4032   --fixed-size 32K      --fstype=none  --no-table
> > +part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none  --no-table
> > +part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none  --no-table
> >   part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> >   part atf        --offset 12288  --fixed-size 4096K    --fstype=none
> >   part /boot      --offset 16384  --size       114688K  --fstype=vfat  --active  --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
> > 
> 
> Wow, just realized that --offset doesn't have a unit (so thought B) and
> fixed-size has one. offset default unit if missing is K and fixed-size's
> M... Maybe we could also specify the unit for offset to be K so that it's a
> bit less confusing (or if you want to switch to S for sector to match the
> documentation above?).

I wasn't aware of the s/S suffix for specifying offsets in the wic file! It
took me a couple times to figure out what you were referring to in this and
previous emails. Aha! That makes it a bit nicer! I decided to go with the s/S
suffix for the offsets in the wic file. I thought it would be a quick 2-liner
to also be able to specify s/S for the sizes too (--fixed-size/--size) but
unfortunately the assumption that everything is a multiple of 1024 wrt sizing
is buried too deep in wic's internals to make this an easy change.

I submitted, then retracted, a 2-liner to oe-core in an attempt to specify the
sizes in sectors as well. This keeps us from being able to fully specify the
Rockchip partition scheme. Thankfully the 2 we can't specify are together, at
the start, and aren't really needed for anything important to us. Thankfully
the rest of the table is aligned on 1024-byte boundaries.

