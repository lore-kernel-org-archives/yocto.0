Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E90C54764
	for <webhook@archiver.kernel.org>; Mon, 19 Feb 2024 17:48:36 +0000 (UTC)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web10.525.1708364912291013300
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 09:48:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UMwCub9+;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-364f791a428so14373635ab.3
        for <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 09:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708364910; x=1708969710; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=HU4dzeLfWMEsh+ciYODYGS1OkgTJ+RPSaYhzCySoS/M=;
        b=UMwCub9+jBYj6mny11kvuGqdGhgFR1pNfzvl/6J/E5LK2MiCj/vLIy4BhXPT2ivX8C
         h3GMkxS5fnN2TGmf7nKl4xyFqDqk1EftOs1EmrDlC0TpzJrGWKGOGC8sXBbHz6I4ymja
         eh+kfcjHtJ/ZSzZR7rBO+NmY7mvKSuDDle76buvECG6Wat7y+7id1V0GMKLO9h+Fevcr
         6dyNHLhWa+NLSId5w6B464T7rej+3XSoQXli2Z0hSnb2470SrqjDiXGIWPX4lpYoANWv
         PwF8Gby8qw8OotA7MoOU3dkRSxEP57hppOCeiNGnjPv+Iyp5fcoRJxPSF6OLGon8r2sJ
         FHaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708364910; x=1708969710;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HU4dzeLfWMEsh+ciYODYGS1OkgTJ+RPSaYhzCySoS/M=;
        b=fl01Z2QIlUOdTtBK4U2wdGs0SIsfZroWYfMZKFTQzSX1WhR1aIzH8+Uii0mkzru3ox
         TG8VjfG3lEjtmmqG1lxngTgdwxGk3mHvoyrELZIDze7jG1lYr1YGE8je8Og1ouy2obxE
         Iy3EBzWrOAseBmb5LuGlwNMrJAiUlEncO7/T9tCH3yvhLMpux10SuCkkzmKPCiBQYk6+
         CstKaHsKXVBAh512T2U2gCxedOMQC4fz/TIXvIzdhY/c0wxcPv59ErHegiHxdtr7GGwg
         QjJKWEDVOmWdtuO7ycOd63bEDPMe/AHELzG/BdJY2cFKKD2XC21X1Kh/4Y+tsIKv7j4g
         KyFw==
X-Gm-Message-State: AOJu0YzkQbqHtHvD4PsEM9eIGs8mieJm+4zbnnoP4kfwC85DQa4pc2/K
	dsWKkZNrle50QAbR7T86TflejJCSDFDOUlfdiCJDjOz4mdJdEe86WitZ9sRl
X-Google-Smtp-Source: AGHT+IF3QrAZuTa7RZhWNwf76XrP1XZ4qatLzk/VW6AfJui6DEwLFkpVlV0jfqSyeSVHrtKPuFyyFg==
X-Received: by 2002:a05:6e02:12c5:b0:365:b41:213 with SMTP id i5-20020a056e0212c500b003650b410213mr13965087ilm.17.1708364910277;
        Mon, 19 Feb 2024 09:48:30 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x5-20020a056e021ca500b00363ea5c0fb4sm2300208ill.70.2024.02.19.09.48.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 09:48:29 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v3 1/5] rockchip.wks: specify offsets in sectors
Date: Mon, 19 Feb 2024 12:48:21 -0500
Message-ID: <20240219174825.7084-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 17:48:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62541

In WIC, size arguments can be optionally specified using one of a variety
of suffixes (e.g. K, M, G, etc.) thanks to sizetype(). One such suffix being
"s/S" for handling sector sizes which are assumed to be 512 bytes, rather than
the other size suffixes which are multiples of 1024 bytes.

Using the s/S sizetype allows the definition to match the documentation.
Unfortunately we can not use the s/S suffix for --fixed-size.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
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


