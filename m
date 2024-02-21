Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43C89C48BEB
	for <webhook@archiver.kernel.org>; Wed, 21 Feb 2024 19:03:11 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.2226.1708542182981130575
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 11:03:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V5J6UyK4;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-686a92a8661so5166116d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 11:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708542182; x=1709146982; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vj+nNKaFSFh98B6BgpKdEnh3c1zQA+//uz3BeYqzONc=;
        b=V5J6UyK49H0mRSxxr/2zKYuT6iTngyjp5PxcbM0waEhzMCvcAgcQoN02+Bn2oZ4Q/5
         nrufjYUfxoSa6vwBuUpfyN8U5+h91Yp1vGfm/O6INMAsGhAFJvcMnKpEigaOKomku36h
         1zI1ObsXHDzZe2nYhYYeuv+ymTSLx61a4smq8W44S8hzW+8sQ2fxezvFnSvVrbAWnncl
         Z3NGKvLumoZ5w9x+B/U6lEfMquYFT+paAahWjXDAjC8SjMQQrjzcob22loDD/6OqWCEW
         aGqxBSK3d97MfRSoEFtmHJ3pnsRimjNQKSFErklf3lQr28njxoFovoK2NVquvnplv/IY
         qbWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708542182; x=1709146982;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vj+nNKaFSFh98B6BgpKdEnh3c1zQA+//uz3BeYqzONc=;
        b=eClrxUHSqP+SHlXbyjvh3SWMUU+jPmc2jS8sHTWP5Of0rsb3zOi9yKGWjjhI98ZIxB
         H/l9aoubYmmn8ygSLGTbH8ImNlSaRBTSQK2J0gTIyJnfGBMxENebI+y18lJGMHVoGwTy
         95hm89XOcSCim24xZ8rU5NJfzxwE87KqytNusIOoA0UXZldcZdNIYhVjl7Zc4+l/22p0
         2unHHfGGc2iFt24qUD9VUvgkMa1cqt7kwbrB8X2Vrv59Abu+ZuN7pY/UVk1oKJ7qGSUP
         dCO7q6GFkLkqlsvxbMg0vNBjPJU8JIBYm6u26WqlI9ixPTX4RZJmMz3esAk6cZNmo4zd
         e7HA==
X-Gm-Message-State: AOJu0Yxg5Ladkimph6aUi8kYpHkE8KbVrnkMSQB1HEw4RheP3BN8zFgn
	fTBg4Vym9vGOiON0s1/dh7Sp1SJOPjzA7AIa2KEfc+FJtO2gmVKZ
X-Google-Smtp-Source: AGHT+IF7l6n28ENniZjJUc+cOSuMksgOhW/1/qyQVueIUst/G3iq8Wqm2IAJQfZ5eoiGMZ3sOW6CYg==
X-Received: by 2002:a0c:9c44:0:b0:68f:417a:4767 with SMTP id w4-20020a0c9c44000000b0068f417a4767mr15517895qve.41.1708542181953;
        Wed, 21 Feb 2024 11:03:01 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id mv10-20020a056214338a00b0068fa3c1d3c6sm1004974qvb.105.2024.02.21.11.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 11:03:00 -0800 (PST)
Date: Wed, 21 Feb 2024 14:02:59 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org, Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [meta-rockchip][PATCH v3 3/5] rockchip.wks: add most
 Rockchip partitions
Message-ID: <20240221190258.GA9052@localhost>
References: <20240219174825.7084-1-twoerner@gmail.com>
 <20240219174825.7084-3-twoerner@gmail.com>
 <8e79bf15-5469-414e-9723-f18fe7c4f424@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8e79bf15-5469-414e-9723-f18fe7c4f424@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 19:03:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62558

