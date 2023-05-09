Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4582C77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:57:24 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.41605.1683658640871461012
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:57:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=bmitz81Q;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-2f27a9c7970so5939287f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683658639; x=1686250639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cmmLZG0R2O8LQf5Osq9NKhaw3PTPlKteoYCoXZRCc58=;
        b=bmitz81QB0UmsGzZkTVOkSs4xtuVemmpOSofl4hOeiirCr9YF1/KRlopwA6Fb5jBb+
         Y15R6dlxdd6kfK1reveqtk+V33zOeTwe2ZPxehJA1fj6YMSIbxvwkmlxPBaFV0O+rOWT
         /zxEnvMRndqR6R3XRw0eaj6pJTmcdWl1rS4L2eDALxaZj6Rqg3dVzipwxB6rTNEKz3RF
         hzf9gvR9DT5+iX41jOGA6BSgWxXlNtDnnzWXIwyujfJrv/46kDogSgjHuTzN4totZ1H6
         XOOlzQVOEJHQqmvd7Ez+ayWMXVFrHRWY2+s/MpCDxsNXQjHLpp93U7LoLKYZItMpX7Gs
         fq5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683658639; x=1686250639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cmmLZG0R2O8LQf5Osq9NKhaw3PTPlKteoYCoXZRCc58=;
        b=BFBiZ0pbLnHlKp0+VbzdSAZIJksTPAp8arKkEZE4p6qaEsHmhPdWop5UMcUzpJsIHu
         Y7ljdbypi1IeHASi6SdV4Kd1XhpeyQ761tiBgQQ5JTe1vl5MUqbyZTWcTwqLVW9OjLdt
         dHJVv1G1NetPJC03RNu1gmiHVHYGehS+AxW9/Brmne949tPSypWZVCEOUA2bhIAUWlS+
         eokckKFl7dq6CyAjE3uePQJCyUMIpkTkY+FZKx23RW8u4W3+zmZRb/cKhQksRH4ry+4c
         6dMRX8I1vzZclZuI4qNR7TZbz/mC6yynrKKlc0WnX4YJ2XmP4ZdRJC3HSX+lzWBLWZlP
         /+Xg==
X-Gm-Message-State: AC+VfDyGGEOlWNluGEER/isRMdndFGq9YkuMcbL8MLhE18pcCIgwNCXY
	vYcBpFpyq1L9ewxzbnRTCi6sTnXhIb0WOzMp
X-Google-Smtp-Source: ACHHUZ7QWR/Bx6LarN+h3HCxeOLXIiqt8bA75I2evTZAokrBJN8u8C6fCeUwGRp7rSk9I09lNArREQ==
X-Received: by 2002:a5d:51c3:0:b0:2f9:4fe9:74bb with SMTP id n3-20020a5d51c3000000b002f94fe974bbmr9588380wrv.40.1683658638809;
        Tue, 09 May 2023 11:57:18 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe3d1000000b00301a351a8d6sm15248310wrm.84.2023.05.09.11.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:57:18 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: stefanb@linux.ibm.com,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 4/8] Revert "ima: Sign all executables and the ima-policy in the root filesystem"
Date: Tue,  9 May 2023 18:56:27 +0000
Message-Id: <20230509185631.3182570-4-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230509185631.3182570-1-jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59949

This reverts commit 76f1f539a678725211283294c8b6735186055694.

The full patchset are overriding the do_configure task and also added a kernel patch
on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
So the patch fails in some recipes and also do_configure task doesn't make sense.
This breaks many recipes like linux-firmware and maybe others.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-integrity/classes/ima-evm-rootfs.bbclass | 25 ++++---------------
 1 file changed, 5 insertions(+), 20 deletions(-)

diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index 98c4bc1..6902d69 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -62,32 +62,17 @@ ima_evm_sign_rootfs () {
        perl -pi -e 's;(\S+)(\s+)(${@"|".join((d.getVar("IMA_EVM_ROOTFS_IVERSION", True) or "no-such-mount-point").split())})(\s+)(\S+)(\s+)(\S+);\1\2\3\4\5\6\7,iversion;; s/(,iversion)+/,iversion/;' etc/fstab
     fi
 
-    # Detect 32bit target to pass --m32 to evmctl by looking at libc
-    tmp="$(file "${IMAGE_ROOTFS}/lib/libc.so.6" | grep -o 'ELF .*-bit')"
-    if [ "${tmp}" = "ELF 32-bit" ]; then
-        evmctl_param="--m32"
-    elif [ "${tmp}" = "ELF 64-bit" ]; then
-        evmctl_param=""
-    else
-        bberror "Unknown target architecture bitness: '${tmp}'" >&2
-        exit 1
-    fi
-
-    bbnote "IMA/EVM: Signing root filesystem at ${IMAGE_ROOTFS} with key ${IMA_EVM_PRIVKEY}"
-    evmctl sign --imasig ${evmctl_param} --portable -a sha256 --key ${IMA_EVM_PRIVKEY} -r "${IMAGE_ROOTFS}"
-
-    # check signing key and signature verification key
-    evmctl ima_verify ${evmctl_param} --key "${IMA_EVM_X509}" "${IMAGE_ROOTFS}/lib/libc.so.6" || exit 1
-    evmctl verify     ${evmctl_param} --key "${IMA_EVM_X509}" "${IMAGE_ROOTFS}/lib/libc.so.6" || exit 1
+    # Sign file with private IMA key. EVM not supported at the moment.
+    bbnote "IMA/EVM: signing files 'find ${IMA_EVM_ROOTFS_SIGNED}' with private key '${IMA_EVM_PRIVKEY}'"
+    find ${IMA_EVM_ROOTFS_SIGNED} | xargs -d "\n" --no-run-if-empty --verbose evmctl ima_sign --key ${IMA_EVM_PRIVKEY}
+    bbnote "IMA/EVM: hashing files 'find ${IMA_EVM_ROOTFS_HASHED}'"
+    find ${IMA_EVM_ROOTFS_HASHED} | xargs -d "\n" --no-run-if-empty --verbose evmctl ima_hash
 
     # Optionally install custom policy for loading by systemd.
     if [ "${IMA_EVM_POLICY}" ]; then
         install -d ./${sysconfdir}/ima
         rm -f ./${sysconfdir}/ima/ima-policy
         install "${IMA_EVM_POLICY}" ./${sysconfdir}/ima/ima-policy
-
-        bbnote "IMA/EVM: Signing IMA policy with key ${IMA_EVM_PRIVKEY}"
-        evmctl sign --imasig ${evmctl_param} --portable -a sha256 --key "${IMA_EVM_PRIVKEY}" "${IMAGE_ROOTFS}/etc/ima/ima-policy"
     fi
 }
 
-- 
2.34.1


