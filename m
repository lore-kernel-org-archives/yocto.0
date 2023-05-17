Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB2A7C7EE2A
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:51 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web10.61604.1684354971068186146
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=iwKGkQ3d;
 spf=pass (domain: baylibre.com, ip: 209.85.160.173, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-3f41b73104eso7369421cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354970; x=1686946970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h8Tt7Vn+IUlKj3cow2zDaub/0zS4XKV4Aj6YqFtHW3M=;
        b=iwKGkQ3dFgCHZbUld01Eb4SoAoq3n0kI1PDvpiIYLZDQYkOmJVCxxSfQGI0nKF1pdm
         +/x5Bw/OWT900RvNHUWBI3enyz9BrKYtxfeJYD/QzzMtmvkBksZ0U5mIPM+6PdFwblSM
         bk8LxAT3GO8nqFYeNE5xEgfAyS4Fvz9E0hNRy784ottr+QEZrMFqlYEtyTxw7ZOCvALR
         D55e1zaRMjidBTSGYYJopu5d0opcB7KFmD7lv5ByLKIde5n+pPcaOcnEJwjBsXHw79Lc
         hldWjoIJg+moq1KsH8paFWoBU0i8UtsSZOz8lt8DL4e/zmZFDDeVmJeZacytVhUqPac6
         7Cpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354970; x=1686946970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8Tt7Vn+IUlKj3cow2zDaub/0zS4XKV4Aj6YqFtHW3M=;
        b=U6UOTqdbLlFo5LO7hifN7WKPNhRi4bNsxc8ZVgrZAS/wJvL5Yh7+hgIe8x+41H44ka
         IiaIpnIjvbHkS9d0wE6aGJJmS6+zhq1I9lF8JPTCu7eIr3XYxw4deTz/AXK2F+xhY/li
         P1QdXfwjZrN2drvdPmnRiUXAAkNraR3oAw+Dmr2M/IIXh66EDv2acfWJUi4iQS6k79MZ
         yO23Tcyqh6Xq9VEif+JYSFf4OW32c7wSgj8olYhYDwvlh9cVUJsrGOCNELOe4Q7/yYdM
         q9M0/kCFlOMinVt6IUF3Q+VIx/uOE2ySgVHppofAI9gqH4nEXaUzU0vcScevcHz+Gl7q
         /acA==
X-Gm-Message-State: AC+VfDy7hm11zOnbSmdzBZkBlhEZT0vfoqcpr0/GUwVYt25trrjOufme
	if7HRRIKL+zfc/pQ0rKT82qID6b68mUgqTWjxPjVrw==
X-Google-Smtp-Source: ACHHUZ4C8Gx7k0qi7TD4e2ekUv6h4Q/nsX7F0Zr1kfMYpuE3x8lpZ/AjkUxdir69oiEK49ouOCZdMQ==
X-Received: by 2002:a05:622a:14cf:b0:3ef:62f7:899b with SMTP id u15-20020a05622a14cf00b003ef62f7899bmr1626773qtx.57.1684354970124;
        Wed, 17 May 2023 13:22:50 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:49 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 07/11] python3-wrapt: upgrade 1.10.10 -> 1.15.0
Date: Wed, 17 May 2023 16:22:40 -0400
Message-Id: <20230517202244.1612047-8-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60066

Copy the recipe from meta-python to handle the upgrade, so that
patchtest can build it without requiring the layer.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-wrapt_1.10.10.bb              | 15 ---------------
 .../python/python3-wrapt_1.15.0.bb               | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 15 deletions(-)
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb b/meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb
deleted file mode 100644
index cd987d3..0000000
--- a/meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-SUMMARY = "A Python module for decorators, wrappers and monkey patching."
-HOMEPAGE = "http://wrapt.readthedocs.org/"
-LICENSE = "BSD"
-SECTION = "devel/python"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=82704725592991ea88b042d150a66303"
-
-SRC_URI[md5sum] = "97365e906afa8b431f266866ec4e2e18"
-SRC_URI[sha256sum] = "42160c91b77f1bc64a955890038e02f2f72986c01d462d53cb6cb039b995cdd9"
-
-inherit pypi setuptools3
-
-RDEPENDS_${PN}_class-target += "\
-    ${PYTHON_PN}-stringold \
-    ${PYTHON_PN}-threading \
-"
diff --git a/meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb b/meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb
new file mode 100644
index 0000000..e35e1f7
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb
@@ -0,0 +1,16 @@
+SUMMARY = "A Python module for decorators, wrappers and monkey patching."
+HOMEPAGE = "http://wrapt.readthedocs.org/"
+LICENSE = "BSD-2-Clause"
+SECTION = "devel/python"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=dc34cbad60bc961452eb7ade801d25f7"
+
+SRC_URI[sha256sum] = "d06730c6aed78cee4126234cf2d071e01b44b915e725a6cb439a879ec9754a3a"
+
+inherit pypi setuptools3 
+
+RDEPENDS:${PN}:class-target += "\
+    ${PYTHON_PN}-stringold \
+    ${PYTHON_PN}-threading \
+"
+
+BBCLASSEXTEND = "native"
-- 
2.40.1