On Wed 2024-02-21 @ 07:38:41 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 2/19/24 18:48, Trevor Woerner via lists.yoctoproject.org wrote:
> > Rockchip defines the expected layout/map of the default storage device.
> > Fill out the wks description so it matches.
> > 
> >          https://opensource.rock-chips.com/wiki_Partitions
> > 
> > There are 2 partitions at the start that can not be specified in
> > rockchip.wks due to a limitation in wic which assumes all sizes (e.g.
> > --size or --fixed-size) are specified in units of 1024 bytes. Due to the
> > fact these partitions don't fall on 1024-byte boundaries, they can not be
> > specified at this time.
> > 
> > Note: in the Rockchip layout, not all partitions are expected to show up
> > in the gpt partition table. This patch uses "--no-table" to only number the
> > partitions that are numbered in the Rockchip wiki, as well as to give these
> > partitions the partition numbers indicated in the wiki.
> > 
> > Note: there is a mistake in the Rockchip table (which I've copied verbatim
> > here in this commit message but corrected in rockchip.wks). Going by the
> > values of the "Start Sector", the size of the "reserved1" partition is
> > listed as being 2x its actual size/number of sectors.
> > 
> > Expected:
> >          Partition       Start Sector       Number of Sectors    Partition Size     PartNum in GPT    Requirements
> >          MBR             0      00000000    1       00000001     512       0.5KB
> >          Primary GPT     1      00000001    63      0000003F     32256     31.5KB
> >          loader1         64     00000040    7104    00001bc0     4096000   2.5MB    1                 preloader (miniloader or U-Boot SPL)
> >          Vendor Storage  7168   00001c00    512     00000200     262144    256KB                      SN, MAC and etc.
> >          Reserved Space  7680   00001e00    384     00000180     196608    192KB                      Not used
> >          reserved1       8064   00001f80    128     00000080     65536     64KB                       legacy DRM key
> >          U-Boot ENV      8128   00001fc0    64      00000040     32768     32KB
> >          reserved2       8192   00002000    8192    00002000     4194304   4MB                        legacy parameter
> >          loader2         16384  00004000    8192    00002000     4194304   4MB      2                 U-Boot or UEFI
> >          trust           24576  00006000    8192    00002000     4194304   4MB      3                 trusted-os like ATF, OP-TEE
> >          boot            32768  00008000    229376  00038000     117440512 112MB    4                 kernel, dtb, extlinux.conf, ramdisk
> >          rootfs          262144 00040000    -       -            -         -MB      5                 Linux system
> > 
> > Prior to this patch:
> >          # fdisk -l /dev/mmcblk1
> >          GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
> >          The backup GPT table is not on the end of the device.
> >          Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
> >          Units: sectors of 1 * 512 = 512 bytes
> >          Sector size (logical/physical): 512 bytes / 512 bytes
> >          I/O size (minimum/optimal): 512 bytes / 512 bytes
> >          Disklabel type: gpt
> >          Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> > 
> >          Device          Start     End Sectors   Size Type
> >          /dev/mmcblk1p1     64    8063    8000   3.9M Microsoft basic data
> >          /dev/mmcblk1p2   8064    8191     128    64K Microsoft basic data
> >          /dev/mmcblk1p3   8192   16383    8192     4M Microsoft basic data
> >          /dev/mmcblk1p4  16384   24575    8192     4M Microsoft basic data
> >          /dev/mmcblk1p5  24576   32767    8192     4M Microsoft basic data
> >          /dev/mmcblk1p6  32768  330955  298188 145.6M Microsoft basic data
> >          /dev/mmcblk1p7 330956 1504693 1173738 573.1M Linux filesystem
> > 
> > New:
> >          # fdisk -l /dev/mmcblk1
> >          GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
> >          The backup GPT table is not on the end of the device.
> >          Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
> >          Units: sectors of 1 * 512 = 512 bytes
> >          Sector size (logical/physical): 512 bytes / 512 bytes
> >          I/O size (minimum/optimal): 512 bytes / 512 bytes
> >          Disklabel type: gpt
> >          Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> > 
> >          Device          Start     End Sectors   Size Type
> >          /dev/mmcblk1p1     64    7167    7104   3.5M Linux filesystem
> >          /dev/mmcblk1p2  16384   24575    8192     4M Linux filesystem
> >          /dev/mmcblk1p3  24576   32767    8192     4M Linux filesystem
> >          /dev/mmcblk1p4  32768  330955  298188 145.6M Microsoft basic data
> >          /dev/mmcblk1p5 330956 1504693 1173738 573.1M Linux filesystem
> > 
> > Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> > changes in v3:
> > - tweaked to accommodate offsets specified in sectors
> > - clarified that the first 2 partitions can not be added
> > - change name of vstorage to v_storage
> > - fixed typo (ATR -> ATF)
> > - added Quentin's tag
> > 
> > changes in v2:
> > - expand the commit message to show past, expected, and new behaviour
> > - spell out that vstorage stands for "vendor storage"
> > ---
> >   wic/rockchip.wks | 20 +++++++++++++-------
> >   1 file changed, 13 insertions(+), 7 deletions(-)
> > 
> > diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> > index 42b731ac47b2..b557f8137af1 100644
> > --- a/wic/rockchip.wks
> > +++ b/wic/rockchip.wks
> > @@ -8,17 +8,23 @@
> >   # See: https://opensource.rock-chips.com/wiki_Partitions
> >   #
> >   #   Partition   Start Sector    Number of Sectors
> > -#   loader1     64              8000        (idbloader / U-Boot SPL)
> > -#   reserved1   8064            128
> > -#   reserved2   8192            8192
> > +#   loader1     64              7104        (idbloader / U-Boot SPL)
> > +#   v_storage   7168            512         (vendor storage: e.g. serial number, MAC address, etc)
> > +#   reserved    7680            384         (not used)
> > +#   reserved1   8064            64          (legacy DRM key)
> > +#   uboot_env   8128            64          (U-Boo environment)
> > +#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
> >   #   loader2     16384           8192        (U-Boot proper)
> > -#   atf         24576           8192
> > +#   atf         24576           8192        (trusted OS e.g. ATF, OP-TEE, etc)
> >   #   boot        32768           229376
> >   #   root        262144          -           (suggested)
> > -part loader1    --offset 64s    --fixed-size 4000K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> > -part reserved1  --offset 8064s  --fixed-size 64K     --fstype=none
> > -part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none
> > +part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> > +part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none --no-table
> > +part reserved   --offset 7680s  --fixed-size 192K    --fstype=none --no-table
> > +part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none --no-table
> 
> I would have kept this one and...
> 
> > +part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none --no-table
> > +part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none --no-table
> 
> this one in the table to keep the offsets identical before and after this
> patch is applied.
> 
> If you don't care about this, then I strongly suggest to have uboot_env
> actually a partition (and maybe v_storage as well), those partitions are the
> only ones among the one removed now that would make some sense to me to
> expose to the user.

My preference would be to make them all show up in the partition table. If
you're okay with that then I'm happy to spin a v4 to remove --no-table from
all entries that have it in v3.

The conundrum is whether or not to follow what Rockchip dictates in:
https://opensource.rock-chips.com/wiki_Partitions

By removing /boot I guess we're not going to be following what Rockchip says
anyway, so we might as well expose them all for maximum flexibility.

