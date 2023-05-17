Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08A4CC7EE2D
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:52 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.61601.1684354969735999718
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=azMk4v0R;
 spf=pass (domain: baylibre.com, ip: 209.85.160.171, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-3f38711680dso7292081cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354968; x=1686946968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Drs1deuUryuwrIrzODWBWf69pNmnI3LdPelKwYIrpdY=;
        b=azMk4v0R3w1rRCLl55FftA1KrzDXEd8p8cKUE1jo8go0ofaD3FyCmFu92BBwS6ZM8x
         G6vQOmhdtkDjA8pWJgGnw5aK4wyP72fxcD6eIaj5mzeNCZ7oUcp6RYdUsYjDXHD5Bfgx
         iaA8VKpnNIWUgxvk219ATQorQGeRnftFDD1nG6b/e2JhFzpI7ZRmjVF3XO2EZysLjfr7
         IEnm3qj6V1l6BojS2LHmwVmVfF0ARlecjZ9AoSUG5hwuVAHt8ENjjND8PuzNeuai5UiO
         rUqqajrqWULze2iSpekJsoHiUyreDYw8JEX2gnmPHnt7RtLImdLxYxJaTN5fyY55R2EI
         acJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354968; x=1686946968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Drs1deuUryuwrIrzODWBWf69pNmnI3LdPelKwYIrpdY=;
        b=Ljf7zMzF/queNU6Jq5aBWKYbZi8xjvV389dkaQ8b3XvAz3YDlBuXAz8VXwc1cBMnKM
         WJpRlvTkszX7v5xKyDdK4BwQy4s8MuRhYZR9pBKD9wRiRFIcp8ELDxLppKXTLLSvJmgM
         EByKE2ILh2rlBbzoMpO1jGZ0taoh+kHljBsboivqHtIDfTGeHK88HHUg12gxrWjsABxN
         13mHbHm3BE3dIpkjLdWiL/AQvertS5/+95rD69bnv6vaL8MHKZw6eGNrEagLCO89Yp88
         llWw8LuGC3doGK5w8NtRoqM+qnX3e/ZH0t7WOOLfEm9r4Ak689q7cte4g95EvV3mXNjk
         QYxg==
X-Gm-Message-State: AC+VfDwGsZgv5oDwPsoe1k56QIcwi1jfp8vMyQ4hqiStk+/xqLl9JZIe
	czLO+9SZUkOf9fNSOTrZfkwBO9rIsHvb3lQgv0X9cA==
X-Google-Smtp-Source: ACHHUZ7PU5rlUYC9qQgkBcg/NQzsYULJeiHe8BRYHWC8PDnac9BDAjNpaZfS+q3MYu3/4ET2bB3OHA==
X-Received: by 2002:ac8:574c:0:b0:3ef:231c:cee7 with SMTP id 12-20020ac8574c000000b003ef231ccee7mr2013638qtx.7.1684354968591;
        Wed, 17 May 2023 13:22:48 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:48 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 04/11] python3-pylint: upgrade 1.6.5 -> 2.17.4
Date: Wed, 17 May 2023 16:22:37 -0400
Message-Id: <20230517202244.1612047-5-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60063

