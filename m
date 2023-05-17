Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEF93C7EE23
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:01 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.61667.1684354499472815702
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:14:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=ayyRiLuj;
 spf=pass (domain: baylibre.com, ip: 209.85.222.182, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7590aa05af6so137729185a.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354498; x=1686946498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C1xIV1g99gcntQFhAAYt5qBk3WJikcFvpqqiLUj7z5Y=;
        b=ayyRiLujP97+A8wjI/V9wiv2itSm+I6/nOuiB8LJvYH47GeXPU7/mBFozptRZk/rdG
         s62FvycsgiblpI54S9IaDdHr9c6kI9Lqtyspd+xAbohmpnPhNSoqM+QkQRFyMP+9d4Lu
         6avAaDyYP8xq57dP6FLpEx2cyFcr3DWveq6H5XmA4xgtUSgzdJE6LBcZhoyqWYUjg9Tm
         R26s0x3A8JudnOMAfX491CJ1EvE34fGGWKgtPG8fVQWHM15ube+uHnaAXc/LMX9C0Ns1
         gaWELDk68m/g2GI8veLgJPv/O7MjTa9Nfhg+okUtUEvjraBBfQQ3fleKZblMibl5YJu+
         qzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354498; x=1686946498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C1xIV1g99gcntQFhAAYt5qBk3WJikcFvpqqiLUj7z5Y=;
        b=j2boFE6BJaukyxg4to6CIf61uITKjIY9GkfA8Qhk6mvnwX4LinVDqkRe0T9FhqIKqP
         fLFYEl3EBLHuTCliLtmWHW3EEOzpJWmR1sibD2o7vKLTDMq0/2yVKony6u5pVQVUEkS8
         x5n3ehNClwP0n0RWv8vsaon4pFSaX17eeUY0+iGzAnu22hxFm3hguYUXJS+HYRgoAcWo
         NbrQMwuIRsLTbMhMMeXmdxNqXUQubE4oTHxxVTKfNwMMm0Fy1bbAeLMNroRinxobH8N0
         lIY8m7O7jocEcRP77dlwPbSYqiiF3bE1+4gFZNC1jrqtTNe6fsN9AduCBx2HnkzJHwSD
         Rknw==
X-Gm-Message-State: AC+VfDzyYMxM78Tbe8Uac7jq/+j/FtiYzk0D2BwE68jUKX24SQOsdElm
	bwb08IcpixFOQW0E0Aw4tz16X2by5jQs07czdwxDbQ==
X-Google-Smtp-Source: ACHHUZ7cKBeBK7KMnt3eWm5E08+726siW5sCd77i8ElmGBQjMoN77QGq2B9qDuavhCXMwc+J1Q3Mjg==
X-Received: by 2002:ac8:5d86:0:b0:3f3:8ee7:483 with SMTP id d6-20020ac85d86000000b003f38ee70483mr1588472qtx.53.1684354498372;
        Wed, 17 May 2023 13:14:58 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.14.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:14:58 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 02/11] python3-isort: upgrade 4.2.15 -> 5.12.0
Date: Wed, 17 May 2023 16:14:47 -0400
Message-Id: <20230517201456.1608917-3-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60049

Copy the recipe from meta-python to handle the upgrade, so that
patchtest can build it without requiring the layer.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-isort_4.2.15.bb            | 10 ----------
 .../python/python3-isort_5.12.0.bb            | 20 +++++++++++++++++++
 2 files changed, 20 insertions(+), 10 deletions(-)
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-isort_4.2.15.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-isort_5.12.0.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-isort_4.2.15.bb b/meta-patchtest/recipes-devtools/python/python3-isort_4.2.15.bb
deleted file mode 100644
index fc98e7c..0000000
--- a/meta-patchtest/recipes-devtools/python/python3-isort_4.2.15.bb
+++ /dev/null
@@ -1,10 +0,0 @@
-SUMMARY = "A Python utility / library to sort Python imports."
-HOMEPAGE = "https://pypi.python.org/pypi/isort"
-LICENSE = "MIT"
-SECTION = "devel/python"
-LIC_FILES_CHKSUM = "file://PKG-INFO;beginline=8;endline=8;md5=8227180126797a0148f94f483f3e1489"
-
-SRC_URI[md5sum] = "34915a2ce60e6fe3dbcbf5982deef9b4"
-SRC_URI[sha256sum] = "79f46172d3a4e2e53e7016e663cc7a8b538bec525c36675fcfd2767df30b3983"
-
-inherit pypi setuptools3
diff --git a/meta-patchtest/recipes-devtools/python/python3-isort_5.12.0.bb b/meta-patchtest/recipes-devtools/python/python3-isort_5.12.0.bb
new file mode 100644
index 0000000..6d7b20f
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-isort_5.12.0.bb
@@ -0,0 +1,20 @@
+SUMMARY = "A Python utility / library to sort Python imports."
+HOMEPAGE = "https://pypi.python.org/pypi/isort"
+LICENSE = "MIT"
+SECTION = "devel/python"
+LIC_FILES_CHKSUM = "file://PKG-INFO;beginline=6;endline=6;md5=8227180126797a0148f94f483f3e1489"
+
+SRC_URI[sha256sum] = "8bef7dde241278824a6d83f44a544709b065191b95b6e50894bdc722fcba0504"
+
+inherit pypi python_poetry_core
+
+RDEPENDS:${PN} += "\
+    ${PYTHON_PN}-datetime \
+    ${PYTHON_PN}-shell \
+    ${PYTHON_PN}-profile \
+    ${PYTHON_PN}-numbers \
+    ${PYTHON_PN}-pprint \
+    ${PYTHON_PN}-difflib \
+"
+
+BBCLASSEXTEND = "native nativesdk"
-- 
2.40.1


