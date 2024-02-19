Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8942AC48BF8
	for <webhook@archiver.kernel.org>; Mon, 19 Feb 2024 17:48:46 +0000 (UTC)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
 by mx.groups.io with SMTP id smtpd.web10.531.1708364918125547633
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 09:48:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TeVfVxYM;
 spf=pass (domain: gmail.com, ip: 209.85.166.181, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-364f794f237so19727205ab.1
        for <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 09:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708364916; x=1708969716; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Okg42sH8NiK/Br7uEECJ5PGEY6dmE8kscXniwodDk5Y=;
        b=TeVfVxYMap7WmuVZFbjhHpn8rIebfFmWqfZJeRnDIWLLZ51AxhG0NxRcsciAJw1/eD
         HpglCaoeRKL7UWPGUKONU3d0XIHiEYpbVGgz+M0YD8/eZlopvWmmfigE3ysAXSLcsm/r
         yCCzcGQ+56ODMAKi1PUS1sVRCkkQS3YdeDkrSM/aeu82jIfZvCojxz2JH1w9g1pMy3hw
         Xz1SSTMeoszUUajQnL8tfG+QRZ3r9FyjnTLQLqufzvMUzJ5O0+tRFnd54u22y/aUHsgq
         Z2GPOBae1xVFHFtSN4h5xbBmzQW5CnGdU4ChX1aXEQZPX2tfLqD2s/9Niz30W1+uELTn
         7z+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708364916; x=1708969716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Okg42sH8NiK/Br7uEECJ5PGEY6dmE8kscXniwodDk5Y=;
        b=W1XsJCDUfSd7V1rANvcIlUMizCns0l4P2/0kpteIGPq/+iwSNHnpXnhSjfyMJnG3In
         fGcK7QbFlSktO5cPFnrl53n2SaJC0oWMSF3BtLtk/CS8QQLhyysz9c3dESMVClO46R7r
         kFuYt7voa09w1ApP3zcPtgMXf10xKjUK/BpYiHGCUBT1xUUZlrnAPNxPSY8mC5Vsl0TD
         4ZlvtEuS3nV9deZJTf5hL7fMLwmU4o9yehy76ih7tqkn6E0heNEHXUHl23rN6rQcWOXQ
         qyKxo2BZUMzrvKjHCzoDNXKKfiszvEYoIXuJxm87pC+EusEawOnKJnvWKi2VyLm8RbPK
         EZlw==
X-Gm-Message-State: AOJu0YxIU264MCK/LVuZVD32UQFwuw3vwJ62Vx88p3lAiyUOrJ2L7z5v
	c6Awv6PQ/MnK0C52kXFIs5Bj+f7WHQDTanDHlhZhCNUqpmYe789VHQRVc7cM
X-Google-Smtp-Source: AGHT+IES2OUV+BSd/lGSb6PF6s3wSrS8KqqewmnOLHz1sfdDIGq0KrEIgUSMz0QF+5iOE3RiWITihg==
X-Received: by 2002:a05:6e02:4ce:b0:363:d9eb:c2e0 with SMTP id f14-20020a056e0204ce00b00363d9ebc2e0mr10636377ils.28.1708364915970;
        Mon, 19 Feb 2024 09:48:35 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x5-20020a056e021ca500b00363ea5c0fb4sm2300208ill.70.2024.02.19.09.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 09:48:33 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v3 3/5] rockchip.wks: add most Rockchip partitions
Date: Mon, 19 Feb 2024 12:48:23 -0500
Message-ID: <20240219174825.7084-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240219174825.7084-1-twoerner@gmail.com>
References: <20240219174825.7084-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 17:48:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62543

Rockchip defines the expected layout/map of the default storage device.
Fill out the wks description so it matches.

        https://opensource.rock-chips.com/wiki_Partitions

There are 2 partitions at the start that can not be specified in
rockchip.wks due to a limitation in wic which assumes all sizes (e.g.
--size or --fixed-size) are specified in units of 1024 bytes. Due to the
fact these partitions don't fall on 1024-byte boundaries, they can not be
specified at this time.

Note: in the Rockchip layout, not all partitions are expected to show up
in the gpt partition table. This patch uses "--no-table" to only number the
partitions that are numbered in the Rockchip wiki, as well as to give these
partitions the partition numbers indicated in the wiki.

Note: there is a mistake in the Rockchip table (which I've copied verbatim
here in this commit message but corrected in rockchip.wks). Going by the
values of the "Start Sector", the size of the "reserved1" partition is
listed as being 2x its actual size/number of sectors.

