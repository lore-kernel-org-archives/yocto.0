Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 215E0C54E41
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 17:04:39 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.18083.1708621472184445864
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 09:04:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jSohg0EU;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-787aca0b502so3464785a.1
        for <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 09:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708621470; x=1709226270; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bT1lrq1CuwjHEpY6Fw6BfB9P7+U4TdSporDF8e9nens=;
        b=jSohg0EUpUVaSC0bWq6F0a2RZY3ibrRYBcZwBjq+yCSYwkpsob0g31yOCYRhRRpfAe
         ScB4dciEWemr2SrT2x7JRSobq3MyrA+SPahl/DW+g0iAE9XA5OZet+6qZx/gs2r+v7F9
         gQBXOkYjeBvalil15nNATbe0LbL3zG9N2+jhi6V9dVIvj5WNelZDagwEYkuncueKcmAY
         CUo/RHz+xHBFYMlvU3u4mxFmmtywpr3DFo9ZmbKOUKb9tg6vrjnhgDfAXpYY0rFMMeiQ
         Z7cQEF3XgCDGJBiakbUtvfIfo5t9OqH8CIjgzOPeNdzERPHIoL6HZUEsQUCRD+pStqks
         5UkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708621470; x=1709226270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bT1lrq1CuwjHEpY6Fw6BfB9P7+U4TdSporDF8e9nens=;
        b=oBMCPGDTCs+cHBcL5GFl/7ILztzQP0vKrRwk43an+A0Gel2f0LCz7EtAFfgGX3Rhbw
         UCGuq97UZLeJMl/GhSoyyaDnnR58l0eguIEQ7+nfIIjzowRvznaWuC1+GsmK5fvKw/Zz
         X1onmqAybEqJe4aaZS3XOuGp5MnNuVTi2CpispkApKjPnTFpCf5Wrq8ldy1jfFjkmBbH
         g6EkuP0eYyZnNt+qSorDxr0mLSrVgl7FDqff6+MZeZRTjfBI/vr/gx9oIYXfj61FlhUj
         8xf+mGtGl4+LsJ9MvshlDnd9wddXom+mdMq0rqJIqb6/Nc6wihMXeo6cHKn5ph1YAKN1
         GSLw==
X-Gm-Message-State: AOJu0YzallIzxYJwx4Kp2BJS6xwgESDpKzJdKsu+AllAOEWA30Ve7t+j
	ayI7YJAW4M1Xmsc9dxhNbBMH254zSA/mPOcREvn+WB1YCOAFfCutNYVBiYa8
X-Google-Smtp-Source: AGHT+IHHSkZeVo2iYEBs7o05Vz+Qpd9WOTDjVzxpjRN5lNY9z1RdsK+Gat+s1nSYCUPY6oh4WxnpLw==
X-Received: by 2002:a05:620a:12c8:b0:787:25c7:1be6 with SMTP id e8-20020a05620a12c800b0078725c71be6mr24259423qkl.30.1708621469984;
        Thu, 22 Feb 2024 09:04:29 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id qj17-20020a05620a881100b007872541c53bsm265848qkn.24.2024.02.22.09.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:04:27 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v4 3/5] rockchip.wks: add most Rockchip partitions
Date: Thu, 22 Feb 2024 12:04:13 -0500
Message-ID: <20240222170415.7061-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240222170415.7061-1-twoerner@gmail.com>
References: <20240222170415.7061-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 17:04:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62570

Rockchip defines the expected layout/map of the default storage device.
Fill out the wks description so it matches.

        https://opensource.rock-chips.com/wiki_Partitions

There are 2 partitions at the start that can not be specified in
rockchip.wks due to a limitation in wic which assumes all sizes (e.g.
--size or --fixed-size) are specified in units of 1024 bytes. Since these
partitions don't fall on 1024-byte boundaries, they can not be specified at
this time.

Note: in the Rockchip layout, not all partitions are expected to show up
in the gpt partition table. While --no-table could be used to hide these
partitions from the partition table, as specified in the wiki, there's
no practical reason to do so. In fact, exposing these partitions in the
partition table makes it easier and safer for users to interact with them.
For example, a user dd'ing some data to a particular area would need to
ensure they're using the correct offset and size values when accessing the
raw disk directly. However being able to specify a partition ensures data
won't accidentally "spill" out into adjacent regions.

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
        GPT PMBR size mismatch (1504473 != 30375935) will be corrected by write.
        The backup GPT table is not on the end of the device.
        Disk /dev/mmcblk1: 14.48 GiB, 15552479232 bytes, 30375936 sectors
        Units: sectors of 1 * 512 = 512 bytes
        Sector size (logical/physical): 512 bytes / 512 bytes
        I/O size (minimum/optimal): 512 bytes / 512 bytes
        Disklabel type: gpt
        Disk identifier: 00000000-0000-0000-0000-00004D9B9EF0

        Device           Start     End Sectors   Size Type
        /dev/mmcblk1p1      64    7167    7104   3.5M Linux filesystem
        /dev/mmcblk1p2    7168    7679     512   256K Linux filesystem
        /dev/mmcblk1p3    7680    8063     384   192K Linux filesystem
        /dev/mmcblk1p4    8064    8127      64    32K Linux filesystem
        /dev/mmcblk1p5    8128    8191      64    32K Linux filesystem
        /dev/mmcblk1p6    8192   16383    8192     4M Linux filesystem
        /dev/mmcblk1p7   16384   24575    8192     4M Linux filesystem
        /dev/mmcblk1p8   24576   32767    8192     4M Linux filesystem
        /dev/mmcblk1p9   32768  330955  298188 145.6M Microsoft basic data
        /dev/mmcblk1p10 330956 1504439 1173484   573M Linux filesystem

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v4:
- remove all --no-table to include all partitions in the gpt table

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
 wic/rockchip.wks | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 42b731ac47b2..714fc5e11e11 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -8,16 +8,22 @@
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
+part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none
+part reserved   --offset 7680s  --fixed-size 192K    --fstype=none
+part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none
+part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none
 part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none
 part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 24576s --fixed-size 4096K   --fstype=none
-- 
2.43.0.76.g1a87c842ece3


