Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05A38C7EE2E
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:52 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web11.61916.1684354967732268870
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=3JGbt1lZ;
 spf=pass (domain: baylibre.com, ip: 209.85.160.170, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-3f610c11472so5460441cf.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354966; x=1686946966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C1xIV1g99gcntQFhAAYt5qBk3WJikcFvpqqiLUj7z5Y=;
        b=3JGbt1lZajz08GZVaUbqffvymfNsT1ncTx65yaDq9HMA5tYGbphBwYMPBteVLylhAd
         GNw08dZDLCh2YJ/JPTkhLTFpX2tBy2DecAS2oRx9+pghhIuNP8EW451hqB+357QDAgOg
         NXiA6Ps9tfjGMOHa0lmejBEOAeldM4+FJIY4NQ4S3Y0IKf+yoj+/Tu7p92kRT8ECa8lB
         JaWxYqepihjv12w8399ptAHOkz7nSDrbk6M5Sxca2bJwooRSjUFLgqGtsaUye7j5mKJS
         CZyeivL7cTjqweoa2wJKPJ/VQvp/fmMcSSu3PY+KrQW1YVikNhbepmZaRhAlNY5IKOr9
         pCGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354966; x=1686946966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C1xIV1g99gcntQFhAAYt5qBk3WJikcFvpqqiLUj7z5Y=;
        b=Qsu9Jvygb1mVU3ho4GtYaV7ZHWHMCq+jOEp2NTiMTOz8PEH+rsGlbbvECtvmwcFWBD
         ZvbcVNcBV1+glaujvqGcfVo+U11suwcWagrPYorCoiQrnGns8FT3ZJS/agQ+cSNbjnFP
         3mCtxtaRhwiqHy6zbberE0Q4a+4Z08Qv06w7+OkIGYhmbv8KoXi9q/tBEN4nA7MhEDWg
         HkvARJzkSIBuSNHssREafgiENCUJ/VNhETKiZ+pxgg/I44wZXi2+UnuhnJmz7n8EVvhH
         6som/aXtFf1Ah1IlF206Ga7HOFIZxFKe/nZr49NY3hVM4ofRkZ+onXRdRBU8H+HLMMTH
         GrCA==
X-Gm-Message-State: AC+VfDzTw3/O45Uunts+XKmNCjyBUQwocNK0ySg1+zfZACYewqZTBijr
	WDI5MduIbmKYA7KTeTxYLK8Tm0ZvQBU4f0+fHpReNA==
X-Google-Smtp-Source: ACHHUZ6uDK5MfrICfJENbelVcFObAgIodaVKEnh8Ag3tnnLez6p8Jpe0cCrv/ot+6Bmfl2Uv/PZp6A==
X-Received: by 2002:a05:622a:180a:b0:3f3:958e:3587 with SMTP id t10-20020a05622a180a00b003f3958e3587mr1902810qtc.19.1684354966746;
        Wed, 17 May 2023 13:22:46 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:46 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 02/11] python3-isort: upgrade 4.2.15 -> 5.12.0
Date: Wed, 17 May 2023 16:22:35 -0400
Message-Id: <20230517202244.1612047-3-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60061

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


