Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20AECC001B0
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 15:21:19 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.34014.1698938472761174420
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 08:21:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=QEz69Od6;
 spf=pass (domain: smile.fr, ip: 209.85.221.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3296b3f03e5so573520f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 08:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698938470; x=1699543270; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g97jrv7VudoIxto48Hn2+jgHtt6Dn4exhSB74XTvkWg=;
        b=QEz69Od66DQTAcbmid4FtvF6uAXQ9HyJCwIt94hZmZFrCOlYBStrV9FD5Jxu3mkjp4
         k0LKlVkGYvXKzVQB4rklHf3/JYLQoC4aBx9j9b1hFZjxF7BFFs5exOhKCY2zA6/euDIL
         giizMrEakjabcDEnKSwBwWJ/JaSWn5ELHWFPxPXN4EaWKVgQkHKSqSzyIgoVNBkwnslp
         rOEeMt/A6gO6E3BcHhePIm3x47o/Je4JF/BXrKRSJBQf7SqW7neD0xwaLyjcFcfuL9Ro
         gKQm1gzaSUQEbTWrpy9h9QJ6OzBYbGKWWIjwESLPt0pcXUCwqTxZAOjoPqiUGe0l6SB6
         +pUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698938470; x=1699543270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g97jrv7VudoIxto48Hn2+jgHtt6Dn4exhSB74XTvkWg=;
        b=jozQXmYSFuSGWZoArQDNInFWqzjxxDeQlq0PA5LLNe9Yle2oJa1Uu4FtsBgfWHF+Lz
         rDq3Zu9xJfGlqawMiEtyqY3M2bNoFCuF7t9gXk+wvRS9VmgHvKQhjeTgecti1I4RoreW
         +ock61pSav1hBg4YpOHKeyOIcTat2TlMl0R57yVxlDhtG7+8E6RDA52u7iAOJr0ww9fr
         mWZ/6FvFz5EKxt8dkf8viM41DeYu6/aX/VnznxjAjh28hYYnPTl9xqBTVGt+zrNUYE//
         CzsQljePTDDbf80y2aIqaRNQ3FqMDJElkVOd8TfM0UHUcueffASxE2otxyEbEkkNd9cj
         Stww==
X-Gm-Message-State: AOJu0Yz94SDkw08PEaN2IefQH0W60F6blJkzkWJbzhhNxrjVzGZ5hNTW
	+38tNS7hXbTu1Cau5nECE4sRaX2NPc7CfgRwN/8=
X-Google-Smtp-Source: AGHT+IEo/t8E+b43RFrdFGShhWMsM10O4eR38MFZZWa9Mnkq+QJGAYfy07du8sF6RTFqt3TydboU/A==
X-Received: by 2002:a05:6000:984:b0:32d:d7a8:33c2 with SMTP id by4-20020a056000098400b0032dd7a833c2mr23089430wrb.49.1698938470633;
        Thu, 02 Nov 2023 08:21:10 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d400a000000b003247d3e5d99sm2723108wrp.55.2023.11.02.08.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 08:21:09 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>,
	David Pierret <david.pierret@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v4 2/2] config.json: Extend AUH to meta-openembedded layers
Date: Thu,  2 Nov 2023 16:20:44 +0100
Message-Id: <20231102152044.3433589-3-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231102152044.3433589-1-yoann.congal@smile.fr>
References: <20231102152044.3433589-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 15:21:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61581

Add each a new builder "auh-meta-oe" and one step by meta-openembedded
layers.

Co-authored-by: David Pierret <david.pierret@smile.fr>
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 126 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 126 insertions(+)

diff --git a/config.json b/config.json
index 2e33c73..0caf6e6 100644
--- a/config.json
+++ b/config.json
@@ -1478,6 +1478,132 @@
                 ]
             }
         },
+        "auh-meta-oe": {
+            "NEEDREPOS": ["poky", "auto-upgrade-helper", "meta-openembedded"],
+            "extravars": [
+                "INHERIT += 'buildhistory'",
+                "LICENSE_FLAGS_ACCEPTED = 'commercial'",
+                "DISTRO_FEATURES:append:libc-glibc = ' systemd usrmerge'",
+                "DISTRO_FEATURES:append = ' pam'"
+            ],
+            "ADDLAYER": [
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
+            "step1": {
+                "shortname": "setup AUH for meta-oe layers",
+                "EXTRAPLAINCMDS": [
+                    "git -C ./meta-openembedded config user.email auh@yoctoproject.org",
+                    "git -C ./meta-openembedded config user.name 'Auto Upgrade Helper'",
+                    "git -C ./meta-openembedded switch -C tmp-auh-upgrades HEAD",
+                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper.conf ./upgrade-helper/upgrade-helper.conf"
+                ]
+            },
+            "step2": {
+                "shortname": "run AUH for layer meta-oe",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-openembedded-layer = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-oe"
+                ]
+            },
+            "step3": {
+                "shortname": "run AUH for layer meta-python",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-meta-python = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-python"
+                ]
+            },
+            "step4": {
+                "shortname": "run AUH for layer meta-perl",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-perl-layer = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-perl"
+                ]
+            },
+            "step5": {
+                "shortname": "run AUH for layer meta-networking",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-networking-layer = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-networking"
+                ]
+            },
+            "step6": {
+                "shortname": "run AUH for layer meta-multimedia",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-multimedia-layer = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-multimedia"
+                ]
+            },
+            "step7": {
+                "shortname": "run AUH for layer meta-gnome",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-gnome-layer = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-gnome"
+                ]
+            },
+            "step8": {
+                "shortname": "run AUH for layer meta-xfce",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-xfce-layer = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-xfce"
+                ]
+            },
+            "step9": {
+                "shortname": "run AUH for layer meta-filesystems",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-filesystems-layer = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-filesystems"
+                ]
+            },
+            "step10": {
+                "shortname": "run AUH for layer meta-initramfs",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-meta-initramfs = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-initramfs"
+                ]
+            },
+            "step11": {
+                "shortname": "run AUH for layer meta-webserver",
+                "extravars": [
+                    "RECIPE_MAINTAINER:layer-webserver = 'Forced maintainer for AUH'"
+                ],
+                "EXTRACMDS": [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all --layer-dir ${BUILDDIR}/../meta-openembedded/ --layer-names meta-webserver"
+                ]
+            },
+            "step12": {
+                "shortname": "save AUH output for meta-oe layers",
+                "EXTRAPLAINCMDS": [
+                    "cp -rf ./build/upgrade-helper/* ${WEBPUBLISH_DIR}/pub/auh/"
+                ]
+            }
+        },
         "yocto-mirror" : {
             "MACHINE" : "qemux86-64",
             "step1" : {
-- 
2.30.2


