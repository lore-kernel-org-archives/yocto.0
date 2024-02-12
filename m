Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6663CC48BC1
	for <webhook@archiver.kernel.org>; Mon, 12 Feb 2024 20:23:51 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.17313.1707769429196843182
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 12:23:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Tec6TuwB;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6861538916cso20724896d6.3
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 12:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707769427; x=1708374227; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3lFrNolN2DyXT57DBwXVB2Im3zeTJwxi2dTdhZpB634=;
        b=Tec6TuwBceFufH6+s8d8VTdJ2JC5qa9kBNH+ZfZC8/2STTmhpsRu8NZBQXwjrFv5CL
         O7jvOUlKtlTk/K9gJ/dK4iC3aJNcOKRbrG5yWCTjn8DWaitfNDQcanIklorpzeAzfO2G
         5xP/Tg1jogpOABpJV6t6xOJuqB8hhufaqop7lfTNGxzG5pqcPmE3qw19X80ffEmPosvM
         WRo2Yh2cocxqCB/6LxTxAWfgCA3FqDo6JH5PLUhchWoLUYUQDMZVFkAA/8VvWMWaq5dQ
         rbNB+sYD115oUBHaphdfFeNWtLlQ0dT9t5oMBayYmc3EwyFQcrRiZhIVChPlczIBaBns
         9GDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707769427; x=1708374227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3lFrNolN2DyXT57DBwXVB2Im3zeTJwxi2dTdhZpB634=;
        b=NDBrZvNG8Lb2JWS2zRZHFmYiZ6ZSyhgwtXsKcJJ8aY7j5ftR3qGe0HwJl1dt16Soy+
         KWb8WlotXJm0KSqrz61RP/JgfYYTEeVjon00iIW14HAvDZ8Z0o8m/wGDIntONq7bGNC0
         uiijPKDeLdvfGNe5Qpzm/WtLfXgIHhFaRFMcEj1vpwfapPaGIfU7OHPVebgGOrI2Vrt3
         z42e+LA0PnAmY9uAOFlAMuC4tuo7fkMhFrULSJDiP7OoUbaEMICbez3R3RJI5m1Xa7TE
         4mycqJrHHHUc1E8RzABne5pPHvaOBFUMxz7AJsyrK2OoIt+b08P4U0dWA8RxLmSi2U/f
         9R7Q==
X-Gm-Message-State: AOJu0YyhC8mkkK6MUyZLkpbYvWiMWMMUxq5vLxBgTX6tQBtHubW2CxYS
	lshoh9aJsj2uBASojV4aWP3OAWikSvYTMZo488lZ/4mWkp+G0x8DaourDIxl
X-Google-Smtp-Source: AGHT+IHp492jt+xRM0FF9HR7H79H/JEO3yOK4XscLozYwXvxQaq9tr2fg9HdJQ+suxOo2VT5vAQ7Rg==
X-Received: by 2002:a05:6214:c43:b0:686:acd2:4afc with SMTP id r3-20020a0562140c4300b00686acd24afcmr11852868qvj.17.1707769427220;
        Mon, 12 Feb 2024 12:23:47 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id oj9-20020a056214440900b0068d1c9801aesm477233qvb.66.2024.02.12.12.23.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 12:23:45 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 2/4] rockchip.wks: add all Rockchip partitions
Date: Mon, 12 Feb 2024 15:23:40 -0500
Message-ID: <20240212202342.37778-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240212202342.37778-1-twoerner@gmail.com>
References: <20240212202342.37778-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 20:23:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62465

Rockchip defines the expected layout/map of the default storage device.
Fill out the wks description so it matches.

	https://opensource.rock-chips.com/wiki_Partitions

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 wic/rockchip.wks | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index b14ec0d1690a..8dc4d20f2f54 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -9,16 +9,22 @@
 # wic uses 1KB blocks. The following table uses 512 byte sectors:
 #
 #   Partition   Start Sector    Number of Sectors
-#   loader1     64              8000        (idbloader / U-Boot SPL)
-#   reserved1   8064            128
-#   reserved2   8192            8192
+#   loader1     64              7104        (idbloader / U-Boot SPL)
+#   vstorage    7168            512         (serial number, MAC address, etc)
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
+part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
+part vstorage   --offset 3584   --fixed-size 256K     --fstype=none
+part reserved   --offset 3840   --fixed-size 192K     --fstype=none
+part reserved1  --offset 4032   --fixed-size 32K      --fstype=none
+part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none
 part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
 part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
 part atf        --offset 12288  --fixed-size 4096K    --fstype=none
-- 
2.43.0.76.g1a87c842ece3


