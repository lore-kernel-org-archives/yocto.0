Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29BA2C433F5
	for <webhook@archiver.kernel.org>; Tue, 19 Oct 2021 04:45:31 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.5529.1634618730294250998
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Oct 2021 21:45:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NAmlRlVz;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id gn3so8229078pjb.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 18 Oct 2021 21:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TgUtQmT5fKLXndDCkhbEqgcFj73GhWYuZydEGTuWF3Q=;
        b=NAmlRlVzf9kWU2VWZCwlibkae4nP/+DhGuWDJ7vPYIAventub0b3Vk5ZNcd7KHOSET
         SFeYjCsnCKIvDJd0X9afq0rbPFs2AdTmvdH9k4Hv3D3FvmdFZjzRzZHUW2qun8IubQIS
         QVYezq5T+MIK/8okNL2gcTVZ9VQ53W9DZpCKyKXXLlPKc/Ng8QV0ptecn9fwLumBz0a6
         Jx28XcW7SD4bLhAd3IWEH/jB+EwwjSn8Pxr7q7SkquA/Mj7dnuXKr+JuLsaWY9fV4ZJC
         ksGhBdc0AbyLDaziKxaAlYip8/4qz383QpvNZ7bAaHw+SQPXMschG7Mh1hwbG5S9thXk
         BGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TgUtQmT5fKLXndDCkhbEqgcFj73GhWYuZydEGTuWF3Q=;
        b=iFksgzacW3YM2mz2i9KF+SyMnb3F/YhSB6ILs7FEnIZ43I3CBcsD8WzUzAolpO7EL6
         HOAU0txsbB5hYVtIKX0u+KnZqcMwDj0SCvgzR9DCMufFDnxYWH7uzxsnk9LQcJiJ0wcQ
         zogMJlYpSkqVlHgbGKhPJDbF9BRPSv+GYWHck5nbu4eJ18/f2mUCApB2OzPNDPx4zlGw
         qbqVJxR5Sg1yECvBMyv0wKjaYyxH7zZuFd2smexsVxWOe+ka90d1GgQya5HzKKXgj10k
         qkDfj+NPPW4fOrgHUDi5WBX9uRFzeGqzftruVpvL7orgnsMantvmVFW7dc85rUiSP8+D
         xycA==
X-Gm-Message-State: AOAM531H3ZNwz9rcKKCoVvS2uQ1DJewK2ytjUK12C7Jc3S7WBAL2uON2
	+jVYG/uBrxgzdhuu2Z+Vbe3h/Am92bc=
X-Google-Smtp-Source: 
 ABdhPJxDZHlR9sHeUlSiwMT3VHg6RQnBu7wLemPq/FUSHOrvVDBvY8YUmCRdQdUvSDFCyINIEAGiuw==
X-Received: by 2002:a17:90b:4d8e:: with SMTP id
 oj14mr3910319pjb.160.1634618729521;
        Mon, 18 Oct 2021 21:45:29 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:677f:e53b:886f:cd0])
        by smtp.gmail.com with ESMTPSA id
 z11sm1027903pjl.45.2021.10.18.21.45.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 21:45:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][PATCH] meta-parsec/README: remove rust layer req.
Date: Mon, 18 Oct 2021 21:45:28 -0700
Message-Id: <20211019044528.3438545-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Oct 2021 04:45:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55097

Rust is now in core. No need to include the layer referenece.

Drop Priority and ref from repo definition. Not used

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/README.md | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index 24958ac..84cf4a6 100644
--- a/meta-parsec/README.md
+++ b/meta-parsec/README.md
@@ -11,23 +11,12 @@ This layer depends on:
 
     URI: git://git.openembedded.org/meta-openembedded
     branch: master
-    revision: HEAD
-    prio: default
 
     URI git://git.yoctoproject.org/meta-security
     branch: master
-    revision: HEAD
-    prio: default
-
-    URI https://github.com/meta-rust/meta-rust.git
-    branch: master
-    revision: HEAD
-    prio: default
 
     URI https://github.com/kraj/meta-clang.git
     branch: master
-    revision: HEAD
-    prio: default
 
 Adding the meta-parsec layer to your build
 ==========================================
@@ -44,7 +33,6 @@ other layers needed. e.g.:
       /path/to/yocto/meta-yocto-bsp \
       /path/to/meta-openembedded/meta-oe \
       /path/to/meta-openembedded/meta-python \
-      /path/to/meta-rust \
       /path/to/meta-clang \
       /path/to/meta-security/meta-tpm \
       /path/to/meta-security/meta-parsec \
-- 
2.25.1


