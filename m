Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 009F9C433F5
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 14:09:15 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web10.27725.1653314945546480556
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:09:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eKjYEiXS;
 spf=pass (domain: gmail.com, ip: 209.85.210.178,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id y199so13793833pfb.9
        for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 07:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5/YawR9+g2UFLHi0iHRgy7+dhIckPW9GZPz1Ry8bUx8=;
        b=eKjYEiXSEiATj1jB/O1d+HE2sMs3OwArCMlUn2h5lOhGy9BMQN8+X77xUyrL3eBqx9
         5bo4SRCGExKmcOKBP7fn96Rhgo/0IuWoDrLxwgoKKxz9T+t+5Go5CZmIHTTne6qOavhh
         lDXZkDqWHthtwbFPpTD/z7J2iQmn15Bs0gqJDCIpM4RF+8ddO/QhiZ2Mgc3uwpNyklMr
         aS3S7Os3Boh1jyi22O7pyDj8LaNJJ9IzuQZ1lFA8Dn73ech7YPHuZW2x4gfNfUQt+byK
         2uFOEFZRA+OeeJOPArOY2U9mc1h10QWO+BDjAhT0I+OmSaqHnUJs52UExysljYPFdI9h
         oD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5/YawR9+g2UFLHi0iHRgy7+dhIckPW9GZPz1Ry8bUx8=;
        b=kDc7lIzfJyLw4UBtIAqVjRTkiLVd/PrhiR73jDNavvwoQDmqZV70j6JXLDZHp1PNsC
         DgOzKBK346tZtyava4X04VGqo9u51YQn7Drx6KHACXBDqmlp4MfntQELQRY7wF/l/Th0
         hqTZ2bCqwyvf2ubA1sMVKU7rEZOJFDmtEyuKqZHnUlUrY3BxTorJsYtcU7OwRyqk79N+
         W8g/rUUFNt2UMB5U0u1/fHwhARDsSOIpEyjTaulUo5XdjDx5FWHd/xWiI8y3v1fp4AoR
         XlO4JqpqX1/9thRqkQk8j77LZmP800VAyxRS4Dv2wF5yvc5vORANK2u7V65jMtnaGc9i
         80FQ==
X-Gm-Message-State: AOAM533uxpzx629TeZcqG8KxuxmNjWGVRBKxzEVfJNtfwPsHM8pFo0SF
	MS03uL9kKneAeEnmknkETI5GEke63BsHew==
X-Google-Smtp-Source: 
 ABdhPJzqFg3+G7jg3fWuEOdGdPkXsZMzVuTkoEgnQERyTJmMLudQZlN/aIoqupRnNXVCnpqjCaxevg==
X-Received: by 2002:a05:6a00:1acb:b0:518:99c4:aa2e with SMTP id
 f11-20020a056a001acb00b0051899c4aa2emr6327096pfv.25.1653314944782;
        Mon, 23 May 2022 07:09:04 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:22e0:d3fa:16:d603])
        by smtp.gmail.com with ESMTPSA id
 6-20020a17090a0f8600b001cb6527ca39sm7466846pjz.0.2022.05.23.07.09.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 07:09:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][v2][PATCH 2/3] meta-parsec: add build image.
Date: Mon, 23 May 2022 07:09:00 -0700
Message-Id: <20220523140901.35347-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220523140901.35347-1-akuster808@gmail.com>
References: <20220523140901.35347-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 14:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57159

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
v2]
Use packagegroup-security-tpm2
add swtpm
---
 .../images/security-parsec-image.bb             | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 meta-parsec/recipes-core/images/security-parsec-image.bb

diff --git a/meta-parsec/recipes-core/images/security-parsec-image.bb b/meta-parsec/recipes-core/images/security-parsec-image.bb
new file mode 100644
index 0000000..2ddc543
--- /dev/null
+++ b/meta-parsec/recipes-core/images/security-parsec-image.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "A small image for building meta-parsec packages"
+
+inherit core-image
+
+IMAGE_FEATURES += "ssh-server-openssh"
+
+IMAGE_INSTALL = "\
+    packagegroup-base \
+    packagegroup-core-boot \
+    packagegroup-security-tpm2 \
+    packagegroup-security-parsec \
+    swtpm \
+    os-release" 
+
+export IMAGE_BASENAME = "security-parsec-image"
+
+IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
-- 
2.25.1


