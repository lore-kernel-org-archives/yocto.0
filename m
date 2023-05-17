Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F09BAC7EE23
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:51 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web11.61914.1684354967207802850
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=OhsNP2c3;
 spf=pass (domain: baylibre.com, ip: 209.85.219.46, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6238ce8d8f9so2636646d6.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354966; x=1686946966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQe6UiJQlP+zrI6Wq2SjmGQs18jetBcZpn27vQXciU4=;
        b=OhsNP2c3kz16euVw/p07ZwCzM6sWo+qfGCuccmAa7i+6V8Ugk6bEcqEKQ/rETvuUI/
         p54IHI2oXD/lRr/DJyeNRBbpTuJw4qJko3oCNMCY7bpqi4Fx8ovlgrvWV98Nsy+x7mvV
         m9C3pr0P2Y2mFlyAQjKE0/8T6s1/Z+rYxFZKlt3X4PJ5woC7qahYDvUWV38pxNHpFuII
         Jt5orD9a3oJtZT2u5liWGHUvJ8Wa5anN4CCu6tXv89dYyufOrtpcT2N2x3X3DDohabOH
         H+DEDfrrj3kE504ya7ltIHvxFBpQ01eqsw8WfWT/7/2GAuBlwbTpwnzxH+plv9VqX9wq
         9a/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354966; x=1686946966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQe6UiJQlP+zrI6Wq2SjmGQs18jetBcZpn27vQXciU4=;
        b=W9jTFp9NNatD9QAgmFHjtUTXwFxcrLuzxg0HnQf4Oh5L98Zq8hwp9vIMiVJMpbReI9
         2Kc8l3xMNx6uaF3v/CLU1RoYdVdg6DVBSnJmB7iVeyQjkugOcXZQ4jB5EcYSNQesCS2x
         /OTks8O3dAN1zLMZkaNka1SQUwmirX5QAcnd3c7w9XVUq/073J6mtcYM5cspc1TvStxz
         ZsFWvj3rQ1l1Y5dgAl7PkpbRa1rVD4gsptfk+P3qI5LgTOGEiP47xKi6/gRDcxXauRj+
         hTfO1TZnjujhYdfQLXBYSCVvHR1cdtPRSZH8SPWOli95mWH0GgaQ//MFJXcaFc4aG73s
         7Tzw==
X-Gm-Message-State: AC+VfDzFFkCj5xqjp1lvW4JdZidfjY0SZI7A3wrqDMRsGQMyYzTfugrz
	k+51DiqvsKk/nua5+ZVGtcc+WeZndxtK9b0jAUiJDw==
X-Google-Smtp-Source: ACHHUZ7u5f0G/gjnuP0yA0185aeJd1hdYaVSziPWt6YTNyhGcLhys6QfiKP92eWZ0NShSBmPRGkbDQ==
X-Received: by 2002:ad4:5caf:0:b0:5c8:403a:22f8 with SMTP id q15-20020ad45caf000000b005c8403a22f8mr2020877qvh.5.1684354966171;
        Wed, 17 May 2023 13:22:46 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:45 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 01/11] python3-astroid: upgrade 1.5.3 -> 2.15.4
Date: Wed, 17 May 2023 16:22:34 -0400
Message-Id: <20230517202244.1612047-2-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60060

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


