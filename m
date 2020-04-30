Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web12.1115.1588290741868320592
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 16:52:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ft4Pr0Ko;
 spf=pass (domain: konsulko.com, ip: 209.85.160.175, mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f175.google.com with SMTP id 71so6680389qtc.12
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 16:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=j7q6kxysm/F6rRruCp/oV0QbxK4F6qnsWILUUevoSSk=;
        b=ft4Pr0KokmNTxu8dfE82uBVEl9ejRRAw4CwP+MyqAxZ+cEeN8TdSx5gXT+hIER1t3Y
         V1zDvoXMC5gFq4P0Ojq20jXwD16bWRX1TbPhHjY1hj960UggrMJYeSXV6xagVHZM1oqP
         fQX9V3e4uyjca4aPkVoK/iNpdnYiE/zUFWR/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=j7q6kxysm/F6rRruCp/oV0QbxK4F6qnsWILUUevoSSk=;
        b=ls8zMmHBR8+BjdNU9NEAz6aJt30CaFylV7H6Noxguzv+Ypxhn5hAellbVY1CCjDf4W
         mP24sd10h+3IslLSs+wEa3t60UF/SqvhH32c6Kw7z2/7/MSObcK6eJstjItmH9JKJoen
         ZYPupZe9dp7cmZBh6PhesveIZerM3/TG70XLBpDW1QMDRnola6ywJ2rcyutwf46fDmyf
         Ykgv9lolbpTU7uyuvBC+5YuEQVLO+PEIIda9TIvjFA9NP0k41bZznXXf78DPbkM2D+hS
         iTgD/9VXoW1psQLuZU3dZ9n1RrnFflIMA4m8j9xoycXfq4a26uKYeQgNGsSVsNi20bUG
         YQsw==
X-Gm-Message-State: AGi0Pub/3sPuFSNJt+K2wzTMU993FqzFn5dZBS1JupyJoMqaT6nXcUi2
	8lP8RIYDEYCpENNL27P4wcnuUVZFChQ=
X-Google-Smtp-Source: APiQypKdRhTfGPoTC0hh01pq3wUnRQRJA8GA55NTmLHJWWQCJMnHcEgwpVJhzGjkrU1rJ2jXGiORMQ==
X-Received: by 2002:ac8:51cd:: with SMTP id d13mr1194278qtn.174.1588290740476;
        Thu, 30 Apr 2020 16:52:20 -0700 (PDT)
Return-Path: <scott.murray@konsulko.com>
Received: from godzilla (198-84-179-103.cpe.teksavvy.com. [198.84.179.103])
        by smtp.gmail.com with ESMTPSA id q6sm1191449qte.72.2020.04.30.16.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2020 16:52:19 -0700 (PDT)
Date: Thu, 30 Apr 2020 19:51:57 -0400 (EDT)
From: "Scott Murray" <scott.murray@konsulko.com>
X-X-Sender: scottm@godzilla.spiteful.org
To: yocto@lists.yoctoproject.org
cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] [WIC] Wic creates spurious partition
In-Reply-To: <eafa7325-fd3f-9fce-8cf5-d22a6bad9452@ibeeto.com>
Message-ID: <alpine.LFD.2.21.2004301945250.3815@godzilla.spiteful.org>
References: <eafa7325-fd3f-9fce-8cf5-d22a6bad9452@ibeeto.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463811583-865997926-1588290739=:3815"

---1463811583-865997926-1588290739=:3815
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Thu, 30 Apr 2020, Rudolf J Streif wrote:

> I seem to be running into wic problems today...
>
> I have the following wks file:
>
> >>>>>
> part SPL --source rawcopy --sourceparams="file=SPL" --ondisk mmcblk
> --no-table --align 1
> part u-boot --source rawcopy --sourceparams="file=${UBOOT_BINARY}"
> --ondisk mmcblk --no-table --align 69
> part /boot --source bootimg-partition --ondisk mmcblk1 --fstype=vfat
> --label boot --active --align 4096 --fixed-size 16
>
> part /mnt/persistent --ondisk mmcblk1 --fstype=ext4 --label persistent
> --fixed-size 10
> part / --source rootfs --ondisk mmcblk1 --fstype=ext4 --label rootfs1
> --size 500
> part /mnt/rootfs2 --source rootfs --ondisk mmcblk1 --fstype=ext4 --label
> rootfs2 --size 500
> part /mnt/internal_storage --ondisk mmcblk1 --fstype=ext4 --label data
> --size 1000
>
> bootloader --ptable msdos
> >>>>>
>
> That should create 7 partitions of which 5 have a file system. However,
> when I flash the emmc with it and boot the device:
>
> # fdisk /dev/mmcblk1
>
> Disk /dev/mmcblk1: 3.62 GiB, 3867148288 bytes, 7553024 sectors
> Units: sectors of 1 * 512 = 512 bytes
> Sector size (logical/physical): 512 bytes / 512 bytes
> I/O size (minimum/optimal): 512 bytes / 512 bytes
> Disklabel type: dos
> Disk identifier: 0x0813790a
>
> Device         Boot   Start     End Sectors  Size Id Type
> /dev/mmcblk1p1 *       8192   40959   32768   16M  c W95 FAT32 (LBA)
> /dev/mmcblk1p2        40960   61439   20480   10M 83 Linux
> /dev/mmcblk1p3        61440 1392639 1331200  650M 83 Linux
> /dev/mmcblk1p4      1392640 4771841 3379202  1.6G  f W95 Ext'd (LBA)
> /dev/mmcblk1p5      1392641 2723840 1331200  650M 83 Linux
> /dev/mmcblk1p6      2723842 4771841 2048000 1000M 83 Linux
>
> There is another partition that essentially overlaps the last two. That
> makes no sense.

That makes sense for DOS partitioning; there can only be 4 primary
partitions, so number 4 is marked as an extended partition with the
total space of the further logical partitions.

Scott

---1463811583-865997926-1588290739=:3815--
