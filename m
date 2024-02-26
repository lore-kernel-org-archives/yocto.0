Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5130C5478C
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 15:31:20 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web10.23041.1708961476500849888
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 07:31:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=buLfS/KZ;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: twoerner@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5a089f333bdso584605eaf.3
        for <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 07:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708961474; x=1709566274; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PO6m9Q4A47JohVBXMxnfax46uAVpewK0DgvjnoLedxI=;
        b=buLfS/KZZKNpJLcob22o6hl4cQybAlT4ZnnPTKKhCDAPbhGhTk96hmFXN5twYgfWYl
         cl+5aBRnjJTNpr57niOV8DMYswXphRkWyo3DGwMT6VRui6s1KjcLE87P55Bl0X+4mTWs
         NWxlS4NBc2j6/WdXHdNJyfkOG6Lb7JqaBCJp/bhhoTGjgLS5GyrbhcDmxBi96kURNHfa
         jzufsQTz4LMhb1wNibKFiMCzZ+biJdiFtP+msS29uqeNhjAF6iTinSQo9i2zlXIPFoxh
         mn1OBUdF7JvWi1yDR7HTtNDkPBG0tSLdY9MuZ0cnCDWAD9L9EGVXXhaMa2Mpi5LioHq1
         6Fcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708961474; x=1709566274;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PO6m9Q4A47JohVBXMxnfax46uAVpewK0DgvjnoLedxI=;
        b=dmcLxOx91wC3+sCsE92jh1VVpwtKdB+7/wXubkKLG9O99+IR/8HdSiCZSPPtIGR3Ux
         LqUBq4BjD0JfC6H+hliFBfNvn5+1S+eho0AmeOTzKHEcKuTPc5BtXJsKoHu7ndSoblYt
         C2teZOStfU/M/SdgRAytEM6tqoWRmPjxPrcSrPL7jlv30zFcLU8DHdzOZHtCLrUBOX5N
         LV1opBRmjGYKKHULxkojpWvAJxK0ssvRJ+MpzF1cZPTFHRyjaiQt0yfrbfCNkZX4yq4R
         00Ls8PN+gdybW/DT9h5fU3aCcnQW6gpjSQYNJC4wvWsrONye9vHzMaPsv5BYkafPJ5fJ
         wJEA==
X-Gm-Message-State: AOJu0Yw6OdSa3qzyhxZXM/MiJJ38TeWucBrknLxzwDbOHtFcFnKGPAAs
	aXxdWyxo2PG/6TmCE9DDecTX1V6kTXd03OHF5megkNLXsGhakvy3OqUbsiB+
X-Google-Smtp-Source: AGHT+IHwQSguxI5+LNfrTDdvrHmAZloUCwFe8WABhd+h226UeLR4QlxpRuXFrGNVe8T1Oie+fK2QKQ==
X-Received: by 2002:a05:6358:b3c9:b0:17b:71cc:8f5a with SMTP id pb9-20020a056358b3c900b0017b71cc8f5amr9607743rwc.27.1708961474477;
        Mon, 26 Feb 2024 07:31:14 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id jy2-20020a05622a818200b0042e3468a98csm2565042qtb.4.2024.02.26.07.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 07:31:13 -0800 (PST)
Date: Mon, 26 Feb 2024 10:31:12 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [meta-rockchip][PATCH v4 3/5] rockchip.wks: add most
 Rockchip partitions
Message-ID: <20240226153111.GC32880@localhost>
References: <20240222170415.7061-1-twoerner@gmail.com>
 <17B63E2D2D80E632.27859@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17B63E2D2D80E632.27859@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 15:31:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62610

