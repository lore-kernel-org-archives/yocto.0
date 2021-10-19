Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC69BC433FE
	for <webhook@archiver.kernel.org>; Tue, 19 Oct 2021 04:46:29 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web08.5477.1634618789177379822
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Oct 2021 21:46:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=S6UHTziI;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 g13-20020a17090a3c8d00b00196286963b9so1047396pjc.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 18 Oct 2021 21:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3YoXO63FMSUW9qI6XYLNa2M5WEy0H6lBnexrPGi88hI=;
        b=S6UHTziIMkX/CCaDL7cxnYKivjtAqcJs6U9m+5aQw9tvVFeiDot5mx70F1nVdY3Dye
         TD35S/ANDqVbQapF7UwTghf/+3hlk7oTsNwTn0xTb0PJk3LWbO8MVsHpIpYV5U9SzuWG
         wRAkwUn0n9JwLgD4EjElDl8qt4hJJzpuhuTdV67MMgJ9IY9zJu9lXiLAulV5spSwmZii
         iuroj/Bg3ZXUTJybfTHSfH8THY22auggzTGmYSKeVHaQUpNWaayz0Zb7KJlHAPSjuQ5Q
         kt9wKGlzjZgSoUDkr7wQrD16181tqSD2iPCoCRAfrDaMk5/s9zLlOkyJnRiZ6dIAhjPa
         TP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3YoXO63FMSUW9qI6XYLNa2M5WEy0H6lBnexrPGi88hI=;
        b=sDbTlYPNX1LfJ3GHFj4y+NWukzCdEPqAS9O02TleS+sUTIdSS/e8egRg2mKMLC8tVt
         f+O7cJ5Q/qnVlMIa/zBKA+eiC4NLriFxp2hKO3U9HagooVLIqV7PnfFFu3WE96PBEa/X
         YDN2ZvnEDDCPOhAloAJqWVSjwq4CJpq0bXt+YDxc3NSUA4neFU6+maIhnmxM9bhYwhhd
         d9eEtnTkMBC05RUfExqxIkOYyZKNVQ7A5k2rfYkCeOs2laG3/kyKroUiwyW8u9M+BfWU
         vXEbf9aXfwQao+Z2rv3WNMPJdjcTXGfiEEC5GUqDzoERMd5CQT5DTl2wp14ocLgS86kG
         Hjjg==
X-Gm-Message-State: AOAM531GyAKAjdzwmZ4tBYtXfJ1C+FMas/tiZ89nRcHzMKY3n7DbYPiL
	KTGxSeoZSA3js/6z95tA1enxJqUKcGU=
X-Google-Smtp-Source: 
 ABdhPJxMStOpt7aieSafyBvvosQTlJ/WQL4xoqLrqiXkvBdGXrBOwQ21C5qXA9ZsxXDBFSnLqkSIdA==
X-Received: by 2002:a17:902:da83:b0:13f:704:d731 with SMTP id
 j3-20020a170902da8300b0013f0704d731mr31011244plx.77.1634618788556;
        Mon, 18 Oct 2021 21:46:28 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:677f:e53b:886f:cd0])
        by smtp.gmail.com with ESMTPSA id
 x65sm1009579pjj.42.2021.10.18.21.46.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 21:46:28 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][v2][PATCH] meta-parsec/README: remove rust layer req.
Date: Mon, 18 Oct 2021 21:46:27 -0700
Message-Id: <20211019044627.3438627-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Oct 2021 04:46:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55098

Rust is now in core. No need to include the layer referenece.

Drop Priority and ref from repo definition. Not used

Signed-off-by: Armin Kuster <akuster808@gmail.com>

[v2]
fixup mailing list
---
 meta-parsec/README.md | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index 24958ac..aeb48a6 100644
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
@@ -165,11 +153,11 @@ Maintenance
 Send pull requests, patches, comments or questions to yocto@yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-parsec][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-parsec][PATCH'
 
 These values can be set as defaults for this repository:
 
-$ git config sendemail.to yocto@yoctoproject.org
+$ git config sendemail.to yocto@lists.yoctoproject.org
 $ git config format.subjectPrefix meta-parsec][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
-- 
2.25.1


