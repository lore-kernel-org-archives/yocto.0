Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48ADC77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:57:24 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.41725.1683658639066626278
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:57:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=XAK9eDbc;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-3f42711865eso17458715e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683658637; x=1686250637;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rr7qbPI4dzl/eZaV9WeQt1Ti+YFtczmHw9aoAPk4f7E=;
        b=XAK9eDbcmzb4cz4okfzkMt/y0o864/CePgcpy94j8YQjn8b/7pCeIojBU/GxTS0h16
         97rV7ySDwgOoCXnzCMDQzLFzC5pJAD9YJt0fkT55LN4dD1aPR32jx8ReqcGZJsHDDE/Q
         0hSRS4Uii1Ck4dIstBSKn3YbMSZv6iZzga6Kx4Iamq+jCmH1lw3xjhFjqwvNk6HaHQFp
         321nnB127hqiJ4BKVu5bHaW2zSMDeJnKjmZuYQImtjN7WTeN2wYFpb6b2iujOYm9+4/b
         8cBzsHTjlcOlbaWJnRunyMEO42iCFoSelXFXlfycB76rb6m5E5T64RQB6REHjYsAeJuO
         5PDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683658637; x=1686250637;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rr7qbPI4dzl/eZaV9WeQt1Ti+YFtczmHw9aoAPk4f7E=;
        b=R90bZbR9h2ao0KDAtF5Qac2+e+1LAQW+/Y+/NxzOmIeY9SSXT+WRgu80zZC/XePjfm
         AAnwP/l0qCBR2wvOU0MYraTK+IoAMCmTuGF81Ua4V5+W4j6ALbrv3y7AfyYJhhUsAPm/
         EfEgkPa30xMUNR8MllygxnvVQc/oT/BNiDgYBpSxtaS2B+a1jA/b/A0PAJvNFenM4q73
         K6jmUTqhu4jvt/Kqhzb1j1dEQjLdgRhy8WpozZG/NDYrzIzzd0Ig20f01HridBgzLpLm
         ldDux17u+t4c/pO3CFtIr8rt4mBTHKQKc4XLSWxQx22TJIP0JFZvCBmc6X1ZNZ+WJvzQ
         KbKg==
X-Gm-Message-State: AC+VfDzQoVbOowNCwP3aLjEHCGfMjnk2ygX8zz8RBcKQBvXnNWRIHBc2
	QnJUmKyds0zE+/m4K8j7KQBTuENZWf3Nmg==
X-Google-Smtp-Source: ACHHUZ5aKoZ1k8RjmzIMOuBuvy7RovHR4UCCEe2ed2tnwiASqNvHo+FrOJVK5jpE6Kutiljf8OVWdg==
X-Received: by 2002:a1c:7406:0:b0:3f4:2e01:83fe with SMTP id p6-20020a1c7406000000b003f42e0183femr835413wmc.40.1683658636930;
        Tue, 09 May 2023 11:57:16 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe3d1000000b00301a351a8d6sm15248310wrm.84.2023.05.09.11.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:57:16 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: stefanb@linux.ibm.com,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update ima-evm-utils to v1.5 and add a patch"
Date: Tue,  9 May 2023 18:56:24 +0000
Message-Id: <20230509185631.3182570-1-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59946

This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.

The full patchset are overriding the do_configure task and also added a kernel patch
on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
So the patch fails in some recipes and also do_configure task doesn't make sense.
This breaks many recipes like linux-firmware and maybe others.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 ...ation-using-ioctl-when-evm_portable-.patch | 35 -------------------
 ...-evm-utils_1.5.bb => ima-evm-utils_1.4.bb} |  9 ++---
 2 files changed, 2 insertions(+), 42 deletions(-)
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
 rename meta-integrity/recipes-security/ima-evm-utils/{ima-evm-utils_1.5.bb => ima-evm-utils_1.4.bb} (71%)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
deleted file mode 100644
index 3624576..0000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 00ace817c5134d9844db387cadb9517ebad43808 Mon Sep 17 00:00:00 2001
-From: Stefan Berger <stefanb@linux.ibm.com>
-Date: Tue, 18 Apr 2023 11:43:55 -0400
-Subject: [PATCH] Do not get generation using ioctl when evm_portable is true
-
-If a signatures is detected as being portable do not attempt to read the
-generation with the ioctl since in some cases this may not be supported
-by the filesystem and is also not needed for computing a portable
-signature.
-
-This avoids the current work-around of passing --generation 0 when the
-ioctl is not supported by the filesystem.
-
-Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
----
- src/evmctl.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/evmctl.c b/src/evmctl.c
-index 6d2bb67..c35a28c 100644
---- a/src/evmctl.c
-+++ b/src/evmctl.c
-@@ -376,7 +376,7 @@ static int calc_evm_hash(const char *file, unsigned char *hash)
- 	if (mode_str)
- 		st.st_mode = strtoul(mode_str, NULL, 10);
- 
--	if (!evm_immutable) {
-+	if (!evm_immutable && !evm_portable) {
- 		if (S_ISREG(st.st_mode) && !generation_str) {
- 			int fd = open(file, 0);
- 
----
-2.39.2
-
-
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
similarity index 71%
rename from meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb
rename to meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
index 8ac080c..873aeeb 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.5.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_1.4.bb
@@ -6,13 +6,8 @@ DEPENDS += "openssl attr keyutils"
 
 DEPENDS:class-native += "openssl-native keyutils-native"
 
-FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"
-
-SRC_URI = " \
-    https://github.com/mimizohar/ima-evm-utils/releases/download/v${PV}/${BP}.tar.gz \
-    file://0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch \
-"
-SRC_URI[sha256sum] = "45f1caa3ad59ec59a1d6a74ea5df38c413488cd952ab62d98cf893c15e6f246d"
+SRC_URI = "https://sourceforge.net/projects/linux-ima/files/${BPN}/${BP}.tar.gz"
+SRC_URI[sha256sum] = "fcf85b31d6292051b3679e5f17ffa7f89b6898957aad0f59aa4e9878884b27d1"
 
 inherit pkgconfig autotools features_check
 
-- 
2.34.1


