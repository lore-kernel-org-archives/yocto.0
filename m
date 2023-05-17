Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D41C77B75
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:11 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.61361.1684354502702922617
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=ywl9fOvw;
 spf=pass (domain: baylibre.com, ip: 209.85.222.177, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-75783ac48e7so119342685a.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354501; x=1686946501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IGUaQstU71U+JliFLH00eTwb6zXs2criBZcyeVVpSH4=;
        b=ywl9fOvwcAJm23aoThQV2qWtf6yQXY83y6IMZ+liI+shW/zOj7nhgRh1+nt6MbBrTW
         jnMEGddLWUslla8arquhrIpnZM+2uZMMymkrv5PqhffVPcLj4/b40kRTWohKYy6xEjHM
         dWZjA96cCWpW7v3EtbIyr4m2EzsZWY9o7/MkB3W9wX6R54R8WDGwoEEld1lWx9CgYDI7
         OXgmQvms2NqhJhQCLLcCLjSOQCw1t7wIBxM+pXr1+Sld2wqeL1vY7O+7cCFF8FefWnyV
         Sk0G32fEtIl3sQEHsKQh3INhnTRxPgqKq72IdNrkwbVZQksfLwbtxs6Vh07wQN6OL50+
         Vetg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354501; x=1686946501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IGUaQstU71U+JliFLH00eTwb6zXs2criBZcyeVVpSH4=;
        b=YXBLpFjk5ma6/3qNrwncXZy6SH1Cn2rTAe/MWKLqNIwCKgMcibQSejlI+HG/xqO9u5
         nEhYM/1TrKiygkUm6Zl+CMShIMYwzeG+fCoB/ZIdJrs07Hp2gW/ynKx7dglHBinrcn2o
         Wx+D4orutD5QvmyJywU7E82rZHeopBYqyv/WFq6s1m033SgcXESTVGdfIFq4RbzW1yJ3
         zKVeXhEr8G4apJkWKrsSRfgQOdhL4OQdq6PWGBf9QNNstO9/UzHW2PoJ65rr5Mab4bLG
         Jl6OXNfvER6cXq6cD/Lz3WhtBmm7w51Fv1iWdKx4ebNwBoAtPj4SfwqeQjJowHzE+wzK
         yFBw==
X-Gm-Message-State: AC+VfDwWiXB3CqO+vGOvO5iEkXWslQJcP5dvPeBsC0MgKdj6YvYZMNfm
	QFZkEdw2u8nOm/SWcO202+LN3YThqHKKer55r9G+0w==
X-Google-Smtp-Source: ACHHUZ7Fs7SmmPEgA/QATta90+O1LptqecTzDaWT7riLgsBgt/3Uw1/T/C5X/wOI3d4f6ejHkGYBow==
X-Received: by 2002:a05:6214:4118:b0:5ef:67b9:8d37 with SMTP id kc24-20020a056214411800b005ef67b98d37mr1608652qvb.13.1684354501690;
        Wed, 17 May 2023 13:15:01 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.15.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:15:01 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 08/11] python3-dill: add recipe
Date: Wed, 17 May 2023 16:14:53 -0400
Message-Id: <20230517201456.1608917-9-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60055

python3-pylint requires python3-dill, so copy it from meta-python
to avoid requiring that layer for patchtest.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-dill_0.3.6.bb                | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-dill_0.3.6.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-dill_0.3.6.bb b/meta-patchtest/recipes-devtools/python/python3-dill_0.3.6.bb
new file mode 100644
index 0000000..bec4643
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-dill_0.3.6.bb
@@ -0,0 +1,17 @@
+SUMMARY = "Serialize all of python"
+HOMEPAGE = "https://pypi.org/project/dill/"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=61f24e44fc855bde43ed5a1524a37bc4"
+
+SRC_URI[sha256sum] = "e5db55f3687856d8fbdab002ed78544e1c4559a130302693d839dfe8f93f2373"
+
+inherit pypi setuptools3
+
+PYPI_PACKAGE_EXT = "tar.gz"
+
+RDEPENDS:${PN} += "\
+    ${PYTHON_PN}-multiprocessing \
+    ${PYTHON_PN}-logging \
+    ${PYTHON_PN}-profile \
+    ${PYTHON_PN}-core \
+"
-- 
2.40.1


