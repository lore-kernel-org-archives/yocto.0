Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A173C001DD
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 15:21:19 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.34013.1698938471717587798
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 08:21:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=peeXgIpR;
 spf=pass (domain: smile.fr, ip: 209.85.221.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-32d80ae19f8so617686f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 08:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698938469; x=1699543269; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iPFVuQY+y84XRIvPZ4aZhw1ogoiZxKy7Du3+OftrgAU=;
        b=peeXgIpRxSZvZ8mWFRBG+T3EZUg4+Nv5jxfd8akOnO6DUST4pWNFydNU+t8AlFKLjS
         MTe3UDjhQBq/0Ab6C/hDrozxdRsubhygoP5gfPOptQ3CX3PTifz39pW6f2VA5oXspKFC
         ZwsX2CDS+6Xq38pGgXPZsF3UHwEOVJF/yP1QD55K5e4PWxuR5ofY11Z0lTGwN54jPH6p
         PciphMOSMjuqsmDCAtbqnLZxM2YoENu9fOo/H+J4Jj7XdUu69v5rRmbbutyruJSq7Ibq
         JOfn5lVKVxv8N6o9zSSRp26qrxxH7Rd4oyElt3XWlwWkxQO1dDRy0xbnBU8ykh0d5SYq
         DvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698938469; x=1699543269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iPFVuQY+y84XRIvPZ4aZhw1ogoiZxKy7Du3+OftrgAU=;
        b=oVYwFMmWNC+ZHVZ16DXptFLmqVPjlNObfzX8EZKm4RUzupBZFxiZLMDS7OPtbMwwmL
         GQF+tSsN/079ZRmVcjmzb/iBA5HdOCFCzcPxzP37z477mWFk9Br2H3/nb3IpSV7cd8vx
         zwROb98T0+acrp1RRb9HarSaOkJwnDBuFiQb39ouN4g/ag7XkFkmvZ8dgHTv/90OieK2
         aNFxTHsh7zknlSnVr5iEjNwM+Gm4FmuSQVBd1YAgnnxC0Uri+Rfk2MEvpmWM9EizylTJ
         cKUUHbOJ04dMbQ+vGQG8EA3chyQi69kPHp4fXUZNkqJbC0T8LWiAItRsDpm9YFQSSK3m
         5qnQ==
X-Gm-Message-State: AOJu0YwFVoKXXovCA8dbhqHwtUYwR0KGBvhPQ/grslPgsG/g0t+Itq2Z
	EqfgrxibZhoFcvU8/sxMjceLI2asqJ6jh4jmOnc=
X-Google-Smtp-Source: AGHT+IHkdusPPWXryeVnc3YCnIMT8EblRn+uzBKBIXp+zKYgBdK1ZtmmUipgK+OcsqU1f6ASv0TWVQ==
X-Received: by 2002:a5d:43c3:0:b0:32d:a476:5285 with SMTP id v3-20020a5d43c3000000b0032da4765285mr13740944wrr.31.1698938469420;
        Thu, 02 Nov 2023 08:21:09 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d400a000000b003247d3e5d99sm2723108wrp.55.2023.11.02.08.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 08:21:08 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v4 1/2] config.json: Move AUH from custom scripts to config.json
Date: Thu,  2 Nov 2023 16:20:43 +0100
Message-Id: <20231102152044.3433589-2-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231102152044.3433589-1-yoann.congal@smile.fr>
References: <20231102152044.3433589-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 15:21:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61580

setup-auh and run-auh were doing what the AB config.json does:
* creating repo checkouts: Now use NEEDREPOS
* configuring bitbake env: Now use extravars

This refactoring is needed to prepare adding AUH meta-oe support.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json                          | 26 ++++++++++++++++++---
 scripts/auh-config/local.conf.append |  5 ----
 scripts/run-auh                      | 34 ----------------------------
 scripts/setup-auh                    | 29 ------------------------
 4 files changed, 23 insertions(+), 71 deletions(-)
 delete mode 100644 scripts/auh-config/local.conf.append
 delete mode 100755 scripts/run-auh
 delete mode 100755 scripts/setup-auh

