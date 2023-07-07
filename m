Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E3F7EB64D9
	for <webhook@archiver.kernel.org>; Fri,  7 Jul 2023 11:22:19 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web11.10169.1688728931800649782
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jul 2023 04:22:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=h4lsuePM;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-c2cf4e61bc6so2000668276.3
        for <yocto@lists.yoctoproject.org>; Fri, 07 Jul 2023 04:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688728931; x=1691320931;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=OZ7NFra3nUEkjn4Q8o1ykvVxqJYEB4XW93eO7Uhn+oE=;
        b=h4lsuePMAUab2Hxk3b72a3coXtzqQcJ6a4CEOjFc8DDedpndDgrtDr9UkxuGGoYgf0
         3hOUhdDvWLGR8cX9HTwcR/52s8atCeEbMbCSteu8kkwLg+7E/WjXR1zoJ9QLnq3FTOVR
         tZq65RC647j0iIepEWRx7X/gVY/CyC0l8PuKvzJwWu49G39Rz3pCNGVqI6giX3YD8Qc8
         grYJW0p8OErpNzdf/r6pxLkZIEv/ptsdDfW3KETV4RaV8QaG0JMAdStrSMhqhgBb8paF
         rzilyrzolKMvQlNpQaSrREOPWyKnJa44eEeZUZjlpsy2lnaxbYYyPuhihq1LLDVKRp9H
         KzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688728931; x=1691320931;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OZ7NFra3nUEkjn4Q8o1ykvVxqJYEB4XW93eO7Uhn+oE=;
        b=Pv7UyiJHrsgEhVYyps5dGeRxLXLkxp+N0Jmqgj5ke5VkKenuT6KLyaziQBjT1nEwsR
         saiPBJ67A3fXZihl4BtOuOMaTTCToLrHwQpGCuhNzz5VcKu8XRUwhLOsMPl7HPSnc/ma
         gzYoGvhbWC8J8z/VQJ6WuIP2t8GPr3gCOm2B1bIbbQC3QJjRGOBXH+t59olldjRCxiFe
         fovpmUCRokHCkKoSeoAa3DYfv71EcMDXBEX66LAOJlfj3aN5SQyyksYeTBacn2GyJCiU
         tIhMPlelh+jfsANPc/EZowfV2FPeuKinSxJSObkYV8f+7TiQtWjYe5hiw3BZhY4qVVsI
         AHWQ==
X-Gm-Message-State: ABy/qLY6eqGvyxCPmqY9jigUHj/7uNxhuepjGwkqbw9PlJaI68YCljbh
	sA5Q8IY2N6kLn2k26LCL0/Ix77N+33Y=
X-Google-Smtp-Source: APBJJlHeg2LgttHBw/AH3PHDaGAG85bJ4Of39FrKwIGLIb3p4W6tQqYedpBnR+VP2pL55eDVU/PiDg==
X-Received: by 2002:a5b:207:0:b0:c5d:5430:aa15 with SMTP id z7-20020a5b0207000000b00c5d5430aa15mr5255394ybl.35.1688728930534;
        Fri, 07 Jul 2023 04:22:10 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:1d0f:a175:1658:788b])
        by smtp.gmail.com with ESMTPSA id a4-20020a25ae04000000b00bb21aeddeffsm882992ybj.18.2023.07.07.04.22.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 04:22:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-security-tpm2: add more pkgs
Date: Fri,  7 Jul 2023 07:22:09 -0400
Message-Id: <20230707112209.1869529-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jul 2023 11:22:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60538

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/packagegroup/packagegroup-security-tpm2.bb    | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 8663b77..b986097 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -20,5 +20,8 @@ RDEPENDS:packagegroup-security-tpm2 = " \
     libtss2 \
     tpm2-abrmd \
     tpm2-pkcs11 \
+    tpm2-openssl \
+    tpm2-tss-engine \
+    tpm2-tss-engine-engines \
     python3-tpm2-pytss \
     "
-- 
2.34.1


