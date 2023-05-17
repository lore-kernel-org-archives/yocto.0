Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFCBEC7EE2D
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:11 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.61362.1684354503355297571
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=ky0aCJST;
 spf=pass (domain: baylibre.com, ip: 209.85.219.41, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6238b15d298so5651286d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354502; x=1686946502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z/yCxrQdVTNue1MK5FP5stGkNr/LOkz/ITwJav1j0Zo=;
        b=ky0aCJSTOQ7GYPTd8pWOJ0d+CgYYQk2+RyXM2Y3dUuILH/1b91ay+xDQmUU/TJydzM
         2797LfNnWxyYN2ytoAeebf6QvZcJFJIPDp0nRF41vOqfQRyifkKH4ZM+gNaD3ickzK+A
         6dJNfX9pWUSZtje033dYv5dLsV5Dm0zxkRcGP0v3Bf1W17DxbKbOEFHdPAL+dK666nQF
         6imFIawHkz0a1R9VhfWZz85VRydj7iVhULA5XQ+iOCjLgdJGx8l79uJObd74Rii61VFn
         4PfZeSN3AXE/80qje4siaudMTKZ2dOo/vL+KVHobWjsX4218SztalLsAsHwHPuNUpfSG
         CJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354502; x=1686946502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z/yCxrQdVTNue1MK5FP5stGkNr/LOkz/ITwJav1j0Zo=;
        b=aJynlP12ZPWa/fN1S4jB1nZJ5UlQDTZIsjFPGP/5TocKL/LodfQCCiha70aeNhZmMz
         BLgr27JhxfUy4U3nbXcgSSENvrZ2j4tRkXZ9eAE0vxSl0NNoSlaA25dCf3m4+22hE28Q
         xtlbxjBwt4bneKc1KS5b8mD1KCR3hJzAhfLqIAv1BvnRSm9YNAGt5dVVvbdGcochUBJf
         W40iCDXr9zYpJ+++WG0WPZ3wWYKIih5nQT3OiTuoj8f2DjUGCwfvvmtSozp1gWMQUJ7D
         L0ssN7Mgy+nUuIjmJbmbOtbUD9Cq3z09h53Gaih6cZSlsTXMnn6ZF4fLCSuuZOXrHPRO
         n6hw==
X-Gm-Message-State: AC+VfDyEANMfUqeHBLsF8dSq8GvjPMixPpCaq/da/Lqrzq0MuR52dE9v
	sfZTc7s2zAi4aYt2Ap1g5Ab9T42u5IpFs3p1TRtciA==
X-Google-Smtp-Source: ACHHUZ56FpT+SO7z3j6v37XozH8q0ObfgmaL0D9yenkXkAqSlCXvDZV5Dtv6Xa4Syi+C2m/KRbLhhg==
X-Received: by 2002:ad4:5cc1:0:b0:5e9:2d8c:9a21 with SMTP id iu1-20020ad45cc1000000b005e92d8c9a21mr1577760qvb.32.1684354502377;
        Wed, 17 May 2023 13:15:02 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.15.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:15:02 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 09/11] python3-mccabe: add recipe
Date: Wed, 17 May 2023 16:14:54 -0400
Message-Id: <20230517201456.1608917-10-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60056

python3-pylint requires python3-mccabe, so copy it from meta-python to
avoid requiring that layer for patchtest.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../recipes-devtools/python/python3-mccabe_0.7.0.bb   | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-mccabe_0.7.0.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-mccabe_0.7.0.bb b/meta-patchtest/recipes-devtools/python/python3-mccabe_0.7.0.bb
new file mode 100644
index 0000000..a2c72fc
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-mccabe_0.7.0.bb
@@ -0,0 +1,11 @@
+DESCRIPTION = "McCabe checker, plugin for flake8"
+HOMEPAGE = "https://github.com/PyCQA/mccabe"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=a489dc62bacbdad3335c0f160a974f0f"
+
+SRC_URI[sha256sum] = "348e0240c33b60bbdf4e523192ef919f28cb2c3d7d5c7794f74009290f236325"
+
+inherit pypi setuptools3
+
+DEPENDS += "${PYTHON_PN}-pytest-runner-native"
-- 
2.40.1