diff --git a/config.json b/config.json
index 1b3c2b0..2e33c73 100644
--- a/config.json
+++ b/config.json
@@ -1454,9 +1454,29 @@
             "TEMPLATE" : "buildperf"
         },
         "auh" : {
-            "EXTRAPLAINCMDS" : [
-                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
-            ]
+            "NEEDREPOS" : ["poky", "auto-upgrade-helper"],
+            "extravars" :[
+                "INHERIT += 'buildhistory'",
+                "LICENSE_FLAGS_ACCEPTED = 'commercial'",
+                "DISTRO_FEATURES:append:libc-glibc = ' systemd usrmerge'",
+                "DISTRO_FEATURES:append = ' pam'"
+            ],
+            "step1" : {
+                "shortname" : "setup AUH",
+                "EXTRAPLAINCMDS" : [
+                    "git config user.email auh@yoctoproject.org",
+                    "git config user.name 'Auto Upgrade Helper'",
+                    "git switch -C tmp-auh-upgrades HEAD",
+                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper.conf ./upgrade-helper/upgrade-helper.conf"
+                ]
+            },
+            "step2" : {
+                "shortname" : "run AUH",
+                "EXTRACMDS" : [
+                    "../auto-upgrade-helper/upgrade-helper.py -e all",
+                    "cp -rf ./upgrade-helper/* ${WEBPUBLISH_DIR}/pub/auh/"
+                ]
+            }
         },
         "yocto-mirror" : {
             "MACHINE" : "qemux86-64",
diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
deleted file mode 100644
index ee7ee2d..0000000
--- a/scripts/auh-config/local.conf.append
+++ /dev/null
@@ -1,5 +0,0 @@
-
-INHERIT += "buildhistory"
-LICENSE_FLAGS_ACCEPTED = "commercial"
-DISTRO_FEATURES:append:libc-glibc = ' systemd usrmerge'
-DISTRO_FEATURES:append = ' pam'
diff --git a/scripts/run-auh b/scripts/run-auh
deleted file mode 100755
index 0419dd1..0000000
--- a/scripts/run-auh
+++ /dev/null
@@ -1,34 +0,0 @@
-#!/bin/bash
-#
-# SPDX-License-Identifier: GPL-2.0-only
-#
-# Run Auto Upgrade Helper in a directory set up by setup_auh.
-#
-# Called with $1 - the directory where the setup was created
-
-if [ -z $1 ]; then
-  echo "Use: $0 auh_setup_dir [publish_dir]"
-  exit 1
-fi
-
-full_dir=$(readlink -e $1)
-
-auh_dir=$full_dir/auto-upgrade-helper
-poky_dir=$full_dir/poky
-build_dir=$full_dir/build
-sstate_dir=$full_dir/build/sstate-cache
-
-pushd $poky_dir
-
-# Base the upgrades on poky master
-git fetch origin
-git checkout -B tmp-auh-upgrades origin/master
-
-source $poky_dir/oe-init-build-env $build_dir
-$auh_dir/upgrade-helper.py -e all
-
-if [ -n $2 ]; then
-  cp -rf $build_dir/upgrade-helper/* $2
-fi
-
-popd
diff --git a/scripts/setup-auh b/scripts/setup-auh
deleted file mode 100755
index d6b83fe..0000000
--- a/scripts/setup-auh
+++ /dev/null
@@ -1,29 +0,0 @@
-#!/bin/bash
-#
-# SPDX-License-Identifier: GPL-2.0-only
-#
-# Initialize Auto Upgrade Helper in a directory.
-#
-# Called with $1 - the directory to place the setup
-CONFIG_DIR=`dirname $0`/auh-config
-
-if [ -z $1 ]; then
-  echo "Use: $0 target_dir"
-  exit 1
-fi
-
-mkdir -p $1
-pushd $1
-
-git clone git://git.yoctoproject.org/poky
-pushd poky
-git config user.email auh@yoctoproject.org
-git config user.name "Auto Upgrade Helper"
-popd
-git clone git://git.yoctoproject.org/auto-upgrade-helper
-source poky/oe-init-build-env build
-mkdir -p upgrade-helper
-popd
-
-cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
-cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
-- 
2.30.2


