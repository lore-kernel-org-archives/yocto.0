Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06346C7EE2E
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:12 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.61364.1684354504451044808
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=CRd/+WqE;
 spf=pass (domain: baylibre.com, ip: 209.85.222.182, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7576ecfa4e7so125394585a.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354503; x=1686946503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47woCR1JKqZdckg0Uyouuh+oRi4kHB04te8KZN8DplM=;
        b=CRd/+WqE138eABrS/s8Er0KaG+LMoM3jH0Zk+ZErf4CTnxJClDrucE2rkrX/2BPgxI
         zskXBKYBTGrZyT+lO2p4JG4YjlyXCPWeGBiagbUNBp0R7VoRfZxM46Z/pDewdBk9A/6W
         30wPtqvSo2fGBqfAzlOA6M83V1OSkOtVnxeqoXH+s7H5b699MeMPHd/19QTVAA2zkn78
         OjJdkcwtGUhfhlLSJ+njrBMOxgTYbWVjhA8nqF8vMQLFCKE0dyCdavGVtauT5vxoe46x
         olTzyEK0CiUT3ReyhBeBredm2DduZToRpJLNvNK+XmhIS7Fv30lbnNt58TiBIKH7tPbL
         pNfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354503; x=1686946503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47woCR1JKqZdckg0Uyouuh+oRi4kHB04te8KZN8DplM=;
        b=lvzLUydXbWeQ3wHSKQePUv2FjzTQNtOllvwmuKd/QgYfmy26rcsd6wWjVhpneZeMNE
         rYWy5r3FBRm/kypTwNDfpqv92QRdNt55dvh/5elthKtISI7IL/kKpAWTUHSwLgNobVZi
         5Is1pnpWO7zfOE8tj3BJGF9M6sLXyC53hcvfG8Zabe9qs8m6k3WOexME6yLyc1ZAcryJ
         igjMq6u/KYDwxy3hQesrUO7XNUb9MtpBjSbo4tZ7HxY3WIsVPrk/g1rfGvhgSSWiel4h
         oomSCLEtEy7zNDXX0YgzOwuIk9C4xh2B9BJwv1inW/+4BD6xVLyYkBece7urdhbDC8g6
         FUsw==
X-Gm-Message-State: AC+VfDzMhrZhKHoR6VwjSY6zU6pArv6LJRSbXnv6BNGOzwRltzS+qrzh
	wxGUEviVwDHEbme7VzneO41Qk7qq92KOMnMy/+ot5A==
X-Google-Smtp-Source: ACHHUZ6P1+Y4kCZj/qOPXz4s7UT7OKbKRkU9yQ9Idz9xTD6lBojxSqmC+e/Y3d8E4cPw6nreZ8PToQ==
X-Received: by 2002:a05:622a:1308:b0:3f3:9564:1135 with SMTP id v8-20020a05622a130800b003f395641135mr1930216qtk.8.1684354503446;
        Wed, 17 May 2023 13:15:03 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.15.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:15:03 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 11/11] python3-tomlkit: add recipe
Date: Wed, 17 May 2023 16:14:56 -0400
Message-Id: <20230517201456.1608917-12-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60058

python3-pylint requires python3-tomlkit, so copy the recipe from
meta-python to avoid requiring that layer for patchtest.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-tomlkit/run-ptest          |  3 +++
 .../python/python3-tomlkit_0.11.8.bb          | 23 +++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-tomlkit/run-ptest
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-tomlkit_0.11.8.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-tomlkit/run-ptest b/meta-patchtest/recipes-devtools/python/python3-tomlkit/run-ptest
new file mode 100644
index 0000000..b63c4de
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-tomlkit/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+pytest -o log_cli=true -o log_cli_level=INFO | sed -e 's/\[...%\]//g'| sed -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS"){printf "%s: %s\n", $NF, $0}else{print}}'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS") {$NF="";print $0}else{print}}'
diff --git a/meta-patchtest/recipes-devtools/python/python3-tomlkit_0.11.8.bb b/meta-patchtest/recipes-devtools/python/python3-tomlkit_0.11.8.bb
new file mode 100644
index 0000000..71a43c4
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-tomlkit_0.11.8.bb
@@ -0,0 +1,23 @@
+SUMMARY = "Style preserving TOML library"
+HOMEPAGE = "https://pypi.org/project/tomlkit/"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=31aac0dbc1babd278d5386dadb7f8e82"
+
+SRC_URI[sha256sum] = "9330fc7faa1db67b541b28e62018c17d20be733177d290a13b24c62d1614e0c3"
+
+inherit pypi python_poetry_core ptest
+
+SRC_URI += " \
+        file://run-ptest \
+"
+
+RDEPENDS:${PN}-ptest += " \
+        ${PYTHON_PN}-poetry-core \
+        ${PYTHON_PN}-pytest \
+        ${PYTHON_PN}-pyyaml \
+"
+
+do_install_ptest() {
+        install -d ${D}${PTEST_PATH}/tests
+        cp -rf ${S}/tests/* ${D}${PTEST_PATH}/tests/
+}
-- 
2.40.1


