Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C9D1CCA473
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:49 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.9210.1655559879179826678
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VDe2Xc23;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 h34-20020a17090a29a500b001eb01527d9eso5578827pjd.3
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L6X42SzSHw6m9Hxe4nm13p4gQCU7cosoeaZRP/yhNd4=;
        b=VDe2Xc23P4mF6qtXPMiiEEau1vznNQ5aEuKi5YWU+9JCrlmBP6fsKbJdc2P32A1vyF
         M7o24mryx/LlZR4Jaimtz5UCa9avwrQWXNVFkMyeUBfK1K6mT8av7NAXDOnG84mHZIQ6
         3T+BKr8nL1pmoNoOD8GdmIoERwLibDLgoTUKSYM+QCobbME4znC93YZ1s0xeFitO5eia
         uxuuEe578X05CCh5+NTzs3GzM2z6eMG9Ax4JpFNowL9Pf1oWHAqd45H077bZSOTp09zv
         9ZKJdDAu+FYcVdHwojphlDTCBfyWpvQSufhk6ZnTu2QxlpOZnkqVCbiegRyaDbdBGyPL
         Lj3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L6X42SzSHw6m9Hxe4nm13p4gQCU7cosoeaZRP/yhNd4=;
        b=1ysNwumXjvqeu8eIXT61J4wWAWhJ+uAWO7fpvbjQwA76VhG/hKZif/zcSBp9/HWA/j
         csewxkLwvq9xvPqEBKPAQhFMs1kEM/VDMrz4n6KO0mzf9YtFZryvjgcLapWV9ba8qUwT
         PWV8O0/TcAPOQgRA5CBfri69vYIsnN5OiVFXbNYyMc6yRJfulnhKDOsz9gXVPkRpf31k
         LnB41ErftceUrzfBVc6K1yWOvCI+flTK72pDoelV83PNPprZLBcwzx8PwaWG3JCUEk2g
         C6K6gzBePs76mhr1qifM5pI5PqsAIsMchJNed5x7GInwBMdYK8B9bF3Hq+r9rRUvd8Cx
         6SgA==
X-Gm-Message-State: AJIora/VMexf6DfliaYc1z5YBa0SBvaJJczGgSZkDOGUX9f6m0CxhJDl
	Lbd0VTYsP9jxG8cU/CBWpNRyRNlnCzk=
X-Google-Smtp-Source: 
 AGRyM1vgu9u7TOYPyLc7eqoFcbovekYh3OcKjvYxLciU99BlWpI3hkcwUj2UT2HSlKDpfQz0pSjiBA==
X-Received: by 2002:a17:902:8bc5:b0:168:cca6:1b29 with SMTP id
 r5-20020a1709028bc500b00168cca61b29mr14217648plo.129.1655559877999;
        Sat, 18 Jun 2022 06:44:37 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/9] security-test-image: auto include layers
 if present.
Date: Sat, 18 Jun 2022 06:44:27 -0700
Message-Id: <20220618134435.2370878-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57343

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


