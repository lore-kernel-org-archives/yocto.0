Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652C0C433EF
	for <webhook@archiver.kernel.org>; Sun, 19 Jun 2022 14:18:56 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web11.9050.1655648330020890032
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 07:18:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KMQUsyxp;
 spf=pass (domain: gmail.com, ip: 209.85.215.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id g186so8093665pgc.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 07:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5lXEnynh7q6qHcMAp56HgbDnkoq0SeVxDJFtzF3CI3I=;
        b=KMQUsyxp4wG8HUFSlSv3dFTvWakcX9UZI2JFBkIfT14JAQfCyYE6Z6xSoZLh/ZuwTG
         56ObiPJ4KbXVIRd3ZK6AosuNzfMLb0nu2uN6TokWRLS/u1HXiHWqU82cPUXy13Ol2/Hl
         idC/aOoB+3staA1VL8DVVc8EnXtXHO5+Xzzar7JZVyGBvfIWKRoglt+3q9K4AwMdNbr8
         N8c1VINAZ4A3Zsqf+qh8ktQH9Ib+d0aoUK6P4+Yg+UxhO0l57g9mnWLCj4TkSVaPgi8J
         6ocPuxlOum0Iekco6Sb/cxliqbZALcQJBEoBFuiK8xAtgfq2yHUJTqRe5b56cttTyP19
         ntKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5lXEnynh7q6qHcMAp56HgbDnkoq0SeVxDJFtzF3CI3I=;
        b=MPHyNg2BGvdbkEpeCtF5C6EXKr6rk/2bwfiak06O/osltGlKyM5bhucMy4uwTTRXxc
         B2w1L2dCJdDnOyjDUqC6x/G2nU6xER83t3D+QVVJUd0mtrqfffPByGzcqjThYJzUPeDt
         OJnQ3x3t6v4K4DZ15L7UtBP5BwN87ouwqe6BYGOOU7LTgI5nR7L65dRLNZL2N9PzKDey
         8MpJvEt0kcaH1BsfPDtxg4YwaokJeM/Ro4zjmOJAPGKtpRCcZtz/miAiubi8R8dmKQtX
         3ZG7WKWX3+ZdSGlwjN8QrHXsLzbJE0YS/wPH59KHK2oNRj1QRnPg1P24oCq9omEkGavY
         jRwg==
X-Gm-Message-State: AJIora/5NB1agdvShMGDAQEagIRa3MV1DOZ2SI+JXsva7yS4kOM3eyw2
	f/+SVTE0/s9n6qH+MLEKPJO7KpWDPHk=
X-Google-Smtp-Source: 
 AGRyM1uFWZ7YSiNQEQAI+ETE29C7gkR1ppto6RuIkW7ijt53XTbUOVZ4mEToqrx6IiJRtqI/AKHUiQ==
X-Received: by 2002:a63:5723:0:b0:3fd:d8b4:c19f with SMTP id
 l35-20020a635723000000b003fdd8b4c19fmr17302483pgb.137.1655648328971;
        Sun, 19 Jun 2022 07:18:48 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:6be1:9d3b:bdd6:cdc3])
        by smtp.gmail.com with ESMTPSA id
 y6-20020a056a00180600b0051c147eee7bsm7174196pfa.110.2022.06.19.07.18.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 07:18:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] security-test-image: add firejail and aide
 test suites
Date: Sun, 19 Jun 2022 07:18:46 -0700
Message-Id: <20220619141846.718922-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Jun 2022 14:18:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57354

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/images/security-test-image.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/images/security-test-image.bb b/recipes-core/images/security-test-image.bb
index 133a7a1..81f69dd 100644
--- a/recipes-core/images/security-test-image.bb
+++ b/recipes-core/images/security-test-image.bb
@@ -12,7 +12,7 @@ IMAGE_INSTALL:append = "\
     ${@bb.utils.contains("BBFILE_COLLECTIONS", "integrity", "packagegroup-ima-evm-utils","", d)} \
 "
 
-TEST_SUITES = "ssh ping apparmor clamav samhain sssd checksec smack suricata"
+TEST_SUITES = "ssh ping apparmor clamav samhain sssd checksec smack suricata aide firejail"
 TEST_SUITES:append = " parsec tpm2 swtpm ima"
 
 INSTALL_CLAMAV_CVD = "1"
-- 
2.25.1


