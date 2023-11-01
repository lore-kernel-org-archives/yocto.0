Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2455C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 11:16:29 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.4579.1698837381325187828
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 04:16:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=f/YDFVYS;
 spf=pass (domain: smile.fr, ip: 209.85.167.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-507b9408c61so9183488e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 04:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698837378; x=1699442178; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m7+c7EJUeTei0ppIcA1gJCggqdlPACsDc7w7Q99ZK0Q=;
        b=f/YDFVYSpqNZvEPGMnz8jlbhVYvYrTz67yigHZZqByQ1onDw4p/eC+SYxFvm9IYiOI
         MN9nwycbX3/eoHBAnBmQRJcHqAbbDoGPEyM/8hnRu8TYRzBrweAGiE+HwfX7tkemmxCx
         ARL2LO89nDgG0jhpnEkOlh2FBU14yx07l11w0hXW5QIcLB3XEnjFVEv2ARxmGnkbULhK
         fqEHIyEyLFszv19jQOcklqwWzmbLVLn63R29Nt1FcLJdcXWMOZJ5ep9JvvLf/i0Bm8kG
         jyG5pBS5qtaMCmUHmGFUDpwhUCko0ZwbSfpLmPYhG+kpM6h5o7FdAqlErgQh52a1RV/b
         QWyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698837378; x=1699442178;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m7+c7EJUeTei0ppIcA1gJCggqdlPACsDc7w7Q99ZK0Q=;
        b=LbbZe795Eu04BmqtVDAWsvyjjuCmbi3zqDMuVyEJywBG452SAqE3rUqxjzt8Q+CCDH
         nOMh/1xUHU4bPNNMfpgHwmsJrgKvG9z2AcpuHND57cAzhPmqrgcY3Ke5+iEAqr52l5C4
         PF752bD1VilWjVsuecebH32cebUtXxQp+8FkSvYv6fl8in6NmSUory8cHroY80OnEGxr
         bhFEw9k9sFbNxqFKUp3kG49WloeqgLzv3LEMNSZsAq9Y9NzCI7v3CORClZvOxnXQE4Dl
         bfLgWfdheWGdrfIHnkBvMCg+hDyDTetwxOUyOkjHYzd3xQv+TKkGdUvvpem6W/D/6UTl
         JG9A==
X-Gm-Message-State: AOJu0YwogsvkxbjQdLe8KeUhMber0ntEJwHMx6uccqH1yJpUUmdJf23Y
	rtcTstZYofOWAHKknIjmU6JG4FlWReRrBtDmf+U=
X-Google-Smtp-Source: AGHT+IESkKYNlZBChlMOONVkPUTaMGMcSLBpuaLfSWGRumyGJfIOTSzbXYp9Lz0O9H9tHwkZx0ffNg==
X-Received: by 2002:a05:6512:3b81:b0:509:fc7:8847 with SMTP id g1-20020a0565123b8100b005090fc78847mr10536034lfv.31.1698837378490;
        Wed, 01 Nov 2023 04:16:18 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id f19-20020a7bcd13000000b003feae747ff2sm1158603wmj.35.2023.11.01.04.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 04:16:18 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [master-next][yocto-autobuilder-helper][PATCH] config.json: force RECIPE_MAINTAINER for meta-oe layers
Date: Wed,  1 Nov 2023 12:15:57 +0100
Message-Id: <20231101111557.1149241-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 11:16:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61552

Without it, auto-upgrade-helper skip most of the recipes because they do
not have a specific maintainer.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/config.json b/config.json
index 6143969..ddf015f 100644
--- a/config.json
+++ b/config.json
@@ -1480,6 +1480,9 @@
                 "shortname" : "run AUH for layer meta-oe",
 
                 "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-oe"],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-openembedded-layer = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-oe"
                 ]
@@ -1490,6 +1493,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python"
                 ],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-meta-python = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-python"
                 ]
@@ -1500,6 +1506,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-perl"
                 ],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-perl-layer = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-perl"
                 ]
@@ -1510,6 +1519,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-networking"
                 ],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-networking-layer = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-networking"
                 ]
@@ -1521,6 +1533,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-python",
                     "${BUILDDIR}/../meta-openembedded/meta-multimedia"
                 ],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-multimedia-layer = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-multimedia"
                 ]
@@ -1533,6 +1548,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-networking",
                     "${BUILDDIR}/../meta-openembedded/meta-gnome"
                 ],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-gnome-layer = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-gnome"
                 ]
@@ -1547,6 +1565,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-gnome",
                     "${BUILDDIR}/../meta-openembedded/meta-xfce"
                 ],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-xfce-layer = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-xfce"
                 ]
@@ -1559,6 +1580,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-networking",
                     "${BUILDDIR}/../meta-openembedded/meta-filesystems"
                 ],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-filesystems-layer = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-filesystems"
                 ]
@@ -1566,6 +1590,9 @@
             "step10" : {
                 "shortname" : "run AUH for layer meta-initramfs",
                 "ADDLAYER" : ["${BUILDDIR}/../meta-openembedded/meta-initramfs"],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-meta-initramfs = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-initramfs"
                 ]
@@ -1576,6 +1603,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-webserver"
                 ],
+                "extravars" : [
+                    "RECIPE_MAINTAINER:layer-webserver = 'Forced maintainer for AUH'"
+                ],
                 "EXTRAPLAINCMDS" : [
                     "${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/ ${HELPERBUILDDIR}/../meta-openembedded meta-webserver"
                 ]
-- 
2.30.2


