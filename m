Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76F83CCA482
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:20 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web08.235.1657825993057025367
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FU9pRC34;
 spf=pass (domain: gmail.com, ip: 209.85.219.47,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id l2so2192374qvt.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e+E1t+foeuxob9aL3q0m4KC250sOZAOVIsdZHY8u40k=;
        b=FU9pRC34BvNFPCXd13Bqc4dxEvUi0YTroaykI9ZL6+j6Td4vGeXhq2JzOSYiWl9Hpu
         avuK3lMyccHqqSUDm69BmoNx3oAEE9z0RAFUQvZjL//rAlz0MQOYeN7ZPyFFCGXoPVXy
         AQXhnnbifYOQdAt7RfuJrK0Jg5ffTxzhtAMaBDXOG0nrNcw9YbP2kM/aQmk7vEdTIciK
         Vfz9bPjd5R0kGYSN9PMwLJ/H5nH9Nd4CtLKyquPiq2YSMAc8P3Gey3Uhw54Tc6wsvors
         e0bpiK5i/1v/9XjJmgi10k95R6eFdfYs4Hb8hCG/4Jsx0lIHue5UfOBPjCM2h3UWBICZ
         ZbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e+E1t+foeuxob9aL3q0m4KC250sOZAOVIsdZHY8u40k=;
        b=Nz5NpUKtW/sPlaYKIsLiMJ6tjb9x1vWN3r98l/NPkvp56bpb2KnA3tkjWqhr9pxFHO
         fIFtrSlBKJYW08b8+rKipwvyuxU5FOXGjAkYu9B7Z5CHzP6ktjet2Jna/dhAKWNSWHmO
         AWSkFYcQuUbAyWFPOS9GjSCLJbnG6blvICLiFaXapfncddKiyfzw6Ci7RiitDZ3KPm7m
         0Mz2EKU4z3H2AnT9avbSsOwb/MHCiqg5rKgulPMYn/o/s4zs6TXYhVpdqdVJbQbX3A28
         gHuSTherscKlMjlT+wkokDpFyjUS+Uo/NRQy/+x/R0X6kgsDNlskDAva+09tI5FDg4/g
         fi2A==
X-Gm-Message-State: AJIora/oBDZA7cAxZPgCCfgPhcf2ZOCMYk8Nuz9dGfvJRwlXUXxEvERb
	ZPwwyV/7s2aGAd99a/KMhTWO295wQu3Hkg==
X-Google-Smtp-Source: 
 AGRyM1vxNyEHquYcV1qlVZSYug68V9oJu6VtDZO3zAluKue1HKUOCC10tXzn5UYwa5SixJMSCu7hWw==
X-Received: by 2002:a0c:e352:0:b0:472:fc89:1ec7 with SMTP id
 a18-20020a0ce352000000b00472fc891ec7mr8862536qvm.117.1657825992029;
        Thu, 14 Jul 2022 12:13:12 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.13.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:13:11 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 08/10] linux-yocto/5.10: fix buildpaths issue with pnmtologo
Date: Thu, 14 Jul 2022 15:12:51 -0400
Message-Id: 
 <4c505b21162f56d268d7576839e9458d2f09ac42.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1657825809.git.bruce.ashfield@gmail.com>
References: <cover.1657825809.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57545

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.10:

    2883e69e202d pnmtologo: use relocatable file name

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto-rt_5.10.bb              |  2 +-
 .../linux/linux-yocto-tiny_5.10.bb            |  4 ++--
 meta/recipes-kernel/linux/linux-yocto_5.10.bb | 20 +++++++++----------
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_5.10.bb b/meta/recipes-kernel/linux/linux-yocto-rt_5.10.bb
index 40cc21bceb..53ccd41033 100644
--- a/meta/recipes-kernel/linux/linux-yocto-rt_5.10.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-rt_5.10.bb
@@ -11,7 +11,7 @@ python () {
         raise bb.parse.SkipRecipe("Set PREFERRED_PROVIDER_virtual/kernel to linux-yocto-rt to enable it")
 }
 
