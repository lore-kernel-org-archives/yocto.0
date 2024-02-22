Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09A23C5479F
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 17:04:39 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web10.18288.1708621469062864136
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 09:04:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kTr867pq;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-787a2a14d9cso47910885a.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 09:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708621467; x=1709226267; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o//WsqIVankd6wflb3sZWo8vqPxuQ6dY0PMqjdV4Vj0=;
        b=kTr867pq2T4WdzEaLtuoRtBwSDKdMU+gJ7Vun5p1IrKA1zHKm7IgRAal2f8DhAh8Fc
         QDGS59XmDfDd4Yd/n3Qr3Rbkq6tQzStsYt1HqPPO6/O+/VLQoLyB+oP1swMRVj/zPw4K
         M7TkoCAveSY5NXvKuOY1N/EvCDtCR1AO+RJJcXPHPlUky9PDsd8BkZO167LDasnL46NR
         e+sUXToPtLzRSM8T9px/fX+KGFs3PgMZoEZsg5JntBsvJ3YCyLc+uGAyOiBp73azDtUN
         pW8RniBDSwH85fam8L8Zg0pZOMeC6srL8oejgot6zqQt3D4icc140FZdRoTl5CSc63Ll
         1gbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708621467; x=1709226267;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o//WsqIVankd6wflb3sZWo8vqPxuQ6dY0PMqjdV4Vj0=;
        b=XTYbZ4ms8uW2G51loMTEt4PHwXZrbSUYWvnKGcEDgrB97bVNRvonAjrBBDAVF2Ym2E
         az8HMBNbCz6tuBR8aj0f9pqy4IqijCER8kATyERd6fG4dF6tz16vUzdoVlpb2W38Wrcg
         YWUkJX4VkOrZgdlIBFegTp0M94V/1yDPxpP/mXlYYyE7YfRwZczX/gS9QLC3w8m1GsCc
         oJSSjJ4Mk4knWQbfc2os3ZcehRupYbRrwcubrZbSk10Lf7wg7rRbAbcNPlWyHT0Iv/+/
         X4Xj9X+N2z8IaRvLdrK0SjJ5veSI6uKCW9ytm/Ul5kCX3lKKGu1j35rrUGx5lwjPCHhK
         WJIw==
X-Gm-Message-State: AOJu0Yy+Zd0pbQpySGhd7I5r8UGulYOcgQC9idy57/dBpeYGCgNDRt5o
	aGtI7YONdUHItcMLqJbvXk/yBZL4kjeGLQ8g28xaDofFi44/sw1wU8sf38yw
X-Google-Smtp-Source: AGHT+IGm705k3BSbMh+m3qWm/OD88B1vL72FdXEhhDdbCRXVYGT+oKwL19iNO/5usV7NsqQg2oP+kQ==
X-Received: by 2002:a05:620a:3cf:b0:785:d3e7:3b2 with SMTP id r15-20020a05620a03cf00b00785d3e703b2mr21294767qkm.24.1708621466824;
        Thu, 22 Feb 2024 09:04:26 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id qj17-20020a05620a881100b007872541c53bsm265848qkn.24.2024.02.22.09.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:04:24 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v4 2/5] rockchip.wks: specify fstype
Date: Thu, 22 Feb 2024 12:04:12 -0500
Message-ID: <20240222170415.7061-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240222170415.7061-1-twoerner@gmail.com>
References: <20240222170415.7061-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 17:04:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62569

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
changes in v4:
- none

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


