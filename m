Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FBCDEB64D9
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 14:00:16 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.12888.1686751210143023056
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 07:00:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=omrhk78m;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-b9a6eec8611so1020664276.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 07:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686751209; x=1689343209;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=PNJSbv48os7Y0nbFT+Pn1k8evvnNJLY6+9wMGj5+psc=;
        b=omrhk78m9ugEAARxdnoDONAQkymBFJSBOnGjzsbrxh28vxxxYPQg9+C6U/Okannddd
         D4UBFwALQ9y6Qn6TKX7sdk2206S7xQs0zSptKyipLK8zQ2BKvycIf1Czarq3eQzZ58Ho
         S8haePAh6dO/z8QH5QDXqI0fyuhjDdKav6MnORt6rrTO4nuPBEOM2SuqdoMKfMjGEutN
         5B8F+oBtlM0IXlWxYVybCsvEZQMDWUbXszCmjhmk9aoPI2KOxjIoHRXo+3V7ez6PLP2c
         5+V/xpC4vFZlBF5eMiwaV+G7V4yUFloMqAN98ZDwkOjlInsX1WCeN2rsWfJofOadhMxL
         MGtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686751209; x=1689343209;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PNJSbv48os7Y0nbFT+Pn1k8evvnNJLY6+9wMGj5+psc=;
        b=IH9UD70Mzbh1I+jsuB/Nlby7QGbYiO5VWsByc3Ox1EvlW208HRg11f21257TGFVFHH
         jKCcoajwyPyHLYmbuDwP8n/RsSBg1PcB4LV9RFXS8kHu9GJPbi8wDYyXNxNfbzXfzhs2
         OCfyGEqkDgM8ImlI2gkqqu8s4TQW9zLoGl5sNZ2Pib8mzHpntnO/fuWXL82MfmfwBW98
         mtsl83ep3mnylrynjbpvgPZI7p4PgoRihAtM3+aGU0bOTSzR5EO3pewtuTj8mi/RDeyn
         OW4Ode1ZwXRMBOlyNEhtbRBjxHwiSvjCkSd0x6j7hOtkLwYLMGbAlJFfeNTwkjDD41rj
         nerg==
X-Gm-Message-State: AC+VfDwbfDm++ZUWVm8vStG5W7v1RTo78Lk1dBI3SpvYV6WyLX/j6FVD
	Rz8BOO5GMo8hq3cEN1FHF8yIA95RG6I=
X-Google-Smtp-Source: ACHHUZ4cWwCrlbRAyJhywyZ8gXNnhuSyeU4bVSCo2PHqrP3ag44FicLdV577kRca4ZbtTLkk7dseYQ==
X-Received: by 2002:a0d:d581:0:b0:56d:278a:d19a with SMTP id x123-20020a0dd581000000b0056d278ad19amr2225846ywd.20.1686751208898;
        Wed, 14 Jun 2023 07:00:08 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:3ea1:4343:64c1:314c])
        by smtp.gmail.com with ESMTPSA id p131-20020a817489000000b00560beb1c97bsm3876258ywc.97.2023.06.14.07.00.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 07:00:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] packagegroup-core-security: add compliance pkg group
Date: Wed, 14 Jun 2023 10:00:07 -0400
Message-Id: <20230614140007.301240-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 14:00:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60302

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
v2]
Missed to include trailing \
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index b009a4d..e0ad307 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -12,6 +12,7 @@ PACKAGES = "\
     packagegroup-security-audit \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
+    packagegroup-security-compliance  \
     ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-meta-security-ptest-packages", "", d)} \
     "
 
@@ -91,6 +92,13 @@ RDEPENDS:packagegroup-security-mac = " \
 
 RDEPENDS:packagegroup-security-mac:remove:mipsarch = "apparmor"
 
+SUMMARY:packagegroup-security-compliance = "Security Compliance applications"
+RDEPENDS:packagegroup-security-compliance = " \
+    lynis \
+    opnscap \
+    scan-security-guide \
+    "
+
 RDEPENDS:packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
-- 
2.34.1


