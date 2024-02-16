Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F08C48BEC
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 08:29:48 +0000 (UTC)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
 by mx.groups.io with SMTP id smtpd.web11.14618.1708072183644381577
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 00:29:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YdaBQ4d6;
 spf=pass (domain: gmail.com, ip: 209.85.221.182, mailfrom: twoerner@gmail.com)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-4c02a92d563so99875e0c.3
        for <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 00:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708072181; x=1708676981; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MScIlaWu/gGTHej418QyST67qfbY+e54NUTk1ABCW7o=;
        b=YdaBQ4d6a73Cx/LZneWCCsvcDBc3nJ+cZ0WXEWdOnrsm3ZOFR9NbdR+C64dKGfe+o3
         Pyta4oZ+250d7Izgsc+PVRLgWEy6hirVkXv6Be2QaV4zR+5lFVerh/MuHgFwPrFF4PTQ
         VUl3HE2Oq40UAN0+yeS9EsX2jAVL0twDJAL4m8HC4UrpC+p19bO5ZIiDWfuWTfAUx9jl
         s8JO6IvyWWwuqyjO3GTzhaxOBxkoWcZcrGykT5XuaCe7S1R+VnAY3hfOwYpTXAPsjM6M
         zmc+ACTRypqK3uRYsT+hkF3H7iWPQzcb/Noc1pKFTDQeEOS31lsK117+PupkYsz20egl
         xPBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708072181; x=1708676981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MScIlaWu/gGTHej418QyST67qfbY+e54NUTk1ABCW7o=;
        b=PpMACLpZ6+8G7l0P/kT1qLd3/ZVSWEkkTJkfVhwDQQWIQFI/Jf/cDD92AEkqkzTkTI
         wo/2IFdtLvrtPLKvQX1Ip8Z6tYzs0NI2h9pjfuB3KbmuvnLTaq+YbuBcYtFjarw3R3S7
         vX/+wEHxfsDk91okKPnAhWR+yc7m1WO2i3F9oVEzax2DURKv124pif9jpwnV7G7T0lpy
         eP9v5RM6vKkllBB7zloMx9csK/pxoJmrFzHA8ZPAr+jlFRSzDeReiPfKyO2yCz1T3pNl
         tv/nYFZSl1IYFSL+/dOXilJ+hRas/2am1uIH/+VqVobyKE5eixa+M3osEbqY/XvGOsWO
         GHxw==
X-Gm-Message-State: AOJu0YzYcerz8E/s909nOfpR0Jiner0bIOqAowd+Lq/noD0A8+cHVJw1
	toA8j42qQMyatRJ4kk59Ker/AcO5aCpL/wfoioYt6811WP+BJ6gt/xf3RjQW
X-Google-Smtp-Source: AGHT+IHOLeURqvftHuZHLUqxWZzy6pM8Zc68rnWyEI++TzlcJxYZK3ywuCqFDhTHdji4ylvSJ/ho4g==
X-Received: by 2002:a1f:cd43:0:b0:4bd:752b:8d3d with SMTP id d64-20020a1fcd43000000b004bd752b8d3dmr3427638vkg.9.1708072181340;
        Fri, 16 Feb 2024 00:29:41 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ma17-20020a0562145b1100b0068cd399760fsm1522701qvb.61.2024.02.16.00.29.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 00:29:39 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v2 4/4] wks file cleanup
Date: Fri, 16 Feb 2024 03:29:22 -0500
Message-ID: <20240216082922.7873-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240216082922.7873-1-twoerner@gmail.com>
References: <20240216082922.7873-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 08:29:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62515

Cleanup the elements of the wic/rockchip.wks file so they take up less
horizontal space.

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v2:
- add Quentin's tag
---
 wic/rockchip.wks | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 4fccdf668c50..1dcd9d69ada6 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -19,12 +19,12 @@
 #   atf         24576           8192        (trusted OS e.g. ATR, OP-TEE, etc)
 #   root        32768           -
 
-part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part loader1    --offset 32     --fixed-size 3552K    --fstype=none                --source rawcopy  --sourceparams="file=${SPL_BINARY}"
 part vstorage   --offset 3584   --fixed-size 256K     --fstype=none  --no-table
 part reserved   --offset 3840   --fixed-size 192K     --fstype=none  --no-table
 part reserved1  --offset 4032   --fixed-size 32K      --fstype=none  --no-table
 part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none  --no-table
 part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none  --no-table
-part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part loader2    --offset 8192   --fixed-size 4096K    --fstype=none                --source rawcopy  --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K    --fstype=none
-part /          --offset 16384                        --fstype=ext4  --active  --source rootfs            --label root
+part /          --offset 16384  --active              --fstype=ext4  --label root  --source rootfs
-- 
2.43.0.76.g1a87c842ece3


