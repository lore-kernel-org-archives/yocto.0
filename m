Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3D5C433EF
	for <webhook@archiver.kernel.org>; Sun, 12 Jun 2022 21:28:11 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web09.20459.1655069287767703904
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Jun 2022 14:28:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=T6LwAOcA;
 spf=pass (domain: gmail.com, ip: 209.85.216.54,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id gd1so4012483pjb.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 12 Jun 2022 14:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L6X42SzSHw6m9Hxe4nm13p4gQCU7cosoeaZRP/yhNd4=;
        b=T6LwAOcA4mFcPJY+HI5zf+73sDdSsEi1l2J/gK5RTi1NZ6khmfxV9crWLJdHnHlR2y
         oXjPZG1MWYH81/D3VQTlYsl68Cu1FuPR26pKcF2D80GYUFSYjHlPdgTKo5keZEG9oDwW
         ZEobR4Y18pBQ2Onvws/1z3mcNFde50Kv5+gh1DGEAstP/r0zLjw38TknPaxoGX6HmmPe
         JZxYh801euOK/okIG3UJ6ObQg1JvqidbXQixVudUmSREC+GILwDP1BsQxM9rBPl1GxPR
         x/Y9ttqwPfPpfuyXJbUiq21fvorWYsvD4vbespo/z5s3c8m0vq1m7aYunGbfyvhguL5L
         RLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L6X42SzSHw6m9Hxe4nm13p4gQCU7cosoeaZRP/yhNd4=;
        b=TAAIAWlu+77cOlESym3m5zi2QqWfqYQJwXNg1viHvPS/ONUazJjq8GsCKcvmFPdvdB
         HtXXc8QEmhV3ESAX2t5rF2Xv7VBNDKrSJOIU4gz2rQUhgBKabHZ1OioBL15odmtIMbNR
         aARmbDXnj6A+juYY/NSBZPMbpbZYNw53D01OZ7wTQxJU89TRd/Aw18i2JHrJvUaO81ZG
         Xq8UVGWFcoYfglBEOoCFJ58obz8HfQPtNBGNZL3Ge8/B5PC9uAAZq5aKBIdGy0X2tq1H
         wQuRWduNtuGwQavUVpXQZf1ORfE2tgGU8o72n/gD7taRanFr4vuY4SwsI10xnuv/K9it
         ySiQ==
X-Gm-Message-State: AOAM5335jEBOQMTeHZpSk4nRJVjiHpmqExa6hQQ1c9DPx/Twzv+E2oG9
	4T+NbiM+NLqjmcxj/t8bSKqd6FwuNhE=
X-Google-Smtp-Source: 
 ABdhPJxBjymrmTny8JWu3oAfs6vkqbT04POMz1fqp364980Jz3/7XadYCgPkmHkIDxBQsndc7ThnLw==
X-Received: by 2002:a17:90b:1c02:b0:1e3:4b6d:4269 with SMTP id
 oc2-20020a17090b1c0200b001e34b6d4269mr11882857pjb.57.1655069286667;
        Sun, 12 Jun 2022 14:28:06 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:848f:6fe4:fd3e:eee2])
        by smtp.gmail.com with ESMTPSA id
 x76-20020a62864f000000b0051ceaa47cbdsm3697184pfd.79.2022.06.12.14.28.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 14:28:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] security-test-image: auto include layers if
 present.
Date: Sun, 12 Jun 2022 14:28:04 -0700
Message-Id: <20220612212804.847791-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Jun 2022 21:28:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57324

This is to simplify tesing to build one image and include pkgs depending on the
layers included in the BBLAYERS.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/images/security-test-image.bb | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/recipes-core/images/security-test-image.bb b/recipes-core/images/security-test-image.bb
index 54d8978..133a7a1 100644
--- a/recipes-core/images/security-test-image.bb
+++ b/recipes-core/images/security-test-image.bb
@@ -4,7 +4,16 @@ require security-build-image.bb
 
 IMAGE_FEATURES += "ssh-server-openssh"
 
-TEST_SUITES = "ssh ping ptest apparmor clamav samhain sssd tripwire checksec smack suricata"
+IMAGE_INSTALL:append = "\
+    ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-test", "",d)} \
+    ${@bb.utils.contains("BBFILE_COLLECTIONS", "tpm-layer", "packagegroup-security-tpm","", d)} \
+    ${@bb.utils.contains("BBFILE_COLLECTIONS", "tpm-layer", "packagegroup-security-tpm2","", d)} \
+    ${@bb.utils.contains("BBFILE_COLLECTIONS", "parsec-layer", "packagegroup-security-parsec","", d)} \
+    ${@bb.utils.contains("BBFILE_COLLECTIONS", "integrity", "packagegroup-ima-evm-utils","", d)} \
+"
+
+TEST_SUITES = "ssh ping apparmor clamav samhain sssd checksec smack suricata"
+TEST_SUITES:append = " parsec tpm2 swtpm ima"
 
 INSTALL_CLAMAV_CVD = "1"
 
-- 
2.25.1


