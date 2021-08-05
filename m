Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web11.10591.1628178120198126488
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 08:42:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=d8O/N0rW;
 spf=softfail (domain: sakoman.com, ip: 209.85.167.180, mailfrom: steve@sakoman.com)
Received: by mail-oi1-f180.google.com with SMTP id n16so7933821oij.2
        for <yocto@lists.yoctoproject.org>; Thu, 05 Aug 2021 08:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=326y04EKtxK28tqWINGhQJyh6zCuZlhixLuVDim1Qp4=;
        b=d8O/N0rW+hV21+yUgZ4rmzZgw2hO2gVmgkDUAHGEJHFucpLtZoEPhSRRW2uXfAE1xB
         YOry+jeBdZYTQxuiBMkxbG8z/rHW4Zll3+9YxtjaJCVs8NISYlIYRwqfEGMELiQs0eJg
         ySHXENxxSGtw0dVCnVgPFZQdf0j+HMcgZnO3eih9fb0e2Gb7bU0BvB3pTq8FQqCRoLMx
         B9UQaqRFb4Hvl44wdOL4boL/hEtYR/oWsXKoYE0WlP/2IglecSzdRgoWZusTDG8x4s6r
         GqCR2Yxfd0RQ/SwJvZpQiX81mHYcsil2LhsVtJbnzB3aIZX26OXAoRdSxHBD7S9Gd3aV
         7jvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=326y04EKtxK28tqWINGhQJyh6zCuZlhixLuVDim1Qp4=;
        b=tqSFx/qYVIArSOVWZIynnaF3yayPbChQgXV7ooU2fYZOe3RfMplFnMmUax6FU57efL
         LNfraLvJi9bB/6myv6+bGwQ6vlstJBQWeFICQYU4Rr0llnGBtTqbJDGh88q8NB3JiFRz
         WG4YOOxwEH001M+jR+Dhu/54PEDYAHlxERX7XIB55dpFy0MEP1109IO5gBWG8SorZ9z0
         MwTJPFrILQHXfR1ZRBUDqWck/1sbejwto5/N0u6u3tnpO5tXmuKl85LdEicIN5iAe99e
         MOffFVo4enjJh88FWnfPutTg6SrRogU9yOyjMsZws+AP5eU9cI9VY3t2M3T7Wdr1KfQl
         1cvw==
X-Gm-Message-State: AOAM533C6pBZ0iSiXnmCwbzPY+VGxYmyvRdMudCMtLADI07BNfx4jJZr
	2wNM49F0KUyoVEeCEx4IbWJJY1h4ekBACJk7
X-Google-Smtp-Source: ABdhPJwV0WnN4+PaEy15N/Fkphx78GbRmkmMHMytaVuVe2UfBze7R8FDhD+mJuktlAUuxC3f6bgbYg==
X-Received: by 2002:a54:470c:: with SMTP id k12mr5115211oik.126.1628178119061;
        Thu, 05 Aug 2021 08:41:59 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id p186sm1065782oif.49.2021.08.05.08.41.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Aug 2021 08:41:58 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: Update check-layer to use --no-auto-dependency after yocto-check-layer changes
Date: Thu,  5 Aug 2021 05:41:24 -1000
Message-Id: <8034d8f1899bcf2b97877e886c008b12aee71c3b.1628177954.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1628177954.git.steve@sakoman.com>
References: <cover.1628177954.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Add layer checks for meta-aws and meta-openembedded while we're at it

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit fe72e222961d69dcd4d638e7e05b437a65e8f34c)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index e22124d..d871349 100644
--- a/config.json
+++ b/config.json
@@ -771,10 +771,18 @@
             }
         },
         "check-layer-nightly" : {
-            "NEEDREPOS" : ["poky", "meta-intel"],
+            "NEEDREPOS" : ["poky", "meta-aws", "meta-intel", "meta-openembedded"],
             "step1" : {
+                "shortname" : "Test meta-aws YP Compatibility",
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-aws --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python -n --no-auto-dependency"]
+            },
+            "step2" : {
                 "shortname" : "Test meta-intel YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-intel"]
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-intel --no-auto-dependency"]
+            },
+            "step3" : {
+                "shortname" : "Test meta-oe YP Compatibility",
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-openembedded --no-auto-dependency"]
             }
         },
         "meta-mingw" : {
-- 
2.25.1

