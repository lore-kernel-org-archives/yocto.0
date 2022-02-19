Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DBFC433F5
	for <webhook@archiver.kernel.org>; Sat, 19 Feb 2022 22:04:39 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.15455.1645308278125622852
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Feb 2022 14:04:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=N0MrYtA+;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 v13-20020a17090ac90d00b001b87bc106bdso15403320pjt.4
        for <yocto@lists.yoctoproject.org>;
 Sat, 19 Feb 2022 14:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mASwhcVLzC819arE+pEhJpGfe4Z01jjWb6lJW8v9H9c=;
        b=N0MrYtA+DVoRGrUIOY4oRBLgr2MeP1NDiQQBHJ+1AQqAB4NW3nvEHB4vnTDR1vAtMx
         dffOJWL0JZ8AQ5pDABC1HwS7oH2T6EHmvJS7ITWyJyG79opB7zlVMB9fUKWcMIqtOnEB
         tlFePn1NPGcPyutZ3bTxX5N7bFG8X5dvMlCnw4O2IOn0TC8rpM0ZbI47XivLY8ZSzRT6
         WB2uD0WPLdbP13dx1KgolrKhv2h93qjpUt7Ny466osRLj8Lfp+gVpPE/tn36zPYa0mw/
         HHvbbJ1IRnXnH49LaciRIYEeA+TS6PZoac3coiw0VJv9ZmhtS8o5jM7SiLgG2QOubvy6
         D7xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mASwhcVLzC819arE+pEhJpGfe4Z01jjWb6lJW8v9H9c=;
        b=VCeRGnv4FBOd+e7WdLrHyxu1JdE3d1xJSFhA9ovP2nls4GyPIaGdsZctJYpS0VDnE/
         ND74zK7HpWXdrej6V/ty1O1X5yr6qQlykUxJ0nY+wPU4R3p27axusnK3EqcYH580//yw
         uS3T+m+2X1NcZQSK3JKq0+ilJ/9kh7kCL8+dI9s89rGo+hkdFaDN0OIOY6gV7+a78VA+
         H/DEQzNAqSb8kj+NS8+m5CLkpUye45MxqCSL9NZCGMYmPZlzL8aIvpoYnAVpY0U7NQl6
         03OhB7AHNdmkPpVzznx6Yo0QDByHAnibgtlXbvzVkxdlSTk4WV8ZShXIjdY0+YUYmzDm
         WVHw==
X-Gm-Message-State: AOAM531kYchZZNDZDHfZvcMScaGnPFhCNOfhtjVW2gzU2Rfjw1FP/avn
	IcHrDnWVuudw5xx5x+Lff7HKzS7oTGg=
X-Google-Smtp-Source: 
 ABdhPJy+vIK6Ic0Qjx4JlSYH8vxsUtcR/B5BDsQY765+x8r6/2qUA/NmkHborLH0+yOeVyUgcEJTAQ==
X-Received: by 2002:a17:903:32cc:b0:14f:2fcd:ccd8 with SMTP id
 i12-20020a17090332cc00b0014f2fcdccd8mr13043430plr.138.1645308277162;
        Sat, 19 Feb 2022 14:04:37 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:aa90:34c2:d733:1b3a])
        by smtp.gmail.com with ESMTPSA id
 s29sm8042103pfg.146.2022.02.19.14.04.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Feb 2022 14:04:36 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] layer.conf: Update to use kirkstone
Date: Sat, 19 Feb 2022 14:04:35 -0800
Message-Id: <20220219220435.88625-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Feb 2022 22:04:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56218

Update the layers to use the kirkstone namespace. No compatibility is made
for honister due to the variable renaming.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-hardening/conf/layer.conf           | 2 +-
 meta-integrity/conf/layer.conf           | 2 +-
 meta-parsec/conf/layer.conf              | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-security-isafw/conf/layer.conf      | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index ad9da56..1f83593 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "honister"
+LAYERSERIES_COMPAT_security = "kirkstone"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index 1cd6f4f..bc33d97 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "10"
 
-LAYERSERIES_COMPAT_harden-layer = "honister"
+LAYERSERIES_COMPAT_harden-layer = "kirkstone"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index e9446e6..3d58be4 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "honister"
+LAYERSERIES_COMPAT_integrity = "kirkstone"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 2eeb71b..19900bb 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
 BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_parsec-layer = "5"
 
-LAYERSERIES_COMPAT_parsec-layer = "honister"
+LAYERSERIES_COMPAT_parsec-layer = "kirkstone"
 
 LAYERDEPENDS_parsec-layer = "core clang-layer tpm-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index ec4fd47..7c07625 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "honister"
+LAYERSERIES_COMPAT_scanners-layer = "kirkstone"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index 86b0d4b..e8cdc1b 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "honister"
+LAYERSERIES_COMPAT_security-isafw = "kirkstone"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index b00dd3c..52e3ee0 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "honister"
+LAYERSERIES_COMPAT_tpm-layer = "kirkstone"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.25.1


