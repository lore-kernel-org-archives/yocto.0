Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9697EC54766
	for <webhook@archiver.kernel.org>; Mon, 19 Feb 2024 17:48:46 +0000 (UTC)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web11.609.1708364923462599257
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 09:48:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fepTObtE;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3651607db16so8899595ab.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 09:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708364922; x=1708969722; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t+K0f8HlKuvjsvuIUdjC0ppksUxTFs7xLt6VhcbzWk0=;
        b=fepTObtEimUkdwdQUDglrg5xNCajJKelVAmq8cZhGlTFlcyK0XH0jHwjOL+V/uFnzI
         IJO6wpEWB10d3QJjXKTKdcFBXx9uZ/NW72c7W+AAFWlBiQB3nVnlifevDDVfuaISuEHg
         IchVE+Hh9uHNOSLBO1cCRdd/K57+L2g6hxtlLHPjMkijD5dgPSEkL2rUHGa1N7UTEQne
         jmzLgvnc61j7dCUMdAZH1hpAaN7fOaM4nxensuR6/mchF+5av4EvQ+nKrvXs8v1YBtSx
         hsPwHR0hZMTbMkFLqVG0YQHvSz1Z7vP5/qRkquoqIjhsVbM8Vkd6PKhtw7Fngx/zUEar
         Seqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708364922; x=1708969722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t+K0f8HlKuvjsvuIUdjC0ppksUxTFs7xLt6VhcbzWk0=;
        b=Dh4CTXwn0narlPyolUgJN2g4hKfQn3IQdV3Kj4rx0QTlhlGD+SS65wuGY2JbT9E2A6
         FKja51YHHr8cM31LgbSnHu93JD+Xp40cL67G0xgGRb44Vkfc1u8IsEkmJKWMei8PD5Ak
         6DkNA7eQ446dTbK6zJBnHDqS152T22ZydWVzTl+8374TXdlCGfe/b+CwV6scyfIDZdRI
         f+LF2RBDKgIYesBXjkVHs7rCWRf+B5rtAz2yRiUdrMVYBBt90sXGcNO5Vo5+SWYq0xFD
         tvqOvvyq4XHKh4B+lbFnwUQQmQ23V60X/SCfNxgCSAHrE7hckEW8EglRbTndSD09rJVG
         W6iw==
X-Gm-Message-State: AOJu0YyKp/AgaClGj8A1Wpiorja9F+I7GefLxMO/HL36nzRH6PzwZHf7
	iA/cxlzcS7SxL1uELsLnt9D9w1EJlnRbWsJ2DBXo4ISfbuO7hhy0Hq/u36PU
X-Google-Smtp-Source: AGHT+IFbKzUGpbzGaTeU/ypmPVxLXuNXwI5gan6hthtN7yF4Imh5hTtl/ZufCva6GzAzmuqWtnERsQ==
X-Received: by 2002:a05:6e02:1a0c:b0:365:b73:9f3b with SMTP id s12-20020a056e021a0c00b003650b739f3bmr9060016ild.12.1708364921761;
        Mon, 19 Feb 2024 09:48:41 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x5-20020a056e021ca500b00363ea5c0fb4sm2300208ill.70.2024.02.19.09.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 09:48:39 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v3 5/5] rockchip.wks: wks file cleanup
Date: Mon, 19 Feb 2024 12:48:25 -0500
Message-ID: <20240219174825.7084-5-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240219174825.7084-1-twoerner@gmail.com>
References: <20240219174825.7084-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 17:48:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62545

Cleanup the elements of the wic/rockchip.wks file so that they take up less
horizontal space.

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v3:
- tweaks to accommodate the existing changes

changes in v2:
- add Quentin's tag
---
 wic/rockchip.wks | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index e8f0251272c1..0e929bc0749a 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -18,14 +18,14 @@
 #   atf         24576           8192        (trusted OS e.g. ATF, OP-TEE, etc)
 #   root        32768           -
 
-part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy              --sourceparams="file=${SPL_BINARY}"
-part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none --no-table
-part reserved   --offset 7680s  --fixed-size 192K    --fstype=none --no-table
-part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none --no-table
-part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none --no-table
-part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none --no-table
-part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy              --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
-part atf        --offset 24576s --fixed-size 4096K   --fstype=none
-part /          --offset 32768s                      --fstype=ext4 --active   --source rootfs  --label root
+part loader1   --offset 64s    --fixed-size 3552K --fstype=none --source rawcopy --sourceparams="file=${SPL_BINARY}"
+part v_storage --offset 7168s  --fixed-size 256K  --fstype=none --no-table
+part reserved  --offset 7680s  --fixed-size 192K  --fstype=none --no-table
+part reserved1 --offset 8064s  --fixed-size 32K   --fstype=none --no-table
+part uboot_env --offset 8128s  --fixed-size 32K   --fstype=none --no-table
+part reserved2 --offset 8192s  --fixed-size 4096K --fstype=none --no-table
+part loader2   --offset 16384s --fixed-size 4096K --fstype=none --source rawcopy --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part atf       --offset 24576s --fixed-size 4096K --fstype=none
+part /         --label root    --active           --fstype=ext4 --source rootfs
 
 bootloader --ptable gpt
-- 
2.43.0.76.g1a87c842ece3


