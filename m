Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DD2AC433EF
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 14:09:05 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web09.28219.1653314944536731877
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:09:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SDfjJF/n;
 spf=pass (domain: gmail.com, ip: 209.85.215.170,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id q76so13777931pgq.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xdEmx1u7wgltkFZGQ3uqLPv0q5oRRBeBzIWTyMqvivY=;
        b=SDfjJF/noQQip54RgsNO2WtZF70LiIb66p4hThlsO90W/3Yomqgghyln45ToxLmyYw
         OJMQunQAWdCybcg6bKxLm1Gr2shffiXz78uo7TQN9HNKhzxXeNsfkgLlrrg1vJIyIY9P
         /oJuNGReVv028yikeo0q450DJIvMzpbLFRQwGtjWMxBXbCDS1HPFLO81W7vcMmmb/YqS
         nATNFbu1Mie5bZf7ZgV3CVV7PhGGAWnz1VLnCShf1I3B//UcZscUzKkZf5l5AdoXlkz2
         3M7WIhpX9bH4cUl2WHIWT478YIWJrpXaDWhw78R/acDMUx1nKnp+CI+HFdPoKXoT2kBt
         PibQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xdEmx1u7wgltkFZGQ3uqLPv0q5oRRBeBzIWTyMqvivY=;
        b=UFEBYslbRls3xU0IiOZfi3Jvu2sgnEAMBB1W+OCtX5yC9nKVg2lXcvvL7BcOrRsIqP
         O0AbLV92tKjPWkeZuZ+JMow4MMVo8XJHvCEU3WsIgbzGfVwqsMjcTDVFkBjJ1bp82G28
         nEcDofYHaFMzG74czfgljmG9WfdDAzbejrQuzpYcXPQyXO7exwHbN9Y/yhgvWMK34mDr
         tc5kUB/tX6LCLT8/ZHKcADq1yzlhv88yVOoqKsZhajr8JLEp7BRNwFX93zdfwPHaYADb
         MJ4E6yCDuj8PZnLuIPIN0PfnaV5jy1H56X9SwEd/u98hZPHC4HnFyWrCOxRUubC8P8EI
         6spA==
X-Gm-Message-State: AOAM530uYAL1c0FprpvgyS6ZFwwxEmPKmCe6vEA1YoqHzj/9RBGd7pJN
	0wz2r/Epv8id67NGEfO19HIGyPcMYM1VSw==
X-Google-Smtp-Source: 
 ABdhPJxfDfBXgrzMP2AzU0DMJLv6izLfzOc1lY2Eev1i5sN7maF2EJqntfCu9Mflki65uGR5ZDrSEg==
X-Received: by 2002:a63:2209:0:b0:3ab:113b:9a2b with SMTP id
 i9-20020a632209000000b003ab113b9a2bmr20661193pgi.235.1653314943577;
        Mon, 23 May 2022 07:09:03 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:22e0:d3fa:16:d603])
        by smtp.gmail.com with ESMTPSA id
 6-20020a17090a0f8600b001cb6527ca39sm7466846pjz.0.2022.05.23.07.09.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 07:09:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][v2][PATCH 1/3] meta-parsec: Add pkg grps
Date: Mon, 23 May 2022 07:08:59 -0700
Message-Id: <20220523140901.35347-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 14:09:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57158

Signed-off-by: Armin Kuster <akuster808@gmail.com>

--
V2]
Drop tpm pkgs, use the tpm2 pkg grp
---
 .../packagegroup-security-parsec.bb             | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb

diff --git a/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb b/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb
new file mode 100644
index 0000000..b6c4f59
--- /dev/null
+++ b/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "Parsec Security packagegroup for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-security-parsec \
+    "
+
+SUMMARY:packagegroup-security-parsec = "Security Parsec"
+RDEPENDS:packagegroup-security-parsec = "\
+    softhsm \
+    parsec-tool \
+    parsec-service \
+    "
-- 
2.25.1


