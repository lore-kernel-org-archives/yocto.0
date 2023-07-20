Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA50EB64DA
	for <webhook@archiver.kernel.org>; Thu, 20 Jul 2023 11:28:45 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.10674.1689852519089901903
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jul 2023 04:28:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=K1S3QUBW;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5701810884aso8423917b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 04:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689852518; x=1690457318;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=fZWkXmgHK1UKj/p7e7Jpk/Yh4la6FUx/h6FMfkjLbJo=;
        b=K1S3QUBW7PxY7UHefOJgv031sUc2vpB0/VcfVZHozWcEiaMvaqSVc163TGiUxmbv6o
         mn6RSynPP3bCV5GrrOOq6+GZy+utme/z2VobVzgrkc+tmeINL7eMRXCWPDp5B0XMJtsd
         dG+sMUH/YERoZcaOF3xghQhppxqRiEkWaUQhyyBvLdZQNLQd859f8/ia6Pg6zynlWFP8
         5Q4NfICSLCCy1iXTKKevfQWuSdjQNVqB/4qckxGe1lfcgU0UTKzUNcpFHkAb4ImqF1Yh
         DsCTmVmojlPqpT8mdMb6xygfO+BpLbSJpzJ1N/Lhi3cXSHU7wvyVhJyfkojERFOBR6J1
         lVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689852518; x=1690457318;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fZWkXmgHK1UKj/p7e7Jpk/Yh4la6FUx/h6FMfkjLbJo=;
        b=YY22eJjP5k3e5gd4jS42OZUGuF5Z77gQ7QDqBW4IQbfnHk2jHzmvPPeVhjtaA2/Tda
         BLZ2O+eOG1s3u2q8MCCk5qPxUvwV2mki47dkm4S4+rLuYeQPUVh0Ayei+PEL0trvHpMC
         WK/L+SjBEv53eWWhZxY/AMCTq5tdDwbirbQa8kw//ggytB2S0lSXdoXffI1CCDm/lFUl
         odYlSmOa++vhdlbxdaaIZT9EaD8JW28hA0IR0DF13W7Ur6I6ILZk634PWhR97yWXy8ov
         yAZP0YY5EEiLjQVN1/KAMCwKQI6q0KC4FmxeTzRg0a8lZyNCJ7sTn4agr5bOzmdnO0lf
         OFHQ==
X-Gm-Message-State: ABy/qLaYoilb5TWdnRIIqLoIfCMGp4OKpzDEsOGxrnI7PNd7VVWFaOz9
	tfFsffsWmP65SuSVyZ8FCkF2hg972AQ=
X-Google-Smtp-Source: APBJJlEeU3jj5UyO7tx2EvI6oK5s/KhRFM9CIaFyqgRwZtXwJKWl5qBNfJINLOizXthGmbxDN7GLYg==
X-Received: by 2002:a81:4e48:0:b0:56d:34:893c with SMTP id c69-20020a814e48000000b0056d0034893cmr20601410ywb.4.1689852518009;
        Thu, 20 Jul 2023 04:28:38 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:893b:3f39:cb88:10b7])
        by smtp.gmail.com with ESMTPSA id n71-20020a0dcb4a000000b0057716dd93b7sm158068ywd.13.2023.07.20.04.28.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 04:28:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] meta-integrity: drop ima.cfg in favor of new k-cache
Date: Thu, 20 Jul 2023 07:28:30 -0400
Message-Id: <20230720112830.1565054-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 11:28:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60620

The upstream ima.cfg kernel-cache has been updated.
Use it instead.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux/ima.cfg        | 45 -------------------
 .../recipes-kernel/linux/linux/ima.scc        |  4 --
 .../recipes-kernel/linux/linux_ima.inc        |  6 +--
 3 files changed, 1 insertion(+), 54 deletions(-)
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.cfg
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.scc

diff --git a/meta-integrity/recipes-kernel/linux/linux/ima.cfg b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
deleted file mode 100644
index d7d80a6..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/ima.cfg
+++ /dev/null
@@ -1,45 +0,0 @@
-CONFIG_KEYS=y
-CONFIG_ASYMMETRIC_KEY_TYPE=y
-CONFIG_SYSTEM_TRUSTED_KEYRING=y
-CONFIG_SYSTEM_TRUSTED_KEYS="${IMA_EVM_ROOT_CA}"
-CONFIG_SECONDARY_TRUSTED_KEYRING=y
-CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
-CONFIG_X509_CERTIFICATE_PARSER=y
-CONFIG_PKCS8_PRIVATE_KEY_PARSER=y
-CONFIG_CRYPTO_ECDSA=y
-CONFIG_SECURITY=y
-CONFIG_SECURITYFS=y
-CONFIG_INTEGRITY=y
-CONFIG_INTEGRITY_SIGNATURE=y
-CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
-CONFIG_INTEGRITY_TRUSTED_KEYRING=y
-CONFIG_IMA=y
-CONFIG_IMA_MEASURE_PCR_IDX=10
-CONFIG_IMA_LSM_RULES=y
-# CONFIG_IMA_TEMPLATE is not set
-# CONFIG_IMA_NG_TEMPLATE is not set
-CONFIG_IMA_SIG_TEMPLATE=y
-CONFIG_IMA_DEFAULT_TEMPLATE="ima-sig"
-# CONFIG_IMA_DEFAULT_HASH_SHA1 is not set
-CONFIG_IMA_DEFAULT_HASH_SHA256=y
-# CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
-CONFIG_IMA_DEFAULT_HASH="sha256"
-CONFIG_IMA_WRITE_POLICY=y
-CONFIG_IMA_READ_POLICY=y
-CONFIG_IMA_APPRAISE=y
-CONFIG_IMA_ARCH_POLICY=y
-CONFIG_IMA_APPRAISE_BUILD_POLICY=y
-CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS=y
-# CONFIG_IMA_APPRAISE_BOOTPARAM is not set
-# CONFIG_IMA_APPRAISE_MODSIG is not set
-CONFIG_IMA_TRUSTED_KEYRING=y
-CONFIG_IMA_KEYRINGS_PERMIT_SIGNED_BY_BUILTIN_OR_SECONDARY=y
-# CONFIG_IMA_BLACKLIST_KEYRING is not set
-# CONFIG_IMA_LOAD_X509 is not set
-CONFIG_IMA_APPRAISE_SIGNED_INIT=y
-CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=y
-CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=y
-CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT=y
-# CONFIG_IMA_DISABLE_HTABLE is not set
-CONFIG_EVM=y
-# CONFIG_EVM_LOAD_X509 is not set
diff --git a/meta-integrity/recipes-kernel/linux/linux/ima.scc b/meta-integrity/recipes-kernel/linux/linux/ima.scc
deleted file mode 100644
index 6eb84b0..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/ima.scc
+++ /dev/null
@@ -1,4 +0,0 @@
-define KFEATURE_DESCRIPTION "Enable IMA"
-
-kconf non-hardware ima.cfg
-
diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
index 7016800..415476a 100644
--- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
+++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
@@ -1,8 +1,3 @@
-FILESEXTRAPATHS:append := "${THISDIR}/linux:"
-
-SRC_URI += " \
-    ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
-"
 
 do_configure:append() {
     if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '', d)}" = "yes" ] && [ -f .config ] ; then
@@ -11,5 +6,6 @@ do_configure:append() {
 }
 
 KERNEL_FEATURES:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
+KERNEL_FEATURES:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'ima', ' features/ima/ima.scc', '', d)}"
 
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
-- 
2.34.1


