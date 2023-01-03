Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87C12C46467
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 16:36:42 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web11.68255.1672763794267438423
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 08:36:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hN2rVzVZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id u18so43183275eda.9
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 08:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DzzbewlJ7Mmly2iTH4rCkIgcwjuXkeCOzJ4P+Ar0Nfs=;
        b=hN2rVzVZ88sg0wCBKztEPBQaTNU4FcofyCs5N5NuEvCzzIIzRm4YVHPTAlcaseraod
         D0EAmowDXnKXXTqrimNoo4CmChilZUaHKmAvWG6c0LSMfEHlLNCscbHT/pHNlfVnqC0U
         d3GLQSa79rtde7JpV6JDFVVT1Ivag6XoARylpJjazcv+H3f0aIs9d+WYccZimwxStizs
         wAbFpf1UGh58B8TuCgHUUY3mwWGDPYeGGf0i3uut0ECYVOyT3b1wiJ0vXHQ2tPuhNXdl
         WArPxKo7KFPL0YxLoIEFdwgTjGUqSf+PreH0Y9swnvB126dvQvIh6bFTVcue86MUY1gh
         Lj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DzzbewlJ7Mmly2iTH4rCkIgcwjuXkeCOzJ4P+Ar0Nfs=;
        b=mW9exH74K/JtKTiZLk3tONeFoN8AuyQyHLSScc6AwB/wR3pBSJZZWqOIHH4FN2mYYp
         O1AD8OFXSX+bGVfZuKZwV3NvX226z4Qbk+pdTDdetweF2ORtBa+9bGWO+6US+fOkQ5C2
         F3lqLRI1WbfOdChoZ4wASnH5n4IO1ei6yJRrqEs9lYBNP+jUWh8ogrfEerpy+zGgNGna
         8DVc1faz77WWd9asrL4ufMVUMSMUCsj8rRqmiAGLLGO9O8hLxRPVzCX4B2jeve0Ztpgt
         2zx4KnPeCMy1NUd5h/aszdI0I5BX2aEYGDx/nvLZjyJAHbPrHA0FNNRNO3TKvuoIOBg/
         tpBg==
X-Gm-Message-State: AFqh2kopEbdBf/0dLjuphbx+40srLO99YWW5egUz3pu9s9LbL11AmWgr
	ohN8cRZyDQRlXpYAzl+4Gv/I0zFA6y4=
X-Google-Smtp-Source: AMrXdXuCFlo1eR/uuLDcoUeDYiiEpfMq2+CYbTUxnLQT9A+nHi08UuMD2Kwo8rZyDEOnp9aG9YDdmw==
X-Received: by 2002:a05:6402:5407:b0:47e:d7ea:d980 with SMTP id ev7-20020a056402540700b0047ed7ead980mr35459299edb.14.1672763792710;
        Tue, 03 Jan 2023 08:36:32 -0800 (PST)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id b19-20020a056402139300b004642b35f89esm13872479edv.9.2023.01.03.08.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 08:36:32 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][PATCH] layer.conf: update LAYERSERIES_COMPAT for mickledore
Date: Tue,  3 Jan 2023 17:36:25 +0100
Message-Id: <20230103163625.514855-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 16:36:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58913

* oe-core switched to mickedore in:
  https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
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
index 470c7f6..b5a74f1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "kirkstone langdale"
+LAYERSERIES_COMPAT_security = "mickledore"
 
 LAYERDEPENDS_security = "core openembedded-layer"
 
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index 5983161..add3cbc 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "10"
 
-LAYERSERIES_COMPAT_harden-layer = "kirkstone langdale"
+LAYERSERIES_COMPAT_harden-layer = "mickledore"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
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
2.39.0