-SRCREV_machine ?= "faeb2e0ef8f7014788d4e8152d4f5698a7472e0f"
+SRCREV_machine ?= "63771123b1eea439bea2cf80f9f5682667528d9f"
 SRCREV_meta ?= "96ea2660bb97e15f48f4885b9e436f24c3606bd9"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;branch=${KBRANCH};name=machine \
diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_5.10.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_5.10.bb
index 2993ddc951..7b3aaa7fa0 100644
--- a/meta/recipes-kernel/linux/linux-yocto-tiny_5.10.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-tiny_5.10.bb
@@ -15,8 +15,8 @@ DEPENDS += "openssl-native util-linux-native"
 KMETA = "kernel-meta"
 KCONF_BSP_AUDIT_LEVEL = "2"
 
-SRCREV_machine:qemuarm ?= "da9808c1a36f935dec2b90fb5fa5f9df4ff400a3"
-SRCREV_machine ?= "bf0ae2ab0102a68bad4a586fd42ceb78cc0a24e1"
+SRCREV_machine:qemuarm ?= "bff12aa9748d83efc518e524858913c028f0707a"
+SRCREV_machine ?= "5bdf36bd73803640ee495fc6f36b0207993bf62a"
 SRCREV_meta ?= "96ea2660bb97e15f48f4885b9e436f24c3606bd9"
 
 PV = "${LINUX_VERSION}+git${SRCPV}"
diff --git a/meta/recipes-kernel/linux/linux-yocto_5.10.bb b/meta/recipes-kernel/linux/linux-yocto_5.10.bb
index b1c991f55b..d5bf2c9496 100644
--- a/meta/recipes-kernel/linux/linux-yocto_5.10.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_5.10.bb
@@ -13,16 +13,16 @@ KBRANCH:qemux86  ?= "v5.10/standard/base"
 KBRANCH:qemux86-64 ?= "v5.10/standard/base"
 KBRANCH:qemumips64 ?= "v5.10/standard/mti-malta64"
 
-SRCREV_machine:qemuarm ?= "859babe91947ce09d70f8be4c8b314d9712a30ea"
-SRCREV_machine:qemuarm64 ?= "0a59ce2115693d52b931b0fc72f5699a22a77e81"
-SRCREV_machine:qemumips ?= "5bebdf68c5391f8a56f98a8cb31522c0627e05e0"
-SRCREV_machine:qemuppc ?= "0f4a4f1329c7331a02d36f7195f9414e40709d43"
-SRCREV_machine:qemuriscv64 ?= "a6e419710dedbe0390cbf30267c13752b9161972"
-SRCREV_machine:qemuriscv32 ?= "a6e419710dedbe0390cbf30267c13752b9161972"
-SRCREV_machine:qemux86 ?= "a6e419710dedbe0390cbf30267c13752b9161972"
-SRCREV_machine:qemux86-64 ?= "a6e419710dedbe0390cbf30267c13752b9161972"
-SRCREV_machine:qemumips64 ?= "03dc9bc06ba1b7d105467bea334e84b3666b67f4"
-SRCREV_machine ?= "a6e419710dedbe0390cbf30267c13752b9161972"
+SRCREV_machine:qemuarm ?= "8d513bf2294b60cbfa7bfbfab43f7ec458e88de0"
+SRCREV_machine:qemuarm64 ?= "f86e70ec0a39fa6cfd5b19a013703345cf9e8d4c"
+SRCREV_machine:qemumips ?= "a5c1977699a2733ed4ddd08f1bcc1cbcc1fa8862"
+SRCREV_machine:qemuppc ?= "2e52a4c55beaea77e6b99720de58624c416e7569"
+SRCREV_machine:qemuriscv64 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:qemuriscv32 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:qemux86 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:qemux86-64 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:qemumips64 ?= "37c7c3e8979a2b0eb75bf8ceab7f2b7f12565ceb"
+SRCREV_machine ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
 SRCREV_meta ?= "96ea2660bb97e15f48f4885b9e436f24c3606bd9"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;name=machine;branch=${KBRANCH}; \
-- 
2.19.1


