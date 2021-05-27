Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.5226.1622113810973544967
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 04:10:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vEtdTSwp;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id jt22so7386421ejb.7
        for <yocto@lists.yoctoproject.org>; Thu, 27 May 2021 04:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z465l+dV1lMpWOzirZzZPh05msY/3yt+pABeF8dmpuM=;
        b=vEtdTSwpxqHcpWfglEH8aCXSzttaNg8GoxIsbJhuSvGpIT649Zcelzstm7YZC3/k/t
         K4JiKUUrbveUcVMvGavi1mirb7B8bdLbcU6IhZVGAxKWsswXLLgUJTdSROglBQw/brFZ
         yCIlhsp7zg+a7l1ojfnD3XqmateBxCk/GysHPQZCgT684ICa88ransXVRWRSdE0oALvZ
         3u0K9WwuV0I3eX0yH4FxUcTY0bcLhMD66nZqBOM/iWK5IcZz7gWaaqIsxD6ULWtDOqfM
         T3LL23R5xx3vAdOQuICmCZCaEnIUyxgDFc8vVwYPQ/cACg73CnOG6I0sCLETU/9oV0CY
         DCBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z465l+dV1lMpWOzirZzZPh05msY/3yt+pABeF8dmpuM=;
        b=KlEC87KU/813u/J+UNCqnLdLXPDe5hLOXUBc9JXIc7ASMPFA6ESmokat3YLnM98ED9
         Hyzf7sEap+G9Q/CewhvrfFcAYuVgeLb51zIY7cGQYjx27wTn8l0nGHUCbErMwaedsMAn
         LJqXcFKvOxYh0FRFi/B+7K02BGGUFZpWzhx6wjZTtGjWZquIegC746MXf50vo8LoneEx
         HVEJmB33PoPjlLyVuP69LhubJ6lUoclvfoaxWnoiedaUNvsuJW1Dyt7EewwuzAMkkIXv
         MM4iU8mhjiPanW38gi4GoDSI9wLCr0x+VEXsUA8XUcixOa8JVJtss7j6TexEv395Shxi
         3+hQ==
X-Gm-Message-State: AOAM530YDPSTUYJR1slQEnvmn4XN4jk+DhZWYE7JVWXkygf3vJY4tXAf
	JpgW3d9Q+9cNv4LFYAdw7vxSw9hzrQs=
X-Google-Smtp-Source: ABdhPJzdWhGaDLfExumEokVD8vR5RCakAtKS4y0ld6bkPZxOsYNH3izXJfBs1L9cs/hqSsnyOVoFhw==
X-Received: by 2002:a17:906:f8c8:: with SMTP id lh8mr3195682ejb.61.1622113809403;
        Thu, 27 May 2021 04:10:09 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id n2sm957885edi.32.2021.05.27.04.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 04:10:08 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: transition ptests to minimal-based images
Date: Thu, 27 May 2021 13:10:03 +0200
Message-Id: <20210527111003.516289-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index cf62815..2ccd24a 100644
--- a/config.json
+++ b/config.json
@@ -95,16 +95,16 @@
         },
         "ptest-qemu" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest",
-            "SANITYTARGETS" : "core-image-sato-ptest:do_testimage",
+            "BBTARGETS" : "core-image-ptest-all",
+            "SANITYTARGETS" : "core-image-ptest-all:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
         },
         "ptest-qemu-fast" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest-fast",
-            "SANITYTARGETS" : "core-image-sato-ptest-fast:do_testimage",
+            "BBTARGETS" : "core-image-ptest-fast",
+            "SANITYTARGETS" : "core-image-ptest-fast:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
@@ -124,7 +124,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
@@ -344,7 +344,7 @@
              },
             "step2" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
-- 
2.31.1