On Thu 2024-02-22 @ 12:04:13 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> Rockchip defines the expected layout/map of the default storage device.
> Fill out the wks description so it matches.
> 
>         https://opensource.rock-chips.com/wiki_Partitions
> 
> There are 2 partitions at the start that can not be specified in
> rockchip.wks due to a limitation in wic which assumes all sizes (e.g.
> --size or --fixed-size) are specified in units of 1024 bytes. Since these
> partitions don't fall on 1024-byte boundaries, they can not be specified at
> this time.
> 
> Note: in the Rockchip layout, not all partitions are expected to show up
> in the gpt partition table. While --no-table could be used to hide these
> partitions from the partition table, as specified in the wiki, there's
> no practical reason to do so. In fact, exposing these partitions in the
> partition table makes it easier and safer for users to interact with them.
> For example, a user dd'ing some data to a particular area would need to
> ensure they're using the correct offset and size values when accessing the
> raw disk directly. However being able to specify a partition ensures data
> won't accidentally "spill" out into adjacent regions.
> 
> Note: there is a mistake in the Rockchip table (which I've copied verbatim
> here in this commit message but corrected in rockchip.wks). Going by the
> values of the "Start Sector", the size of the "reserved1" partition is
> listed as being 2x its actual size/number of sectors.
> 
> Expected:
>         Partition       Start Sector       Number of Sectors    Partition Size     PartNum in GPT    Requirements
>         MBR             0      00000000    1       00000001     512       0.5KB
>         Primary GPT     1      00000001    63      0000003F     32256     31.5KB
>         loader1         64     00000040    7104    00001bc0     4096000   2.5MB    1                 preloader (miniloader or U-Boot SPL)
>         Vendor Storage  7168   00001c00    512     00000200     262144    256KB                      SN, MAC and etc.
>         Reserved Space  7680   00001e00    384     00000180     196608    192KB                      Not used
>         reserved1       8064   00001f80    128     00000080     65536     64KB                       legacy DRM key
>         U-Boot ENV      8128   00001fc0    64      00000040     32768     32KB
>         reserved2       8192   00002000    8192    00002000     4194304   4MB                        legacy parameter
>         loader2         16384  00004000    8192    00002000     4194304   4MB      2                 U-Boot or UEFI
>         trust           24576  00006000    8192    00002000     4194304   4MB      3                 trusted-os like ATF, OP-TEE
>         boot            32768  00008000    229376  00038000     117440512 112MB    4                 kernel, dtb, extlinux.conf, ramdisk
>         rootfs          262144 00040000    -       -            -         -MB      5                 Linux system
> 
> Prior to this patch:
>         # fdisk -l /dev/mmcblk1
>         GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
>         The backup GPT table is not on the end of the device.
>         Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
>         Units: sectors of 1 * 512 = 512 bytes
>         Sector size (logical/physical): 512 bytes / 512 bytes
>         I/O size (minimum/optimal): 512 bytes / 512 bytes
>         Disklabel type: gpt
>         Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> 
>         Device          Start     End Sectors   Size Type
>         /dev/mmcblk1p1     64    8063    8000   3.9M Microsoft basic data
>         /dev/mmcblk1p2   8064    8191     128    64K Microsoft basic data
>         /dev/mmcblk1p3   8192   16383    8192     4M Microsoft basic data
>         /dev/mmcblk1p4  16384   24575    8192     4M Microsoft basic data
>         /dev/mmcblk1p5  24576   32767    8192     4M Microsoft basic data
>         /dev/mmcblk1p6  32768  330955  298188 145.6M Microsoft basic data
>         /dev/mmcblk1p7 330956 1504693 1173738 573.1M Linux filesystem
> 
> New:
>         # fdisk -l /dev/mmcblk1
>         GPT PMBR size mismatch (1504473 != 30375935) will be corrected by write.
>         The backup GPT table is not on the end of the device.
>         Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
>         Units: sectors of 1 * 512 = 512 bytes
>         Sector size (logical/physical): 512 bytes / 512 bytes
>         I/O size (minimum/optimal): 512 bytes / 512 bytes
>         Disklabel type: gpt
>         Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0
> 
>         Device           Start     End Sectors   Size Type
>         /dev/mmcblk1p1      64    7167    7104   3.5M Linux filesystem
>         /dev/mmcblk1p2    7168    7679     512   256K Linux filesystem
>         /dev/mmcblk1p3    7680    8063     384   192K Linux filesystem
>         /dev/mmcblk1p4    8064    8127      64    32K Linux filesystem
>         /dev/mmcblk1p5    8128    8191      64    32K Linux filesystem
>         /dev/mmcblk1p6    8192   16383    8192     4M Linux filesystem
>         /dev/mmcblk1p7   16384   24575    8192     4M Linux filesystem
>         /dev/mmcblk1p8   24576   32767    8192     4M Linux filesystem
>         /dev/mmcblk1p9   32768  330955  298188 145.6M Microsoft basic data
>         /dev/mmcblk1p10 330956 1504439 1173484   573M Linux filesystem
> 
> Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> changes in v4:
> - remove all --no-table to include all partitions in the gpt table
> 
> changes in v3:
> - tweaked to accommodate offsets specified in sectors
> - clarified that the first 2 partitions can not be added
> - change name of vstorage to v_storage
> - fixed typo (ATR -> ATF)
> - added Quentin's tag
> 
> changes in v2:
> - expand the commit message to show past, expected, and new behaviour
> - spell out that vstorage stands for "vendor storage"
> ---
>  wic/rockchip.wks | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)

Applied to meta-rockchip, master branch.

