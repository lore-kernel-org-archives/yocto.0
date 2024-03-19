Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A33AC54E5D
	for <webhook@archiver.kernel.org>; Tue, 19 Mar 2024 11:15:39 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
 by mx.groups.io with SMTP id smtpd.web11.12716.1710846934996331996
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Mar 2024 04:15:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HMWZy6Dp;
 spf=pass (domain: gmail.com, ip: 209.85.210.46, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6e4f1660493so2841940a34.0
        for <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 04:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710846934; x=1711451734; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mVCEIVG6UnhvijQ8f8npwvmpYu08SI9dsZ6sikGhnI0=;
        b=HMWZy6DpRErqENrVOfwiA+Ly0TxoE8poL6eEteB/xInrBAR988vHEnm9//xvNDe/iL
         00I7BQZi+4gmPmQLjouHGJy45t+luXRwc3IDM6fZW9jV4rt569Ejfo2Vrz5AQshwgX+F
         mfHtZwaoJXKzGeurpmTKQiRmC0VmhuUIjTvjUiOvY80HH3j/i8FotFRT6PNHeQCvo/o9
         pM9joSBotb1ohEiHhuNieqAYck0YXxBBQ6kmS+lT01bk1vd3QjXuvrLGj4fsjQC9IPju
         Cxracxr4QfjzhQDApnrz2l/ZkFmY+Dj2Fwq1lk+4aA1PySopFRGkNQln9v+ALcdIy5WN
         hdnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710846934; x=1711451734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mVCEIVG6UnhvijQ8f8npwvmpYu08SI9dsZ6sikGhnI0=;
        b=aFCQdcrWdj+8uMCfzQj406mcuG2ADKR1JWh2epnZj3wi6jOZBuJEVrYYUwfCsB5hQW
         /vIS8I7zBZiuTkbu5rvscIpWFY0ztgM+UAlWd4lsyy3OzCULUfJaSmftI9Gz5aaPY0mq
         +i/2O2dbER8YnxCsZeqnI4muwTUGMJGDLtWAJ8/4vMF6SL2PfuYV8UrqYGs7UGSlm+WQ
         G6no20zLng1LQc1HjMU/GrUfbrZzhfd7AXKFkayxetJKypkTd7UkVi8XzFQ54KFEHDYt
         DRldAtEWq2wd6GZDykc1pFHZY5YGwFAO1D21wdLj2iDMN3IrIGXeVURUmGb5qVVSXk3F
         HzrA==
X-Gm-Message-State: AOJu0YxsMVi/fObU/IjWx/v+UovVfQUu5hS++ebbH8VwrVrrozhGqqH5
	zMoaBpzbpz6nsgimcJKFzxzRVARRUf982PEgcbbGRk5HwQfuXnKUM46qQywE
X-Google-Smtp-Source: AGHT+IE93d6B+pw/5lmUxRmPO8++MQDFsOBRMLg04eWXtYpcnhsSg8MX5yDTmXHk1rCUBpg5g2jS4A==
X-Received: by 2002:a9d:6753:0:b0:6e6:7641:74a0 with SMTP id w19-20020a9d6753000000b006e6764174a0mr2427628otm.21.1710846934071;
        Tue, 19 Mar 2024 04:15:34 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:45dd:7000:f204:39c3:6c76:15b1])
        by smtp.gmail.com with ESMTPSA id l16-20020a05683016d000b006e68a7fa66fsm921460otr.45.2024.03.19.04.15.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 04:15:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] layers: add scarthgap to LAYERSERIES_COMPAT
Date: Tue, 19 Mar 2024 07:15:32 -0400
Message-Id: <20240319111532.413323-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240319111532.413323-1-akuster808@gmail.com>
References: <20240319111532.413323-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 11:15:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62795

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                | 2 +-
 meta-hardening/conf/layer.conf | 2 +-
 meta-integrity/conf/layer.conf | 2 +-
 meta-parsec/conf/layer.conf    | 2 +-
 meta-tpm/conf/layer.conf       | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 3e8db1f..586b823 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "nanbield"
+LAYERSERIES_COMPAT_security = "scarthgap nanbield"
 
 LAYERDEPENDS_security = "core openembedded-layer"
 
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index c499e60..5e22b86 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "6"
 
-LAYERSERIES_COMPAT_harden-layer = "nanbield"
+LAYERSERIES_COMPAT_harden-layer = "scarthgap nanbield"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
 
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index d00298a..043c8d3 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "nanbield"
+LAYERSERIES_COMPAT_integrity = "scarthgap nanbield"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 503953a..9d90deb 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
 BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_parsec-layer = "5"
 
-LAYERSERIES_COMPAT_parsec-layer = "nanbield"
+LAYERSERIES_COMPAT_parsec-layer = "scarthgap nanbield"
 
 LAYERDEPENDS_parsec-layer = "core clang-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 8075706..88a5f54 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "6"
 
-LAYERSERIES_COMPAT_tpm-layer = "nanbield"
+LAYERSERIES_COMPAT_tpm-layer = "scarthgap nanbield"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.34.1


