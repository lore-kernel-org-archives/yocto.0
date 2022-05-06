Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3082C433FE
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:38 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.10103.1651847552442702911
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kGZzk+hy;
 spf=pass (domain: gmail.com, ip: 209.85.214.170,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id s14so7619780plk.8
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JJ9nJ8rfFfewU+R/8iMOl2KjxFA/oqMVyuvBJ40FUPc=;
        b=kGZzk+hyl2C5SaIOxwH2tLhlotY/u4C5ib5rsL4+hFFleyDWi/2vv89QAXGRzWnQnk
         Ul2Ep1Z2Q1jhlJR/Efy0nrDP66KaoR+Xx6LaZYQUm80si0b5ojGoYUCytNZya8sMXFr4
         a36uffaO/160gfKKpwIRHUe8Vqju4RWhxPBD91Yecs7c66vBhY2on2nf7Pjd26SOaDYi
         A5GsH17YtBk/UCwX33B7E1SibmIvi+WkX0jrQ6RGbUetCgBgqASz0Jcnhxn37dPgCrKF
         wiMOwJprVutjWRYD6NjAMnCX8Mz14It0c6xGuOmGsE6+5AyjakrCi/5Ej/s3Pk3sHSBk
         gJnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JJ9nJ8rfFfewU+R/8iMOl2KjxFA/oqMVyuvBJ40FUPc=;
        b=eialJ0Mkw/4tMyK14HpRGa9c0Orlm5OaRHLZ0337y49dS7X2KfYioXEvnbYPEZpWjB
         iePdjIyUGyofexqTDuNKmvqnBuV4fAuhAhxwN8s8BIseMk6SxKqOz8uFU1PGdbf1TIAW
         W+uTW6/0+bVcvvoBxURWoG9LB/xJELD6hBdXp6cdgBFJ5u+tvffjRwF+Jqjf42IYhWHP
         b2tyfxvCjbm5aIXs1oNNN+G+bfUuGtOQCSemAqIel8WaUABOkYpJgCEFGhoVIsaaMKE2
         qrEv9dn7uASxi3Sf9jRS1kpSiyTjmUnLGbyfU3JnZZ/HfA8obHjjcY4OYXFvmPhM0tYd
         Nb1g==
X-Gm-Message-State: AOAM530W7G+Wvwd/l9SoION8WvTP+lbmGz7GOVAw60gTgNUkQHhMQByr
	HCjbEI+TENMa9Q8gOWQPZ0sHGkvLGrO9QA==
X-Google-Smtp-Source: 
 ABdhPJx1w+nkHUOL1l7LQ0aGIKEdrUyk+CRZq541+qJz+xuOMD2Pg4bk0E1/VjZKKGwozuldrCnvuQ==
X-Received: by 2002:a17:902:f68d:b0:15e:bd3c:43da with SMTP id
 l13-20020a170902f68d00b0015ebd3c43damr3897707plg.164.1651847551465;
        Fri, 06 May 2022 07:32:31 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/9] fscrypt: add distro_check on pam
Date: Fri,  6 May 2022 07:32:21 -0700
Message-Id: <20220506143229.2141000-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57012

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fscrypt/fscrypt_1.0.0.bb | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/recipes-security/fscrypt/fscrypt_1.0.0.bb b/recipes-security/fscrypt/fscrypt_1.0.0.bb
index 663d8e2..8147fe6 100644
--- a/recipes-security/fscrypt/fscrypt_1.0.0.bb
+++ b/recipes-security/fscrypt/fscrypt_1.0.0.bb
@@ -8,19 +8,19 @@ SECTION = "base"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://src/${GO_IMPORT}/LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
-BBCLASSEXTEND = "native nativesdk"
-
 # fscrypt depends on go and libpam
 DEPENDS += "go-native libpam"
 
 SRCREV = "92b1e9a8670ccd3916a7d24a06cab1e4c9815bc4"
 SRC_URI = "git://github.com/google/fscrypt.git;branch=master;protocol=https"
+
 GO_IMPORT = "import"
 
-S = "${WORKDIR}/git"
+inherit go goarch features_check
 
-inherit go
-inherit goarch
+REQUIRED_DISTRO_FEATURES = "pam"
+
+S = "${WORKDIR}/git"
 
 do_compile() {
 	export GOARCH=${TARGET_GOARCH}
@@ -47,3 +47,5 @@ do_install() {
 	install -d ${D}/${bindir}
 	install ${S}/src/${GO_IMPORT}/bin/fscrypt ${D}/${bindir}/fscrypt
 }
+
+BBCLASSEXTEND = "native nativesdk"
-- 
2.25.1


