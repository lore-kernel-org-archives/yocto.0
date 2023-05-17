Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED1E9C77B75
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:01 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web11.61666.1684354499366264608
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:14:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=QJRF5pes;
 spf=pass (domain: baylibre.com, ip: 209.85.160.179, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-3f42b4da6e5so6484751cf.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354498; x=1686946498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQe6UiJQlP+zrI6Wq2SjmGQs18jetBcZpn27vQXciU4=;
        b=QJRF5pesnPPtyOah9XGHTErf0+TlY2D2IpLx/x7YtcFbtnnJ7qEtUafc/cnPvkU+r4
         WUiTsBRtMB0M0uZ61s0yYvnKVALWVUL3jmY0mTZ5KYuFvHBoevMEEOTGmB78+zRDaCHI
         W3Hbez6d6+BTg/q5iEcSrUBQONGycvqpd8w546I5LYuh4WH1Fh15q1coekH5UVXmlAci
         WYCMyO3y3ZWr7IfrBd3YRYQq0ffEEc4RLoxV6jMggLgipHuQv/sqS+GhajGFR0Kc4TRN
         wmiblosLnMGfmRdJQumdGS+se9maWB4W84zISnp+n+Fz0snMM+icKYjyrizo46hXCK0n
         EqnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354498; x=1686946498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQe6UiJQlP+zrI6Wq2SjmGQs18jetBcZpn27vQXciU4=;
        b=VegDg/cuYIPbBpbjIsb/MXa8/+Z2dCzWBZwKzLjpLajeTwQSmMFozuiyK1BH4td24H
         z6cohzCb5F6552HwWfVEA7WWmvhK5UcQWIQwAE+WA4dBIQNssV2vsYyRW7/JMyMIoZZy
         cfGa5bvqT8ohF7U53hrjrL7+6TUV1Zv/ZiI3lPxij9VzVPgrzQv42oFAJtGmdKz2brZL
         WW0Ku2nSg/aTVrR10sXJ8sNCFE0wcuGWw5CuANMP3LyNaDq2PgJpD0PFYHBRDwCOOHiL
         f8rD2ZHl9hQ6IDoLWFappiRfwg1DrGeS1Hi589/TmjYIXIrZL+cD9nncZpJq7k9ATFvI
         4H0Q==
X-Gm-Message-State: AC+VfDzhoNjs1zuD0te73xhNfIzS9StbA8WPzi9P6HeF7PPtZToZoNVL
	Gtcsi01E8ll/YACdkKSUkRu8rc4b0dtXQNhSZJYC2A==
X-Google-Smtp-Source: ACHHUZ6mEmMYBc0vSV5fnX42GrdhrgbouPELxOLpISH5JqFmEk5JMNzuh1s42EV3gsDBxPWWoqOsNQ==
X-Received: by 2002:ac8:7d4f:0:b0:3ef:5847:d7c8 with SMTP id h15-20020ac87d4f000000b003ef5847d7c8mr1781904qtb.44.1684354497875;
        Wed, 17 May 2023 13:14:57 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.14.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:14:57 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 01/11] python3-astroid: upgrade 1.5.3 -> 2.15.4
Date: Wed, 17 May 2023 16:14:46 -0400
Message-Id: <20230517201456.1608917-2-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60048

Copy the recipe from meta-python to handle the upgrade, so that
patchtest can build it without needing that layer.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-astroid_1.5.3.bb           | 20 -----------
 .../python/python3-astroid_2.15.4.bb          | 35 +++++++++++++++++++
 2 files changed, 35 insertions(+), 20 deletions(-)
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-astroid_1.5.3.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-astroid_2.15.4.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-astroid_1.5.3.bb b/meta-patchtest/recipes-devtools/python/python3-astroid_1.5.3.bb
deleted file mode 100644
index 104038a..0000000
--- a/meta-patchtest/recipes-devtools/python/python3-astroid_1.5.3.bb
+++ /dev/null
@@ -1,20 +0,0 @@
-SUMMARY = "An abstract syntax tree for Python with inference support."
-HOMEPAGE = "https://pypi.python.org/pypi/astroid"
-SECTION = "devel/python"
-LICENSE = "LGPL"
-LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
-
-SRC_URI[md5sum] = "6f65e4ea8290ec032320460905afb828"
-SRC_URI[sha256sum] = "492c2a2044adbf6a84a671b7522e9295ad2f6a7c781b899014308db25312dd35"
-
-inherit pypi setuptools3
-
-RDEPENDS_${PN}_class-target += "\
-    ${PYTHON_PN}-distutils \
-    ${PYTHON_PN}-lazy-object-proxy \
-    ${PYTHON_PN}-six \
-    ${PYTHON_PN}-subprocess \
-    ${PYTHON_PN}-wrapt \
-    ${PYTHON_PN}-re \
-    ${PYTHON_PN}-setuptools \
-"
diff --git a/meta-patchtest/recipes-devtools/python/python3-astroid_2.15.4.bb b/meta-patchtest/recipes-devtools/python/python3-astroid_2.15.4.bb
new file mode 100644
index 0000000..6053728
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-astroid_2.15.4.bb
@@ -0,0 +1,35 @@
+SUMMARY = "An abstract syntax tree for Python with inference support."
+HOMEPAGE = "https://pypi.python.org/pypi/astroid"
+SECTION = "devel/python"
+LICENSE = "LGPL-2.1-only"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=a70cf540abf41acb644ac3b621b2fad1"
+
+SRC_URI[sha256sum] = "c81e1c7fbac615037744d067a9bb5f9aeb655edf59b63ee8b59585475d6f80d8"
+
+inherit pypi python_setuptools_build_meta
+
+DEPENDS += "\
+    ${PYTHON_PN}-pytest-runner-native \
+    ${PYTHON_PN}-wheel-native \
+"
+
+PACKAGES =+ "${PN}-tests"
+
+FILES:${PN}-tests += " \
+    ${PYTHON_SITEPACKAGES_DIR}/astroid/test* \
+    ${PYTHON_SITEPACKAGES_DIR}/astroid/__pycache__/test* \
+"
+
+RDEPENDS:${PN}:class-target += "\
+    ${PYTHON_PN}-distutils \
+    ${PYTHON_PN}-lazy-object-proxy \
+    ${PYTHON_PN}-logging \
+    ${PYTHON_PN}-six \
+    ${PYTHON_PN}-wrapt \
+    ${PYTHON_PN}-setuptools \
+"
+
+RDEPENDS:${PN}-tests:class-target += "\
+    ${PYTHON_PN}-unittest \
+    ${PYTHON_PN}-xml \
+"
-- 
2.40.1


