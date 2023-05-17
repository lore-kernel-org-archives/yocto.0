Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 113A2C7EE22
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:23:02 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.61601.1684354969735999718
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=g1kAyykZ;
 spf=pass (domain: baylibre.com, ip: 209.85.160.171, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-3f38711680dso7292391cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354971; x=1686946971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dU1jC2lOeLWIMKDv/TEFIzWlCwbDadc9bpYojEepYDs=;
        b=g1kAyykZi+zs/wQdLQLpz3+NI3/lhhis6w4OezG0GWL40VSOyp13OueLjRxWleq6gh
         fpj+1hCJFRRzWKudGToOXUficBBxvpfaxNnkc8OCVArK/pOuOgYMp5NASCdKHf/EJ1Ht
         LbqTZezDOSMLCzUwkpy/sAhVY61AoJMmBgEUiFpTD3jZv0FqBJQ7qz2E2xI+U7MS/z5Q
         Q5AAfoZox9LYh/VJm3XxuOL1YBs+3F16vzslaCPjzjx/6k9IQT1EVxkTtV7VKppCO3u0
         Z5mD9lpI0YVgJBIGjpST7DVptk+CmvjmnlnudDVtROEa/b2NYuK8Ix/a35vGE+ebbRB+
         /qEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354971; x=1686946971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dU1jC2lOeLWIMKDv/TEFIzWlCwbDadc9bpYojEepYDs=;
        b=CbJw1P8TyRvLGnO7RASmL5rXsENgQGJ0A+eY1gCNrSxui0RTc358sSXjxikKzzG05i
         UqztuF1zXYJ7NaB41jJ7YCcq/viKd4P3XIVij9LfmZ9S5lRXUAvRxNm1KT5MH8svesLX
         O6B2xOthj8bKtwhXUBPSnEyYjts9ulGkLMI7mmUlxMuhhkHubsG+dKwWkHOC3sZD7Xx7
         2MLAVDu/ST0xeDW8HaBzyVjYKUXRSipleIdOx2E2WJwNghFwMkihc3FNwSGUTWJ47QtC
         eJJWUGM+C65c3GspnKfQyKcTU2yd4dpiStpWifUjRMZLVs/VGTGf5h6yyDBJ5lBWtsZa
         N/qg==
X-Gm-Message-State: AC+VfDxGSXpIu5zqCPLjWHATifhxgzhrIBlbBfoYrRGK5VpgItuWz0AX
	yArPiyGxSAlMoTEq16YuubXi4GKy7a/xy0wn8nqgoA==
X-Google-Smtp-Source: ACHHUZ6wju/kuLcfJKizHYVGp3sjw+LG+BcXqkz/SrLN+ZT/VdB6CKrr8rV6nqtUYPvT2Qb9CJX7DA==
X-Received: by 2002:a05:622a:288:b0:3f5:2450:df1b with SMTP id z8-20020a05622a028800b003f52450df1bmr1787648qtw.17.1684354971627;
        Wed, 17 May 2023 13:22:51 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:51 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 10/11] python3-platformdirs: add recipe
Date: Wed, 17 May 2023 16:22:43 -0400
Message-Id: <20230517202244.1612047-11-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:23:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60069

python3-pylint requires python3-platformdirs, so copy it from
meta-python to avoid requiring that layer for patchtest.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-platformdirs/run-ptest     |  3 ++
 .../python/python3-platformdirs_3.5.1.bb      | 35 +++++++++++++++++++
 2 files changed, 38 insertions(+)
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest b/meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest
new file mode 100644
index 0000000..b63c4de
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+pytest -o log_cli=true -o log_cli_level=INFO | sed -e 's/\[...%\]//g'| sed -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS"){printf "%s: %s\n", $NF, $0}else{print}}'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS") {$NF="";print $0}else{print}}'
diff --git a/meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb b/meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb
new file mode 100644
index 0000000..4fefe56
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb
@@ -0,0 +1,35 @@
+SUMMARY = "A small Python module for determining appropriate platform-specific dirs"
+HOMEPAGE = "https://github.com/platformdirs/platformdirs"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=ea4f5a41454746a9ed111e3d8723d17a"
+
+SRC_URI = " \
+    git://github.com/platformdirs/platformdirs.git;branch=main;protocol=https \
+    file://run-ptest \
+"
+
+SRCREV ?= "b8c42ddca4def1fba38b9815a7d94ec2ac630b29"
+SRC_URI[sha256sum] = "7954a68d0ba23558d753f73437c55f89027cf8f5108c19844d4b82e5af396335"
+
+inherit python_setuptools_build_meta ptest
+
+DEPENDS += " \
+    python3-hatch-vcs-native \
+    python3-setuptools-scm-native \
+    python3-toml-native \
+"
+
+S = "${WORKDIR}/git"
+
+RDEPENDS:${PN}-ptest += " \
+    ${PYTHON_PN}-appdirs \
+    ${PYTHON_PN}-pytest \
+    ${PYTHON_PN}-pytest-mock \
+"
+
+do_install_ptest() {
+        install -d ${D}${PTEST_PATH}/Tests
+        cp -rf ${S}/tests ${D}${PTEST_PATH}/
+}
+
+BBCLASSEXTEND = "native"
-- 
2.40.1


