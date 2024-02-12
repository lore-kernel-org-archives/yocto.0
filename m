Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44572C4829E
	for <webhook@archiver.kernel.org>; Mon, 12 Feb 2024 20:24:01 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.17315.1707769433085046934
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 12:23:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=R9+5zQYH;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-68c8790aeadso1820286d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 12:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707769430; x=1708374230; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jjoLFPE4j3DkkhFAbMHrbGEsD3jq4L1c1keadLUikHI=;
        b=R9+5zQYHNghnBDy543wSRwLf8VU7otcQr2zXvUr2lSj3i6pbWQr/8qTwKGDj1HbWHD
         s2bz4txa4GkkPOrpfHxD7cX/I4PmlTs9eJo6ywXr/+2c1yZwO690CwXw7mrUExnwtD2Y
         kTKgZQzf3Vsx7OzAQ/AJ7tTpRTkhuqZOpyq5Xb+UnJ4UvJxMe/8xQWvw/blMfiIcRp2O
         VS3d8wI31w5a3XGMcofEBiMwa0QGfwaDlKkXeGdZACTJAxY2Kz+OFl12nglUn+MV7ddl
         MJ777cO/MY0+UD6N7bS5tK2j/JTmlRZgkByFF6Ckme0fVPBjkB9p2NqybjeGn3HEgPLb
         icAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707769430; x=1708374230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jjoLFPE4j3DkkhFAbMHrbGEsD3jq4L1c1keadLUikHI=;
        b=tfG2QpDaj+aGxgw7YZB+PkknfMd2XOHqmuLJtzkREIpuNV0kILVrko4TdogJZLspZb
         Wk9HeTgDp/nBDGo3yGIyujWyoY1Vb8X3AXVTact/1ZoU85yfbi7b/Rg5dfyuasmPqabp
         f3JFB3LCD6/gAjDu2kD1KTZ/8inmbXpqwZGnRiy6R5NE+HmhKmIGedMiUtVP5UFuzNcD
         rLpDluE3MDjWgZUhoFbxHDGPGi8cS+b8PiU+TKtOYAEr0J4eailW/LgwNiPlIbJh4Fq0
         cp08QC40KvVayWtVxTjHBMdn11qt5Ts2RsMNY+XMlE1OfFogcv5tbaw9anMFnLyBpWbN
         3uKg==
X-Gm-Message-State: AOJu0YxRtXPcU4/JJSGW3F3c1EjFyTYphDlc7MYD40EsT1TXCNk7FYHf
	UTfcRlaekEjXEuFEpSgFbWVwJQ/20nQ52xx1ccuv/rxGQm1TAn7GhzZgVSTA
X-Google-Smtp-Source: AGHT+IFOiEZiF2x/hz7xnmJNzW/NwV/LOPOETfyAbfmXjSM3sLqygyqh2nkI2GER3kostr56T1Cfmw==
X-Received: by 2002:a05:6214:2269:b0:68c:c76a:10df with SMTP id gs9-20020a056214226900b0068cc76a10dfmr10665531qvb.12.1707769430372;
        Mon, 12 Feb 2024 12:23:50 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id oj9-20020a056214440900b0068d1c9801aesm477233qvb.66.2024.02.12.12.23.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 12:23:49 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 4/4] wks file cleanup
Date: Mon, 12 Feb 2024 15:23:42 -0500
Message-ID: <20240212202342.37778-4-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240212202342.37778-1-twoerner@gmail.com>
References: <20240212202342.37778-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 20:24:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62467

Cleanup the elements of the wic/rockchip.wks file so they take up less
horizontal space.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 wic/rockchip.wks | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 5d7701ef8a2e..e76439dd52c3 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -20,14 +20,14 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
 
-part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part loader1    --offset 32     --fixed-size 3552K    --fstype=none  --source rawcopy  --sourceparams="file=${SPL_BINARY}"
 part vstorage   --offset 3584   --fixed-size 256K     --fstype=none
 part reserved   --offset 3840   --fixed-size 192K     --fstype=none
 part reserved1  --offset 4032   --fixed-size 32K      --fstype=none
 part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none
 part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
-part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part loader2    --offset 8192   --fixed-size 4096K    --fstype=none  --source rawcopy  --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K    --fstype=none
-part /          --offset 16384                        --fstype=ext4  --active  --source rootfs            --label root
+part /          --offset 16384  --active --label root --fstype=ext4  --source rootfs
 
 bootloader --ptable gpt
-- 
2.43.0.76.g1a87c842ece3


