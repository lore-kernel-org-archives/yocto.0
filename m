Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23856C48BF8
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 17:04:29 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web10.18285.1708621465801535536
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 09:04:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iFppbYDP;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-787a2a14d9cso47904985a.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 09:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708621464; x=1709226264; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xUuPuHN8gbHkqF/ZEFhLwVn+drImfTSoyXoRPk7D/+4=;
        b=iFppbYDP4a8Boj6x+sGhsWOTfgRECjdCaYYdHnpHvFo5ahPJNbCoEIZQe1BTV3Fkmn
         ja3v3Y+pWLe+pXaVJHnQzgrGWkBKlBftKI8dGQ3elo36VcTFtN9EkD3BkEwLuYRyKdLp
         aUHR2vQ7++rBRUv5CVDkJjxY7/dOMbZ+IS8U8e9t1sNbcxA4hA/erjk36+hcvx7VUbzG
         IFkN0yGv9FIoiHMxjmlwl+hiCCfDEPUV/C2bz+yox6RYXwbNkBt1ug4g8K9kQ1vIbZ7m
         nI999DUfxHxdDQdxQlopKLtHxZefU/AtssLOMBTbAGTsFmaAxQTOuPWRLydxFzSk0xuM
         KzvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708621464; x=1709226264;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xUuPuHN8gbHkqF/ZEFhLwVn+drImfTSoyXoRPk7D/+4=;
        b=o2ta801BzZHhj/MGgLtiSQ61dnuoG8lcGkQV6fXmmvhT/N4Yx8+AduiiWnQMD6dPDs
         CzPsZ0yz26zCkbUAV+oztdFzlIAeYNVm9jt3cqH0B8Yv0V/WZhTl444kfOUHeK12S89N
         1vYFAvHXj1I1o0FdZ5SaqN9BIeMP8BNV+Xb5BLIL0nLdte3oUPyERUtlLGEvZ5Tv+KZW
         xlEIaCzwdOdRGQibIBQZd7/2W3Mvxi+mav0CTJ2w93tkwOjfc1t+ADCkDWzwj1hunaW+
         2NDReuXDetEm9OZIJ6pbM1smiC0TaPWh245OEVTbDDc6YCl/+5lSsgDoDp5ggRgZmfB3
         +4NQ==
X-Gm-Message-State: AOJu0YxlFJUGIeHiD1xpxQcDE0+ur/rd7z1sY0dJOso2EQzChJewUHU4
	huyfZt1nz8j1/Z2nu29Xb6bx03JwrahMSB7e6z0ZzNm3oTZd7iR6nIP3zYHZ
X-Google-Smtp-Source: AGHT+IHs/UKdzTpheolwovZ3xK/enmaL+bwDMk4C5CyjXMMcJohKFAMiYbqYSAmHTLxM0VTsGeS0dw==
X-Received: by 2002:a05:620a:1489:b0:787:6f29:2f43 with SMTP id w9-20020a05620a148900b007876f292f43mr11863526qkj.0.1708621463706;
        Thu, 22 Feb 2024 09:04:23 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id qj17-20020a05620a881100b007872541c53bsm265848qkn.24.2024.02.22.09.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:04:22 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [meta-rockchip][PATCH v4 1/5] rockchip.wks: specify offsets in sectors
Date: Thu, 22 Feb 2024 12:04:11 -0500
Message-ID: <20240222170415.7061-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 17:04:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62568

In WIC, size arguments can be optionally specified using one of a variety
of suffixes (e.g. K, M, G, etc.) thanks to sizetype(). One such suffix being
"s/S" for handling sector sizes which are assumed to be 512 bytes, rather than
the other size suffixes which are multiples of 1024 bytes.

Using the s/S sizetype allows the definition to match the documentation.
Unfortunately we can not use the s/S suffix for --fixed-size.

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v4:
- add Quentin's tag

changes in v3:
- new
---
 wic/rockchip.wks | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index fac0b8f70112..804e84ceb316 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -5,8 +5,7 @@
 # short-description: Create a disk image suitable for booting Rockchip from SD-card
 # long-description: Creates a disk image partitioned using GPT, suitable for Rockchip
 # Disk layout
-# Note that the reference documentation refers to 512 byte disk sectors, but
-# wic uses 1KB blocks. The following table uses 512 byte sectors:
+# See: https://opensource.rock-chips.com/wiki_Partitions
 #
 #   Partition   Start Sector    Number of Sectors
 #   loader1     64              8000        (idbloader / U-Boot SPL)
@@ -17,12 +16,12 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
-part reserved1  --offset 4032   --fixed-size 64K
-part reserved2  --offset 4096   --fixed-size 4096K
-part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
-part atf        --offset 12288  --fixed-size 4096K
-part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
+part loader1    --offset 64s    --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
+part reserved1  --offset 8064s  --fixed-size 64K
+part reserved2  --offset 8192s  --fixed-size 4096K
+part loader2    --offset 16384s --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part atf        --offset 24576s --fixed-size 4096K
+part /boot      --offset 32768s --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
 part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
 
 bootloader --ptable gpt --append="console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=ext4 init=/sbin/init"
-- 
2.43.0.76.g1a87c842ece3


