Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08F2AC77B75
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:23:02 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.61920.1684354972122516677
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=yKauUERp;
 spf=pass (domain: baylibre.com, ip: 209.85.160.177, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-3f38e1142d0so7237921cf.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354971; x=1686946971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z/yCxrQdVTNue1MK5FP5stGkNr/LOkz/ITwJav1j0Zo=;
        b=yKauUERpUXutgM45ftZTdKtioECAFTAheaXFyZvI+6sX7W+e9Fx6FvkcIwzq/aOwS4
         uk9Qv2Wce7Cv3zzrn3axm1s/MoQ+N+6Md3XAZdiQ8QtnICVY2xRgJWp+aouN9wzQMO6g
         YV96lrHuEOFCF0B6SW/fdi6TIe7MmEfJCIuTe7T+ZydkPLBAPCzluZ7fFiFseU4quvUG
         R7kJF5eNqnd8cM1hFNi1qVKcIXkKPfXb8CjNwBK/E0R69NWGyIKhSuXB2IKWAqmb5WUk
         az+e2OPIFp21yS8dgJWA8CxU3hFKGo3+0n7bQd7WeAY1a9T3AcPYVwVAWG/w+FFWwb28
         9J7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354971; x=1686946971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z/yCxrQdVTNue1MK5FP5stGkNr/LOkz/ITwJav1j0Zo=;
        b=j0oAnCa5KXQ9ImE/de3mE+SYZhfnAuvIGuaU5/KhiDcSju2oowSheEjvOyxphrBYjA
         dL/wOsqnpLj1DuySgOSHIR+NII/jLkhGRWl++jn9GCAw0MYsfBzpooOZloAL3Fzb8CGQ
         pJeInzSZAN9hQSj3ctgOFCQsFoIdYj92krSGHeKuaJ9a2jrbzc4gAomg5TVJ4ho2p6kx
         7Fm5nKntvxFAGhv1HXoy4wN2mpDPm28UOo8Qe0gB3Uou3851npmlgWMQMZ0GyShJIWXZ
         663+l7eOulTng3Ls8mQZkDwWG7PO1RMOTFE7g5TuyWsqXHXM6RA6WZmSEpuTOS2+1/+V
         VYbA==
X-Gm-Message-State: AC+VfDyeeZT3WaGIoMQwum6fQA2xNaJobRF9i/yGcEB5mhV2WndTJUZX
	9iaZ5b7J/9SG29zodKoYvZnCnqpoffZevcMGL80IGA==
X-Google-Smtp-Source: ACHHUZ48hmQx+7DjKIXMS4a6VmjiIklBE0vNMbgwqjq7VqlOfr2mi8IIEKIKtPft+dLTKhLw4VMqew==
X-Received: by 2002:ac8:5948:0:b0:3ea:bac1:a5a0 with SMTP id 8-20020ac85948000000b003eabac1a5a0mr1722643qtz.37.1684354971146;
        Wed, 17 May 2023 13:22:51 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:50 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 09/11] python3-mccabe: add recipe
Date: Wed, 17 May 2023 16:22:42 -0400
Message-Id: <20230517202244.1612047-10-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:23:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60068

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


