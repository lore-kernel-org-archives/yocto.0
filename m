Return-Path: <fabien.thomas@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B57E732CF
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 13:18:56 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.13073.1695907128255716912
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 06:18:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=w7Bgk7Yh;
 spf=pass (domain: smile.fr, ip: 209.85.128.53, mailfrom: fabien.thomas@smile.fr)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-406402933edso45292475e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 06:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1695907126; x=1696511926; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=navRC8Uu7Qh20u5CNrcdxDi2xfH0kMBepzig6dYjZvo=;
        b=w7Bgk7YhmdiIfJjzcuHtjG5lIQZiSFPRHy0qBwSOR0z6uJ/4j3IgkMpz5BdHuDXP65
         ZbdTSGmPs+hjhU9e2gVy4dXqWKe6gWZbReO0RDYtDjTjx4m7AjUpfV2DAPZJcXOPCIRa
         5mq0E6LQyO4AvSa2Mve5S29JvVypvieR/wYFoLqNIpWvc64zAjNAxWnUs35vcWUEE58C
         O9eAbE314ZZUZWF5e7l4nEsb3+ROM0LPpVydgkfIo6ef8aIIcseroXjICmcn9VaZxiaA
         BbDga5gcOvKbfkgyiG4CyDwVig02z9/dA4TG7zQ3UtH2vs6LIm0ymY4JWOqT4fPZDATr
         NqcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695907126; x=1696511926;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=navRC8Uu7Qh20u5CNrcdxDi2xfH0kMBepzig6dYjZvo=;
        b=rtgw7AbtlRO33ANoje+b9RIXAYL+WnPV+5hnU4ZRzJlEzhCVW1djlqSxEwPXZVOD92
         QCp2pEwsUHeVUyJkR9iQbqnAnjYYGDLIIJ0C/NBVbYynu/LdqMEoEGfwnetVzEV2nhIy
         E1DhUvr91lzi66mvSLTRFnMMxwJ5qi91NlNF+nLV7Tvpuyrw6wINBzDeM0IUdIgwgrro
         vvBGyCZaUnfQTGAj47mOI30CWYT4l32RTtz1Gbmi6GEUs63aTDbZTy+cgmrbCGfZ+7mP
         yTLd8AD8SEbO915Fma/ZdsNFkrVz303U2V3sEUT4NjSiWSWdxV6h1glm1qFFRJ2ehFZ8
         s2nQ==
X-Gm-Message-State: AOJu0Yw4agwd3d3dpbqeQPAixf2JWhp/mf86tle0VkgOeBPbxKKhIxgM
	VxnctKpZ22HgcZpjP1aIpojcfE0Viscx0RwWa5w=
X-Google-Smtp-Source: AGHT+IHd+Ue6BfDMlc9CvIWTloBUtgCfdkvTxLK4XeknGhuVvNNjpNejWAbykAu7n2HOt1OrRCpoqQ==
X-Received: by 2002:a05:600c:2146:b0:402:ea96:c09a with SMTP id v6-20020a05600c214600b00402ea96c09amr1209391wml.16.1695907126369;
        Thu, 28 Sep 2023 06:18:46 -0700 (PDT)
Received: from p-nan-fatho.nantes.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id u8-20020a7bc048000000b003fe2b081661sm22818797wmc.30.2023.09.28.06.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 06:18:46 -0700 (PDT)
From: Fabien Thomas <fabien.thomas@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Fabien Thomas <fabien.thomas@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [PATCH][yocto-autobuilder-helper] config.json: add reproducible-openembedded build
Date: Thu, 28 Sep 2023 15:18:36 +0200
Message-Id: <20230928131836.137286-1-fabien.thomas@smile.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 13:18:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61153

The purpose of this new build is to report the reproducibility status of
all meta-openembedded recipes. It use the same reproducible selftest than
OE-Core but setting only world as target, and excluding all oecore recipes
from it. Also, the report output directory for meta-openembedded is
separate from oecore's one.

Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/config.json b/config.json
index 05c6794..fde1b1f 100644
--- a/config.json
+++ b/config.json
@@ -264,6 +264,34 @@
 
             }
         },
+        "reproducible-openembedded" : {
+            "MACHINE" : "qemux86-64",
+            "SDKMACHINE" : "x86_64",
+            "DISTRO" : "None",
+            "NEEDREPOS" : ["oecore", "bitbake", "meta-openembedded"],
+            "extravars" : [
+                "EXCLUDE_FROM_WORLD:layer-core = '1'",
+                "EXCLUDE_FROM_WORLD:layer-selftest = '1'",
+                "OEQA_REPRODUCIBLE_TEST_TARGET = 'world'"
+            ],
+            "step1" : {
+                "shortname" : "Reproducible Selftest for openembedded layers",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-selftest",
+                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
+                    "${BUILDDIR}/../meta-openembedded/meta-initramfs",
+                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
+                    "${BUILDDIR}/../meta-openembedded/meta-networking",
+                    "${BUILDDIR}/../meta-openembedded/meta-oe",
+                    "${BUILDDIR}/../meta-openembedded/meta-perl",
+                    "${BUILDDIR}/../meta-openembedded/meta-python",
+                    "${BUILDDIR}/../meta-openembedded/meta-webserver",
+                    "${BUILDDIR}/../meta-openembedded/meta-xfce"
+                ]
+            }
+        },
         "trigger-build" : {
             "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86-64",
@@ -955,6 +983,9 @@
         "reproducible" : {
             "TEMPLATE" : "reproducible"
         },
+        "reproducible-openembedded" : {
+            "TEMPLATE" : "reproducible-openembedded"
+        },
         "reproducible-ubuntu" : {
             "TEMPLATE" : "reproducible"
         },
-- 
2.34.1


