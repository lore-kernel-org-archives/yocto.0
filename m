Return-Path: <david.pierret@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0533ACDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 13:46:37 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.281599.1697636789516353182
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 06:46:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=hj86E7Zs;
 spf=pass (domain: smile.fr, ip: 209.85.128.51, mailfrom: david.pierret@smile.fr)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40572aeb673so63904595e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 06:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1697636788; x=1698241588; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ghYoRMrG730BvawsMMZZDzN7BpVvoxWn83UzYUbIuNY=;
        b=hj86E7ZsrAVjSSw0hcRJi7vHe8VDU+3O4hRDHt6MguHzlWorXhKBEWLo9Gu6sGO02N
         7Gf3HHKvmnAFuJvUiku1Jv3o2tsRM2+t79xcjdP8mrZukksTFBbKcgVHriqKsCk8QwRG
         aJQjgDUWoo8apyLUeiRXWsM1FA09jyv+7nkr1RTJ7ZmSDoDLivLdCgvG3OkyHysN1NYt
         gohPuqnmf6UpS43g0HIz36NbdzsUkeCroHzbF8YLI5XxR+NuIqNrsl6jznvVhKWWQY74
         9/723labUC9K6x5F90V55bjCutngGOO3zvHFezO2pMbE7L/WyMQCALBZlqEpfeLy3HAh
         tXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697636788; x=1698241588;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghYoRMrG730BvawsMMZZDzN7BpVvoxWn83UzYUbIuNY=;
        b=Jb4PHrRgNB6meO2yUvM1alRsq/pSa/ryJ7gSTeXAkdtkixh/OH5x+QCgrzDtUv5V4S
         eYkN1LpLZbXOBUwIXmyVv0P3atR2RiOwkAaARrZ29RWhqRFXYH/KEk7lcBusDIgsbJoA
         zAWGDpIOQxjeyPOfpg/v/lKb9DuAIGQJBt28Dl2gUkYpTBj9qlLqwJOSZBBxSLc9x+9F
         RGNIh9HOCiALTyk9r2UpYsezxwYklGNpSlL3WH1BKyM/jmL43+J3Nm6M+/mF5oqa9Cvu
         zYzvqK4tmfgkaGTF5QCwGV6e/NBXlqHWRlJhfnrmS4xwaycGXlxtG0d5mZu+cnBshLGL
         WkXQ==
X-Gm-Message-State: AOJu0Yx73tkNGXT27ehzLOwAfhk8i8z11ahnq0giqMFkphXQUsrq0Fjs
	2wafHoedknU7PioeSBSNFaHi3CLfwfSs9SvDjM8=
X-Google-Smtp-Source: AGHT+IGvyDRQOEWGcuMJnjR1yaJVLiO/4fPLKXPEMtDvRwXi76OYM4av6mo3jLXjc2g0j93aZQuLlw==
X-Received: by 2002:a5d:6903:0:b0:32d:9d0e:783d with SMTP id t3-20020a5d6903000000b0032d9d0e783dmr4379509wru.32.1697636787602;
        Wed, 18 Oct 2023 06:46:27 -0700 (PDT)
Received: from P-TOU-PARSEC.home ([2a01:cb19:9313:2700:7490:fa4a:1f26:167f])
        by smtp.gmail.com with ESMTPSA id s2-20020a5d4242000000b00327b5ca093dsm2149995wrr.117.2023.10.18.06.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 06:46:27 -0700 (PDT)
From: David Pierret <david.pierret@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v2] meta-oe-mirror: Use a 2 step job to fetch and verify meta-openembedded mirror.
Date: Wed, 18 Oct 2023 15:46:38 +0200
Message-Id: <20231018134638.608387-1-david.pierret@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 13:46:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61400

Inspired from trigger-build and trigger-build-post-trigger
The branch must be selected on build configuration.

Signed-off-by: David Pierret <david.pierret@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/config.json b/config.json
index 3acb710..9e6779f 100644
--- a/config.json
+++ b/config.json
@@ -1420,6 +1420,36 @@
                 "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
             ]
         },
+        "meta-oe-mirror" : {
+            "SDKMACHINE" : "x86_64",
+            "MACHINE" : "qemux86-64",
+            "NEEDREPOS" : ["poky", "meta-openembedded"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-selftest",
+
+                "${BUILDDIR}/../meta-openembedded/meta-oe",
+                "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-perl",
+                "${BUILDDIR}/../meta-openembedded/meta-networking",
+                "${BUILDDIR}/../meta-openembedded/meta-multimedia",
+                "${BUILDDIR}/../meta-openembedded/meta-gnome",
+                "${BUILDDIR}/../meta-openembedded/meta-xfce",
+                "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                "${BUILDDIR}/../meta-openembedded/meta-initramfs",
+                "${BUILDDIR}/../meta-openembedded/meta-webserver"
+            ],
+            "step1" : {
+                "shortname" : "Sources pre-fetching",
+                "BBTARGETS" : "universe -c fetch -k",
+                "extravars" : [
+                    "SOURCE_MIRROR_FETCH = '1'"
+                ]
+            },
+            "step2" : {
+                    "shortname" : "Source Mirror Selftest",
+                    "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -r buildoptions.SourceMirroring.test_yocto_source_mirror"],
+            }
+        },
         "a-quick" : {
             "TEMPLATE" : "trigger-build"
         },
-- 
2.39.2


