Return-Path: <leon.anavi@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07D85C001DF
	for <webhook@archiver.kernel.org>; Sun, 23 Jul 2023 13:25:15 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.25560.1690118704608491386
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Jul 2023 06:25:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Edy5GBrF;
 spf=pass (domain: konsulko.com, ip: 209.85.221.44, mailfrom: leon.anavi@konsulko.com)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3159da54e95so2439291f8f.3
        for <yocto@lists.yoctoproject.org>; Sun, 23 Jul 2023 06:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1690118703; x=1690723503;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o+mOJ5BB7bJD6gszkpUWmBdsjp6jF43aFtHX48ekqFw=;
        b=Edy5GBrF85qR3qKmQcjb9fJhA7i4bdE/lSR5zbsNeSku9DjYaGHChMAObbivgaS1WS
         FuZd0xYg0Rln38VEUfCxMJqphyexjZnj/gZn+Awd+4SbxvRKVjcCqSoqd9MKIxJDMvxk
         LFQLY754fzuqiWf5GTvsXJ84TDrhcZo3B9KE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690118703; x=1690723503;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o+mOJ5BB7bJD6gszkpUWmBdsjp6jF43aFtHX48ekqFw=;
        b=BexdRYwn9qRumz7K8ZrKoRaLebONKECWmGziESmI6//5M8VhsYcdKTccN3+vEtOZc/
         t/e6QGqLoivUzaBoDGEc/jvLejmcb/hCeu58i8fb6QmcXEz5IvFV6bWFmaSrnlXwen8Q
         loc6W6R9f83b3CnUM/V4/7P01a1vW99zn+oNJyxDRNKW4eCS0sGFHOZt/FfGy91jJBQV
         f7VT4r5QodcdLFtbbejR1cZIl0/76jx6WTtmFR2pfef6QJDxfalXtpCWc4tj+v8qcsIR
         OkDwOwcwA8Xy+hSqnonaoagE4VtGwucRYuuYyh/WhyzZZ9yukFPsOCQpZtzDv9nSWapM
         r9Yw==
X-Gm-Message-State: ABy/qLbawaYGBZ8xwtUkzc2ScLYnV8Ec5qxZoACErVDP2zIQyoiS67es
	H9A5Kifmf2bbZu6sAkHhBFTFlSyGOjQNzcla/Sk=
X-Google-Smtp-Source: APBJJlE7FCNVzhDpwob09E/8pHWh31oZZfUX231T1qLJZUXT8hz/d414SS7ldaW4x85zKvDrWBcmGA==
X-Received: by 2002:adf:e109:0:b0:314:1a98:ebbb with SMTP id t9-20020adfe109000000b003141a98ebbbmr5068492wrz.21.1690118702609;
        Sun, 23 Jul 2023 06:25:02 -0700 (PDT)
Received: from taos.k.g (lan.nucleusys.com. [92.247.61.126])
        by smtp.gmail.com with ESMTPSA id p7-20020a5d4e07000000b003175a994555sm1559551wrt.6.2023.07.23.06.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jul 2023 06:25:02 -0700 (PDT)
From: Leon Anavi <leon.anavi@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Leon Anavi <leon.anavi@konsulko.com>
Subject: [meta-rockchip][PATCH] trusted-firmware-a_%.bbappend: gcc-arm-none-eabi
Date: Sun, 23 Jul 2023 16:24:50 +0300
Message-Id: <20230723132450.61725-1-leon.anavi@konsulko.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 23 Jul 2023 13:25:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60634

Change virtual/arm-none-eabi-gcc-native to gcc-arm-none-eabi-native
following the recent modification in layer meta-arm (git commit
a64fb4a40d707795d9adb7736920fcbeaa7ce5e2) to remove provides.

Signed-off-by: Leon Anavi <leon.anavi@konsulko.com>
---
 recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 814028b..c9ad84c 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -1,6 +1,6 @@
 # Rockchip RK3399 compiles some M0 firmware which requires an arm-none-eabi GCC
 # toolchain
-DEPENDS:append:rk3399 = " virtual/arm-none-eabi-gcc-native"
+DEPENDS:append:rk3399 = " gcc-arm-none-eabi-native"
 
 COMPATIBLE_MACHINE:append:rk3399 = "|rk3399"
 COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
-- 
2.39.2


