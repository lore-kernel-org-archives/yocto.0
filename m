Return-Path: <max.oss.09@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991F1C54E67
	for <webhook@archiver.kernel.org>; Sun, 17 Mar 2024 15:51:47 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.21421.1710690702856264286
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Mar 2024 08:51:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cm8ZjoI0;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: max.oss.09@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-513e10a4083so1195795e87.1
        for <yocto@lists.yoctoproject.org>; Sun, 17 Mar 2024 08:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710690700; x=1711295500; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eMiAtN1QKlmu/tSoJl9lT8nbI3R9tHRdlq4lym6+Z/k=;
        b=cm8ZjoI0ZiN+otgDdyfjuEK9r8ccx+64xm2qYH4/QKPhAiW04QheIi9VSmoyqap6Qz
         Z70NKNQBnktNq4qv5tZUNb8SGCbIcjOpgrQChUo9AbJazVvoXQxz4SXG/PfrnNtLLL2L
         m3HXomEREPHTXwXw2W3/wFyU81EXRUo6KyQ0EUfWoMWT/YhCeRCr9Oi8CNDWmGo0+jC7
         vAjML+NTnduree/wfKTfiUvy02/po84QTUy4UQSoafXo3Eknx2huZ7cFONRZvjLubiYN
         kFAQjx2G6xsWsHU87qQT7RdPLIUx5KiETTVxyVuZkUGFIoJT0h754Ttbx04pqiWyB/96
         3H+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710690700; x=1711295500;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eMiAtN1QKlmu/tSoJl9lT8nbI3R9tHRdlq4lym6+Z/k=;
        b=fItvBW6FKRi6xnpnL44kAIJsP/McG3bOIlhVUb8xrJCdznQjTPEbP/eFUKVpQYv45M
         BbRlzOp5jYPvZO1KKvIxabTuRzaLXOeryqrQFXSJLHRuzKuQRMn72aJcxG+v9Kn3BU1b
         NufnWSXOE+u3h/DV+aw4gIrizeuJuv4kNsUJaBgdF2HOXk0gZN+1u0unQ7sk0+GMzIzD
         kb0bEpL+qhSQj5tWNVPojic6QL75H3neR9wamDcr9XgRvy/wkpN/gh72kyz9AGYggo0v
         67NH/3Ww9uIiyuXk8kx0g0RlT7Wj0YUl2DmsWhDia+XmSdCXaUr5TulNbxqjdwEb5B8C
         cREg==
X-Gm-Message-State: AOJu0YyBPBbFlLNm2u4iXiP1Q4XvjcQ1HENdfGKhLB4Odvw8paUmnLAK
	43fAoKr/PBFx/5DoLZD01iXZt5mN5av38o31JHvz25fm++JQdL2YM/GE0YRQ
X-Google-Smtp-Source: AGHT+IGBokivGqRlCopTLaGDnbSHDXMDmxaJ5+ANtMWKU2TRPCTqav+ZyTH5iDSizlThIjD6NoE4fA==
X-Received: by 2002:a19:8c1e:0:b0:513:1a38:2406 with SMTP id o30-20020a198c1e000000b005131a382406mr934432lfd.13.1710690699992;
        Sun, 17 Mar 2024 08:51:39 -0700 (PDT)
Received: from toolbox.int.toradex.com (31-10-206-125.static.upc.ch. [31.10.206.125])
        by smtp.gmail.com with ESMTPSA id ij11-20020a056402158b00b005688450c264sm3712234edb.91.2024.03.17.08.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Mar 2024 08:51:39 -0700 (PDT)
From: max.oss.09@gmail.com
To: yocto@lists.yoctoproject.org
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [meta-security][PATCH] layer.conf: Update for the scarthgap release series
Date: Sun, 17 Mar 2024 16:51:33 +0100
Message-ID: <20240317155133.2395934-1-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Mar 2024 15:51:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62773

From: Max Krummenacher <max.krummenacher@toradex.com>

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---
 conf/layer.conf                | 2 +-
 meta-hardening/conf/layer.conf | 2 +-
 meta-integrity/conf/layer.conf | 2 +-
 meta-parsec/conf/layer.conf    | 2 +-
 meta-tpm/conf/layer.conf       | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 3e8db1f..471674c 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "nanbield"
+LAYERSERIES_COMPAT_security = "nanbield scarthgap"
 
 LAYERDEPENDS_security = "core openembedded-layer"
 
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index c499e60..8da050b 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "6"
 
-LAYERSERIES_COMPAT_harden-layer = "nanbield"
+LAYERSERIES_COMPAT_harden-layer = "nanbield scarthgap"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
 
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index d00298a..aab9652 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "nanbield"
+LAYERSERIES_COMPAT_integrity = "nanbield scarthgap"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 503953a..e9d0230 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
 BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_parsec-layer = "5"
 
-LAYERSERIES_COMPAT_parsec-layer = "nanbield"
+LAYERSERIES_COMPAT_parsec-layer = "nanbield scarthgap"
 
 LAYERDEPENDS_parsec-layer = "core clang-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 8075706..58b61d4 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "6"
 
-LAYERSERIES_COMPAT_tpm-layer = "nanbield"
+LAYERSERIES_COMPAT_tpm-layer = "nanbield scarthgap"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.42.0


