Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web10.7846.1602823132723783829
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Oct 2020 21:38:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TIZMtpWq;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id m128so1034563oig.7
        for <yocto@lists.yoctoproject.org>; Thu, 15 Oct 2020 21:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=8P2owM7cRYWCK/PZh+FE+j2VD5cBHxe+pj7Ii3MnCVI=;
        b=TIZMtpWqq5DYP0o9M+BQL4gO/TDu5Oy4gFiaBJq1Zn5BbHv8dG2SSXG9lxV2qS/gT3
         LGZ4NpVfkElZpjkLFCgwHbj0mo7Qq+z1w5SCccpK6LXV7TQn2ZDs/QBaqJc55yea39S3
         RXV2Nun8R/UVI81IvQcatcEawRqgC4y6yBqi2Ph5ixi4CJdJ1XVF4sa6o5/0uGWSNziP
         1WxoUL/NXhFPP6hkCPAr4FMKw7syG67BLq7lm1NrZncPV3sDsvA11B5fUS2sYmNB2XV2
         T9PGHfpEWjEEjlPvOuRFa/mTgoYM8D880BKD2KQiurMVx8vxweb2T+nLK5uODana/0i7
         z9/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=8P2owM7cRYWCK/PZh+FE+j2VD5cBHxe+pj7Ii3MnCVI=;
        b=nb8NS/Jss736gSxLXv0oehTPhiijDDW/Miw2nJ4qNo/TPKvv6uMCkVZfqcOLHJLDpm
         i8Fp9XiWNOOmTVe3hHKbbS1S0nmIXtkwmsaK/Szgd9eeynN3VDM6Z86uJvtGryjxuUmt
         L/64IHSgifF+rq5xKsnrieFKpg7r6mk4uFyMey7ZFpU5NYTYAzAkcTAUEj5DW+wHjhUO
         MNMRz+7PsmVCHuq1fE7dA+gFJT8v0zagdBYWp4yt7YNnAoGPbUiIIiS5ySdPwLz5Onfq
         LLsQrrAaeBdkIdWL50sCkkt/1z0pJClrtCqmo130STFQuRoFE2mikRi7W7sQnjfnu3hb
         SWYg==
X-Gm-Message-State: AOAM5323c/9fVwWiIq8LKj1R4iPF5UV9LclcxhtTV8KN/u2cu4LgHjDB
	tJWb3Sv8YSd0xL994Fnf5RWgfb2vwYo=
X-Google-Smtp-Source: ABdhPJxRMrSk8+9tm+mnOg8DQJoGC9Rd5/5zb82b33MgZB4d5FW9ZTSJTLBLd+5aXUi1w5ys5Nd8DA==
X-Received: by 2002:aca:3fc4:: with SMTP id m187mr1251119oia.59.1602823131876;
        Thu, 15 Oct 2020 21:38:51 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:65ad:e112:5db1:721c])
        by smtp.gmail.com with ESMTPSA id m29sm607782otj.38.2020.10.15.21.38.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 21:38:51 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] meta-securtiy: Add gatesgarth to LAYERSERIES_COMPAT
Date: Thu, 15 Oct 2020 21:38:50 -0700
Message-Id: <20201016043850.24267-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-hardening/conf/layer.conf           | 2 +-
 meta-integrity/conf/layer.conf           | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-security-isafw/conf/layer.conf      | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 2c3bd96..8c0254b 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "dunfell"
+LAYERSERIES_COMPAT_security = "gatesgarth"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index 5896214..22d8874 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "10"
 
-LAYERSERIES_COMPAT_harden-layer = "dunfell"
+LAYERSERIES_COMPAT_harden-layer = "gatesgarth"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 6075df9..76374eb 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "dunfell"
+LAYERSERIES_COMPAT_integrity = "gatesgarth"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 965c837..db243f7 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "dunfell"
+LAYERSERIES_COMPAT_scanners-layer = "gatesgarth"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index 63f990a..b8ee1c0 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "dunfell"
+LAYERSERIES_COMPAT_security-isafw = "gatesgarth"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 46d0279..cd62fba 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "dunfell"
+LAYERSERIES_COMPAT_tpm-layer = "gatesgarth"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.17.1

