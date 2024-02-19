Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DE9C48BF8
	for <webhook@archiver.kernel.org>; Mon, 19 Feb 2024 17:48:36 +0000 (UTC)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web10.527.1708364915329702477
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 09:48:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CAQZ6P5i;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3651d6dea15so6028525ab.1
        for <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 09:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708364913; x=1708969713; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mgDzwbbNaYad1gzcVnhpweCWM/sxQKLIO98rZl/FCgc=;
        b=CAQZ6P5iDW8gB6XmRARDNCHy2ca9Rpt3ei1mBHVIU+r9rMPkncaDpAcXbrHv4ZFZHp
         r2LCMiFgQi2cuy+Z1Pfn6mzWcSmFiWpZTd/7GCshTy+o+h9WCCttV9c3sJVL1nUAz0x9
         2AaNwqj5I+ZzC3pCmaLHHugngCOOdnUmwMoFGFjMEROR1Atz2h2Sh0JgaEML75ZKw4zt
         /Qy5nJdwVzftC1kwk4ftj8yP/GPav8IQefeOTSAkRVmwX/sboATsyMVlPma5N5P808NK
         zztRap4SXh6yxkEDatjGolLZ4rwR7k2SODRd7S+B+bkEQQUbsd0CVC9SBmIoL0zhIUbD
         Sjlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708364913; x=1708969713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mgDzwbbNaYad1gzcVnhpweCWM/sxQKLIO98rZl/FCgc=;
        b=wPmDb4/U9DQUukJTyAGdN0e4Gghu9hvyRYi0wSICwzq0DGkmDvfwUZ3RZr0bJioF45
         ibZSNSIryMQD80Te0S4yhZPdtJD/TUEQZaRfVqNMpQ4hLJl/mjEpQoUNl+u4w+5nH+Ef
         1cvpoJQasMEP2FLhajjCGCKe5jykypzX8GdvgRIo/iEuyDy+md1BIvUx5aWek/wqbP88
         HA1R7aA3Tg+4ts+mwAmBPyTFR/Ul05zGXWR4ZBftuQ6LCxt0ScJck7HRe4ZVlL4jfpCN
         ZP6dlUYAAiyG+mvDRK6gb7LbftNPD6RhO/Pg5nsH6Z41c7z7KkmX4LpRsrAZZYMWL8ao
         RE4g==
X-Gm-Message-State: AOJu0Yw7IQ7k2DGiSX+u5zeNecTKoqO/qlGJTCflr4ptf/rWjOR7r1/f
	7Ku7KpKxCpLWDIdpvkRQd1g9xS937VjDWFxmsD+3dN6eiNo0vvD9gapHjjv+
X-Google-Smtp-Source: AGHT+IEzrGcQN151lnhEBMkZiVs1PMYzc4d8vCz4MkFtxF9LXQX16nqwWLUPpddG3dtqAYRfDXkwFA==
X-Received: by 2002:a92:d384:0:b0:365:2399:2446 with SMTP id o4-20020a92d384000000b0036523992446mr4312982ilo.1.1708364912897;
        Mon, 19 Feb 2024 09:48:32 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x5-20020a056e021ca500b00363ea5c0fb4sm2300208ill.70.2024.02.19.09.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 09:48:30 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v3 2/5] rockchip.wks: specify fstype
Date: Mon, 19 Feb 2024 12:48:22 -0500
Message-ID: <20240219174825.7084-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240219174825.7084-1-twoerner@gmail.com>
References: <20240219174825.7084-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 17:48:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62542

If the wks file doesn't specify, the assumption is that each partition
contains a vfat-formatted filesystem. Most of the partitions in the
Rockchip layout don't have filesystems. Implicitly setting the fstype to
vfat causes wic to format the partitions. It doesn't make sense to format
the rawcopy partitions as vfat just to immediately overwrite them with
binaries, and it wastes time formatting partitions that won't ever be used
as filesystems.

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v3:
- tweak to accommodate offsets specified in sectors

changes in v2:
- reword the commit message to add clarity
- add Quentin's tag
---
 wic/rockchip.wks | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 804e84ceb316..42b731ac47b2 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -16,12 +16,12 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 64s    --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
-part reserved1  --offset 8064s  --fixed-size 64K
-part reserved2  --offset 8192s  --fixed-size 4096K
-part loader2    --offset 16384s --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
-part atf        --offset 24576s --fixed-size 4096K
-part /boot      --offset 32768s --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
-part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
+part loader1    --offset 64s    --fixed-size 4000K   --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part reserved1  --offset 8064s  --fixed-size 64K     --fstype=none
+part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none
+part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part atf        --offset 24576s --fixed-size 4096K   --fstype=none
+part /boot      --offset 32768s --size       114688K --fstype=vfat --active   --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
+part /                                               --fstype=ext4            --source rootfs            --label root --use-uuid
 
 bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
-- 
2.43.0.76.g1a87c842ece3


