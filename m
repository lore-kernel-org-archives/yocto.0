Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86EFDC433F5
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 21:21:04 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.71.1652908860662516584
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 14:21:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hvjCbpE9;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id m12so2976981plb.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 14:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H8E0VKmpxg6Kxo1D5YmNJX7kXWdpXMpy7Fbyz0ErC0w=;
        b=hvjCbpE929rh6LkGz5zG5raFpGHr1DgACBa5JpKnL/BlITDILChJefWP/Keq0jvCTp
         2spUvNj9jaaqIjoAsbVd0ErqTgjWppYslm8BN5VFvfzpdyP5ll7y/fZ1jQz0L6Sdrzxq
         V+IKFkjE4X5K+ObeWdE1U6QeZ6zFdKQjM0noWkUdEcTXALRK6ZpyJh+safzp3sh5MbL0
         T3OJ0vQRiJ+iAfNQQPrjk7KU0ApF6Aym9swh+rihNt1euSyfxvrEeEFTrZgLvpOrnXQW
         eEugEdG7Q6L/X1jGVmiHHz2G4TM9wchEABGtCRkf/g0Us8vYMb1YjyD7NyUCtouxNN5B
         cS3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H8E0VKmpxg6Kxo1D5YmNJX7kXWdpXMpy7Fbyz0ErC0w=;
        b=wjA5J04feXsY0FSNhfT6K5da6V/5XfT6PA76G5MnXxgEKEzCwNB9ZJGjtmH0NzPgvK
         ZaacgCGltbqVfPNt0xyVMTZBYpkFRAgNfgchDOKPhs7RGOyJVRpaGmzCWBoZaImxq52S
         lb5GlnQOywJQ1u9Wk9ulxYhbRLZ3dUJ9ezaUqh5ZYtiIYlMdwZdEklu4yCZwyZV5AfnU
         dvuGDD+cf/QWR5SjSvPgP/yHzDSIbUoRLh6J9VQShs35FvtgI6nz/olCNB4QQqVIxpm7
         UP9JPS8ZzmR7SiJa5H8zNPGX5vGKVcvxA2W4aT7wDCBxe1bwEQgwfwDZdndJrAi9Wwfa
         2Klw==
X-Gm-Message-State: AOAM531Vwj/6uMgzH2nBX943SMOqjeMw6Fnnp+qFhBK732PEWP1hGwSC
	riuLB2DiMNxSKmkAETo0mO3LyErBJqD3jw==
X-Google-Smtp-Source: 
 ABdhPJwk0Axr//1tG//XxbyXuTjeK83GZWxGfQpnk8i4OHfiMCMVhwd3ZaQPxJLnHOOa8i7ZTf1Nfw==
X-Received: by 2002:a17:902:7104:b0:15e:ddb8:199 with SMTP id
 a4-20020a170902710400b0015eddb80199mr1329120pll.80.1652908859811;
        Wed, 18 May 2022 14:20:59 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:fee:4904:d15c:6dba])
        by smtp.gmail.com with ESMTPSA id
 f13-20020a170902684d00b001617caa6018sm2150447pln.25.2022.05.18.14.20.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 May 2022 14:20:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] samhain: update to 4.4.9
Date: Wed, 18 May 2022 14:20:57 -0700
Message-Id: <20220518212057.2900135-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 21:21:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57136

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/samhain/samhain.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index df9e215..eb8592d 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -3,7 +3,7 @@ HOMEPAGE    = "http://www.la-samhna.de/samhain/"
 LICENSE     = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
-PV = "4.4.7"
+PV = "4.4.9"
 
 SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://${INITSCRIPT_NAME}.init \
@@ -21,7 +21,7 @@ SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-fix-initializer-element-is-not-constant.patch \
            "
 
-SRC_URI[sha256sum] = "0aa978accb635000c2d9170f307bff8a95836f8ec01615a53dbd9c2af9564d44"
+SRC_URI[sha256sum] = "dd85bf2f90db3ce616a09608e650f3707a4d69aa1e1fe718f8b359ce0aafc198"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.25.1


