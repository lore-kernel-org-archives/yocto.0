Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CC34C54E67
	for <webhook@archiver.kernel.org>; Tue, 26 Mar 2024 04:34:17 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.771.1711427647759324980
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Mar 2024 21:34:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=FwgWE2sn;
 spf=pass (domain: konsulko.com, ip: 209.85.214.174, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e034607879so39787465ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 25 Mar 2024 21:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1711427646; x=1712032446; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H3A/RNLPHVoqyZjl5AZxC3+OUJEpAv+s7UtV688eRdI=;
        b=FwgWE2snEWeZIt4SAILoUo+GsaxKpa2CJSqPICg0my6/WNHlrYAelY6ivNbhmwVBem
         nf6fVVivC70mw1d/t2mkncLalPK5vCGAQhgc43LHHfMhKGcJSz3r03AMebQdrWXa41lN
         VcCN4RA4O1cqOOfBSKrr5GAK2BFHJUKfQ3gdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711427646; x=1712032446;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H3A/RNLPHVoqyZjl5AZxC3+OUJEpAv+s7UtV688eRdI=;
        b=EurVBKL1cOJmQ7M1w0qmPTRhBlDPqRaSul4qPJpb/E7G6KTiqIXNIIkMoxeCWp84+f
         djup5dFfimideyVJod7snkmgigka8pcWPnfw07Wb6tXdid0xKLFS/++b5kf6csfjbIal
         mmGpfJ3QjlIiVJSCcNc0CVFICVOJ/3IFBheIRyUqGuwMc0tIi+ZEBoyQS+/04++gYsEs
         KXSVuwOOU+gfGXYKDj6NeZKs5KLiqsqHw0wD9nTd4+sAgE3LEfN5QEm0AEhXC0WtYgFo
         390v6lNYRoFrvrqDBPIKq/ykFa/R5+rE5bxtW0Niv7zSnccKPAQB5wRrRHHfTVGgz0QH
         QpvA==
X-Gm-Message-State: AOJu0Yyj0DiignNiCP1TCdV2ip8llP2DIChVHjiB0+ppTNOzINDlmkSf
	kUAu0NUnoLuXelE7ovRNSid9tYeNKlE8WXy2bJp+o3Qx8p08ZNL2AuEksZFVwNpbGfxsPlgLsvD
	mlGNikA==
X-Google-Smtp-Source: AGHT+IHtKdUezCoYPsk4Z7ZE89jaoCCCftFLLskYk/Uo5ApmMIs8LURDbGgAdarxRnOADKUzgaXgMg==
X-Received: by 2002:a17:902:d903:b0:1df:ffe3:f787 with SMTP id c3-20020a170902d90300b001dfffe3f787mr9491898plz.48.1711427646323;
        Mon, 25 Mar 2024 21:34:06 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60::6b83])
        by smtp.gmail.com with ESMTPSA id y12-20020a170902ed4c00b001e0a28f61d0sm5624749plb.70.2024.03.25.21.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 21:34:05 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [meta-security][PATCH] layers: LAYERSERIES_COMPAT add scarthgap
Date: Mon, 25 Mar 2024 21:33:45 -0700
Message-Id: <20240326043344.3298992-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Mar 2024 04:34:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62843

Allow the layers to be usable with pending 5.0 LTS "scarthgap" release.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
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
2.34.1


