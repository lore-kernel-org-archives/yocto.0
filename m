Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2774EC8743
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 16:25:13 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.17714.1694103903330980653
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 09:25:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=frG8vx8o;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-400a087b0bfso12432825e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 09:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694103901; x=1694708701; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Fq+yJ5qU7VtOk9lOlD9NTPf87Psu5xnkWRE4/7FXBkc=;
        b=frG8vx8oW/lZaq/JY/WD1HcOrk+lFDR/d05VoBzl2mDk1fTWK9dTjXHQlHdqHSMsp6
         X+dCv9hxH/z7QSn2wttbQcWS+t/O8QA/0eHUOz4fjeaoiTzg+Nmjwm5rY/vEISImuEXv
         GuAvm86HAWmLR9zxcaQj+ir0uWrAjjM5lWP7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694103901; x=1694708701;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fq+yJ5qU7VtOk9lOlD9NTPf87Psu5xnkWRE4/7FXBkc=;
        b=NFrSM91Af0YL3mNOJidUW+FRe5I7dlftHxqnTWXAwXLiuqNzT/qdvmFLk+5r4GrWoi
         Mi5IwmgPT0SSL/fo+xCM3JcCQqJDKBz9pPmw1UAPAQRuCOI8egjRijeqbkTObcjRnIQz
         QMQa+j3q8v7/fI5wJwlfn5pXJ5LudWaOjLYw5EawwPtcPDqFrziZcxgNpKPC/a/j7nPe
         F6yRakHwvuiNryccsuEEyCxO2O/v1TdLNK8B1s0ub8ULPaN0hSy8HdjTRg0ccznDogLX
         jaip8RADhZop0XRIxNhr5MKSwnh9x1L64ETDgU5KkNhp4jkh0fTUs8hDplWiWVP+K1TR
         B+fA==
X-Gm-Message-State: AOJu0Yw94E35lhsRpLdxPDw+Sqe53tVQbj322sjR2+KM4Kel6r3GwulS
	LFNCB+nq2/t6gAJXUZkr57KaYk4BI6FB2b+Qcz0=
X-Google-Smtp-Source: AGHT+IH6ApgdWoeR+tRJ2WblMx84UYoNGoU+Z20b20eoBQWJzEYfPfsGBJYKJTOQ3cnFh4qnivSowg==
X-Received: by 2002:a5d:6a47:0:b0:31a:e21f:37ee with SMTP id t7-20020a5d6a47000000b0031ae21f37eemr4752417wrw.67.1694103901258;
        Thu, 07 Sep 2023 09:25:01 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5f38:2f43:a165:5f10])
        by smtp.gmail.com with ESMTPSA id c1-20020a056000104100b003179b3fd837sm1108288wrx.33.2023.09.07.09.25.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 09:25:00 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Reduce testing on qemumips/qemumips64/qemuppc
Date: Thu,  7 Sep 2023 17:25:00 +0100
Message-Id: <20230907162500.3184954-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 16:25:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60934

Introduce the concept of "qemu lite" and reduce the testing on these platforms,
mainly with the removal of core-imaege-sato-sdk.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 34 ++++++++++++++++++++++++++++------
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index 05c6794..fe95d2a 100644
--- a/config.json
+++ b/config.json
@@ -94,6 +94,17 @@
                 "SANITYTARGETS" : "core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             }
         },
+        "arch-qemu-lite" : {
+            "BUILDINFO" : true,
+            "BUILDHISTORY" : true,
+            "extravars" : [
+                "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
+            ],
+            "step1" : {
+                "BBTARGETS" : "core-image-sato core-image-minimal core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
+            }
+        },
         "toolchain-qemu" : {
             "BUILDINFO" : true,
             "extravars" : [
@@ -117,6 +128,18 @@
                 "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
             }
         },
+        "altcfg-qemu-lite" : {
+            "DISTRO" : "poky-altcfg",
+            "BUILDINFO" : true,
+            "BUILDHISTORY" : true,
+            "extravars" : [
+                "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
+            ],
+            "step1" : {
+                "BBTARGETS" : "core-image-full-cmdline core-image-sato",
+                "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-sato:do_testimage"
+            }
+        },
         "ptest-qemu" : {
             "BUILDINFO" : true,
             "BBTARGETS" : "core-image-ptest-all",
@@ -504,24 +527,23 @@
         },
         "qemumips" : {
             "MACHINE" : "qemumips",
-            "TEMPLATE" : "arch-qemu"
+            "TEMPLATE" : "arch-qemu-lite"
         },
         "qemumips-tc" : {
             "MACHINE" : "qemumips",
             "TEMPLATE" : "toolchain-qemu"
         },
-
         "qemumips-alt" : {
             "MACHINE" : "qemumips",
-            "TEMPLATE" : "altcfg-qemu"
+            "TEMPLATE" : "altcfg-qemu-lite"
         },
         "qemumips64" : {
             "MACHINE" : "qemumips64",
-            "TEMPLATE" : "arch-qemu"
+            "TEMPLATE" : "arch-qemu-lite"
         },
         "qemuppc" : {
             "MACHINE" : "qemuppc",
-            "TEMPLATE" : "arch-qemu"
+            "TEMPLATE" : "arch-qemu-lite"
         },
         "qemumips64-tc" : {
             "MACHINE" : "qemumips64",
@@ -533,7 +555,7 @@
         },
         "qemuppc-alt" : {
             "MACHINE" : "qemuppc",
-            "TEMPLATE" : "altcfg-qemu"
+            "TEMPLATE" : "altcfg-qemu-lite"
         },
         "qemux86" : {
             "MACHINE" : "qemux86",
-- 
2.39.2


