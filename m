Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 142D6C7EE2F
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:52 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.61603.1684354970618845243
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=vZF63dnP;
 spf=pass (domain: baylibre.com, ip: 209.85.160.180, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-3f38c23b06eso7210851cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354969; x=1686946969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EGtrBcVT3Ga1jJYVpzoCvKP7XKbKMoGMb+48h1yr+aw=;
        b=vZF63dnPfl4zcXVr38j/TVUMAthenROLvWVdx1uI5AL/2N5ddvpEGPiLnjBK+UQrKe
         4cEehXMSZ0ZsOsH/KZvSRleRLGAnMWkQyMTgPrARo7M/sgZHsKuS8H5EEJ1x1c7T+rtq
         W8FNT9WpM++COgwam9HV/5vE9+Rh1ggB00tv6XOUAfXpwK0NIab8jhb7jS+SCDcKTRvW
         0ejPsVBiMSirvX2c5U/pn5FQ/YH5+z7qyZo6KwSNdIzKrJQSdesqt1BGJsFFdUxSAIlY
         DneZ0zU/l/Z5dWePqS6jnrKCR8rYZPM1k7u53ZjSIsoGjUCFg51KE1IeMhleg8mC8r7j
         vI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354969; x=1686946969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EGtrBcVT3Ga1jJYVpzoCvKP7XKbKMoGMb+48h1yr+aw=;
        b=IXA2w6mBfFr7VXZ39q25eLY1GGb2v+H3j1BaSoz+cuPnBh3rKM+5lpdIXEpyMWcGBE
         bdr9qt0rR/aLdbgaNgxKoXVBOs95SYTd6ka0zsNZXHyHwI3NAx66yY/+XL+QPjbHXMtS
         5kOE1121ql0sWTjMrMgTspLlThLyl0AxWGs76FnTmNcpNsaB+2rW/Dl4eqY17iaq1YOC
         NM6k7ycHLo0/iFShHWnS3Wb//me7AHYK440IM/wdNtpueCYibu6ESL+Q7aqnX08JohZC
         zp/FUV7klh1UYQITClHVH0OO2P3daFkC6UpRFoQuLsE/bdhJPbJzIkyp4Qv/OLET+CLd
         QK7Q==
X-Gm-Message-State: AC+VfDyE7a5HPoIMSIyEFeyirX/V06ZYd4UqK1oyMguHuxmPL1UXaI+M
	ZFf35wnGA4omv70rCgJwL7u2N0OSaMrgr5RHM6XBLA==
X-Google-Smtp-Source: ACHHUZ6+TgxFq4HVFY3CLOEgIHd7sRosAn0frBwnY/z2nJnyghzTzoqgR5lAW8QyFdvsg2Yg5z3JhQ==
X-Received: by 2002:a05:622a:18a:b0:3ef:347b:b043 with SMTP id s10-20020a05622a018a00b003ef347bb043mr1580603qtw.32.1684354969579;
        Wed, 17 May 2023 13:22:49 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:49 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 06/11] python3-unidiff: upgrade 0.5.4 -> 0.7.5
Date: Wed, 17 May 2023 16:22:39 -0400
Message-Id: <20230517202244.1612047-7-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60065

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


