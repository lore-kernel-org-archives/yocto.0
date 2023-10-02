Return-Path: <fabien.thomas@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD510E784B7
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 14:55:23 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.83962.1696258522979757258
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 07:55:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=UeG8c/8N;
 spf=pass (domain: smile.fr, ip: 209.85.128.41, mailfrom: fabien.thomas@smile.fr)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40537481094so170111745e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 07:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696258521; x=1696863321; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cPlaZWNs8mv0qF6XXmRO3yfYYjsqOv/hXwtmsfjwPOY=;
        b=UeG8c/8NIlnYHahhNHzzf9U4CEL/SPAn4y1i3BJ6lT4EYGcb/P28v+1TlCWmqNO6Km
         /etXaGFucc1uEB5aXuJTOXkHlEcRXLO5GLsuBHpas0JCyw1yEi5ltMXk03i/4SUu0n0w
         vahk5fnZ+7vukSWpQfqYrUjNrcr7vuocOlCDp5d4ccLpASna6TWNVEk62e1wi+Xse5HT
         vLjmMURDxCU7fgv9BQQYDerLycrie25YYhDFLvpuW1zwhGg6myYLZLGodwAg5XhJh/n3
         Nia/nKSW/dqHSN7nRyanL2VHG9smLdjP1z+ZX2T01RiBJRu8360zhOeDqCCWHgSf5LI5
         vn1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696258521; x=1696863321;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cPlaZWNs8mv0qF6XXmRO3yfYYjsqOv/hXwtmsfjwPOY=;
        b=SlBjLel7oXcjFNyFS2ZfU15oaX3UHkzL3U7d+Yeh8V+S6ksmAIBAYsA76ijw+2Qq3x
         dHdvwQsth19pX8R5JT/Vh1946Rrr0Cung52Iee1I1982yniwGlrSeAPvcTDOJzpaiCFq
         5n1ZXQGolXMBGVKBM4IEoAwKFhUOkD/VDeUNnwl8S0DLsIep3zb4WKwIwe839RKXQosN
         fZT11Ittw3mB1CGAcn/kzC5XhyBH9nyHIHJxlBaEmAKilgalIDXb7nL+I16voABR58RZ
         90dCwT/kX2twlOZLSo9hufDtJS1WRc078GiPm22gegy/R0NiE0/zE215/ner/zYiK2x0
         Uq7A==
X-Gm-Message-State: AOJu0YxlMGIL0PTunc6S04TXlVWBM05QJG9q6X7FWQCv2uVLvzK2xYAk
	ebwkXbWB9YO2kPbVhGmCVY6vYBFB9LipMneyVwo=
X-Google-Smtp-Source: AGHT+IHzVx75lWMtLqntgnRo1GVycDDZ6RTQIyLKoJGsBigqCFRSWe0duQWaxuCVFTBkEmuEe7etIw==
X-Received: by 2002:a7b:cd0a:0:b0:403:787:e878 with SMTP id f10-20020a7bcd0a000000b004030787e878mr10436143wmj.21.1696258521122;
        Mon, 02 Oct 2023 07:55:21 -0700 (PDT)
Received: from p-nan-fatho.home (2a01cb0584747e00ac7296dc8b064a2b.ipv6.abo.wanadoo.fr. [2a01:cb05:8474:7e00:ac72:96dc:8b06:4a2b])
        by smtp.gmail.com with ESMTPSA id z20-20020a7bc7d4000000b0040640073d25sm7365836wmk.16.2023.10.02.07.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 07:55:20 -0700 (PDT)
From: Fabien Thomas <fabien.thomas@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Fabien Thomas <fabien.thomas@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v2] config.json: add reproducible-openembedded build
Date: Mon,  2 Oct 2023 16:54:46 +0200
Message-Id: <20231002145446.3166108-1-fabien.thomas@smile.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 14:55:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61193

The purpose of this new builder is to report the reproducibility status
of all meta-openembedded recipes layer by layer. It use the same
reproducible selftest than OE-Core but setting only world as target,
and excluding all oecore and other openembedded layer recipes.
Also, the report output directory is split by layers.

Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---

Changes v1->v2 :
* Split builder into multiple steps, one for each openembedded layers.
* Split reports output in the same way, one for each layers.
* For each step, only to be tested layer and its dependancies are added.
* Every other layers than the one that is tested is excluded from world.

 config.json | 133 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 133 insertions(+)

diff --git a/config.json b/config.json
index 05c6794..90762f9 100644
--- a/config.json
+++ b/config.json
@@ -264,6 +264,136 @@
 
             }
         },
+        "reproducible-meta-openembedded" : {
+            "MACHINE" : "qemux86-64",
+            "SDKMACHINE" : "x86_64",
+            "DISTRO" : "None",
+            "NEEDREPOS" : ["oecore", "bitbake", "meta-openembedded"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-selftest"
+            ],
+            "extravars" : [
+                "EXCLUDE_FROM_WORLD:layer-core = '1'",
+                "EXCLUDE_FROM_WORLD:layer-selftest = '1'",
+                "OEQA_REPRODUCIBLE_TEST_TARGET = 'world'"
+            ],
+            "step1" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-filesystems layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-filesystems/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe"
+                ],
+                "extravars" : [
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                ]
+            },
+            "step2" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-gnome layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-gnome/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe",
+                    "${BUILDDIR}/../meta-openembedded/meta-networking",
+                    "${BUILDDIR}/../meta-openembedded/meta-python"
+                ],
+                "extravars" : [
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-networking-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'"
+                ]
+            },
+            "step3" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-initramfs layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-initramfs/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-initramfs"
+                ]
+            },
+            "step4" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-multimedia layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-multimedia/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe",
+                    "${BUILDDIR}/../meta-openembedded/meta-python"
+                ],
+                "extravars" : [
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'"
+                ]
+            },
+            "step5" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-networking layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-networking/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-networking",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe"
+                ],
+                "extravars" : [
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                ]
+            },
+            "step6" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-oe layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-oe/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-oe"
+                ]
+            },
+            "step7" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-perl layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-perl/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-perl",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe"
+                ],
+                "extravars" : [
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                ]
+            },
+            "step8" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-python layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-python/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-python",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe"
+                ],
+                "extravars" : [
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                ]
+            },
+            "step9" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-webserver layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-webserver/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-webserver",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe"
+                ],
+                "extravars" : [
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                ]
+            },
+            "step10" : {
+                "shortname" : "Reproducible Selftest for openembedded meta-xfce layer",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-xfce/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe",
+                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
+                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
+                    "${BUILDDIR}/../meta-openembedded/meta-python",
+                    "${BUILDDIR}/../meta-openembedded/meta-networking"
+                ],
+                "extravars" : [
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-gnome-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-multimedia-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-networking-layer = '1'"
+                ]
+            }
+        },
         "trigger-build" : {
             "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86-64",
@@ -955,6 +1085,9 @@
         "reproducible" : {
             "TEMPLATE" : "reproducible"
         },
+        "reproducible-meta-openembedded" : {
+            "TEMPLATE" : "reproducible-meta-openembedded"
+        },
         "reproducible-ubuntu" : {
             "TEMPLATE" : "reproducible"
         },
-- 
2.34.1


