Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14DB6C7EE31
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:52 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.61602.1684354970055778822
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=vhfEzw3c;
 spf=pass (domain: baylibre.com, ip: 209.85.160.169, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-3f4de077aaaso13503031cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354969; x=1686946969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=obd6fGZs0RjP/WSgcNdzlP3P2mTMtyBmgPKRwRWI+kE=;
        b=vhfEzw3cgFaP3D/qws/Ic0YZtNf4aXLos5K5S9F9p24B5M/fD3M0vWfzY1WYS9YO9k
         Wgzslh/WPOylOrUsAOreaerDEtwZUGYm8niIt1hMzu6SUbJR/EHF9Pvz9uxeNGMClsZ3
         9GhfbW6+Dc57rLyts0DILox3y1AM80qNzQ+rByzK88qpUl4J6x6FUA0kLs/DsaJc0z7p
         rey2LicjOKxHZNuceh6gHkTbdiomOV9oye84YtFMiJHSloaDvkcZVeAOXlaOjbqSHV6m
         9sIitxBaucDTT7ObnjnB8HxQrniC24WpixG8m2YB0VZohKmOYGyExghGAXqQsZK2XVun
         hAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354969; x=1686946969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=obd6fGZs0RjP/WSgcNdzlP3P2mTMtyBmgPKRwRWI+kE=;
        b=EmYCx9qHb9UDf17lkd9LXdYgspbgVPeGjolu+MnsIzcTNK9hWLdsKC1DAkc/6VIjaK
         K/p0CNDHZF1qtWXw+f/e1h5Axq+gfxYPK1FFIikXklqME9+WiUH8aMzxd8mCz8NMlfpj
         ngbl3sp2g7wq1W008MVgakVkhw73hHjaAWZXRpizsUUPMRkURfBey18ValcDExfOY6kE
         mZae/xVaUMmi4efLKNsmm/qRN4CgJUt0B2ItWPD0S92nPpUUwjOQunuh5ML8Z5834/vz
         Ahj2DPS9sM8KV9muARpW17skSg0EfiO4gF0v5RVXwttK13gAg3yP4QRLC3apMfr6lc1f
         oqrw==
X-Gm-Message-State: AC+VfDzkFxU+swnpKJ73O14JhLj3VVA5yvflI45TInmUCR0ukOcvjiTW
	tEGqT1q0fj8Ym8aSoqB12RZyZ9ypsKrOr8JWPv55IQ==
X-Google-Smtp-Source: ACHHUZ5+ypRW0wQzH9IwH4kZNaYkOibJjmmK8DJ4axCSf4kjIJ/RlMYvLkxEdIFk0fwcgScTa0ZDUg==
X-Received: by 2002:a05:622a:285:b0:3f5:543:4c3f with SMTP id z5-20020a05622a028500b003f505434c3fmr1460726qtw.66.1684354969156;
        Wed, 17 May 2023 13:22:49 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:48 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 05/11] python3-pyparsing: remove recipe
Date: Wed, 17 May 2023 16:22:38 -0400
Message-Id: <20230517202244.1612047-6-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60064

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


