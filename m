Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web12.6018.1615541582631137078
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 01:33:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QvvAXT0u;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id jt13so52134990ejb.0
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 01:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xEbPCwXV7ZcMystzL7EH4U3O5z48mqjJS2MlnzfkFQk=;
        b=QvvAXT0ut4apaqugisCKbVfl9rdEi2qkJt7DsqXao0gqETnSgqQgvIJoFVSvXG8DVv
         BPGmJL/zUsFCOt3QPQyP2lcsUgH4AYuxJGKoBzelOjMvzGNj3oBbieW0cBOzSa7JpSmM
         HORMxACvAjGPj1zpKFNl/wo/PiYdGZKuH/0vG6vbW9qLd/Cq6GkR735J8koGX6j737NV
         Ev0UiGtUySdtFSnJTUuW13Bmf+vF7XZl9Ibhw03erxAkd/j+4Pwqmdgh5MKH6scNBBdt
         XGr4E8lKF//qFwxQ2eQJouHahIqU/6GPAt3D8q9oQcf98FcblQbZDjFJnTczRd01c21E
         MybA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xEbPCwXV7ZcMystzL7EH4U3O5z48mqjJS2MlnzfkFQk=;
        b=V3+TN6Nj3Xpe7ZEu5tknEh3plRktS5ePWQDAzTcdbCPzdhmbirgsyaFpyRo3RsB5yk
         2fipKnCmSsvsC0bU6ZH+5UAsAOjZzpp/6ZLbKp6AZsEAqy8+bHEdwE7K+f5p+kFIzx4p
         1qIfQ3uXPdVitwj4rhsJ9r8CjNcxQ1ukV1UyMN8cj2jsujL97PQB1scGe0CveccjuxVH
         LRnFsnDgUEYRQI9P7JYyFJQJaO5dgh8vx3cZfTTBhPbLrd6BEouzj78Kj+6+WW0MSDoK
         Q5xcz+6cz8miPj9xgiFXarlv7/93XYlbajoBeJ+sXBlTZmn+yub/FlnMWDXkba67iqxw
         AIDw==
X-Gm-Message-State: AOAM530Z32qyv3k2mEJiciIemjjQz5nDMome6nlwTxu6YhKn6+Bxfb0x
	RVo7uq4YC6QlVi+iDwjQfk0Z2mKcT/jgkA==
X-Google-Smtp-Source: ABdhPJwyjOpKfDHwghuOsdgxiX1qTJfs9CX7YaRWznyI8cUpWCt+7x8unLAFkMufbxf6BTf1rdzhrw==
X-Received: by 2002:a17:906:2e45:: with SMTP id r5mr7320748eji.380.1615541581303;
        Fri, 12 Mar 2021 01:33:01 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id h2sm2532708ejk.32.2021.03.12.01.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 01:33:00 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 2/6] config.json: drop core-image-sato-dev from builds
Date: Fri, 12 Mar 2021 10:32:36 +0100
Message-Id: <20210312093240.319125-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210312093240.319125-1-alex.kanavin@gmail.com>
References: <20210312093240.319125-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

core-image-sato-sdk is a superset, and a much more useful one.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/config.json b/config.json
index d6e7df8..66b76ed 100644
--- a/config.json
+++ b/config.json
@@ -62,7 +62,7 @@
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
             },
             "step2" : {
@@ -117,7 +117,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-ptest core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
@@ -246,7 +246,7 @@
             "BUILDINFO" : true,
             "step1" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk  core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             }
         },
@@ -275,7 +275,7 @@
             "BUILDINFO" : true,
             "step1" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk  core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             }
         },
@@ -314,12 +314,12 @@
             "SSTATEDIR" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
             "MACHINE" : "qemuarm64",
              "step1" : {
-                 "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
+                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
                  "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
              },
             "step2" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
@@ -584,25 +584,25 @@
         "pkgman-rpm-non-rpm" : {
             "MACHINE" : "qemux86",
             "PACKAGE_CLASSES" : "package_rpm",
-            "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev",
+            "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev",
             "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
         },
         "pkgman-deb-non-deb" : {
             "MACHINE" : "qemux86",
             "PACKAGE_CLASSES" : "package_deb",
-            "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
+            "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
             "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
         },
         "pkgman-non-rpm" : {
             "MACHINE" : "qemux86",
             "step1" : {
                 "PACKAGE_CLASSES" : "package_ipk",
-                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
             },
             "step2" : {
                 "PACKAGE_CLASSES" : "package_deb",
-                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
             }
         },
-- 
2.29.2

