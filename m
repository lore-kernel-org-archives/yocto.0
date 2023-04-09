Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB356C77B6E
	for <webhook@archiver.kernel.org>; Sun,  9 Apr 2023 17:40:14 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.25152.1681062007650755017
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Apr 2023 10:40:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FIC3R4+y;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: akuster808@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1842f69fe1fso3656175fac.11
        for <yocto@lists.yoctoproject.org>; Sun, 09 Apr 2023 10:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681062007; x=1683654007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=dUjHDCrhmd+0Z3UH8uZ+rtggOhm355dJRQxsfBGaaTk=;
        b=FIC3R4+yyuOupVL900xN8+69ImuzbRfeBvBGSdnXdYWwokJpSfggCOK02F8b6ApV2x
         nO0+Tg+6UDO8aAw0lpUGzLImNq9FBBhU75MzI+Lh1lKXmhNhi8Wb+bylS73HdweKFiGF
         yApaCMmU62UMZUjpeIc9A5C620lgD+ffpXUetCx+/nH3u0xiwa/JTMjkqulV654yaSi1
         dQz+Xt3+yavfdo4ZqbJ6ue+CZpsU6mK7mdpJn06Jm2x1+OP3Oir6tESXsEoEjKI2Sqaz
         ADorhjmTOaVhKoU7mTm7occrGnmWBMyPsCEeorS1dfOk+BEIJL4f2Dya9sGG5RTvnwZF
         HjPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681062007; x=1683654007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dUjHDCrhmd+0Z3UH8uZ+rtggOhm355dJRQxsfBGaaTk=;
        b=bI2MHtWxw4eBPtqtjpDyK9jjlzt5QpgtuM/oB+qTKqlLZ9TYc+GP8CFcedIQCWKaYI
         0gR+HWHAwPNA06YCBUgnc+NNobPnI1VMmKwfRwOEqTlnzP7QbP3w5sNrj/RkWB7m6aih
         JTr4pk5HWf7c3cR5XR+zATIDsnUR3gCjL6ucE3AASAi+i/+V8DX7dOn+OYNCR/ZA6aeR
         4UdS1Vl4oJB1HA5s4Pj7SyIExVMN25wHEFXJRh0wY19XMwjKMc//X8wwtzJHOY1TXacr
         o4vKithx9O1oYdwWmq3ZsF5/oSzh2vEZMXghmrJwNa/QPDjptZGpxsvoXoCUU96ScMA5
         HRHw==
X-Gm-Message-State: AAQBX9eFQ4q1TpQyv7VnOCgGbRl+8zM7WCmzDWMoV43YgaoKL4H9fWZU
	FZS3tcoODkQcrAqFp5yxchpH8lvZ7tt3dg==
X-Google-Smtp-Source: AKy350YzZVq4zHZf3tvFkoc00arFx9CuYeTYwk9wtOuvmEgK14lK060Y8mErPOTPzNY0AZF34LaJvw==
X-Received: by 2002:a05:6870:2398:b0:17f:e768:60fb with SMTP id e24-20020a056870239800b0017fe76860fbmr5365721oap.54.1681062006657;
        Sun, 09 Apr 2023 10:40:06 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:47d6:87b6:cfbc:dcc5])
        by smtp.gmail.com with ESMTPSA id zp2-20020a0568718e0200b0017ae909afe8sm3313966oab.34.2023.04.09.10.40.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Apr 2023 10:40:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][v2][PATCH] parsec-service: fix SRC_URI hash
Date: Sun,  9 Apr 2023 13:40:05 -0400
Message-Id: <20230409174005.228887-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Apr 2023 17:40:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59650

Fixes:
ERROR: Missing SRC_URI checksum, please add those to the recipe:
SRC_URI[parsec-service-1.2.0.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"

Needed to S dir too.

Signed-off-by: Armin Kuster <akuster808@gmail.com>

v2]
Fix patch applying
---
 .../recipes-parsec/parsec-service/parsec-service_1.2.0.bb     | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
index 5f4ad5b..1d38dc5 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0.bb
@@ -12,7 +12,9 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
             file://systemd.patch \
             file://parsec-tmpfiles.conf \
 "
-SRC_URI[parsec-service.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
+SRC_URI[parsec-service-1.2.0.sha256sum] = "f58e7ba859c22cc1904dc8298b1a7d94ee1ba3b4d4808f28e4cc0c96ddb149c9"
+
+S = "${CARGO_VENDORING_DIRECTORY}/${BP}"
 
 PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
 have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
-- 
2.25.1


