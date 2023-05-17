Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DF99C7EE2D
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:02 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.61358.1684354501006056555
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=TM0CrAEI;
 spf=pass (domain: baylibre.com, ip: 209.85.160.169, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-3f41b73104eso7329251cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354500; x=1686946500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=obd6fGZs0RjP/WSgcNdzlP3P2mTMtyBmgPKRwRWI+kE=;
        b=TM0CrAEI8lV5ADYePbxK+OBxBHwcwcU3TCxKHN1Jdx9DBd1wxM+9lLe95WaqbQuTDT
         req6JmB7bcIBp71QPSyFPjEF5JggQnKkTF2PENmz7NDbdO+pi8tWkT11nAdRPi7VHkHP
         p9utdvM4CFpzhgVOdECs1lv9TFfCYwt007Fyhq2vTHmDLztkcPLGZaGpuBxMR5jVNW2j
         foF3tqHICb1dNP5XHhKF73Bf0h6GDomIkehx291yZytFlE/7SnvNZNlN3e6fCZkXlg+i
         cXahM/GHP2KZQTOajX9IE5oyEJBvTJ5q035NdHgsAp1kzfdDUVXgMuYnJDDMuy1CDpjv
         vvzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354500; x=1686946500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=obd6fGZs0RjP/WSgcNdzlP3P2mTMtyBmgPKRwRWI+kE=;
        b=ZLmiEXijvTPHEkp1P9JZjTT9h+a2wN4M5O4w1+fBjBoVgM4fo4XEyEvCNYWHrr2w8P
         XcVQ9kAbpUwuzcv2XDg1Ph/sfYKl2ZDbZxMGhe0caQyq9DuSys8eTHOQL7L5tQPHJbqH
         o66gmHjICSvB6eGEysAdSHfUwFNeCZnueC1qiRA0t8V+vwvB2bDeyu6j2K1pRAwK9hVg
         uzr50qL5Iq81QyR+R8FwrB9JG1wDTkxCSZkqSV0PB0R5lI1+60UqINUS41tg4bh74Dy5
         jYoVLuFyBwu910iw2ObC5p0zkITyreZJq3qyfjRtnl889Y6TMk4Nyx+UQFcA2+jIDis6
         pCQA==
X-Gm-Message-State: AC+VfDw2qeoHdD5x30YhTSbvZhcpdJfxGgxbNF8xo7i+Ryghshf7FoXS
	toCJOzQdj1nCxxPksN73YlabSc5OmJroxKmZw1Y6gA==
X-Google-Smtp-Source: ACHHUZ5NG95D74bAloVxgoS1+Y8JCPffgWqczySUa/1z/v4J31AuMs3tlikT7GC0zvdKaHNME7J4Hw==
X-Received: by 2002:ac8:5c04:0:b0:3ef:37d5:49e0 with SMTP id i4-20020ac85c04000000b003ef37d549e0mr1527444qti.21.1684354499982;
        Wed, 17 May 2023 13:14:59 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.14.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:14:59 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 05/11] python3-pyparsing: remove recipe
Date: Wed, 17 May 2023 16:14:50 -0400
Message-Id: <20230517201456.1608917-6-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60052

This is in oe-core now, so no need to carry it in patchtest.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-pyparsing_2.2.0.bb         | 19 -------------------
 1 file changed, 19 deletions(-)
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-pyparsing_2.2.0.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-pyparsing_2.2.0.bb b/meta-patchtest/recipes-devtools/python/python3-pyparsing_2.2.0.bb
deleted file mode 100644
index 033e0db..0000000
--- a/meta-patchtest/recipes-devtools/python/python3-pyparsing_2.2.0.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-SUMMARY = "Python parsing module"
-HOMEPAGE = "http://pyparsing.wikispaces.com/"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=fb46329938e6bc829b256e37d5c1e31a"
-
-SRC_URI[md5sum] = "0214e42d63af850256962b6744c948d9"
-SRC_URI[sha256sum] = "0832bcf47acd283788593e7a0f542407bd9550a55a8a8435214a1960e04bcb04"
-
-inherit pypi
-
-RDEPENDS_${PN} += " \
-    ${PYTHON_PN}-datetime \
-    ${PYTHON_PN}-debugger \
-    ${PYTHON_PN}-json \
-    ${PYTHON_PN}-netclient \
-    ${PYTHON_PN}-pprint \
-    ${PYTHON_PN}-stringold \
-    ${PYTHON_PN}-threading \
-"
-- 
2.40.1


