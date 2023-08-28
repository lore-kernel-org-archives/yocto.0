Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 301BEC71153
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 16:14:30 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.18792.1693239261791026490
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 09:14:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=ACZO/qOX;
 spf=pass (domain: snapchat.com, ip: 209.85.167.46, mailfrom: ecordonnier@snapchat.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-500a398cda5so5474273e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 09:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1693239260; x=1693844060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kgPIQ9fqdZ5AyVP9Zxx6CZI0x1dTW2SkukLBhvVqEqk=;
        b=ACZO/qOX6Z32pbXNez8R3nRWlZNyQ7sVUqiUF8nkR6c7PKcQWZ51BsOeUwlVANzdlW
         S8yYk2PM4Cwvyt/H/pAtGNKxBfPID9FTVDnverxeIM+Dw0ze1rCodNYhzw2IDttXC6n/
         LJk10RMRt1Ogg92p1pf0fkK7Wy6nvnlkk/E1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693239260; x=1693844060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kgPIQ9fqdZ5AyVP9Zxx6CZI0x1dTW2SkukLBhvVqEqk=;
        b=gMZobzNecXpt4IT9bqx6F8o6H9xJxaEQvk1EVJhk5O4XNMMtlYSo5I2EY36eiM/mdW
         83f+UgeVuMQ6PWS9e0NI3HMAsoaJ5ve7PZzQj4y+oJhYLTwFKPQiZP8fjErP0yZCbFfk
         AB34jY2YqTRpSRu+OT4/5coFRHQFvnTPAzirFjuVQgofwdGS3w5w2GbyXY9KQRmyipGJ
         eLJKIsobk+T8ahAFO8PUBWfwH1fAyZPNUn/OZqR8z552grE61WTk4fSzJt6RlbsiXSnf
         cbe6o6hhv40Vh9nhd2poao0zcse982WPV2NlnKwjCu1iUMDPqaF9Rd0BQrNUdfRfCkqU
         jgQg==
X-Gm-Message-State: AOJu0Yx5BNV5SAz9/jcvd+G7Hz9sH5IQiTUGVdIDfgwZMpGBXF6jXXhU
	i5ZO7vNI+VYEJfcqvV2V3UcDnwCYmCei9STdj5fO1w==
X-Google-Smtp-Source: AGHT+IF/9Wq06Gw4+CdPfYKqV2F160xGGHaG3WH3dYZB6ElQ5nIZHPQ4MzMaPQcaKaNRHiukh4YS3w==
X-Received: by 2002:a05:6512:110a:b0:4fb:8948:2b8e with SMTP id l10-20020a056512110a00b004fb89482b8emr20812185lfg.8.1693239259611;
        Mon, 28 Aug 2023 09:14:19 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([213.249.125.50])
        by smtp.gmail.com with ESMTPSA id q3-20020aa7d443000000b00525c01f91b0sm4611037edr.42.2023.08.28.09.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 09:14:19 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH] clang: remove runtime dependency to perl
Date: Mon, 28 Aug 2023 18:14:07 +0200
Message-Id: <20230828161407.2607186-1-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 16:14:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60904

From: Etienne Cordonnier <ecordonnier@snap.com>

Commit https://github.com/kraj/meta-clang/commit/68ec449f97ffa58d in meta-clang adds a dependency to perl,
however at the moment perl does not cross-compile for darwin (the build tries to use readelf which does not
exist on darwin, instead of using objdump).

This dependency is needed only for optional runtime tools, so just remove it at the moment.

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 recipes-devtools/clang/clang_%.bbappend | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/recipes-devtools/clang/clang_%.bbappend b/recipes-devtools/clang/clang_%.bbappend
index 25a9bf7..ce2a3b3 100644
--- a/recipes-devtools/clang/clang_%.bbappend
+++ b/recipes-devtools/clang/clang_%.bbappend
@@ -8,6 +8,20 @@ PACKAGECONFIG:remove:class-nativesdk:darwin21 = "shared-libs"
 DEPENDS:remove:class-nativesdk = "clang-crosssdk-${SDK_ARCH}"
 DEPENDS:append:class-nativesdk = " clang-crosssdk-${SDK_SYS}"
 
+# perl tries to call readelf, which does not exist on darwin (it would need
+# to call objdump instead but the detection logic does not work for some reason)
+RDEPENDS:${PN}:remove:class-nativesdk:darwin21 = " \
+    perl-module-digest-md5 \
+    perl-module-file-basename \
+    perl-module-file-copy \
+    perl-module-file-find \
+    perl-module-file-path \
+    perl-module-findbin \
+    perl-module-hash-util \
+    perl-module-sys-hostname \
+    perl-module-term-ansicolor \
+"
+
 COMPILER_RT:class-nativesdk:toolchain-clang:runtime-llvm:darwin21 = ""
 LIBCPLUSPLUS:class-nativesdk:toolchain-clang:darwin21 = " -stdlib=libstdc++"
 
-- 
2.36.1.vfs.0.0


