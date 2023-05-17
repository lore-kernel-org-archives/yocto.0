Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E0D4C7EE2C
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:02 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web10.61356.1684354500533349078
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=IMa5KUwj;
 spf=pass (domain: baylibre.com, ip: 209.85.160.178, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-3f4eb166122so7859431cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354499; x=1686946499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Drs1deuUryuwrIrzODWBWf69pNmnI3LdPelKwYIrpdY=;
        b=IMa5KUwjpjghdyh8E4bTdLBN71oyhDobQOftzWRlfwiHESQcW0OUTxBo5FvDMysLzE
         2bDcDW20tAn8qta0rKZEN8q3DQJOB2Y33Kr/LKqJk9WZjtCbdE0mx/4l7wo+xXCRKC1T
         6/3D1nLPxNXBqthv+4IFI8dS0eTdEIw4pmEZ8ioNY7jbM0KYGhIxdd2ALF22tt+V0qpS
         YvinsA5HhECDoHtT9HOHZ4NQ4doy48u839Ha4kA60VRZF/5kS+7HvD2d6QmEQzQRzjh6
         uV9I5IZG8biOuz9tbQqvUBFsfFC+CWo+DYnBPwsBUBALYp7aQR1R6Hg5YU8tmLPurgbd
         3pKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354499; x=1686946499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Drs1deuUryuwrIrzODWBWf69pNmnI3LdPelKwYIrpdY=;
        b=MLpsC+g3GSEkK+eTWoc6e216BBpJvHGZb/HklE+kPODPjiHwDVuuwD7kFXfgfiKqdR
         5kTppmT8XnlEPzcRtLkSjKZk5AMROfK7vJ/Eze0/06/QNnAFRfP69WWRzPMdfYx/9A23
         jwJ34Yc3caaTjaFBodgX1tSUXxwPpVFI1NWDoJTh744W0AdvNk0JgYWlS4y6bcC7qF2/
         eS1rGtcqjVj0wUMq57UldGYz5Z651LeT0zvTRBlDKmcqT6S+e1H76PNjgnrUyS3FW/pU
         8XO/q+aYw9tP6wrGdHr4KEXGFkl2IVkyC31rgaI+zjA/68EKMifhoP0SBrmfmmeljwQM
         TQaw==
X-Gm-Message-State: AC+VfDzYUdwA9wnPBvkzkYMMfjh+sRE/Ua5GPpNf522lqHqgQwArxd6k
	QX25o6rF6VYGT75NyQEn4VcYVIEMO7TfN23m0m/LKg==
X-Google-Smtp-Source: ACHHUZ5DO65af2Syq14VoyaS+ReKEKwz35MU4OC5oJjTf/YtRUJkgoxqqBtpY7fXqTLUH4c/2hH1GQ==
X-Received: by 2002:a05:622a:134b:b0:3f5:19eb:6d41 with SMTP id w11-20020a05622a134b00b003f519eb6d41mr1615920qtk.5.1684354499461;
        Wed, 17 May 2023 13:14:59 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.14.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:14:59 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 04/11] python3-pylint: upgrade 1.6.5 -> 2.17.4
Date: Wed, 17 May 2023 16:14:49 -0400
Message-Id: <20230517201456.1608917-5-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60051

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


