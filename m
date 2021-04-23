Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web12.67.1619200992602149394
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 11:03:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m27E4oQQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id r20so25379710ejo.11
        for <yocto@lists.yoctoproject.org>; Fri, 23 Apr 2021 11:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sV6e4R/6AHSPcpuXtX/k++C1yb3SomEl766S74ev/o4=;
        b=m27E4oQQUy68gEqcl09KT58ePJUp/EvlXU4opwsOxJG6NA5o3UAxgEmCCnYa/xvBPD
         7V0st5R7vUie1VxZgeH2zItnToRwfiBLy9TPWYjmLUPgbPU69i/7egAEJEkNki1xE+5w
         URz0Diz4PfTgVCI6TZ6mauUyr+AIHtxf961ZsZRnxcSJE+B4HVLR7/sizkt+lTjGJXjO
         oUkiDCDuXDNMP07MZTzt2NtZay4rfkx1Aqd1dlyWrm7YxpuepoaXbA0MINjVumQbpro+
         sRpnzxnOqM1mQGMzeU4tz3WEB4f8ubHp10lVevWKg5Le/MGw370tuR6/xYN2Xjh5w8+x
         b9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sV6e4R/6AHSPcpuXtX/k++C1yb3SomEl766S74ev/o4=;
        b=HtnF4fPjCadP4OP2xsZI831uRLlyOAjGTuBo5asDrQN4ywVbXMtEtFH2CGN+3UmGT0
         Eoyi3Au+Di26ow0QgNKDq3EjYRIS5yeFKW2KDshE70VkQfxuaIBPHcxt3Tu0LfB589iQ
         tZ4Q4CHHRTs70y8sP7BH2dWmhhI12wIdTnvbRglG7g7qKD1wURfZAp1AQxDNuT9SEpT1
         Szxx+hieqJONlW7UtxGLgEpdhYTJFTIyo4nZs/CXu+YywEstYUbkH+XQ5PwYmG9Gq+jX
         RnaW4o9Ebp0qocK426iW/sjP2PrWrwL2LljPsTSe6h6QbfZlMqqTFGR47FC284wc1sAh
         l1VQ==
X-Gm-Message-State: AOAM530TQGEOAusgm4Vg9Fhcdy8qnrimTQl/t863TUXNsUy9oVlmSha5
	zGquX646/RyrQB7XHiuizNtz4eLWyCQvyg==
X-Google-Smtp-Source: ABdhPJwprk3iS/crYHpaFLBk9fC0MOBUO7y7ZkjCygbYmHd79rypiD/PV+17xAMv5l6dBXdEId9soQ==
X-Received: by 2002:a17:906:b09:: with SMTP id u9mr5629418ejg.244.1619200991107;
        Fri, 23 Apr 2021 11:03:11 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id bm13sm4604142ejb.75.2021.04.23.11.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 11:03:10 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 1/4] config.json: transition ptests to weston-based images
Date: Fri, 23 Apr 2021 20:02:43 +0200
Message-Id: <20210423180246.706715-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index 8d8d1bf..a1893db 100644
--- a/config.json
+++ b/config.json
@@ -92,16 +92,16 @@
         },
         "ptest-qemu" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest",
-            "SANITYTARGETS" : "core-image-sato-ptest:do_testimage",
+            "BBTARGETS" : "core-image-weston-ptest-all",
+            "SANITYTARGETS" : "core-image-weston-ptest-all:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
         },
         "ptest-qemu-fast" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest-fast",
-            "SANITYTARGETS" : "core-image-sato-ptest-fast:do_testimage",
+            "BBTARGETS" : "core-image-weston-ptest-fast",
+            "SANITYTARGETS" : "core-image-weston-ptest-fast:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
@@ -121,7 +121,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
@@ -341,7 +341,7 @@
              },
             "step2" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
-- 
2.30.2

