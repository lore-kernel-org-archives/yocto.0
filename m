Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51317C433EF
	for <webhook@archiver.kernel.org>; Sat, 29 Jan 2022 23:49:05 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.12990.1643500140455977541
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Jan 2022 15:49:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nGDaeqPB;
 spf=pass (domain: gmail.com, ip: 209.85.210.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id e6so9513746pfc.7
        for <yocto@lists.yoctoproject.org>;
 Sat, 29 Jan 2022 15:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=bu6QPH0YQlJDBeeuKXpB5ekndHeHVIGfMFNdc1FvV3Y=;
        b=nGDaeqPBPUlJUjbZ8m/SCDdz0bjThAscUPQVhO6bKRlIGLmpM0eVBaGqc8v6UblDDX
         WQS/7yBAJ+tpCO9wSYdvb8ROjcT7PObeMlCthVGKi/Rtn9q2iTw4nmg8gKmWDcPutPGp
         /nFGRBHnIHwvDS433SsVUcvF6BMZ+EgG5hOE4AJEhuRBgtQVPxHHe5UZH61Yh+fCfdVF
         lceSzY5Z8b+oWn8DBEwgq+szpHnjwSlrc2boMD9/uKq4nM/cROc/i3gWL+0PPq+7VER+
         mnPPxl3kgYNEWUnuO3kmj6G5qwQwvfW2eD3lQ+PrVTwr4+mUqh+W9oDPVjA6HdKy7Dyv
         +Lng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bu6QPH0YQlJDBeeuKXpB5ekndHeHVIGfMFNdc1FvV3Y=;
        b=HCwbzG9S0bpA0ktfAcr1c6Myxw7zOWAA2kz8NtC2rYPFyYNgne4CXVAgbrEsYrWiYG
         0f7x4Q3rEWN4diQuoLrmjorA/43nWLSUyNuHV+Hz/j/EcJ0sZyLV9jmFH8qc9HWoDFcA
         EIcKSjE95ccqkhSzQuW1LLnX8RnR2rr+usCF2Xu/VLxKI4VbGCEkwNYuepLM2iJC4iY9
         VHtaNEtk+dSAG2v+yooOHAZlFvjWUkRiUjny+bOSwLIETaA5W9K6Yl4CniEQDnnvfr+z
         9sCtEFKHsLSL3MDPOC9bNKK+LO69HHi5iDDuORrdyj/ZUIMxjmGrK+ryylveYziJJXCA
         p3DQ==
X-Gm-Message-State: AOAM530X2Jj0r+2QIfZxBqtYKxaHwzdeY3RaCj5iGa2A29axZTruB6Ke
	2mpiv27wtjfrYvpbO/AT1SjH1PfEWXeZcw==
X-Google-Smtp-Source: 
 ABdhPJz4WSZLkt3RB5iGXTYBbdrSkM4e2pjQVbHadni5VEiKX5KKJa3UDxqIIxP+kmMze2LskgrUrw==
X-Received: by 2002:a63:5007:: with SMTP id e7mr11401458pgb.585.1643500139877;
        Sat, 29 Jan 2022 15:48:59 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:918e:fe6b:17f2:f636])
        by smtp.gmail.com with ESMTPSA id
 ml14sm6211375pjb.10.2022.01.29.15.48.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 15:48:59 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] tpm2-pkcs11_1.7.0: Drop dstat from DPENDS
Date: Sat, 29 Jan 2022 15:48:57 -0800
Message-Id: <20220129234857.4176367-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220129234857.4176367-1-akuster808@gmail.com>
References: <20220129234857.4176367-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Jan 2022 23:49:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56020

dstat was removed from meta-oe.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb
index 3a0917a..d70dbfa 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.7.0.bb
@@ -4,7 +4,7 @@ SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=0fc19f620a102768d6dbd1e7166e78ab"
 
-DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2-tools libyaml p11-kit python3-setuptools-native"
+DEPENDS = "autoconf-archive pkgconfig sqlite3 openssl libtss2-dev tpm2-tools libyaml p11-kit python3-setuptools-native"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git;branch=master;protocol=https \
            file://bootstrap_fixup.patch \
-- 
2.25.1