Expected:
        Partition       Start Sector       Number of Sectors    Partition Size     PartNum in GPT    Requirements
        MBR             0      00000000    1       00000001     512       0.5KB
        Primary GPT     1      00000001    63      0000003F     32256     31.5KB
        loader1         64     00000040    7104    00001bc0     4096000   2.5MB    1                 preloader (miniloader or U-Boot SPL)
        Vendor Storage  7168   00001c00    512     00000200     262144    256KB                      SN, MAC and etc.
        Reserved Space  7680   00001e00    384     00000180     196608    192KB                      Not used
        reserved1       8064   00001f80    128     00000080     65536     64KB                       legacy DRM key
        U-Boot ENV      8128   00001fc0    64      00000040     32768     32KB
        reserved2       8192   00002000    8192    00002000     4194304   4MB                        legacy parameter
        loader2         16384  00004000    8192    00002000     4194304   4MB      2                 U-Boot or UEFI
        trust           24576  00006000    8192    00002000     4194304   4MB      3                 trusted-os like ATF, OP-TEE
        boot            32768  00008000    229376  00038000     117440512 112MB    4                 kernel, dtb, extlinux.conf, ramdisk
        rootfs          262144 00040000    -       -            -         -MB      5                 Linux system

Prior to this patch:
        # fdisk -l /dev/mmcblk1
        GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
        The backup GPT table is not on the end of the device.
        Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
        Units: sectors of 1 * 512 = 512 bytes
        Sector size (logical/physical): 512 bytes / 512 bytes
        I/O size (minimum/optimal): 512 bytes / 512 bytes
        Disklabel type: gpt
        Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0

        Device          Start     End Sectors   Size Type
        /dev/mmcblk1p1     64    8063    8000   3.9M Microsoft basic data
        /dev/mmcblk1p2   8064    8191     128    64K Microsoft basic data
        /dev/mmcblk1p3   8192   16383    8192     4M Microsoft basic data
        /dev/mmcblk1p4  16384   24575    8192     4M Microsoft basic data
        /dev/mmcblk1p5  24576   32767    8192     4M Microsoft basic data
        /dev/mmcblk1p6  32768  330955  298188 145.6M Microsoft basic data
        /dev/mmcblk1p7 330956 1504693 1173738 573.1M Linux filesystem

New:
        # fdisk -l /dev/mmcblk1
        GPT PMBR size mismatch (1504727 != 30375935) will be corrected by write.
        The backup GPT table is not on the end of the device.
        Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
        Units: sectors of 1 * 512 = 512 bytes
        Sector size (logical/physical): 512 bytes / 512 bytes
        I/O size (minimum/optimal): 512 bytes / 512 bytes
        Disklabel type: gpt
        Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0

        Device          Start     End Sectors   Size Type
        /dev/mmcblk1p1     64    7167    7104   3.5M Linux filesystem
        /dev/mmcblk1p2  16384   24575    8192     4M Linux filesystem
        /dev/mmcblk1p3  24576   32767    8192     4M Linux filesystem
        /dev/mmcblk1p4  32768  330955  298188 145.6M Microsoft basic data
        /dev/mmcblk1p5 330956 1504693 1173738 573.1M Linux filesystem

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v3:
- tweaked to accommodate offsets specified in sectors
- clarified that the first 2 partitions can not be added
- change name of vstorage to v_storage
- fixed typo (ATR -> ATF)
- added Quentin's tag

changes in v2:
- expand the commit message to show past, expected, and new behaviour
- spell out that vstorage stands for "vendor storage"
---
 wic/rockchip.wks | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 42b731ac47b2..b557f8137af1 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -8,17 +8,23 @@
 # See: https://opensource.rock-chips.com/wiki_Partitions
 #
 #   Partition   Start Sector    Number of Sectors
-#   loader1     64              8000        (idbloader / U-Boot SPL)
-#   reserved1   8064            128
-#   reserved2   8192            8192
+#   loader1     64              7104        (idbloader / U-Boot SPL)
+#   v_storage   7168            512         (vendor storage: e.g. serial number, MAC address, etc)
+#   reserved    7680            384         (not used)
+#   reserved1   8064            64          (legacy DRM key)
+#   uboot_env   8128            64          (U-Boo environment)
+#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
 #   loader2     16384           8192        (U-Boot proper)
-#   atf         24576           8192
+#   atf         24576           8192        (trusted OS e.g. ATF, OP-TEE, etc)
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 64s    --fixed-size 4000K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
-part reserved1  --offset 8064s  --fixed-size 64K     --fstype=none
-part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none
+part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none --no-table
+part reserved   --offset 7680s  --fixed-size 192K    --fstype=none --no-table
+part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none --no-table
+part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none --no-table
+part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none --no-table
 part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 24576s --fixed-size 4096K   --fstype=none
 part /boot      --offset 32768s --size       114688K --fstype=vfat --active   --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
-- 
2.43.0.76.g1a87c842ece3


