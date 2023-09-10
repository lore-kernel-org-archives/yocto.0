Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC7A1EC8748
	for <webhook@archiver.kernel.org>; Sun, 10 Sep 2023 09:59:56 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.33411.1694339995662751634
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 02:59:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=gDVpVX8g;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-52bcd4db4c0so7418204a12.0
        for <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 02:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694339994; x=1694944794; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8ipTJBpAokGn3bh+5nKLOojkxsmQocoSLnIXHae1nK4=;
        b=gDVpVX8glB943+TKbWyHSJ7w2E8bnDCZ8DYUDQoaj+9z0D1AOlpvNP4t0vEscJh0kR
         3j9bwzQMWPscg5oBCfkTWx8NJRh7FO+J2R0zTCXfKT1qAoIR6pbqa0fS4oS38HcEHDeE
         U/6yD0Fd5L0CMZ91NdBySe1xWY8OoZeJ08c8Ko+LXqpcLznuz6t7PxZ8FOvmhQFZoDAA
         E2vCVpR2mL5j8u+Tw4GJqfnpb/80r9o/ukGNyfEXfo0zCb43lVtd1xQwEmnHNcMb62/n
         JqeDi2bIwzBXL4Qd6H/+rTJC4vshcMWIw6JD/ySUYMvTWS5KG3gHW4l3Z6vO0Y7/9enX
         4UoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694339994; x=1694944794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ipTJBpAokGn3bh+5nKLOojkxsmQocoSLnIXHae1nK4=;
        b=uQWUklg94iaPYa4p6M1zjtyvgkMlmxwaLNH4hDbZKcYziG3MMy9eJPATCcRG0vXSEM
         AcurcTcYlEb3xM6MA4keoXxB2e8OfgKSQnT/2Oy00MNhMLDEZrJXgw6pXud9Mkm52rGC
         VSDGWLinLvnuE3OkeicD+7yVaNXFjhFuv5xz6gliXQpYQU/2ogo21ZFrdLzDH6oZrOTi
         IZ3gVNE/jdZPVp6O5USTFZvIHCY+dIN2NNmbzPZ9onhsT1JmlRMe61SN0cWQmhJMmlsa
         vi/2itt8uwk2y56usdnuKDv9qLENmdUWlrdzy+6fnELGTzbku9YqECI7KV5d9Aga/Vms
         g/iQ==
X-Gm-Message-State: AOJu0Yw7S7k9Y1bdt55QpAbfVtvsxD+C8h4DGi4Hi5srH+VVdQw9khY6
	rl5tjJU5wEI4vBb5LA5U9NeNvHbjtMk=
X-Google-Smtp-Source: AGHT+IGaNTgUvGs7Rg2EvcN0DfE5dh+NEGnAYQhyibTT8kP2PYPe6KXn0O+isTYh5q99qI1iNARmqA==
X-Received: by 2002:aa7:d646:0:b0:522:18b6:c01f with SMTP id v6-20020aa7d646000000b0052218b6c01fmr9148595edr.3.1694339993932;
        Sun, 10 Sep 2023 02:59:53 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id a11-20020aa7d74b000000b0052a404e5929sm3141870eds.66.2023.09.10.02.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Sep 2023 02:59:53 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <martin.jansa@gmail.com>
Subject: [meta-security][PATCH] layer.conf: update LAYERSERIES_COMPAT for nanbield
Date: Sun, 10 Sep 2023 11:59:47 +0200
Message-ID: <20230910095947.1917837-1-martin.jansa@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 09:59:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60955

* oe-core switched to nanbield in:
  https://git.openembedded.org/openembedded-core/commit/?id=f212cb12a0db9c9de5afd3cc89b1331d386e55f6

Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
---
 conf/layer.conf                | 2 +-
 meta-hardening/conf/layer.conf | 2 +-
 meta-integrity/conf/layer.conf | 2 +-
 meta-parsec/conf/layer.conf    | 2 +-
 meta-tpm/conf/layer.conf       | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index a436f97..3e8db1f 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "mickledore"
+LAYERSERIES_COMPAT_security = "nanbield"
 
 LAYERDEPENDS_security = "core openembedded-layer"
 
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index 4bc1cac..c499e60 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "6"
 
-LAYERSERIES_COMPAT_harden-layer = "mickledore"
+LAYERSERIES_COMPAT_harden-layer = "nanbield"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
 
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 7a9c1d1..d00298a 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "mickledore"
+LAYERSERIES_COMPAT_integrity = "nanbield"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index b162289..503953a 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
 BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_parsec-layer = "5"
 
-LAYERSERIES_COMPAT_parsec-layer = "mickledore"
+LAYERSERIES_COMPAT_parsec-layer = "nanbield"
 
 LAYERDEPENDS_parsec-layer = "core clang-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 1f27031..8075706 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "6"
 
-LAYERSERIES_COMPAT_tpm-layer = "mickledore"
+LAYERSERIES_COMPAT_tpm-layer = "nanbield"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.42.0


