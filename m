Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web09.20610.1626649671185207758
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t3naJ3ey;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id o3-20020a17090a6783b0290173ce472b8aso12966902pjj.2
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZKUi+GaQk3+EijblHtqpb84DR+oHOrpq0LCe/wogkfs=;
        b=t3naJ3ey5dEBrzTXG9vDemyjv+4W41t5HXaIbj0LDfx7c+P7T6scdOH7P4MOpAQjE5
         wJszU9+Ynvfg3YEOzwK5ssFGERZk9rgWMm4nQdbNmhRnXsje/w4z+uLt0aab8BiiiPlZ
         FpEQoCx8N0tjNrD7kuku3R49T6tDkcPKh+nLMWfJZhvOKhpwNfDGOYqabXzhC6JfoHc3
         c0prgPD4qYocW4+njh6ERfA2aFBsPR26WKX0IprPUKmMPMnAqRx92ZcOvgBTXNRVOQkd
         7z4ta9DP7L01FSqFPBfSURYUWPI8zZthr7I24Y0uj5sMCwMm4beakVftNK7M6RFOVUEZ
         5iFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZKUi+GaQk3+EijblHtqpb84DR+oHOrpq0LCe/wogkfs=;
        b=lMPLJG2tPH8L2KLb4mf9mAXTwMEufy2Jqjpq2t7qW8dqs5lxlWmxT78tIFJLIijocf
         X3NCwLpt3U9k1twX2b4NHviRk4LxQnE8QZYFXnb2q44t5ZcSe+roMpVA001iZ0VXahgE
         zlf6QGDbyXWzdo72pLcSqhIQZTduoFDUz76amEnSLnYPAK5H/kAnPVR8RO9BJxjzkHvM
         H0G/emBzLnXcfuJO/syc9X7A7mDYUwu3HDGDeOcfiPf66MlbKprc1HOTJjUUIy1BvvLG
         qwgTtAdBvmcl9JrneDuScdL5JkspBVEQynAOsva9/NE5Gs9SBlEZqL+QMqHVHJK6cg0k
         +x6A==
X-Gm-Message-State: AOAM530HLsktC1eRl6o8LLGmJZ4AMI2LkDOgfhdz4DdwhTbW+tkgqWYD
	i5IdVrlFjzYnFvwyx0pvl0ZziWCWLsb6Ow==
X-Google-Smtp-Source: ABdhPJzFbg8m7J3WzQnR6uCOYVMKWSnFYjFfPbt2/O+x97apmr3Kox3MpHNAGO5VXNk3yskk8rJ3yg==
X-Received: by 2002:a17:90b:1041:: with SMTP id gq1mr26697889pjb.222.1626649670554;
        Sun, 18 Jul 2021 16:07:50 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:50 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 09/15] docker-compose: bump mariadb to 10.3
Date: Sun, 18 Jul 2021 16:07:14 -0700
Message-Id: <29aa9d6b5e136817bf97b1586f574f78298c5c2b.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

10.2 was based on Ubuntu bionic 18.04,
bumping to 10.3 as it is the first release
on Ubuntu focal 20.04

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
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
2.32.0

