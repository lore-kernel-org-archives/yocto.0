Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2798EC3F6B0
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 22:29:37 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web12.7964.1659220174902189791
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 15:29:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FPMaEoic;
 spf=pass (domain: gmail.com, ip: 209.85.214.182,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id y15so7421545plp.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 15:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3ymfY1WYiWrVmN8d4Ai0Uo3W1xOsmBWDGeJVhsop/7c=;
        b=FPMaEoicO82aqYZhtMgatyGV2eAIXXhEPvDFr9AlBV8PIzX9E0fvVuYJpuL0JU2zEP
         9vARrV4+PfsWQvQfk6beJjK3T5MCyNv7ev1nUqfXfxvQFRW6pU0NNL//VKT2+OlY76wM
         bDIoAcZ1aMNNSRWbXLJgxrX9HQQKENxvir4wyL6jCOVmTrValghwRpJtoxO7sjpWVN79
         ipnHINFNi6v1PgWW1tJjwVtB7D4Os0U9Rh5tasBV2dI1wRavqHitSKBgSfcWVGm2FDdM
         btLSUDZs7hyv67HK3Be9a4wf2UFhpbYiaXfrTB8DAYXubLniWywxsxJ/d46J3SajEDcO
         9fyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3ymfY1WYiWrVmN8d4Ai0Uo3W1xOsmBWDGeJVhsop/7c=;
        b=D8gHlXCMgyQisojCbvjxSpL3ktHKgncLQSxXku6f4vDnci0tXQhuDEEMYqXTBmAIhk
         CwhXG6flLm1U9DGXtr8uFj5WfCz2HbA+KGNirmsp5g9MwReI8t2VEHv06Mdf+f1m6yQl
         ivCE8JIA3ZwzMC9H8OY12YvQVEklk/H6LBeHhZSR2D4dmsIO3kXeAlJFqn0bv/ho4KCh
         1nTBvTC75QLcFunlIOt9pNOi8QYTR8uDzuPPATsiovP+9svcp40+qzbLZpYj9lSCcbYF
         ooeZOlI4ek+wTDXYlv3TmKQwYBsoIKTWfFqiTlXnUnzXvEMTZgQtU1hljWgJSnDArGrv
         3njw==
X-Gm-Message-State: ACgBeo2cqex07z1ZUiQM1N3nesIgnchoQK7puEsEVrHqqBMEoHIfLgU8
	mR2/a6dMVDOUOUMHeIjnpqbRXCDe8dg=
X-Google-Smtp-Source: 
 AA6agR5/2GueualPvx4rIuY/Pjyh4UxDCLErOJAv/TIYlQmztzfltcPofIraU9rzG9J47aCPxnOJWQ==
X-Received: by 2002:a17:903:191:b0:16c:3d49:b0b3 with SMTP id
 z17-20020a170903019100b0016c3d49b0b3mr10151607plg.174.1659220173620;
        Sat, 30 Jul 2022 15:29:33 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 m17-20020a170902db1100b0016ec8286733sm2659891plx.243.2022.07.30.15.29.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 15:29:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] apparmor: update to 3.0.5
Date: Sat, 30 Jul 2022 15:27:30 -0700
Message-Id: <20220730222731.1208790-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 22:29:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57701

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/{apparmor_3.0.4.bb => apparmor_3.0.5.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-mac/AppArmor/{apparmor_3.0.4.bb => apparmor_3.0.5.bb} (99%)

diff --git a/recipes-mac/AppArmor/apparmor_3.0.4.bb b/recipes-mac/AppArmor/apparmor_3.0.5.bb
similarity index 99%
rename from recipes-mac/AppArmor/apparmor_3.0.4.bb
rename to recipes-mac/AppArmor/apparmor_3.0.5.bb
index 896abfe..45f19d1 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.4.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.5.bb
@@ -22,7 +22,7 @@ SRC_URI = " \
     file://0001-rc.apparmor.debian-add-missing-functions.patch \
     "
 
-SRCREV = "9799fbde997820bb12a49e292356f7a6ce12e972"
+SRCREV = "822db765c6fa7f9de7233c4011254a82d4dafe76"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
-- 
2.25.1


