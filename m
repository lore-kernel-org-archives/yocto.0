Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6321EB64D8
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 13:17:05 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.11416.1686748619628932426
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 06:16:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=FOHczBkp;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-bad0c4f6f50so966613276.1
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 06:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686748618; x=1689340618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=xy0ORobhWYrOwTUtHcForcq+KADeMrEncv9mtEuPDlk=;
        b=FOHczBkpIOqcnnfJbporuwvXgXXTyYNj6GSaSX2W8S0drzFZWa7nDYsTta5HeOl/op
         NXGphhX1q4wteGXyiJlQmm6Us5PebS15AyDOsM/QmXDsoo5jVAIfRpTAoTCmcj/inSfA
         X+G13lUcaBASmsIVaeH7Aa6rBY+URwEBOeOsgiGdKRQHHVzGUr4fuuhsOlIc6OTKhujL
         8mMPbm6AZ5wyoZ8STlo0CkpXChImC0yAcigeQaCaPygClwMct82cIGM6AVSfn59F07XP
         hBklmqXs/9qnY01iSrTNDGacgrNb6pHEF7juPJLHVVWvRb67rSXtzo/wPwy2jP+EORqh
         Qayg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686748618; x=1689340618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xy0ORobhWYrOwTUtHcForcq+KADeMrEncv9mtEuPDlk=;
        b=iPdA2WzP7vTDvxuDpCM7+ekSq0Zb+WqG03kcycYUAPHbXGK7nsa4741oiNOYZomRj1
         cusoxlcxF8Giajiraa5nS9LG9SrrQtAbBO8OhjNZ7zOOUU27U+fhUhtFI/Kna/v95bK/
         eIkhjlcViMZ2g91Tws0Ypur2zYzB3OqvBPoEyVLfwhLRwmME3CmDepVvwDjVhl3re9tD
         TnQquE0uS7lA8b4YKOfl0zpQDsjoxjNBdffsrsYTbv9eHdw/Smf45YWQseQhGwEd7UEd
         G7Inyetoi8IHCUWtjDThrhMAM9vdxza9IuxCrYckC4s1dAl/RjG1PaOfedl6mFlKYeLo
         1AmQ==
X-Gm-Message-State: AC+VfDwQkLyGXCTbbQ18dM2nrgg+DnSDIvuLeKlVix4Y5I/o1mxZJJ39
	tuEJqb4XvbaiqjTllHihjwbTFNr+H14=
X-Google-Smtp-Source: ACHHUZ5RLS9aCNRc5ni5VCZeVCXrYBGYsENiPEw21FZjZQ00IPSis9UbE4oApIGY8SrgD5fkpUCk2w==
X-Received: by 2002:a25:e6c7:0:b0:ba8:4406:dd0b with SMTP id d190-20020a25e6c7000000b00ba84406dd0bmr1819146ybh.30.1686748618466;
        Wed, 14 Jun 2023 06:16:58 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:5ba9:9ead:a276:1e7c])
        by smtp.gmail.com with ESMTPSA id 193-20020a2513ca000000b00bb0a8342723sm3597931ybt.50.2023.06.14.06.16.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 06:16:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security: add compliance pkg group
Date: Wed, 14 Jun 2023 09:16:57 -0400
Message-Id: <20230614131657.283768-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 13:17:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60301

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index b009a4d..39f60f2 100644
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
+    opnscap
+    scan-security-guide \
+    "
+
 RDEPENDS:packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
-- 
2.34.1


