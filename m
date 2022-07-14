Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DD36CCA47B
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:00 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web08.227.1657825978932148998
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:12:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HqCz6OlF;
 spf=pass (domain: gmail.com, ip: 209.85.219.43,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id d17so2215969qvs.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4cPgt1kbdoKGAz6xYgioMQFzabbJg1g7Hr/4fIHkXMw=;
        b=HqCz6OlFltesrr3Frq7Sz6uxpLUEiQlGbF41O67cJPVcs9OyXQT7C8JsJrP97xG064
         TjAya/GTO/NFPlEJYL8HBAA0Ty5KkA886Tj1YEPiMw+o1r+AT6hCJ/rXfo7O7CAInhoA
         lfL2YstLeO4BaWuI/b6N0idEgdwEAirZ6t8WcL+UQgEkBQcsuRfWh9h0psJpj33dDgym
         JzeW2IYHyGdSYyJas+DLpXH09qvKd98oQZTisODIJlvrRT1VtZZLNAY92uioqvzxCAK2
         JspdTFbVFD6XPa8hemlTFCkvxAJa2xjQyILGULrCIpFPSWeJXlyZn5jXef599noAv71b
         yAdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4cPgt1kbdoKGAz6xYgioMQFzabbJg1g7Hr/4fIHkXMw=;
        b=KaYDpoNXz9WBGKO+WEPj3WN6DQ2Ny4Ne5G6NN8zRzwKgnHmPhDqsywHlqvlSiHUIIv
         m+rZ+Lgu5O0PvC/2rqnEZjhzpgl3LNA+KZlz+/PTZM98rK+bi5GFOAU8fv88JSPLSH6O
         Ts/gtnEgnNZ7XtN47XmXotDA+6ncP5e2EwgLuJ3Ng3PxYYatU4E0Oq8gI7UJlcxmddvo
         zdMQXRiS02cWGMpgZJz/nXIOGLe66H28XBk0RdtU4XVTabP2vWcTk33Mj7xX+jxjMP95
         sJkV9rZO8qL0dU0AjG3S05wTNAAN8MZMe6WP0n9r/sWKqP/d9C/Iik++d2WirflHVQRG
         DYLQ==
X-Gm-Message-State: AJIora9sLqIUWy14XLlERWPWnGe6JcjSZnLl3uFGCL5qFUk6PIoSeQ07
	mGT3h+FcxN7JdSJ79klkDxU=
X-Google-Smtp-Source: 
 AGRyM1uyivmVN4wzL0sPu2ZOarn2KCXi0la/XlRIOV2APw9/6DES84MWiK0NMAfpqGBbrQH546i9oA==
X-Received: by 2002:a05:6214:d66:b0:473:78d5:c74a with SMTP id
 6-20020a0562140d6600b0047378d5c74amr9198790qvs.13.1657825977887;
        Thu, 14 Jul 2022 12:12:57 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:12:56 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 01/10] linux-yocto/5.10: fix buildpaths issue with
 gen-mach-types
Date: Thu, 14 Jul 2022 15:12:44 -0400
Message-Id: 
 <41edc7265b5cffbc271b777c70a21fa06ca45a4f.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1657825809.git.bruce.ashfield@gmail.com>
References: <cover.1657825809.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57538

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.10:

    80f5207b5abd tools: use basename to identify file in gen-mach-types

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto-rt_5.10.bb              |  2 +-
 .../linux/linux-yocto-tiny_5.10.bb            |  4 ++--
 meta/recipes-kernel/linux/linux-yocto_5.10.bb | 20 +++++++++----------
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_5.10.bb b/meta/recipes-kernel/linux/linux-yocto-rt_5.10.bb
index a695740976..c705b7c07a 100644
--- a/meta/recipes-kernel/linux/linux-yocto-rt_5.10.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-rt_5.10.bb
@@ -11,7 +11,7 @@ python () {
         raise bb.parse.SkipRecipe("Set PREFERRED_PROVIDER_virtual/kernel to linux-yocto-rt to enable it")
 }
 
-SRCREV_machine ?= "f481ff6adf4be55c3ab89d0cf7243bbca69205c9"
+SRCREV_machine ?= "2f72685aa16ee5e1c8c53df03457b223a6996540"
 SRCREV_meta ?= "2f79722c50ad61cf055b40e8ba6d6f48e8dc6db0"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;branch=${KBRANCH};name=machine \
diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_5.10.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_5.10.bb
index 41cad3d37e..6336ef544f 100644
--- a/meta/recipes-kernel/linux/linux-yocto-tiny_5.10.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-tiny_5.10.bb
@@ -15,8 +15,8 @@ DEPENDS += "openssl-native util-linux-native"
 KMETA = "kernel-meta"
 KCONF_BSP_AUDIT_LEVEL = "2"
 
-SRCREV_machine:qemuarm ?= "cab1bb0e702f93b16762fc560d6be582fbf86a6a"
-SRCREV_machine ?= "5239dc7bbd53a3d4d5e31f8631612c2eb6cee0b8"
+SRCREV_machine:qemuarm ?= "3b951d9995d83be4e2985d6aa904d59cb9ac7692"
+SRCREV_machine ?= "f2b78db2b548501a7b0b17f76b9ee2f09978fb30"
 SRCREV_meta ?= "2f79722c50ad61cf055b40e8ba6d6f48e8dc6db0"
 
 PV = "${LINUX_VERSION}+git${SRCPV}"
diff --git a/meta/recipes-kernel/linux/linux-yocto_5.10.bb b/meta/recipes-kernel/linux/linux-yocto_5.10.bb
index fbee1874f4..96c77e6a87 100644
--- a/meta/recipes-kernel/linux/linux-yocto_5.10.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_5.10.bb
@@ -13,16 +13,16 @@ KBRANCH:qemux86  ?= "v5.10/standard/base"
 KBRANCH:qemux86-64 ?= "v5.10/standard/base"
 KBRANCH:qemumips64 ?= "v5.10/standard/mti-malta64"
 
-SRCREV_machine:qemuarm ?= "952586297dec710cba21ccf7f6fe4a1aadde0a5d"
-SRCREV_machine:qemuarm64 ?= "268aa738ea2454a1293dcb6c829c88552a5768d2"
-SRCREV_machine:qemumips ?= "bb9cabbe92165b556329cb0eed12ab67d2dee7a7"
-SRCREV_machine:qemuppc ?= "88ee9e4c24d32b6d0ec90756f0c7729954d3feae"
-SRCREV_machine:qemuriscv64 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:qemuriscv32 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:qemux86 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:qemux86-64 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:qemumips64 ?= "1a760ff71146a87cb5b7de87aed88db07a907ef1"
-SRCREV_machine ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
+SRCREV_machine:qemuarm ?= "8b54878acc1161bdcfa3a1153cb2fff39c675b89"
+SRCREV_machine:qemuarm64 ?= "2db48159f4444dcfa0c0dab5804769ea528bb6ed"
+SRCREV_machine:qemumips ?= "fc5fb9c35b8c52a3b1b2348a56237b6f1bb7fc6b"
+SRCREV_machine:qemuppc ?= "736b1667a61f21d7a1b8c88e8cedb648e79e687b"
+SRCREV_machine:qemuriscv64 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:qemuriscv32 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:qemux86 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:qemux86-64 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:qemumips64 ?= "2105a97021e3d0c565d84947e5cd45dd77be07e3"
+SRCREV_machine ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
 SRCREV_meta ?= "2f79722c50ad61cf055b40e8ba6d6f48e8dc6db0"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;name=machine;branch=${KBRANCH}; \
-- 
2.19.1


