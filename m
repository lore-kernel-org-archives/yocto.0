Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2203AC433EF
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 22:04:13 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web08.42235.1653948252186136397
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 15:04:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=q04T5gtm;
 spf=pass (domain: gmail.com, ip: 209.85.210.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id p8so11525550pfh.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 15:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WVM4LaOJ2+mDGrgxznigelkaEByDgtv8rEF2PtiYlD0=;
        b=q04T5gtmHO9uVq1VPyMsYThhPYkfW+EyEreJ0PQVT3A3VuQJU/Aj+5a3zQY/VTb264
         kpmh7KLfOqyiG2fifGttHr6iERALmt4iO2ckivyduli+j33koWEOe0DKNeD5avkNutv7
         UHkcn+iZtIBTLrdPSQywL4e2wIcVb9eRduiYiHBWJiX3+crGIA2Egv7EZu6g4MuQ5Tdc
         fJJ4o/f68KcgfJ4QbDa2gJWfsEF+xoVPBV4/3TYPAEYXCwKHmUU7R0HUpQsnWYbPQaeI
         4ari8PD25vLLZnw6uM1OVE6S4vlUZMXS5maDAr11owK0cgCFkuZkuoPEL0BOMX732Yir
         l+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WVM4LaOJ2+mDGrgxznigelkaEByDgtv8rEF2PtiYlD0=;
        b=ym18D46MC0nNoN3yFbPzGlI9FlvCY8RbP0nj8tR3svbUH1TxxcYp7IVoPetVLkeKut
         1L8yy9JnrSz5b4EySmYRvaZyGBC0Rp+fSaQhpAq+DfFnwUb4yx1dpU6ujhDZIxf4+Av7
         ta09LDhwgNoNseoj2EFl2AAlJQL2AIhYbk1TzaB1JP+BkeKujKWwBgc3Vl/iXGGM9p7j
         IkS5bDWlvxhgGOLvab9F81ahYSxhCq6A+Anv2kEgxr5CK34aKP1jfwC1EgaPKpqJIQQB
         keqkLviEjjMhlooAKasIh1K2TbzPGQPMB+HfOl4TWg6phV1M4HvsVbt4ikw3JiXiT8ye
         eksg==
X-Gm-Message-State: AOAM531kojitgnQ9MOibzCmmqKs8kKqWtx0mRa0cA4XIjZmVSnaT/eJW
	ThqUQMppEqE2y0J4/e00HqAsFlNHMow=
X-Google-Smtp-Source: 
 ABdhPJy+76q3WWRpCv6LhgSwtlRiIladipYbFo7jrq06kXnmg1sZSXdy7PIQQfIjpQEr50xTSzfLAg==
X-Received: by 2002:a05:6a02:11c:b0:3f9:e159:5fa5 with SMTP id
 bg28-20020a056a02011c00b003f9e1595fa5mr41002289pgb.245.1653948251194;
        Mon, 30 May 2022 15:04:11 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 x22-20020a170902b41600b001635a8f9dfdsm9679198plr.26.2022.05.30.15.04.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 15:04:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] tpm2-pkcs11: we really need the symlinks
Date: Mon, 30 May 2022 15:02:06 -0700
Message-Id: <20220530220208.477287-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 22:04:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57224

MASK dev-so
Drop un-needed install append steps.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb     | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
index e8812d0..dd0a0b5 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
@@ -25,15 +25,6 @@ do_compile:append() {
 }
 
 do_install:append() {
-    install -d ${D}${libdir}/pkcs11
-    install -d ${D}${datadir}/p11-kit
-
-    # remove symlinks
-    rm -f ${D}${libdir}/pkcs11/libtpm2_pkcs11.so
-
-    #install lib
-    install -m 755 ${B}/src/.libs/libtpm2_pkcs11.so ${D}${libdir}/pkcs11/libtpm2_pkcs11.so
-
     cd ${S}/tools
     export PYTHONPATH="${D}${PYTHON_SITEPACKAGES_DIR}"
     ${PYTHON_PN} setup.py install --root="${D}" --prefix="${prefix}" --install-lib="${PYTHON_SITEPACKAGES_DIR}" --optimize=1 --skip-build
@@ -53,5 +44,7 @@ FILES:${PN} += "\
     ${datadir}/p11-kit/* \
     "
 
+INSANE_SKIP:${PN}   += "dev-so"
+
 RDEPENDS:${PN} = "p11-kit tpm2-tools "
 RDEPENDS:${PN}-tools = "${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
-- 
2.25.1


