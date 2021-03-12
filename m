Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.6030.1615541583314608346
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 01:33:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dM3APh3k;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id w18so6995807edc.0
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 01:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vES8lZ5ykYceH68qHw6Vz0mkDJJAiGX8px6fuc6fdmo=;
        b=dM3APh3kQFlp4ocIoORM6xkifs8fdegybk3wD0f1OyQCbCZiPlEqOTVR0jUbSReFDs
         /VSwT5veZ8ga0+5zv44LLmK8N4ABl4pEt/pmKypE/8GnmpWhce4RmmkzjCX5K6cxHL1F
         osls5qIYSAvVLFHtKZHNyRi9vi4iVpu/xaaaFGG/sjCwRCu4XQap8HS5CD7+lfM5GVLx
         jNyXpT33PJUtQv3LnYHyTInTb1DU8E282E+yXdNvzGY4H9F0rBNm3WTNG9JZbWCuryxj
         c4ArLLFjx6QwelFymqWY85xuBpozm/caANwF9ZQ68vMYvbiwrHUeYjJ+RTzbJPJZzA1n
         18Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vES8lZ5ykYceH68qHw6Vz0mkDJJAiGX8px6fuc6fdmo=;
        b=TFhdvwSU/LCtKVoKL5/uG7uMKe8rKdYzCAYaZAYPg9cyVNl44U2t7JJitc++qC4gpY
         PR7Qd/YVsbhT2EviqmCl04Kw1zXd5RVtZMd2kccZKspbXrESBFbfNBus8khFTU5/aDOe
         3wbw39+pKG46kzyqdYp6m0iUS0wt9SzeO+0Yz/jnhg0k5r0b9qFjZCTmNVQiUK2MyrcE
         C8BcGj4EOdqlDEeKDPkbtTyEV31xQzmqP5xbL9bcP1TYfqs/w8v9RvbpxV0iFw4a3uSa
         qibnB4nl8cWTHl1RX+07VnnVFUSSC/O6tHDzJYIiQ9T6BZmFM02/2Z1op9AUWupjySDJ
         B4hQ==
X-Gm-Message-State: AOAM533rZar5CjfWodD1x+NkbdFjL/vOhO7f7JwFwxTaD28BESnMwaLH
	mHLC+/Cmi3wp78NAj0hZDkPziilo/pxA/Q==
X-Google-Smtp-Source: ABdhPJxrK+78RI69bQmb9bBc/1/5Pcaq99oyNyXaRkm/zGBcdEU+TkdXqxR1gOt8HS/vHZ9T+kRqqQ==
X-Received: by 2002:a05:6402:646:: with SMTP id u6mr13419336edx.250.1615541581939;
        Fri, 12 Mar 2021 01:33:01 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id h2sm2532708ejk.32.2021.03.12.01.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 01:33:01 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 3/6] config.json: transition ptests to weston-based images
Date: Fri, 12 Mar 2021 10:32:37 +0100
Message-Id: <20210312093240.319125-3-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210312093240.319125-1-alex.kanavin@gmail.com>
References: <20210312093240.319125-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index 66b76ed..b0fc363 100644
--- a/config.json
+++ b/config.json
@@ -88,16 +88,16 @@
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
@@ -117,7 +117,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
@@ -319,7 +319,7 @@
              },
             "step2" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
-- 
2.29.2

