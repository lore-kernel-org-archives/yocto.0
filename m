Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F9D1C433EF
	for <webhook@archiver.kernel.org>; Sat,  6 Nov 2021 17:38:03 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.21730.1636220265890317274
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Nov 2021 10:37:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=JJDkFh1+;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.41,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f41.google.com with SMTP id gh1so9311402qvb.8
        for <yocto@lists.yoctoproject.org>;
 Sat, 06 Nov 2021 10:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rHFqaLgt2tmBM5runORFuKle27n2S4A39v6qigqrQNc=;
        b=JJDkFh1+o3fOXfMcaZ5aKgs+eyG1z2U73if6+FIDqNtWWpYgHAkBZEyIxywOGENjv3
         3Xuo/Hv+DEJmlmeajmnUCkISAgjLhtXXlPRNlonsWjhOQxS80nZOTNC6GxmAKQzy+kGp
         PJsfNldyl1ew+g0ICVFaMeKLmCPSfERfi+rcyI3RsgvqLs+J0B7un2Bd66YwYykqpeel
         E3VPxUXdNb3bJe4VUFXZMh3aExmYDCYqFzdh131erLBoPlxpgwu2C76bTLzDqtT9njjv
         T9aOthft2GpLF3p18Txixc2+98JAE+QC3LWA2+DzNEG8r7bN8AKte9m8EA8DsJPyfBNM
         /Dtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rHFqaLgt2tmBM5runORFuKle27n2S4A39v6qigqrQNc=;
        b=aQECNRi4Mz3xy7jQV301D8+zv5PSSf13LYDUsdfJgddfAvbPAwGlKs2NnGUOS9HStZ
         3JcSVbxsGGZzix/hcG/l0XN4naXMbfNiYaxs7O1HABhkSl83EIH39pLyKa1xv62orG0E
         AGPU8JvbYARWkFkqTb1IgpAk7t5C70U0XZdhJCXpldE4yjlrryUsI9z+R5nZ0UVp3ABf
         dN4OfAPxd2X6Tc126ytebJ5/b8M33wPIFR//6eo6mGqE4WuC4gUS4qlc9sBNK2JeIri5
         bvomp8+EFKiENNM5KBPTbsyPMP7KMDvPD5uxAmRR8IipHPNJp9JJo7TzhXeX1+dZx2i2
         36aQ==
X-Gm-Message-State: AOAM5311o63XPUOAtOqhKIVj5X/z4YH54BAc1nSVJHphfnosZGchVKoL
	ov9W2ddCksenB3i1O79rZQFlAdxBsc24Wg==
X-Google-Smtp-Source: 
 ABdhPJzKwNqx6s0REZb+gtzE+al0nvgoxAtn6IL9vEHniL2Gvqs5p90OAWrnFwAlzPv8DzvOPUXLEg==
X-Received: by 2002:a0c:ecc7:: with SMTP id o7mr6922413qvq.46.1636220264823;
        Sat, 06 Nov 2021 10:37:44 -0700 (PDT)
Received: from localhost ([2605:a601:a618:1500:b8a2:fbac:6d56:e614])
        by smtp.gmail.com with ESMTPSA id
 p23sm104240qke.41.2021.11.06.10.37.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Nov 2021 10:37:44 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel-src: specify nobranch to avoid
 warnings
Date: Sat,  6 Nov 2021 13:37:43 -0400
Message-Id: <20211106173743.32645-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 Nov 2021 17:38:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55264

bitbake is now warning on git trees not having branches specified, with
errors similar to below:
WARNING: URL: git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis does not set any branch parameter. The future default branch used by tools and repositories is uncertain and we will therefore soon require this is set in all git urls.

To get around this issue, specify "no-branch=1" for all SRC_URIs that do
not have a branch listed.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .../zephyr-kernel/zephyr-kernel-src.inc          | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 3a2250d880ca..d8dd3abc20f6 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -10,14 +10,14 @@ FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 SRC_URI = "\
     git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=${ZEPHYR_BRANCH};name=default \
-    git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
-    git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
-    git://github.com/zephyrproject-rtos/hal_stm32.git;branch=main;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
-    git://github.com/zephyrproject-rtos/mbedtls.git;protocol=https;destsuffix=git/modules/lib/mbedtls;name=mbedtls \
-    git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
-    git://github.com/zephyrproject-rtos/openthread.git;protocol=https;branch=zephyr;destsuffix=git/modules/lib/openthread;name=openthread \
-    git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
-    git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
+    git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;nobranch=1;destsuffix=git/modules/cmsis;name=cmsis \
+    git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;nobranch=1;destsuffix=git/modules/hal/nordic;name=nordic \
+    git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;branch=main;destsuffix=git/modules/hal/stm32;name=stm32 \
+    git://github.com/zephyrproject-rtos/mbedtls.git;protocol=https;nobranch=1;destsuffix=git/modules/lib/mbedtls;name=mbedtls \
+    git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;nobranch=1;destsuffix=git/modules/lib/open-amp;name=open-amp \
+    git://github.com/zephyrproject-rtos/openthread.git;protocol=https;nobranch=1;branch=zephyr;destsuffix=git/modules/lib/openthread;name=openthread \
+    git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;nobranch=1;destsuffix=git/modules/hal/libmetal;name=libmetal \
+    git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;nobranch=1;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
     "
 S = "${WORKDIR}/git"
 
-- 
2.20.1


