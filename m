Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEC3CCA47B
	for <webhook@archiver.kernel.org>; Thu,  2 Jun 2022 15:57:13 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web09.846.1654185425231238055
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:57:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=q7hj24fl;
 spf=pass (domain: gmail.com, ip: 209.85.214.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id i1so4858983plg.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Tp6F3SIlwo506C/kK9mFfz7ADrd8W51rgBrAKIsV6Gg=;
        b=q7hj24fl98PxqSrqjwIdFDqFszmw9Y+buwxhjiWOy/f0HDHHgcEgl69qQj9nmwWpY0
         ACDhwPoyp6t3R0c8jwK149NzhaEnUqUdXKL60H28plJybW1i+dzyPLG4DEn95ouDeWaQ
         r9xA6jjArDzKvOGM070ZuyjSERVlgBuQyG7541bqx4dIAcIt1L7Opim06AXDvdrjyNzR
         Uzq+jsuUZ1HWsQ2kVcGhnMd/8255VVkKyKVm4pcgiI1fWHMYHuPwHj02QbeQCZ3IN5OA
         WZ2pcNtwlp7T/8drA4KWFg72EvN4U7aKaDYveAWeySFjT82bhfJODAumfRNKDiI+W0jy
         f+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Tp6F3SIlwo506C/kK9mFfz7ADrd8W51rgBrAKIsV6Gg=;
        b=PXt1iOMXk+EljqWWfLYfPoWE4gN7/tYdL93WgdtlX0mW4zv1vFkYd5a+O8iXu//hNg
         iWADNbv0LvRnarzoCku2gbpu73MFRGOQEmShSHP8mGAeQbI7cCH87hVZHJvdCkPEdeHP
         1JPowjkupRxESSsYhELptShl8LhaYPiTljxdzHVYXaBmaoeWhNoahBdjz0qeilOOImvP
         tapzDlwWoJ3CJ3oy51d8NXxPinW0ng4yGh5Ojn7LUfoRei91UK6iTlOuxpEk1u9KnULn
         CbPTC+CQu+KYtp81m0rmL/15Q+Ijbjxkt0vS0jd+7cHOWXFdUUe16uNDTJJQYvHjrIPM
         Qgog==
X-Gm-Message-State: AOAM532ETxl+KjvYd1SOEHSFaeZusWPurYqnJE7GTCNxMKthIXmc1yc3
	2WT606SUoXJYsMCSGGfa7KlIv1qLyf4=
X-Google-Smtp-Source: 
 ABdhPJwD3nLUNRVuAevZGxSCK7ARM82vz2oI4UTjncC30cFhZwUfB+YnCBhOLUmRByhrpytqLLiQhw==
X-Received: by 2002:a17:90b:3c6:b0:1e2:e9fc:4e79 with SMTP id
 go6-20020a17090b03c600b001e2e9fc4e79mr25675972pjb.192.1654185424190;
        Thu, 02 Jun 2022 08:57:04 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:e8e8:b71d:2c05:ffc8])
        by smtp.gmail.com with ESMTPSA id
 c14-20020a170902c2ce00b0015e8d4eb207sm3707996pla.81.2022.06.02.08.57.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 08:57:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] layer.conf: Post release codename changes
Date: Thu,  2 Jun 2022 08:57:01 -0700
Message-Id: <20220602155702.260918-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jun 2022 15:57:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57251

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
index 7d57f9c..fa7d79e 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "kirkstone"
+LAYERSERIES_COMPAT_security = "kirkstone langdale"
 
 LAYERDEPENDS_security = "core openembedded-layer"
 
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index bc33d97..5983161 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "10"
 
-LAYERSERIES_COMPAT_harden-layer = "kirkstone"
+LAYERSERIES_COMPAT_harden-layer = "kirkstone langdale"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 3d58be4..1fcf33c 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "kirkstone"
+LAYERSERIES_COMPAT_integrity = "kirkstone langdale"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 544cc4e..a748d77 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
 BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_parsec-layer = "5"
 
-LAYERSERIES_COMPAT_parsec-layer = "kirkstone"
+LAYERSERIES_COMPAT_parsec-layer = "kirkstone langdale"
 
 LAYERDEPENDS_parsec-layer = "core clang-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 7c07625..ec57541 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "kirkstone"
+LAYERSERIES_COMPAT_scanners-layer = "kirkstone langdale"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index e8cdc1b..724742d 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "kirkstone"
+LAYERSERIES_COMPAT_security-isafw = "kirkstone langdale"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 52e3ee0..1fd2e4c 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "kirkstone"
+LAYERSERIES_COMPAT_tpm-layer = "kirkstone langdale"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.25.1


