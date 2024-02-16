Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2074C48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 08:29:38 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.14487.1708072176043498024
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 00:29:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ayGf7bWS;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6818aa08a33so16747976d6.0
        for <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 00:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708072174; x=1708676974; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YJqsbq8CMoCEOTdMXsSQ72nfQDIbQFtlb+IZ1RhEtPE=;
        b=ayGf7bWSFLvNfZeszHw1cmVG3pJyo9il3BHGbsiX8mCVxurwUT8yjkrjS/wmxVz0Yh
         axq9Ktmo0d7sH2Gy6Scoz/OwV5O+bNYRh9vuluQnWMIrYxGLYBU5gNzsqCmNgYq5vxou
         i/3K+H66Do2cWNTUs7ia2r8Pd2Ndlv64HWReiEi7MhLLsUXsWs4hiD41zcxrkk/AfyI8
         NcWFVtZR85jLNNW8svpC/ywECNohP1JyOPPhQqI1INDhwN9j07crP8Hkd/qExOjbIt+5
         4y0pA/9XBxgHLn0FnRo3ujIeKZF7iSRW5Q2P+41t11WhbcQccjUUSAXXpHCJd2xGghln
         FS0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708072174; x=1708676974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YJqsbq8CMoCEOTdMXsSQ72nfQDIbQFtlb+IZ1RhEtPE=;
        b=NRML5gPqYM25EZv2qWy0WTGU0G1uPDmk7AoLTiW0qtkZRHuaMELCe9DSJkueeqEH+l
         KVgSwyb20kYBxXl7/b427r5P6ynjhbf9pH5x9Ijogp4Vl5qpuHWPfw3iKOlK1jffmczi
         z0SWTt7FWvBL9+qcqE8PX3tylMKcJLCLw6NUNLE5vxbbGKm0a0WEugA/hIs9Uhp26TE6
         KsG/OnUSeMqrgTLH2DRvEC/f4E/2bO2tJKzKcHTKeuwKXcfhQrQKn6fSmZZ5OYauGPdU
         q+CUo0UCsAhBRbpo8TAzeC5ZQ2EpK3vj/F+STx5XqJJehjHeRPkV4hHP7/RiC22dDTU8
         ltfQ==
X-Gm-Message-State: AOJu0YxkjUQcn1c9Bv1FhCyflQCBv+ksgRj+OGbKS6OX037BzVEICF0C
	n1PDnPqllxKt1XioW5H6yibr60mTuCFZ6VcoDjLowz75GjjfAxhZuQcDVtn1
X-Google-Smtp-Source: AGHT+IHpXTl0wWFtv3GkxeqbS2PEqG2jKQZM21QEei5/3jtaao1cavDAQ+jD6Jov8Xq1aYXIUf5CyQ==
X-Received: by 2002:a05:6214:44a0:b0:68f:11bf:4213 with SMTP id on32-20020a05621444a000b0068f11bf4213mr10572176qvb.23.1708072174014;
        Fri, 16 Feb 2024 00:29:34 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ma17-20020a0562145b1100b0068cd399760fsm1522701qvb.61.2024.02.16.00.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 00:29:33 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v2 1/4] rockchip.wks: specify fstype
Date: Fri, 16 Feb 2024 03:29:19 -0500
Message-ID: <20240216082922.7873-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 08:29:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62512

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
changes in v2:
- reword the commit message to add clarity
- add Quentin's tag
---
 wic/rockchip.wks | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index fac0b8f70112..b14ec0d1690a 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -17,12 +17,12 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
-part reserved1  --offset 4032   --fixed-size 64K
-part reserved2  --offset 4096   --fixed-size 4096K
-part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
-part atf        --offset 12288  --fixed-size 4096K
-part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
-part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
+part loader1    --offset 32     --fixed-size 4000K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part reserved1  --offset 4032   --fixed-size 64K      --fstype=none
+part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
+part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part atf        --offset 12288  --fixed-size 4096K    --fstype=none
+part /boot      --offset 16384  --size       114688K  --fstype=vfat  --active  --source bootimg-partition --label boot --use-uuid --sourceparams="loader=u-boot"
+part /                                                --fstype=ext4            --source rootfs            --label root --use-uuid
 
 bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
-- 
2.43.0.76.g1a87c842ece3


