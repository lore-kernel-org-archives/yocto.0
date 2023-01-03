Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D317DC3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 17:53:27 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web11.248.1672768407184023661
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 09:53:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Y7AUQba2;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id x11so25085134qtv.13
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 09:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=cboMRUvoisNKa6PnNdyZBhjQ224R6H8brXIWYyIMBtc=;
        b=Y7AUQba2EmNb4+cAvrObIazwlQFrI0Xqm69iHsczjnhlKP84YUTWGT1obxtSs6XMff
         O0l6pk3CydA8DtlZuFJJtyd84yXa8YHW/JyCNLvBof1Oaklh+XrTWQzPN/2qp4O4wkRl
         J8hV3UU8KGY1zOwHk0hlheuTHe8M3YGWoPmyu69bNLAEcqRQnWizIt1zwa1LfrWOMkF7
         08nkLPi04zjauONYcVXrGqh9LlX6ZMwrWANOPifPbrJTow1+1iz/vq0jSDMqF4ugf7vH
         6219DjezPHyRHX8DPguClx6xEJZBJH5QEM/nYXDpwcytuLoeuXiHMCWSPpIPcbofsyv9
         1w7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cboMRUvoisNKa6PnNdyZBhjQ224R6H8brXIWYyIMBtc=;
        b=IsG8HieptzPjPCVqibM12uWB9ouCf+F0Z5KSHGYrinY/H7l4WCReao7C6evdyxrpTZ
         vNb1GtD1rDvVbBr6zBfwt7EKQB/KzZWkHvl5LFOUd9jQR5IKT6FniNa5ga7qFqNAGhWP
         8g+14AIknPTjn8otFBmmfyK/Mku+LlxW9ndF9AaslOKwpQsUKogoyieVS7bKd70Yg3W5
         3COkPJSQLbBIaf1CYc5J3JDwvdzdvF8rRrl0diQdTcSHa6SlhKyIdU5UU2JFwjTgoA3i
         v0FzKSQh/2HXqrY5GDR8CEeU2ABWSSuqNZR6hXB11aXsPs4pqeZtH5Ot+mPYeclDANi5
         OeuA==
X-Gm-Message-State: AFqh2kpd4N92yv0UzCdIdV9fcLEJ8bV11r+1VD4PqtdEpBaJ2Z2OV3tU
	vZ+rfgrQ0ye92Xyb4TGk63+IbtgGn9Y=
X-Google-Smtp-Source: AMrXdXulnlXgnZKp84q65VlOAmFZZehIYP7rM79jOzuN0wKSj3qeQRjshDpjQQYj83eAAqgsHV/Mlg==
X-Received: by 2002:ac8:5185:0:b0:3a7:e548:5e89 with SMTP id c5-20020ac85185000000b003a7e5485e89mr61222876qtn.49.1672768405932;
        Tue, 03 Jan 2023 09:53:25 -0800 (PST)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:fa65:7834:d13:d2ac])
        by smtp.gmail.com with ESMTPSA id y15-20020a05620a0e0f00b007025753c4a5sm22161102qkm.6.2023.01.03.09.53.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 09:53:25 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] layer.conf: Mark master as compatible with mickledore
Date: Tue,  3 Jan 2023 12:53:22 -0500
Message-Id: <20230103175322.60034-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 17:53:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58915

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-integrity/conf/layer.conf           | 2 +-
 meta-parsec/conf/layer.conf              | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-security-isafw/conf/layer.conf      | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 470c7f6..b5a74f1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "kirkstone langdale"
+LAYERSERIES_COMPAT_security = "mickledore"
 
 LAYERDEPENDS_security = "core openembedded-layer"
 
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 1fcf33c..b273b5b 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "kirkstone langdale"
+LAYERSERIES_COMPAT_integrity = "mickledore"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index a748d77..0a71694 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
 BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_parsec-layer = "5"
 
-LAYERSERIES_COMPAT_parsec-layer = "kirkstone langdale"
+LAYERSERIES_COMPAT_parsec-layer = "mickledore"
 
 LAYERDEPENDS_parsec-layer = "core clang-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index ec57541..f07532c 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "kirkstone langdale"
+LAYERSERIES_COMPAT_scanners-layer = "mickledore"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index 724742d..550cced 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "kirkstone langdale"
+LAYERSERIES_COMPAT_security-isafw = "mickledore"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 1fd2e4c..81690ca 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "kirkstone langdale"
+LAYERSERIES_COMPAT_tpm-layer = "mickledore"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.25.1


