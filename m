Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2EDDC48BEC
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 08:29:38 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web11.14615.1708072178417036995
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 00:29:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DIdu2oJR;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-68f111b9d92so10236296d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 00:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708072176; x=1708676976; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DzErnKoX7RPoSPv4XRVR+s4YTsyEqSB+ereBaKmYqEw=;
        b=DIdu2oJRlSw2iXgeSKamCjEUu55KPCi8+5YgzTMDEZcKQcoZ5M535krEemH9rDBOzS
         IffnaPdDAJGV8djSSivYa5X+OuZhqI3yD1nZl6jo1wK5eEEp3OOsc5lRG9bYCCUqQu5/
         eOR+VDs2/1Ibo5PhbYUtCql1tL8BnBlpC/LDREyoskDxxy5xuSL0IEQWFizr6GPbwSl1
         OvYie1gedA+4FvzTQ6QN4OWFZsVrz5lpKhRHBTAsR8dGkA/WTArTeKpDMKhJ/P+ji5eF
         neqeec8twSbhOtfRMzAaY9wvktjds9m6BDj8whWBIW1Q7p2UYFkQprSTd73srn2pNZuN
         Q0Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708072176; x=1708676976;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DzErnKoX7RPoSPv4XRVR+s4YTsyEqSB+ereBaKmYqEw=;
        b=dK8qwfD6jtuCYMh4+nzqEQXRCpcNsD36yWdO0Vv4WSxLGYGQmq+9LGEN1cbF8aqOBd
         lTNh8j8PZN1kdn8MBJOz83B9GV+2bWtzv2vlnU8geo9tLm7wha4uh20oXGktdoixdGpG
         Gb+UmuoX2OdI5VsvzeRi9TKeRFrqoD5pxvMx7sZB2A2iSIbVmxhUDNYJ+jGYNay8prTY
         9i05gpdZpv/icqnpIR98Z7sj/S//WfqEH1v3Ly6UuQgrccsDZm/XVNpnuTfZvrvPz+ay
         XtRX6T1KMzwMwYBlC51SzOdBiIjo/Lev2oNKArnZZqrPZUp3YpVMy8wfC2SE38s8ILgJ
         9XJg==
X-Gm-Message-State: AOJu0YwRonUAnm6IT0ECycs/DIhtXmWQpu+kcdr9YDcx3J+jEagOOTG5
	LvpCScfXh49LZ/SGVL9hLNSLf4cKeZjlYUvT9z90ICzuKqH4Se5OfwDbfoP6
X-Google-Smtp-Source: AGHT+IF+QMWKILil6DK3MOzw+UAuZCT7TUEj6DnXnEiiBH6l3dfpO0f5Hfm0476J7NszHa8gvwTs9g==
X-Received: by 2002:a05:6214:3d0c:b0:68f:487:d26c with SMTP id ol12-20020a0562143d0c00b0068f0487d26cmr6618920qvb.46.1708072176314;
        Fri, 16 Feb 2024 00:29:36 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ma17-20020a0562145b1100b0068cd399760fsm1522701qvb.61.2024.02.16.00.29.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 00:29:34 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 2/4] rockchip.wks: add all Rockchip partitions
Date: Fri, 16 Feb 2024 03:29:20 -0500
Message-ID: <20240216082922.7873-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240216082922.7873-1-twoerner@gmail.com>
References: <20240216082922.7873-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 08:29:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62513

Rockchip defines the expected layout/map of the default storage device.
Fill out the wks description so it matches.

	https://opensource.rock-chips.com/wiki_Partitions

Note: in the Rockchip layout, not all partitions are expected to show up
in the gpt partition table. This patch uses "--no-table" to only number the
partitions that are numbered in the Rockchip wiki, as well as to give these
partitions the partition numbers indicated in the wiki.

Note: there is a mistake in the Rockchip table (which I've copied
verbatim here). Going by the values of the "Start Sector", the size of
the "reserved1" partition is listed as being 2x its actual size/number of
sectors.

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

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v2:
- expand the commit message to show past, expected, and new behaviour
- spell out that vstorage stands for "vendor storage"
---
 wic/rockchip.wks | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index b14ec0d1690a..034443d90050 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -9,17 +9,23 @@
 # wic uses 1KB blocks. The following table uses 512 byte sectors:
 #
 #   Partition   Start Sector    Number of Sectors
-#   loader1     64              8000        (idbloader / U-Boot SPL)
-#   reserved1   8064            128
-#   reserved2   8192            8192
+#   loader1     64              7104        (idbloader / U-Boot SPL)
+#   vstorage    7168            512         (vendor storage: e.g. serial number, MAC address, etc)
+#   reserved    7680            384         (not used)
+#   reserved1   8064            64          (legacy DRM key)
+#   uboot_env   8128            64          (U-Boot environment)
+#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
 #   loader2     16384           8192        (U-Boot proper)
-#   atf         24576           8192
+#   atf         24576           8192        (trusted OS e.g. ATR, OP-TEE, etc)
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 32     --fixed-size 4000K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
-part reserved1  --offset 4032   --fixed-size 64K      --fstype=none
-part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
+part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part vstorage   --offset 3584   --fixed-size 256K     --fstype=none  --no-table
+part reserved   --offset 3840   --fixed-size 192K     --fstype=none  --no-table
+part reserved1  --offset 4032   --fixed-size 32K      --fstype=none  --no-table
+part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none  --no-table
+part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none  --no-table
 part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K    --fstype=none
 part /boot      --offset 16384  --size       114688K  --fstype=vfat  --active  --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
-- 
2.43.0.76.g1a87c842ece3


