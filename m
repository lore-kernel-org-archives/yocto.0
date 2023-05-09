Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E32C7EE23
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:57:24 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.41727.1683658639732073950
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:57:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=T9JKZl2N;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-3f41dceb9d1so37432005e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683658638; x=1686250638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZPfuueeQjltOrGx5cz9ieHeqrfdTUxpxOPuvO86POjY=;
        b=T9JKZl2NPJLWAryoYNvSrqlOYiV4PgHMMitjpf2n2CZFOSrvCxK6n+hKl8RrdNuhlu
         528YJfd8Syx/yGXi0vqn+oFlRSwXEEKAADu788DYlOD5p0ZKVNUIJTdxtQeyLSGOoNjk
         xmGJItBd7QRgURACaizEbD4MwMzD/Ithjmng8RHYlJ1isXAIRNi6ifPKoFQfSvzgeTLQ
         aIAqopjbDlWPHw5f1vNvLa5JuV0enHe0dTH8owkiWpghgLdJINYKkjwXkpOAiASLQQMe
         +JI9AAiiCdMhL2WcNcA6g/PLZVpUPTQ5petUqo9oedlszH+i09b8XOW5XHd8PzWe6SqL
         upmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683658638; x=1686250638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZPfuueeQjltOrGx5cz9ieHeqrfdTUxpxOPuvO86POjY=;
        b=YqPngJLobv6pIBtep19h5Al1W7jilpDNRRTIRoJL8F1LE9bf+7QCcP2QGChILGXmCK
         f1ME4cb7jXo1kCERrTE0SP5iah69RcH5O/+dlqeB+1GCrtaqS//BJpetUk2EWFUqYKPw
         bdZEEogjn9dGa8NxxygHPhsWtTQVbxzQL2BC2nOIq7NPloPMrcTKbJ1tVVBXC5dzmZGI
         Cn3h6xNb5rSb41r5QIp3iD5/+MiK2AE8mTg+XfvT113FvWr5ICjoo4V183Mv/4JEqdBE
         ThLBa2SHc4YJFVXkNQlTwZGdP6jGbFqPAgQ6h8jZKLHmL9oZp+Fu8nAFYS74kNRQAhDb
         7jzQ==
X-Gm-Message-State: AC+VfDx/qfqiNynHuhUQ58FxZ34E1iGbRsEAbGs0tCMeWkHqdvywAgKi
	a8zxhttbudhPLPDFco296pOS2GISrWyQAuue
X-Google-Smtp-Source: ACHHUZ4/7Gnx+vrTRGOem+axrDl8UUV+MXMaOUzpnZsGtCHSTKSLUEFwVD3K9kFHnLAUnPrMCG0plA==
X-Received: by 2002:a5d:6e0c:0:b0:2fd:1a81:6b0e with SMTP id h12-20020a5d6e0c000000b002fd1a816b0emr10619267wrz.33.1683658638046;
        Tue, 09 May 2023 11:57:18 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe3d1000000b00301a351a8d6sm15248310wrm.84.2023.05.09.11.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:57:17 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: stefanb@linux.ibm.com,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 3/8] Revert "integrity: Update the README for IMA support"
Date: Tue,  9 May 2023 18:56:26 +0000
Message-Id: <20230509185631.3182570-3-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230509185631.3182570-1-jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59948

This reverts commit b9abf0e09bfea8f08cc7f2d68998f014abba5b3b.

The full patchset are overriding the do_configure task and also added a kernel patch
on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
So the patch fails in some recipes and also do_configure task doesn't make sense.
This breaks many recipes like linux-firmware and maybe others.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-integrity/README.md | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 1a37280..816b40d 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -76,7 +76,7 @@ other layers needed. e.g.:
 
 It has some dependencies on a suitable BSP; in particular the kernel
 must have a recent enough IMA/EVM subsystem. The layer was tested with
-Linux 6.1 and uses some features (like loading X509 certificates
+Linux 3.19 and uses some features (like loading X509 certificates
 directly from the kernel) which were added in that release. Your
 mileage may vary with older kernels.
 
@@ -89,17 +89,10 @@ Adding the layer only enables IMA (see below regarding EVM) during
 compilation of the Linux kernel. To also activate it when building
 the image, enable image signing in the local.conf like this:
 
-    DISTRO_FEATURES:append = " integrity ima"
-
     IMAGE_CLASSES += "ima-evm-rootfs"
-
     IMA_EVM_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
     IMA_EVM_PRIVKEY = "${IMA_EVM_KEY_DIR}/privkey_ima.pem"
     IMA_EVM_X509 = "${IMA_EVM_KEY_DIR}/x509_ima.der"
-    IMA_EVM_ROOT_CA = "${IMA_EVM_KEY_DIR}/ima-local-ca.pem"
-
-    # The following policy enforces IMA & EVM signatures
-    IMA_EVM_POLICY = "${INTEGRITY_BASE}/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all"
 
 This uses the default keys provided in the "data" directory of the layer.
 Because everyone has access to these private keys, such an image
@@ -120,7 +113,10 @@ for that are included in the layer. This is also how the
     cd $IMA_EVM_KEY_DIR
     # In that shell, create the keys. Several options exist:
 
-    # 1. Keys signed by a new CA.
+    # 1. Self-signed keys.
+    $INTEGRITY_BASE/scripts/ima-gen-self-signed.sh
+
+    # 2. Keys signed by a new CA.
     # When asked for a PEM passphrase, that will be for the root CA.
     # Signing images then will not require entering that passphrase,
     # only creating new certificates does. Most likely the default
@@ -129,11 +125,13 @@ for that are included in the layer. This is also how the
     # $INTEGRITY_BASE/scripts/ima-gen-local-ca.sh
     # $INTEGRITY_BASE/scripts/ima-gen-CA-signed.sh
 
-    # 2. Keys signed by an existing CA.
+    # 3. Keys signed by an existing CA.
     # $INTEGRITY_BASE/scripts/ima-gen-CA-signed.sh <CA.pem> <CA.priv>
     exit
 
-The ``ima-gen-local-ca.sh`` and ``ima-gen.sh`` scripts create a root CA
+When using ``ima-self-signed.sh`` as described above, self-signed keys
+are created. Alternatively, one can also use keys signed by a CA.  The
+``ima-gen-local-ca.sh`` and ``ima-gen.sh`` scripts create a root CA
 and sign the signing keys with it. The ``ima-evm-rootfs.bbclass`` then
 supports adding tha CA's public key to the kernel's system keyring by
 compiling it directly into the kernel. Because it is unknown whether
-- 
2.34.1


