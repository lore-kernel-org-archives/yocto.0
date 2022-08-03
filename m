Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B7F7C19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 15:02:24 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web10.9665.1659538943526000571
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 08:02:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dOmkzGrv;
 spf=pass (domain: gmail.com, ip: 209.85.214.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id w14so3588245plp.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 08:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9P7DliL0oh1Dcdt+VEocX1HQkdAG/tToMnQbZEgUMqw=;
        b=dOmkzGrvTuphLoDoGJ34PGxVIf/ataRWRg66UIzN6R4iIOflfBXT+QDfjwoFh5iUZR
         YcLFM1mu6PoPSvdSpA1FCt0DBo53jOJGhAjIHRhENHStH6plmvgt/sXTgLqtWGsnGTRq
         R+7qfEBbaeY7qmv6BIDK/cav8yEgZAF9FQ7RpxJAeE9hol4TggUxYxABmfUdyBf4EWwD
         xGQ213U7dLNNuiVpSLC6bodUqkvx9zjTychkpUk5+tOT2Kblkpqmvj6hyvVtLtHlXLb6
         CsFWeC7wrsc/FINjNrg1ZYCVB1idX176gNEkgY5K7emvbgVnNfLtky0HfSJYHYFXEHcv
         MI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9P7DliL0oh1Dcdt+VEocX1HQkdAG/tToMnQbZEgUMqw=;
        b=QpmCQt5T4JA6JKNP8j+cq+DmIQY6Y3a6dycpnNmW0Om/6vm4SkHwqx8RnFXIGz+yX1
         57tb+aDhndVHrojfgndHcFMZY1OfMR/ALn6jk1IyYXZ9EyyhzP+PU7nSif6eavOdlelb
         2OTzV4vPukL6nRx8rY1GlS2FqMQXAGnDLf3khVgeD/69Ox+da/yPZrjYnYSudeLFiSGk
         rKv62otuWs6nGRGVStwH2k3iveaqEGLHTXimQTaEQaPuZPEAO+h/KPKLw6GlpP4u3pYm
         FVDC76k/VYDsdhUWJKToKv5RxvPl63v4pGs4J3tZa/TK4GYso3mmQdo/QMigDtBSzxvi
         FwXA==
X-Gm-Message-State: ACgBeo2+XyKQaTyoB3oHr3GhLE725xRgMl+pkJS8L/Meq3xdnO9t1PBV
	mGDGFkm7ecpZ56oQ9o3M9yRFxH50Dvg=
X-Google-Smtp-Source: 
 AA6agR5Ea5Ah5WJB/cBtcuyuZ3hmIgv1ijXdeZhK93HDJrJtu3yqv+zQYylEjv81RXxf6Yj1afv7Ag==
X-Received: by 2002:a17:90b:3841:b0:1f2:534d:a292 with SMTP id
 nl1-20020a17090b384100b001f2534da292mr5233702pjb.174.1659538942219;
        Wed, 03 Aug 2022 08:02:22 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 b8-20020a17090a12c800b001f506009036sm1712720pjg.49.2022.08.03.08.02.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 08:02:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] python3-privacyidea: update to 3.7.3
Date: Wed,  3 Aug 2022 08:00:18 -0700
Message-Id: <20220803150020.1321926-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 15:02:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57767

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...ython3-privacyidea_3.7.2.bb => python3-privacyidea_3.7.3.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename dynamic-layers/meta-python/recipes-security/mfa/{python3-privacyidea_3.7.2.bb => python3-privacyidea_3.7.3.bb} (96%)

diff --git a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.2.bb b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.3.bb
similarity index 96%
rename from dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.2.bb
rename to dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.3.bb
index c1e3108..97fa8f9 100644
--- a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.7.3.bb
@@ -6,7 +6,7 @@ LICENSE = "AGPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
 
 PYPI_PACKAGE = "privacyIDEA"
-SRC_URI[sha256sum] = "17cbfdf0212eec94ffb10b3046093cf25af71b41413b6361668685333c5a35a7"
+SRC_URI[sha256sum] = "7b5725d1af004fe3f68d16c2b14be5a3d61c4d265d18cb7d50a9013da0df42d2"
 
 inherit pypi setuptools3
 
-- 
2.25.1


