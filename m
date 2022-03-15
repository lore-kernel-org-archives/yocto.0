Return-Path: <ralph.siemsen@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7DBC433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 16:08:37 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web09.12997.1647360516000694857
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:08:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=mgD7KRMm;
 spf=pass (domain: linaro.org, ip: 209.85.222.173,
 mailfrom: ralph.siemsen@linaro.org)
Received: by mail-qk1-f173.google.com with SMTP id c7so15887800qka.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ifuF81Z/tqiftrJl0xLz0wPuHgg6GYIOo/qmuDgusf4=;
        b=mgD7KRMmR8Le410Xgj8PjafDI5CyJyvQqtJpIDKHBNJQzOI0SaEUmwo5b09u64fpEX
         GFqq1MqtgqcVcN3xoWNHh0k6mJcP2/7iWyO5L7hviKQhdqebggFmw+VxvurLdJUQ0osA
         g4fG/C0idowm3dkp/MK2ze0JYpHqp4MAhbpCVdidT04pL0P2EbCBMGcgOVDENlET2CTu
         LbSP8jtrO9uGvwMv3arceyymIOqWr9I2cBnb82/rmImhppCOJOscwcCE8J1PlJmBZZY0
         OL8rAu8WfGiyFYOJ9LzFlJFSunYaqD5So0Ni54Ni/Ni9GuCsbkH/z26dzeUN3Rbdlz7/
         R95g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ifuF81Z/tqiftrJl0xLz0wPuHgg6GYIOo/qmuDgusf4=;
        b=i1DyQaZI6abWwcgMX4DCQYhRJAaaEKjCn8YEnei4iW+UCWN5Xvg2iSWywTv/Umxdbz
         cibFdw98GxsULEM0eWaN1LTGbLf/gLGq/4RxxN4//lVTRzAm+e5fVlEhyt8rND0R0HVr
         cv6Skr8PzC0VhIlLwBxLlgJnEJJM54L53Qvd20+LjUyv8PyQTwZozPbmrns6TZtTpXgv
         MvRDrAJqSNSyQfFnx7wnL5qam2gtVjaW1c5z2cOBIdga1MpzA5PpKopBrZ6zKYSEc7OM
         QjdZkkqdSKQkQYLXAZPDPr0EB4IPnTGBsVTT+qRRUHpw4cLOq96ziRvT1k5T+tSsw/cf
         zxtg==
X-Gm-Message-State: AOAM530jgNty1qDMUnN5LH9wSwUbpphEQJ3bacaLdP04mcbXp05E+tkN
	LHu3o22tqs8rq4vU3tdeSteQAYZXWOOUCg==
X-Google-Smtp-Source: 
 ABdhPJwZMWVZuyRpI7SrdGilpw6dTL43Ur1zUZujDbC6SXvqmOelfE5jwHXM92o/ZGR5er+yip1eVg==
X-Received: by 2002:ae9:e405:0:b0:662:f88d:d47 with SMTP id
 q5-20020ae9e405000000b00662f88d0d47mr18030002qkc.292.1647360515091;
        Tue, 15 Mar 2022 09:08:35 -0700 (PDT)
Received: from maple.netwinder.org (rfs.netwinder.org. [206.248.184.2])
        by smtp.gmail.com with ESMTPSA id
 g14-20020ae9e10e000000b0067b520a01afsm9396975qkm.108.2022.03.15.09.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 09:08:34 -0700 (PDT)
From: Ralph Siemsen <ralph.siemsen@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Ralph Siemsen <ralph.siemsen@linaro.org>
Subject: [meta-security][dunfell][PATCH v2] tpm2-tools: backport fix for
 CVE-2021-3565
Date: Tue, 15 Mar 2022 12:08:27 -0400
Message-Id: <20220315160827.2399909-1-ralph.siemsen@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314194415.3515050-1-ralph.siemsen@linaro.org>
References: <20220314194415.3515050-1-ralph.siemsen@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 16:08:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56445

tpm2_import used a fixed AES key for the inner wrapper, which means that
a MITM attack would be able to unwrap the imported key. Even the
use of an encrypted session will not prevent this. The TPM only
encrypts the first parameter which is the fixed symmetric key.

To fix this, ensure the key size is 16 bytes or bigger and use
OpenSSL to generate a secure random AES key.

Upstream commit (with offset adjusted)
https://github.com/tpm2-software/tpm2-tools/commit/c069e4f179d5e6653a84fb236816c375dca82515

Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
---
Changes in v2:
- added OE metadata to patch file, hopefully correctly
- separate patch to update v4.1.1 -> 4.1.3 will follow

 ...port-fix-fixed-AES-key-CVE-2021-3565.patch | 48 +++++++++++++++++++
 .../tpm2-tools/tpm2-tools_4.1.1.bb            |  3 ++
 2 files changed, 51 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
new file mode 100644
index 0000000..3832063
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/0001-tpm2_import-fix-fixed-AES-key-CVE-2021-3565.patch
@@ -0,0 +1,48 @@
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
+
+Upstream-Status: Backport
+https://github.com/tpm2-software/tpm2-tools/commit/c069e4f179d5e6653a84fb236816c375dca82515
+CVE: CVE-2021-3565
+Signed-off-by: Ralph Siemsen <ralph.siemsen@linaro.org>
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


