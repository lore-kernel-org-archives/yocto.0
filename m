Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD7C38142
	for <webhook@archiver.kernel.org>; Sat, 28 Jan 2023 23:51:37 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web11.7044.1674949892316909140
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 15:51:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SNyff+KV;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id q15so7269847qtn.0
        for <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 15:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=gMabge2eht0knTzaRtQx9cj5WfTxX+eedBdY//fDa1w=;
        b=SNyff+KVYecl2+SYlyrUpDwdQqr3pYmNTCyTkmOxFBWadCnkiPyFhme8BXil/D6vTe
         ceGbRFAkcW6UC2pLdmnO7n85sMfekrzYHhXZZUm1DcMa4m2o9nY6cY+3dbrBoTA0nZ0P
         j1A45X13+Vr1G+zrmr8BUoM1b7HxlX5so1t2orBH8iPdGAtsf6B29D1kC8nR3A3/WroX
         uBwaThj7hNZxcMIbl6iCFnsDNxq9mKKmyg4vn72HB6xwOPGr4XAugB63N2mg+Fi5+gev
         anVvhclrOFqxlXsuQ8s0AlKL6j9LKO4XATzPGVWxUtsLj4FwLok+4DEgTJdWhwdTQtlr
         +n3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gMabge2eht0knTzaRtQx9cj5WfTxX+eedBdY//fDa1w=;
        b=3Vcl3CcB91fQIM6Ti9HePf35vhnyUx46j66M1pqTtoig3Ojuii5Rbd1cytPrfjEuuN
         id/k4n9oLdCgqxcn/PS5jKiLkE3XFnQQo305CEccJBT/Jk4DfCfirGC6098ii7RNRWP9
         Nv5Lds7Utm2wHPgWrHL13qKLmrdme9FN7t7vS5PeV9jejZsVm1EzgroPvwEx3r4n0/V9
         zdQzwbgVbCbG0f6OcI6A6DH4d9qH5VD33sh4Cvd0ixnRIuz+STUDEdHkpijAnPRdbv66
         KYvUqEOJeWPACylbwAf74qCKqM58+7GYalqd8sbHwvQyh1WMLiJHaESrLU/wOip6mH8z
         ZSIA==
X-Gm-Message-State: AFqh2kozdJ5qseImGi/PTCduHjZtft8nUOrte2kDgMYqn2CfcO7Jun2O
	9hwWlT6rs7v2/jlx1aeKhFbJwNrmpXU=
X-Google-Smtp-Source: AMrXdXumlo0eGe4JIOQB6lCxyyskLNLUjpXp7msq1a9k5uWrTQCmVxQa2sHlwT+pgb5JGbIlgQv1Qg==
X-Received: by 2002:a05:622a:207:b0:3ac:e03e:f93f with SMTP id b7-20020a05622a020700b003ace03ef93fmr88378538qtx.2.1674949891093;
        Sat, 28 Jan 2023 15:51:31 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ej4-20020a05622a4f8400b003b2ea9b76d0sm5396059qtb.34.2023.01.28.15.51.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 15:51:30 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock-pi-4: remove MACHINE
Date: Sat, 28 Jan 2023 18:51:22 -0500
Message-Id: <20230128235122.40693-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.36.0.rc2.17.g4027e30c53
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 23:51:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59095

The last kernel to not split the rock-pi-4[abc] MACHINEs into separate
device trees was 5.10. The linux-yocto kernels supported in this release
are all after 5.10. Therefore remove the rock-pi-4 MACHINE. By now, on master,
everyone should be selecting specific MACHINEs from one of the variants and
not using "rock-pi-4".

NOTE: this layer will continue to use "rock-pi-4" as a MACHINEOVERRIDE when
      the specific variant doesn't matter

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/rock-pi-4.conf | 15 ---------------
 1 file changed, 15 deletions(-)
 delete mode 100644 conf/machine/rock-pi-4.conf

diff --git a/conf/machine/rock-pi-4.conf b/conf/machine/rock-pi-4.conf
deleted file mode 100644
index 23bbfc3bfcf8..000000000000
--- a/conf/machine/rock-pi-4.conf
+++ /dev/null
@@ -1,15 +0,0 @@
-# Copyright (C) 2020 Garmin Ltd. or its subsidaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-#@TYPE: Machine
-#@NAME: Rock Pi 4 RK3399
-#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
-#
-# NOTE: This machine is for Kernels before 5.10. If you are using an newer kernel
-# see rock-pi-4{a,b,c}.conf
-
-require conf/machine/include/rock-pi-4.inc
-
-KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4.dtb"
-UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
-
-- 
2.36.0.rc2.17.g4027e30c53


