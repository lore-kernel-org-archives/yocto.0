Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BF51C4332F
	for <webhook@archiver.kernel.org>; Thu, 19 May 2022 22:35:38 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web09.2037.1652999735333028131
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 15:35:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NYWpLyjS;
 spf=pass (domain: gmail.com, ip: 209.85.216.43,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id f10so6476841pjs.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 15:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c58cKITg60pt9VaMjuV/Up4Tev9kYM2+m+lkyMM9nJA=;
        b=NYWpLyjSMzbxDmUM8oLsSSZH6szh57gKs2kfzrPE2jlZxEY9dwid8EDQ+PZR0EORnB
         Dhs5vPaejeZaI+p9twitVBaFGqiKH/6TsY9xeFB5TPhwaS2+kMvXW9FyeXGNRzkS3P9D
         9oQusRJ5D4uGm/uxsbgrF4YJxKyWvWwFGebov3lRxAKcSgG8LGPMRL9z+pL7mBfOAQl8
         BWzHSW8AdOcxy+PtGSg7O/rv7MaTw/cDcQf67JxCaVFETIhC3eV018mZkH8v4NlA3+xF
         FcbvcL8FgaHYHkqO5p3QVlxeGflLJvLjukdEdGEMbi7HL4iQ+V8QXpXQJnn12bI28HOg
         6ccQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c58cKITg60pt9VaMjuV/Up4Tev9kYM2+m+lkyMM9nJA=;
        b=omBxicEEOepNimancqwPFXvcP2aHd4MOZBJE4qd13w6MN2Ao5D1DYyuMdL4s/eq+BP
         SVmU7FOvcVMsqCsWuPqa6S8CeuLUlbUSJoW/yjvC3GSCpkXAotoVageEOx1Qn5l3v8Mx
         N/WRpZBQjkwtE00SXx0jG6J5UN70SwAx4D0bXScsfBUXXJpled+7fIPOmafgISBXGQeo
         DxBtm/affML3R60nz7hurNJxE6uDN9yzIIxbY2XT2TeE8a1rFKaprEambV8LCls4FgQC
         1aVxd5oouWVMqqJrZ3Wva6E5oGGnxG9FG3FcLePfanEXghdQUInLPTn4LzGOaMRZfAel
         7wzw==
X-Gm-Message-State: AOAM531UypaWVLt76oqV7b40uAo6KOXqczyswz6tXKcjgFcUnjrkoyjM
	6YXwDrQPIeceHbI4dbdN5txiwuGW6rWvMg==
X-Google-Smtp-Source: 
 ABdhPJxmkyII8s0ieusaoEBBbBlQOlQAxbCZGXD7KFAYv5IoSGYpIFq9msh0xHgkdj2YY7SoZ9QFsw==
X-Received: by 2002:a17:90b:3ec7:b0:1dc:b008:3cd3 with SMTP id
 rm7-20020a17090b3ec700b001dcb0083cd3mr7975843pjb.226.1652999734055;
        Thu, 19 May 2022 15:35:34 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:eff7:a795:a3a0:cee8])
        by smtp.gmail.com with ESMTPSA id
 y17-20020aa78f31000000b005107a4d5096sm203277pfr.30.2022.05.19.15.35.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 15:35:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] tpm2-pkcs11: tpm2-pkcs11 module missing
Date: Thu, 19 May 2022 15:35:29 -0700
Message-Id: <20220519223531.3851892-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 22:35:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57141

Correctly fix symlink issue by putting module in -dev pkg.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
index a9174e6..e8812d0 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.8.0.bb
@@ -27,8 +27,13 @@ do_compile:append() {
 do_install:append() {
     install -d ${D}${libdir}/pkcs11
     install -d ${D}${datadir}/p11-kit
+
+    # remove symlinks
     rm -f ${D}${libdir}/pkcs11/libtpm2_pkcs11.so
 
+    #install lib
+    install -m 755 ${B}/src/.libs/libtpm2_pkcs11.so ${D}${libdir}/pkcs11/libtpm2_pkcs11.so
+
     cd ${S}/tools
     export PYTHONPATH="${D}${PYTHON_SITEPACKAGES_DIR}"
     ${PYTHON_PN} setup.py install --root="${D}" --prefix="${prefix}" --install-lib="${PYTHON_SITEPACKAGES_DIR}" --optimize=1 --skip-build
@@ -48,5 +53,5 @@ FILES:${PN} += "\
     ${datadir}/p11-kit/* \
     "
 
-RDEPENDS:${PN} = "tpm2-tools"
-RDEPENDS:${PN}-tools += "${PYTHON_PN}-setuptools ${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
+RDEPENDS:${PN} = "p11-kit tpm2-tools "
+RDEPENDS:${PN}-tools = "${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
-- 
2.25.1


