Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0893C7EE23
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:11 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web10.61359.1684354501559468666
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=ZSfPjhQQ;
 spf=pass (domain: baylibre.com, ip: 209.85.160.173, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-3f4de077aaaso13439681cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354500; x=1686946500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EGtrBcVT3Ga1jJYVpzoCvKP7XKbKMoGMb+48h1yr+aw=;
        b=ZSfPjhQQRmlwE0cqTeA1E1uR+d98NctgsUlHNtRDvRjOYH331JTn885H3/jMeKFw5m
         Z8/Jw5zxzCe2JbRjUXs7eEr5yFnjNzpFnDgWtBEIy/gPRsiDjsQWroNeLvzK+vr+08M4
         3XOdTdDYwk919Evkd6K7DNkenFIo6jInhjlbJZumJbx8asMaIYb59VmiNtb2AEFQzeKI
         fzgglSamwoSA4p1r3Fo9tpqQzJSK2pGVk6M8j6iUvuO0yzwm8dwbW3W+7HKNt+cxZjLJ
         V/WjSpNaDB8w0luqDwkHGn1GX1ratMyBOelWmCz/QAwolePbCwQHf/lKP1qkgp1/E78u
         agVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354500; x=1686946500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EGtrBcVT3Ga1jJYVpzoCvKP7XKbKMoGMb+48h1yr+aw=;
        b=lt+mqZv9x+/2ejW3M0eQmLRIiwmmU27jW7NUrA6HBNlsueOUkPZcqoNPThYRWee1US
         gsAgIdW1cP4d3VdA/zidTzk2Pmm6+aPMaodVonF8PkRWx+YYBtk+tjkdxSYHr5DJUUCu
         KSLfjeo2UoDLS/CpzLa07NBkiMuJvnGokws0BUV9ci39RQoeglsiQUnbTfSIgCAPfnTm
         tCRPwpTN5qswV4LIGek+rNYOFoWzd8uuisbSMd/JdBDAJiOzrgj6DyRWktLHaCKU/4eK
         FC2C6CFTxk7sf0JWzdQj9xBLQ3EiI+HLFYLHhSIn9+MI8GhEfJKQLroeWvPyhf69y+Gl
         vKpQ==
X-Gm-Message-State: AC+VfDwe0G8dD9HCfpNVpGNEAOkpW3S5TzkNCA5GTFwi+eV36CWcrsHZ
	k7J5AuDwG8Y0k06vCrUL8ijm7sqnXlcAioeNIDpYRw==
X-Google-Smtp-Source: ACHHUZ7M3k8Y9WSr6t1gsfyTG0mXQB/PFJSr5NYNJI3eRsYpLoppe6O5L9llBoVZythyjq2Kcdf7LQ==
X-Received: by 2002:a05:622a:174f:b0:3f5:3fdb:3295 with SMTP id l15-20020a05622a174f00b003f53fdb3295mr1574454qtk.39.1684354500561;
        Wed, 17 May 2023 13:15:00 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.15.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:15:00 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 06/11] python3-unidiff: upgrade 0.5.4 -> 0.7.5
Date: Wed, 17 May 2023 16:14:51 -0400
Message-Id: <20230517201456.1608917-7-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60053

Copy the recipe from meta-python to handle the upgrade, so that
patchtest can build it without requiring the layer.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-unidiff/run-ptest          |  3 +++
 .../python/python3-unidiff_0.5.4.bb           |  9 -------
 .../python/python3-unidiff_0.7.5.bb           | 26 +++++++++++++++++++
 3 files changed, 29 insertions(+), 9 deletions(-)
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-unidiff/run-ptest
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-unidiff_0.5.4.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-unidiff_0.7.5.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-unidiff/run-ptest b/meta-patchtest/recipes-devtools/python/python3-unidiff/run-ptest
new file mode 100644
index 0000000..b63c4de
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-unidiff/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+pytest -o log_cli=true -o log_cli_level=INFO | sed -e 's/\[...%\]//g'| sed -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS"){printf "%s: %s\n", $NF, $0}else{print}}'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS") {$NF="";print $0}else{print}}'
diff --git a/meta-patchtest/recipes-devtools/python/python3-unidiff_0.5.4.bb b/meta-patchtest/recipes-devtools/python/python3-unidiff_0.5.4.bb
deleted file mode 100644
index 5ad9bfc..0000000
--- a/meta-patchtest/recipes-devtools/python/python3-unidiff_0.5.4.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-SUMMARY = "Unified diff parsing/metadata extraction library"
-HOMEPAGE = "http://github.com/matiasb/python-unidiff"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=4c434b08ef42fea235bb019b5e5a97b3"
-
-SRC_URI[md5sum] = "c8099edf89d2e3bac16123766625a38b"
-SRC_URI[sha256sum] = "a7baf71846a68c5305a7d6005dfb5eca8798f13861176355a285cbda3206824d"
-
-inherit pypi setuptools3
diff --git a/meta-patchtest/recipes-devtools/python/python3-unidiff_0.7.5.bb b/meta-patchtest/recipes-devtools/python/python3-unidiff_0.7.5.bb
new file mode 100644
index 0000000..690acf8
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-unidiff_0.7.5.bb
@@ -0,0 +1,26 @@
+SUMMARY = "Unified diff parsing/metadata extraction library"
+HOMEPAGE = "http://github.com/matiasb/python-unidiff"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=4c434b08ef42fea235bb019b5e5a97b3"
+
+SRC_URI[sha256sum] = "2e5f0162052248946b9f0970a40e9e124236bf86c82b70821143a6fc1dea2574"
+
+inherit pypi setuptools3 ptest
+
+SRC_URI += " \
+        file://run-ptest \
+"
+
+RDEPENDS:${PN}-ptest += " \
+       ${PYTHON_PN}-pytest \
+"
+
+do_install_ptest() {
+      install -d ${D}${PTEST_PATH}/tests
+        cp -rf ${S}/tests/* ${D}${PTEST_PATH}/tests/
+}
+
+RDEPENDS:${PN} += " \
+    ${PYTHON_PN}-codecs \
+    ${PYTHON_PN}-io \
+"
-- 
2.40.1


