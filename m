Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2392C7EE25
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:57:24 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.41606.1683658641342586877
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:57:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=a7RD7JY4;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-3f41dceb9d1so37432305e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683658639; x=1686250639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mhYCAm3DexfAA1RMQLBvyKiiCrW3ntGFDbxs1CepYaM=;
        b=a7RD7JY4fa5KhejU4xofIKMAkGvbzhusk6I5PIMq+ZPJhJg3Dk89GuwnRVn7WKbz+c
         ct1WG1w8fbqKXksheAnFTks3/05CVAu7U4/9KgBgY8xOK9sQVpXdxlkAyLB5kge14EKP
         OH0aVzdDAhFfnjPYm7gk2lPxC3Xo8+xtHYFE3iXFMzIbYH5S0CL5aqwJlYA7+PMLcHBF
         M05atzvj++ZG/V9JciXgtojoC2TWQCAF6NZor7PjVOyVJU3JUJwBVq+6R5dd/1jA+T5V
         t62llj4ChVrEZkeLUzzMAvzAGLBBkovTHvVTzAlPWt6KmB1aVQp/hRqOsChSvdXpXSSE
         wQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683658639; x=1686250639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mhYCAm3DexfAA1RMQLBvyKiiCrW3ntGFDbxs1CepYaM=;
        b=dS+QnvQd1cYKzLFfAlTbAzaDTvILAyT1smUPmbyGp34QmJSRniWmlTBRn7Z8DN98g3
         TUfq1Jb+YB7Nxs54QohkoOhkdipiORRytEsmi1bq7Q8YUZLROge31OF4Z+3JrJbeNy5W
         JRGQ3oL+12/gj8CyEevfufF8qrUWs04l8QtrC/51ToNAH2QIih3jGxG+xRQj0xJlS1fe
         7t4+WWeh70/GZjtpeZk6mR0SLb+jjLKG0+z3H5tPxnAjZRrfWmCYX5dkQXUBacEZTfFa
         x8hFh9v3Bz6N4IOXp5RkRyLWhbE8i6rRyISTxj4lCSx/X5rp2mV8pW2PANggZgpK9ETk
         TTeQ==
X-Gm-Message-State: AC+VfDxpZE7nzA2IOxRATtH/EKo5LZ0IzPFWACiRD+VCBIr6AVpftMgs
	39oHEVZYUsYxhLeL3pdq8TbUQy8QMQnQwXhj
X-Google-Smtp-Source: ACHHUZ4SXDGh0nD/mZGUAwKScG3ZiW4nIa5BGwycKlksrXd6SmGtu136NlgCiZicVxXR3fGwHdcEKQ==
X-Received: by 2002:a7b:cd09:0:b0:3f1:80a7:bfb2 with SMTP id f9-20020a7bcd09000000b003f180a7bfb2mr10091465wmj.32.1683658639496;
        Tue, 09 May 2023 11:57:19 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe3d1000000b00301a351a8d6sm15248310wrm.84.2023.05.09.11.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:57:19 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: stefanb@linux.ibm.com,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 5/8] Revert "ima: Rename IMA_EVM_POLICY_SYSTEMD to IMA_EVM_POLICY"
Date: Tue,  9 May 2023 18:56:28 +0000
Message-Id: <20230509185631.3182570-5-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230509185631.3182570-1-jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59950

This reverts commit 292b49342cb47da59525a44227598cf136311e1b.

The full patchset are overriding the do_configure task and also added a kernel patch
on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
So the patch fails in some recipes and also do_configure task doesn't make sense.
This breaks many recipes like linux-firmware and maybe others.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-integrity/README.md                      | 2 +-
 meta-integrity/classes/ima-evm-rootfs.bbclass | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 816b40d..eae1c57 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -187,7 +187,7 @@ IMA policy loading became broken in systemd 2.18. The modified systemd
 changes. To activate policy loading via systemd, place a policy file
 in `/etc/ima/ima-policy`, for example with:
 
-    IMA_EVM_POLICY = "${INTEGRITY_BASE}/data/ima_policy_simple"
+    IMA_EVM_POLICY_SYSTEMD = "${INTEGRITY_BASE}/data/ima_policy_simple"
 
 To check that measuring works, look at `/sys/kernel/security/ima/ascii_runtime_measurements`
 
diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index 6902d69..3cb0d07 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -69,10 +69,10 @@ ima_evm_sign_rootfs () {
     find ${IMA_EVM_ROOTFS_HASHED} | xargs -d "\n" --no-run-if-empty --verbose evmctl ima_hash
 
     # Optionally install custom policy for loading by systemd.
-    if [ "${IMA_EVM_POLICY}" ]; then
+    if [ "${IMA_EVM_POLICY_SYSTEMD}" ]; then
         install -d ./${sysconfdir}/ima
         rm -f ./${sysconfdir}/ima/ima-policy
-        install "${IMA_EVM_POLICY}" ./${sysconfdir}/ima/ima-policy
+        install "${IMA_EVM_POLICY_SYSTEMD}" ./${sysconfdir}/ima/ima-policy
     fi
 }
 
-- 
2.34.1


