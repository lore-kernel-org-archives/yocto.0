Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 113DBC7EE2A
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:23:02 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.61605.1684354973165550108
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=WrGguHoH;
 spf=pass (domain: baylibre.com, ip: 209.85.160.171, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-3f4eb166122so7901731cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354972; x=1686946972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47woCR1JKqZdckg0Uyouuh+oRi4kHB04te8KZN8DplM=;
        b=WrGguHoHDdn1bqnwPf561dy3z/Ho9tU58M+9xmP5OKlGvSe7HMP4XfWxItKEbZPitc
         ezpMBc+4Zk2Zt9BzigFEdx35fjxiIaR/ukiO5gkBZoR26AdgJEP1a8gCYe2zdk7PApx9
         e3QFOtmGY5SE1WD3iOfviO9iNZlhA93n6jcoue3Fa+DUd+qz5PNw4qT79YnXIyNvZgrf
         luCOo/lpmyutFAU10OT/t4UKwdNRxnCjOylQZMLRzoks/UNG+kPfW3DTDq12tzoXSdjC
         TqFF7QIDNtFUTUzssZqwtoDSjSeZeSvHswbqttr9994VORTFFzsOTjYJKoNE0UqTf9VW
         ri4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354972; x=1686946972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47woCR1JKqZdckg0Uyouuh+oRi4kHB04te8KZN8DplM=;
        b=kNWeXs8hJYVJ8AueEob8T6EgDbWk3ycIp2F7nIvnRc5uN3D2BVajCiCepXApG/2YbX
         0O30iHR3z6bufpWsGSD+UQHTk2XqS5GAi4v9ZNnC+AvswYOk3Ev4Kmanpe2mL+E0w87T
         x1CHEqZChuDBpLSasu5VsJ40nt8gKVCwk3KngfmcLb6dcP7enyycYwDvqHxHGY65K9I3
         mvrsuLCBSddXGV5gDQlc7KPNDvqFLun6+RuIrjlWiZ9ubYawgrr7EY6JUcumTNp8lLDr
         avUqZrqBlg0KEw6k4iBoijqwEISkGhNrQQGK4SQA3AC8iga26oiltCPyDyNfMhhDGx4O
         7f7A==
X-Gm-Message-State: AC+VfDxNyB3j8q7yOyq0t3iDDaKP0RFJnYfNg4nuuigZF7Kg2ihDAp2D
	10NWBdZXVIpzenOiwVxYx2+4qt4w35aBifOHmlOhyQ==
X-Google-Smtp-Source: ACHHUZ6ogSl2x4WYt9tkwP7mdKOnsX8DVpVQ4JWyj3uiezZ5gNQfaJMbG9O9mVtqgKVMyMHCclCSHg==
X-Received: by 2002:a05:622a:1a8a:b0:3f3:633b:2888 with SMTP id s10-20020a05622a1a8a00b003f3633b2888mr1727160qtc.54.1684354972238;
        Wed, 17 May 2023 13:22:52 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:52 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 11/11] python3-tomlkit: add recipe
Date: Wed, 17 May 2023 16:22:44 -0400
Message-Id: <20230517202244.1612047-12-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:23:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60070

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


