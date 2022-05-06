Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44CFC433EF
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:38 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web08.10343.1651847555215264663
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ty0BCghZ;
 spf=pass (domain: gmail.com, ip: 209.85.216.49,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id o69so7175285pjo.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XL4Y3pMAvwZFGKqhPgxYOiacsm98Hdd7XMEVb4fWBm4=;
        b=Ty0BCghZRJM0pdc/v19aGmg9Rs1Fpm8CuXzPgJiOoidmsg5BNH0zEkKK19wgR7YU9+
         bnWdtX60vHRmEthPNo31GHk0hqRIxpBj1sclhU5l/oj5mRs3qE/mSLV3BeLWDxUZ/8n+
         CAlZJMcBZLLHEqPoIQBHYvQhh2KarDcHEV1I2hXLGzJrNWrx7a/AxtXqNpq9xNCvYv2r
         vPe4mNZu+xEu3habffCa0AOIVW8XIgfpCrwIpblLJQgtC5fM8CAPOFG9x5Iv9oisLywo
         dbtltCnOLKNUoSbwLP49CoUAYQmhkA6N6jXHLZEVA3azaMTRBqs2ocNbcamuZZAQBPS6
         C1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XL4Y3pMAvwZFGKqhPgxYOiacsm98Hdd7XMEVb4fWBm4=;
        b=0GvzV3sL6J3cS02Amx3Dhov2QygB8xVqnynESoPJjiEfCXsot7uqD3FoMvM7qI0P0L
         C9hDHNUJauT6USIu2NkX8mWn/qAokvb8lmttoW/iOovzDYOyLiSwbGU3CEXIXCWzYBJh
         1qnU9zja+5ytTbNozRm2N+ueKoGj9OrwSE7ZWhyMy5KSe3hBAQkkj5HvdvYkKzM3RkAo
         bQJHU1dMbKWbToFLnAROrRdQmlpGSfkfVPpjL0BSTbN1EVfcPuhDcniM3T4SRrh8B5p1
         jfn2HLhJklfRZxpKyPz3ligxFhv6ZHWbELVhwTeBPbeHMbQXlH+si07Moqig8wZ4ZbbV
         aaMA==
X-Gm-Message-State: AOAM532aToWZCIoqNBfg7R4nYxREbDwdRsnnI0PaexJKUrLR6e4zsQBS
	UIOVAd8+vzbMJcZvqm4mCcdazJfxu2VZZg==
X-Google-Smtp-Source: 
 ABdhPJyDX3PCDodbpU/DRQgxe1CUMzAKTNZfpbkosQp4az85BLE6OU8S4x3tiBD1vS2mC1BaJPVfiw==
X-Received: by 2002:a17:902:f649:b0:156:1609:79e9 with SMTP id
 m9-20020a170902f64900b00156160979e9mr4020094plg.69.1651847554332;
        Fri, 06 May 2022 07:32:34 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/9] packagegroup-core-security: remove pkgs
Date: Fri,  6 May 2022 07:32:23 -0700
Message-Id: <20220506143229.2141000-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506143229.2141000-1-akuster808@gmail.com>
References: <20220506143229.2141000-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57014

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bb       | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index fefc66d..87c5b7a 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -10,7 +10,6 @@ PACKAGES = "\
     packagegroup-security-utils \
     packagegroup-security-scanners \
     packagegroup-security-audit \
-    packagegroup-security-hardening \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
     ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-meta-security-ptest-packages", "", d)} \
@@ -20,7 +19,6 @@ RDEPENDS:packagegroup-core-security = "\
     packagegroup-security-utils \
     packagegroup-security-scanners \
     packagegroup-security-audit \
-    packagegroup-security-hardening \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
     ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-meta-security-ptest-packages", "", d)} \
@@ -35,8 +33,6 @@ RDEPENDS:packagegroup-security-utils = "\
     keyutils \
     nmap \
     pinentry \
-    python3-privacyidea \
-    python3-fail2ban \
     softhsm \
     sshguard \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
@@ -47,8 +43,6 @@ RDEPENDS:packagegroup-security-utils = "\
 SUMMARY:packagegroup-security-scanners = "Security scanners"
 RDEPENDS:packagegroup-security-scanners = "\
     isic \
-    nikto \
-    checksecurity \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-daemon clamav-freshclam",d)} \
     "
 RDEPENDS:packagegroup-security-scanners:remove:libc-musl = "clamav clamav-daemon clamav-freshclam"
@@ -59,11 +53,6 @@ RDEPENDS:packagegroup-security-audit = " \
     redhat-security \
     "
 
-SUMMARY:packagegroup-security-hardening = "Security Hardening tools"
-RDEPENDS:packagegroup-security-hardening = " \
-    bastille \
-    "
-
 SUMMARY:packagegroup-security-ids = "Security Intrusion Detection systems"
 RDEPENDS:packagegroup-security-ids = " \
     samhain-standalone \
@@ -92,7 +81,6 @@ RDEPENDS:packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
     ${@bb.utils.contains("BBLAYERS", "meta-rust", "suricata-ptest","", d)} \
-    python3-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
 "
 
-- 
2.25.1


