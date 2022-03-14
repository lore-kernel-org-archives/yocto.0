Return-Path: <ralph.siemsen@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529ADC433EF
	for <webhook@archiver.kernel.org>; Mon, 14 Mar 2022 19:44:28 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web12.1192.1647287067629921172
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 12:44:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=OfpaNtrn;
 spf=pass (domain: linaro.org, ip: 209.85.160.171,
 mailfrom: ralph.siemsen@linaro.org)
Received: by mail-qt1-f171.google.com with SMTP id a14so14096978qtx.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 12:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DPdaE/q2dTlrKlZEW7F3IL74qGSXwRbJZQHAKj8bEUk=;
        b=OfpaNtrn7JnZsSFczSetdKnCFj0IW6RVdd0IZlILFdMQWm5OtOi8SIrqks2xa1Hu8z
         QEs33/7fPq4dbcUuHXHOGfnDpZ6EbLWp33JlsdEi4Vwk9Kmy609KPItoKV83Dqr2bhwG
         6zXwskWuStD7s9ycgXAk194GZShWWeZgD3O3e/36rAwxOEBnj/BgnBJzj/F78eIsYLvo
         AncP8pp1mXMTsN5DOFKbUbfeuX/v5z/zDrLHh3OAfmyl5v4tskXYAM3hs0qjDBcZvn2h
         UPuDVxCfqELilVpI85/kIgQklJsJgozusnD9Q6oU3vSDdSvGxAv1XGZYnD5/Qypu5X51
         Ce+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DPdaE/q2dTlrKlZEW7F3IL74qGSXwRbJZQHAKj8bEUk=;
        b=tCgKcFjr9G2MV5b1Guzt9Sqm3NrQ7kmsi6/hiyoBn9H0eJv7oV2RBtAmzozAOTx8HP
         tby+ypq6E59im/FmBzUUIcFW+Z0ep9zu6DohoY02ipGKtYtEmfwJWpy9TJeUwGLoby8n
         UApSNxw9OdTB5OoN5XaM4gqMqs5yX5y9PxVNQGk9DBayMXwsVqjzTU1La86sJsto2R5M
         Hnt8GY8ALB0vn58pX+JnBH5zXrNuwm5s3oAaBmtCxyzFEKYgNRNN2RLO40CS5XwitafY
         xhMQHA+keUzT8kjnubw9moaqdHteA+jBpNaefQBAnxDidrqq9ly4sboMApHWt/Hoi41d
         X8GA==
X-Gm-Message-State: AOAM531QbzTKu9bjwUGchhvqLF4YxBQ/eRbIvY7ITeRqQTNXEoNBHXhU
	zWQtXJemLd/DI2eRuJDi5CvQUNjN9w/Yrw==
X-Google-Smtp-Source: 
 ABdhPJyr8+oIIIPjJyQRvZwp8QodbZOTOAhbKbGhAE9NBMgRtT8bJ+b6yEqOlTrnyB/Bnx91b8oqUQ==
X-Received: by 2002:ac8:59c7:0:b0:2e1:a0d1:fc7b with SMTP id
 f7-20020ac859c7000000b002e1a0d1fc7bmr19941694qtf.320.1647287066659;
        Mon, 14 Mar 2022 12:44:26 -0700 (PDT)
Received: from maple.netwinder.org (rfs.netwinder.org. [206.248.184.2])
        by smtp.gmail.com with ESMTPSA id
 bm21-20020a05620a199500b0067d5e6c7bd8sm6495227qkb.56.2022.03.14.12.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 12:44:26 -0700 (PDT)
From: Ralph Siemsen <ralph.siemsen@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Ralph Siemsen <ralph.siemsen@linaro.org>
Subject: [meta-security][dunfell][PATCH] tpm2-tools: backport fix for
 CVE-2021-3565
Date: Mon, 14 Mar 2022 15:44:15 -0400
Message-Id: <20220314194415.3515050-1-ralph.siemsen@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Mar 2022 19:44:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56428

tpm2_import: fix fixed AES key CVE-2021-3565

Upstream commit (with offset adjusted)
https://github.com/tpm2-software/tpm2-tools/commit/c069e4f179d5e6653a84fb236816c375dca82515

Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
---
Discussion items:

1) Perhaps dunfell should update 4.1.1 -> 4.1.3  ?
   There appear to be only two small fixes
   https://github.com/tpm2-software/tpm2-tools/blob/4.1.X/CHANGELOG.md
   https://github.com/tpm2-software/tpm2-tools/commits/4.1.X
   We still need this backport regardless.

2) hardknott and honister are on 5.0
   According to CVE configuration data, this version is not affected.
   But looking at the branch history suggests otherwise.
   The patch applies cleanly on top of 5.0.
   Should we backport? Or never mind as these branches are almost EOL?

3) master/kirkstone is on 5.2 which includes the fix already,
   no action needed for this one.

 ...port-fix-fixed-AES-key-CVE-2021-3565.patch | 43 +++++++++++++++++++
 .../tpm2-tools/tpm2-tools_4.1.1.bb            |  3 ++
 2 files changed, 46 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
new file mode 100644
index 0000000..4fceb2e
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
@@ -0,0 +1,43 @@
+From 784be35c52a7083b9535bad2fcca416ff9cfd26b Mon Sep 17 00:00:00 2001
+From: William Roberts <william.c.roberts@intel.com>
+Date: Fri, 21 May 2021 12:22:31 -0500
+Subject: [PATCH] tpm2_import: fix fixed AES key CVE-2021-3565
+
+tpm2_import used a fixed AES key for the inner wrapper, which means that
+a MITM attack would be able to unwrap the imported key. Even the
+use of an encrypted session will not prevent this. The TPM only
+encrypts the first parameter which is the fixed symmetric key.
+
+To fix this, ensure the key size is 16 bytes or bigger and use
+OpenSSL to generate a secure random AES key.
+
+Fixes: #2738
+
+Signed-off-by: William Roberts <william.c.roberts@intel.com>
+---
+ tools/tpm2_import.c | 12 +++++++++++-
+ 1 file changed, 11 insertions(+), 1 deletion(-)
+
+diff --git a/tools/tpm2_import.c b/tools/tpm2_import.c
+index 6404cac..acd8ac8 100644
+--- a/tools/tpm2_import.c
++++ b/tools/tpm2_import.c
+@@ -146,7 +146,17 @@ static tool_rc key_import(ESYS_CONTEXT *ectx, TPM2B_PUBLIC *parent_pub,
+     TPM2B_DATA enc_sensitive_key = {
+         .size = parent_pub->publicArea.parameters.rsaDetail.symmetric.keyBits.sym / 8
+     };
+-    memset(enc_sensitive_key.buffer, 0xFF, enc_sensitive_key.size);
++
++    if(enc_sensitive_key.size < 16) {
++        LOG_ERR("Calculated wrapping keysize is less than 16 bytes, got: %u", enc_sensitive_key.size);
++        return tool_rc_general_error;
++    }
++
++    int ossl_rc = RAND_bytes(enc_sensitive_key.buffer, enc_sensitive_key.size);
++    if (ossl_rc != 1) {
++        LOG_ERR("RAND_bytes failed: %s", ERR_error_string(ERR_get_error(), NULL));
++        return tool_rc_general_error;
++    }
+ 
+     /*
+      * Calculate the object name.
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
index e90dcfe..f013fa1 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
@@ -6,7 +6,10 @@ SECTION = "tpm"
 
 DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
 
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
+SRC_URI += "file://0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch"
 
 SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
 SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
-- 
2.25.1


