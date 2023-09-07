Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C830AEC8748
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 16:48:53 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.18204.1694105330212222262
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 09:48:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Jckv5MZX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-31adc5c899fso1252558f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 09:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694105328; x=1694710128; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01ddVK908YSXa/RAgrKhj1cmV/5UFwaWr+JPV0UMYVI=;
        b=Jckv5MZXkDJyipbN8GxDCNRaLzjvvWc1tmQO9UMjKjuwh6H/SxA/cCvzI2DhTowDsw
         SRgsLb7+9GcLSfBcO4W9RAJ+vrhLgjBmoGu4gv5QaudMbnBFinYply7Dwq8tdZXExpRx
         1apKL21DKhm1GQf7UTGqZAKoWKLwUcrmHCr2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694105328; x=1694710128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=01ddVK908YSXa/RAgrKhj1cmV/5UFwaWr+JPV0UMYVI=;
        b=DYNC/PqF7pulw3rYRogHT0VfWzrb57mqiNpu8QM20lWOfh7kHZdOvEshEnRP4C5lvi
         Rs7ZFIjq2G0/MQIYlYXTxrX7qH3LhfC2DDCw+Nxg5Xp48fRxMrY+dER3lqCSK7O9wE1c
         BawTwDaZ/hHw3GwgnqBJwS6heoiUcGoj8x6PfAWWkdCBaKVtznsVpi3/nYW58Kpq2vik
         NunN1d5GG1uspywc03Z/KVXoQuyfK3SfwcOdECJgvgphTFpxaZWlsgQ/u0zd3V/rXF9E
         GxZf+9VmRgurcBowYGwpWy6HnHxy6l6kDjRkSbOXlA1cgC8NmNndHS9NpmsqdzPR3upt
         uMIA==
X-Gm-Message-State: AOJu0YzSpjK1NavbYms44Ks6EYpfkGZJN9bmPo+4t0ll38XO9oW513/r
	hlK+BqFJV6Ygg0f18NnGxHrvvQYHKGZ/MTPuxP0=
X-Google-Smtp-Source: AGHT+IEuSbQ7PlIF48r2XDoQJQByn8ywn2ZBeYnbj9veg22/N+nhn1EJXvF/CtGHWcniz1h+/GkcFA==
X-Received: by 2002:a5d:5611:0:b0:319:6f0e:fc0e with SMTP id l17-20020a5d5611000000b003196f0efc0emr1626wrv.30.1694105328290;
        Thu, 07 Sep 2023 09:48:48 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5f38:2f43:a165:5f10])
        by smtp.gmail.com with ESMTPSA id l21-20020a1c7915000000b003fef6881350sm3026493wme.25.2023.09.07.09.48.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 09:48:47 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 2/5] config.json: Prefer x86_64 SDKMACHINE to i686
Date: Thu,  7 Sep 2023 17:48:43 +0100
Message-Id: <20230907164846.3186078-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
References: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 16:48:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60936

The i686 SDKMACHINE target makes little sense now, reduce it's usage substantially to
match use in reality and make x86_64 the default.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 49 +++++++++++++++++++++++++------------------------
 1 file changed, 25 insertions(+), 24 deletions(-)

diff --git a/config.json b/config.json
index 6d1076b..df83bdb 100644
--- a/config.json
+++ b/config.json
@@ -31,7 +31,7 @@
         "NEEDREPOS" : ["poky"],
         "DISTRO" : "poky",
         "MACHINE" : "qemux86-64",
-        "SDKMACHINE" : "i686",
+        "SDKMACHINE" : "x86_64",
         "PACKAGE_CLASSES" : "package_rpm package_deb package_ipk",
         "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
         "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate'"],
@@ -85,14 +85,14 @@
                 "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
             ],
             "step1" : {
-                "SDKMACHINE" : "i686",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
-                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
+                "SDKMACHINE" : "x86_64",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             },
             "step2" : {
-                "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
+                "SDKMACHINE" : "i686",
+                "BBTARGETS" : "core-image-sato:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
         "arch-qemu-lite" : {
@@ -173,7 +173,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "SDKMACHINE" : "i686",
+                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
@@ -203,26 +203,27 @@
             "SSTATEDIR" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
             "MACHINE" : "qemuarm64",
              "step1" : {
-                 "SDKMACHINE" : "i686",
-                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
-                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
+                 "SDKMACHINE" : "x86_64",
+                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
              },
             "step2" : {
-                "SDKMACHINE" : "i686",
+                "SDKMACHINE" : "x86_64",
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
             "step3" : {
-                 "SDKMACHINE" : "x86_64",
-                 "BBTARGETS" : "core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
-                 "SANITYTARGETS" : "core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
+                 "SDKMACHINE" : "i686",
+                 "BBTARGETS" : "core-image-sato:do_populate_sdk",
+                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
              },
             "step4" : {
                 "MACHINE" : "qemux86-64",
-                "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
+                "SDKMACHINE" : "i686",
+                "BBTARGETS" : "core-image-sato:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-sato:do_testsdk"
             },
             "step5" : {
                 "BUILDINFO" : false,
@@ -454,14 +455,14 @@
             "step1": {
                 "shortname": "Build for fvp-base",
                 "MACHINE": "fvp-base",
-                "SDKMACHINE" : "i686",
+                "SDKMACHINE" : "x86_64",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
                 },
             "step2": {
                 "shortname": "Build for generic-arm64 (poky)",
                 "MACHINE": "generic-arm64",
-                "SDKMACHINE" : "i686",
+                "SDKMACHINE" : "x86_64",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             },
@@ -469,7 +470,7 @@
                 "shortname": "Build for generic-arm64 (poky-altcfg)",
                 "DISTRO": "poky-altcfg",
                 "MACHINE": "generic-arm64",
-                "SDKMACHINE" : "i686",
+                "SDKMACHINE" : "x86_64",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
@@ -755,7 +756,7 @@
                 "shortname" : "x86-64 lib64-img",
                 "description" : "x86 building 64bit multilib image",
                 "MACHINE" : "qemux86",
-                "SDKMACHINE" : "i686",
+                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "lib64-core-image-sato lib64-core-image-sato-sdk",
                 "extravars" : [
                     "require conf/multilib.conf",
@@ -767,7 +768,7 @@
                 "shortname" : "mip64 n32",
                 "description" : "qemumips64 image using n32 as default",
                 "MACHINE" : "qemumips64",
-                "SDKMACHINE" : "i686",
+                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-minimal core-image-minimal:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-minimal:do_testsdk",
                 "extravars" : [
@@ -782,7 +783,7 @@
         "pkgman-non-rpm" : {
             "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-minimal:do_populate_sdk",
             "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-minimal:do_testsdk",
-            "SDKMACHINE" : "i686",
+            "SDKMACHINE" : "x86_64",
             "step1" : {
                 "shortname" : "x86 ipk",
                 "MACHINE" : "qemux86-64",
-- 
2.39.2