Copy the recipe from meta-python to handle the upgrade, so that
patchtest can build it without requiring the layer.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-pylint/run-ptest           |  3 ++
 .../python/python3-pylint_1.6.5.bb            | 33 ------------
 .../python/python3-pylint_2.17.4.bb           | 51 +++++++++++++++++++
 3 files changed, 54 insertions(+), 33 deletions(-)
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-pylint/run-ptest
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-pylint_2.17.4.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-pylint/run-ptest b/meta-patchtest/recipes-devtools/python/python3-pylint/run-ptest
new file mode 100644
index 0000000..7a5ceed
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-pylint/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+pytest --benchmark-disable -o log_cli=true -o log_cli_level=INFO | sed -e 's/\[...%\]//g'| sed -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS"){printf "%s: %s\n", $NF, $0}else{print}}'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS") {$NF="";print $0}else{print}}'
diff --git a/meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb b/meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb
deleted file mode 100644
index 0bb9e3f..0000000
--- a/meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb
+++ /dev/null
@@ -1,33 +0,0 @@
-SUMMARY="Pylint is a Python source code analyzer"
-HOMEPAGE= "http://www.pylint.org/"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=4325afd396febcb659c36b49533135d4"
-
-SRC_URI[md5sum] = "31da2185bf59142479e4fa16d8a9e347"
-SRC_URI[sha256sum] = "a673984a8dd78e4a8b8cfdee5359a1309d833cf38405008f4a249994a8456719"
-
-inherit pypi setuptools3
-
-SRC_URI += "file://0001-epylint-corrects-msg-template-object.patch"
-
-DEPENDS += "${PYTHON_PN}-pytest-runner-native"
-
-RDEPENDS_${PN} += "${PYTHON_PN}-astroid \
-                   ${PYTHON_PN}-isort \
-                   ${PYTHON_PN}-numbers \
-                   ${PYTHON_PN}-shell \
-                   ${PYTHON_PN}-json \
-                   ${PYTHON_PN}-pkgutil \
-                   ${PYTHON_PN}-difflib \
-                   ${PYTHON_PN}-netserver \
-                  "
-
-do_install:append(){
-    rm ${D}${bindir}/pylint
-    cat >> ${D}${bindir}/pylint <<EOF
-#!/usr/bin/env ${PYTHON_PN}
-from pylint import run_pylint
-run_pylint()
-EOF
-    chmod 755 ${D}${bindir}/pylint
-}
diff --git a/meta-patchtest/recipes-devtools/python/python3-pylint_2.17.4.bb b/meta-patchtest/recipes-devtools/python/python3-pylint_2.17.4.bb
new file mode 100644
index 0000000..96fce2e
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-pylint_2.17.4.bb
@@ -0,0 +1,51 @@
+SUMMARY="Pylint is a Python source code analyzer"
+HOMEPAGE= "http://www.pylint.org/"
+LICENSE = "GPL-2.0-only"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=c107cf754550e65755c42985a5d4e9c9"
+
+SRC_URI += " \
+        git://github.com/pylint-dev/pylint;branch=main;protocol=https \
+        file://run-ptest \
+        file://0001-pyproject.toml-Remove-hard-coded-dependencies.patch \
+        file://0001-pylint-remove-plugin-pickle-test.patch \
+        "
+SRCREV ?= "fc34a4b6abe56f3ac07ca15d846b1c1955545f85"
+
+inherit python_setuptools_build_meta ptest
+
+RDEPENDS:${PN} += "${PYTHON_PN}-astroid \
+                   ${PYTHON_PN}-dill \
+                   ${PYTHON_PN}-isort \
+                   ${PYTHON_PN}-mccabe \
+                   ${PYTHON_PN}-numbers \
+                   ${PYTHON_PN}-platformdirs \
+                   ${PYTHON_PN}-shell \
+                   ${PYTHON_PN}-json \
+                   ${PYTHON_PN}-pkgutil \
+                   ${PYTHON_PN}-difflib \
+                   ${PYTHON_PN}-netserver \
+                   ${PYTHON_PN}-tomlkit \
+                  "
+
+RDEPENDS:${PN}-ptest += " \
+        ${PYTHON_PN}-core \
+        ${PYTHON_PN}-git \
+        ${PYTHON_PN}-py \
+        ${PYTHON_PN}-pytest \
+        ${PYTHON_PN}-pytest-benchmark \
+        ${PYTHON_PN}-pytest-runner \
+        ${PYTHON_PN}-pytest-timeout \
+        ${PYTHON_PN}-pytest-xdist \
+        ${PYTHON_PN}-requests \
+        ${PYTHON_PN}-statistics \
+        ${PYTHON_PN}-tomllib \
+        ${PYTHON_PN}-typing-extensions \
+        "
+
+S = "${WORKDIR}/git"
+
+do_install_ptest() {
+    install -d ${D}${PTEST_PATH}/tests
+    cp -rf ${S}/tests/* ${D}${PTEST_PATH}/tests/
+    sed -i 's#/usr/bin/python$#/usr/bin/python3#g' ${D}${PTEST_PATH}/tests/data/ascript
+}
-- 
2.40.1


