Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25D9DC433FE
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:22 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web12.3793.1642139721650287536
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a1iopJtl;
 spf=pass (domain: gmail.com, ip: 209.85.215.178,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id 8so1915539pgc.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=VGxt0Bf/FPmowAKnEDaSPZaCkYQwbGMgm5Ulu6v+qtM=;
        b=a1iopJtl6S4WrGbIZJlaNuAVgpNm7qX7dcLCEDCdy75e6YAs7CtsYn9gs1GZ5hztlF
         0EpN+qSy+9W9Nanr7abOdjQMkd4bMsH3Kmh4D+VIu1hjpkqN9fP0ufNgojKewr6h2Gc4
         CYsGw9d8aCy7O2V8W1tIjMcEWIZBrORN0ZAH6+6pR/MnW2eYe/CbHIMi408MVn45307a
         +OFcAiYx6YUmtkIT8vyBoJe2eyPJRsnY2JBuehIpWHYC0nOqqlyvJLYb40l92cEgc5Tw
         Fy+TC84hrC9W9nmWskl88sj/TB8oIli8HdWeejEPljZxqhrZwFZ0MfFPctDR1jtbUjB9
         Ed0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VGxt0Bf/FPmowAKnEDaSPZaCkYQwbGMgm5Ulu6v+qtM=;
        b=sLqPwJmjBO53bwmUhiYqqSvEPqfljk7c++v4dcrgZC32L6/5fqN2ehnmohwCppBezf
         Tg7Lme63TDUlXtH7SzoxWs5QWTHpTDhiAOdV3fOhfQFmWnPUGjqvXKMXhXh3YpEOzUKK
         LVy+x6qKgPmFE/9EghsCjXkpOmVCz6ajqiuqJKdoTIcq0UgUG7fxfWR25qPYg4Qi7lsz
         szbwok3MB19VdoIhqweoGluOE2lZQawD1NzYeBd3qCStOnVvhgRdSTe9iUOB5V5X1YVr
         BwOUn1/xv/cc/lHIjFVZXtpoOFz1SQoYf78lnEOVWbrtveeHRin/tDPSNBnX46RSFqA9
         Le2g==
X-Gm-Message-State: AOAM530kb3CGnkVHPF0xZmce5vNaRXixiiBr/bvBF3FDcW6cAvWtKGb2
	MAoPtjjunKhKAaJkANQ5lZB8m3SFOq0hLQ==
X-Google-Smtp-Source: 
 ABdhPJy/BSNysBrfT3IPKjwGMAOSiidrDyhGHDSKDgTZs2LRgQQV5r72IKNAN6jz1UHGsxoR7Oed5Q==
X-Received: by 2002:a63:8543:: with SMTP id u64mr4450291pgd.474.1642139720954;
        Thu, 13 Jan 2022 21:55:20 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:20 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 08/18] docker-compose: bump mariadb to 10.3
Date: Thu, 13 Jan 2022 21:54:31 -0800
Message-Id: 
 <ecd1005ae217ed81daf876e1f4a5b850147631a5.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55859

10.2 was based on Ubuntu bionic 18.04,
bumping to 10.3 as it is the first release
on Ubuntu focal 20.04

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker-compose.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/docker-compose.yml b/docker-compose.yml
index 44260b6..3e16e95 100644
--- a/docker-compose.yml
+++ b/docker-compose.yml
@@ -1,7 +1,7 @@
 version: '3'
 services:
   layersdb:
-    image: mariadb:10.2
+    image: mariadb:10.3
     command: --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --wait_timeout=28800 --max_allowed_packet=128M
     environment:
      - "MYSQL_DATABASE=layersdb"
-- 
2.30.2


