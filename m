Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15513C7EE30
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:52 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web11.61919.1684354971638269917
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=1U7htMb5;
 spf=pass (domain: baylibre.com, ip: 209.85.160.171, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-3f4e01eb845so7928231cf.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354970; x=1686946970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IGUaQstU71U+JliFLH00eTwb6zXs2criBZcyeVVpSH4=;
        b=1U7htMb5JyB5a0or9fd3Re9Yj0G/QBft8t6iD4UWdSgyfoIVrXJMBsnkv/X4/pEI7s
         BE7ZKEaLD/9qLVhDqaPgyJYxd/6keWWP9dVELzBxNP+npn36/aiRC3/oXr0yC5FH6BfE
         91P1NWt2peWu4mJRntuKiOcp01ypfu87DiG7bu15nWm7jcUnwDtwWciL4VM+tJemEAXr
         DkKg1X3kEA4Ufv0i2o9dc8R3TIPHzX5KQVXHmtfqWnBAiRXqAQa7MCFMPNhXI1+0299U
         ie9FH24mRWhuvp0ggg4Um6nsHgw1Iawhm/SBfjSKHxbAmg6RzduSUoqeoVUAVbiIf8Kj
         VLwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354970; x=1686946970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IGUaQstU71U+JliFLH00eTwb6zXs2criBZcyeVVpSH4=;
        b=AFC4TZ397GgQLyXg7HeTUhv2gn/6m/hX4dTBwKfY8aFXIPhhTxevodqM7JyFSq8Rg/
         yV4WHihqnFr+QpVBkMipcmk2y0tUIsuM+0/l3isKVfRXxzjuX6EehwS0JFzZus9oXUgj
         O3GtGt59E4uVMnpRiOKsEjl0ditG8oWL524h2HNAniR3DQI28OldAq2J/Y6F30pyCCjx
         TTNzfYNvITfvvBAr19QdSD9mIF0ihNyrqcLddqM75V+vcLExiRqvmn2K/tD7lOgk6Ps8
         Fat5tn/NDkGcSQVVQc+ccuGSoQuxEqVXi4CdWecw9dx7xsF48jJQJzwbEo3GpD1Ud1DH
         sWlw==
X-Gm-Message-State: AC+VfDxVuOeTUBdu/PYktlyUaS0OVUzolHDZYvYN5eLQ5kirtteQRmFv
	0hQ8YJgIdAcqP7nz/OkXb/UgTV4lQhdMzOSZq7ohOg==
X-Google-Smtp-Source: ACHHUZ7HBfJmwxAZCSmEdCRpw6G1h1Tn4dfAlP9QO8G7xHDGv2YYLnW1MXYHi6Yg3Nq6DbGYoQL3Rw==
X-Received: by 2002:a05:622a:1308:b0:3f3:8f88:7312 with SMTP id v8-20020a05622a130800b003f38f887312mr1825093qtk.44.1684354970619;
        Wed, 17 May 2023 13:22:50 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:50 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 08/11] python3-dill: add recipe
Date: Wed, 17 May 2023 16:22:41 -0400
Message-Id: <20230517202244.1612047-9-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60067

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


