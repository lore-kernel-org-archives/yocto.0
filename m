Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37CD8C433EF
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 14:12:40 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web09.11119.1636639958912611958
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 06:12:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=sAVXxMBM;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.177,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f177.google.com with SMTP id l8so5392625qtk.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 06:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FhTKW/0eXujLDX1HwUoXg0sRREhluEbMCg9t8Z3gEhY=;
        b=sAVXxMBM0t/Ns9xBD7tbEcmzw8q6tyLFTW1bmLskS4n1Ou7bKL8WcE6GaOM5zQRRMl
         kkjQOJw38yVLAn0At9VQ+pHhKR0NurgyAkIZPZAurve/GR03dd+YWKsZ2OXkeBNUqOp7
         82Q1Ni+VWL8VBXIiemH6G2WZQYWpsyf0xyRWotYvCOPLefCcoYehsF203k/FjUEsVKhl
         BGE24M+9kTwQjE2+im7TBc5FPzs4C85KAqUOrsZui86wWtB92K6fZR679LUvW8CMEEDD
         uQ6g3xex4NEauj2lGBPpo9wcgwPQpC0mK/0DYlO4lSmKp2Knhg3QSs9WxygweI5sNEte
         xpIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FhTKW/0eXujLDX1HwUoXg0sRREhluEbMCg9t8Z3gEhY=;
        b=4tfChLxAo5hwke5O2QT1MXno3NUDeIN6eyHwJZpjR1Q474nmh3irHXRRPYU5Saf2+r
         JcZiHeZKP0x8MWO01cqStC1SMu8G3ITBRPgq4h5IPLvaJjCpC92zWEHs8bMIULOWFHWh
         4J5fq3R6WzdDjwIamIuTlcr2xwbPKzEVM5vJMfarfCbR89Lb5Imrm4FtLRHOztHTroB1
         AQkqfc1fnje0MJcmeeHmn5ybNPfS+yr/NA2UC1dQ7Kchm7T1UNL1UZ0tqzj0dzjgROoJ
         cy6CU1IYmyfsKhZBsya+1K+iK6URWS3P3R/BsPVUsKQ/bFa8GUI25MBpLqzr/itWP7Uq
         l9ug==
X-Gm-Message-State: AOAM531aJ5xYWWuybID5TDqmw5zYdGjaJg2mmuO2qSh1OxDz88zET4kb
	eLyphwm3otjO/hJPlJblXmhM/nRiuv/10g==
X-Google-Smtp-Source: 
 ABdhPJxcbtgiv63ZEN295RYSRYZ0ixZeg3sgCC4kcKaLIozlWZ9ERsG+VtQ0FQ+dx+gIJHg4HalMUw==
X-Received: by 2002:a05:622a:3c9:: with SMTP id
 k9mr7982899qtx.42.1636639957913;
        Thu, 11 Nov 2021 06:12:37 -0800 (PST)
Received: from localhost ([2605:a601:a618:1500:55ca:632:7b7d:1463])
        by smtp.gmail.com with ESMTPSA id
 s8sm1509440qkp.17.2021.11.11.06.12.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 06:12:36 -0800 (PST)
From: Jon Mason <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel-test: remove unnecessary "+="
Date: Thu, 11 Nov 2021 09:12:36 -0500
Message-Id: <20211111141236.27771-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 14:12:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55313

bitbake is now warning when "+=" is used with "remove", as it is not a
recommended combination.  Change the commented out versions that have
this combination to prevent anyone from using it.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index c7ccf9e05742..77f45a737407 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -14,16 +14,16 @@ ZEPHYRTESTS:remove:qemu-x86 = "common device interrupt poll queue sleep"
 ZEPHYRTESTS:remove:stm32mp157c-dk2 = "common device poll queue sleep"
 
 # test_context will fail because QEMU for ARM does not emulate CortexM3 BASEPRI register
-#ZEPHYRTESTS:remove:arm += ""
+#ZEPHYRTESTS:remove:arm = ""
 
 # test_critical never finishes in an unpatched QEMU either
-#ZEPHYRTESTS:remove:arm += ""
+#ZEPHYRTESTS:remove:arm = ""
 
 #Remove ARM specific tests
-#ZEPHYRTESTS:remove:x86 += ""
+#ZEPHYRTESTS:remove:x86 = ""
 
 #Remove tests not intended for Nios2
-#ZEPHYRTESTS:remove:nios2 += ""
+#ZEPHYRTESTS:remove:nios2 = ""
 
 # List of all available kernel tests
 ZEPHYRTESTS = " \
-- 
2.20.1


