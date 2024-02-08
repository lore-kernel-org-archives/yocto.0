Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 215DCC4828F
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 15:27:18 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.20317.1707406030790585914
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 07:27:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iLOLfiyP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4105876a3e5so132315e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 07:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1707406029; x=1708010829; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hRtRL+JhGDH2ZIa5vTkPL+4TOos0U030JSTwcE/txwc=;
        b=iLOLfiyPuXksc0NMqGNcK3dFJvOMLuPUOajnwBqpQeHKeZAeu7RN92ciQu6xDv4dMZ
         bBL+qDKgDMpsuSnCVBBrvwZzxDmPVHa/fbNrFfA4yeTLqpjo+wCZLtPEDM5q2FynTNqu
         Wm9KCVokCn2G6798+bYRLGO7GwwRUYaFEsFTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707406029; x=1708010829;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hRtRL+JhGDH2ZIa5vTkPL+4TOos0U030JSTwcE/txwc=;
        b=JK/l9bjvRM7KiR0LrR+htLq7kEke/hyzKVeSHlpsCjOd1f0UCxiPyQiTQrM1Gw0mkZ
         wXHxcNCG2p7iCd5s9ph3s9FhC13sh3MXAHAZk4X1PE7MZGFgjFqhUNijmJHL1BZydU6c
         OXLtZ7v5C78dB6k7X9Xkzm3OYVREz5y/tJMV4D5EyO57QitrZVgEQQLK7pZoQGvFGZjY
         mzxV70LRoXcDtrK8stK9s4r3uY/T1xXzZ8AB8w7yySjh9aePFe1B0tNVgcZPrAUBiaAl
         3d0a3fj8145lYKJdoQ7c/+3W/8tt2dk+Fw/xJH2CSk5GG4O3Lk/2TzF9/UaSLJFw8MTB
         qmpA==
X-Gm-Message-State: AOJu0YxDJdsGZvs/RWMS8XPcjuDd1k49MH7K3tGgpDVd/+RkAI33r7E0
	ARw2UiFsk1x4iQe6bt+ocK1CR3H9sTOy628ur3JyhcvyyuFnrYXTIqeBtYEcK3GS7ORRmtzpcW4
	3
X-Google-Smtp-Source: AGHT+IFvrmf6sfEZwHsZ0lH9JXHN8loP7i5DLg1Nl9WO6zVRMmBgkROkDp7Mny2TfkjmJfRG77m23Q==
X-Received: by 2002:a5d:638f:0:b0:33a:e77c:89d with SMTP id p15-20020a5d638f000000b0033ae77c089dmr6542002wru.59.1707406028721;
        Thu, 08 Feb 2024 07:27:08 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:c14:ae3d:85df:fff])
        by smtp.gmail.com with ESMTPSA id q30-20020adfb19e000000b0033b2221d938sm3817309wra.76.2024.02.08.07.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 07:27:08 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: randy.macleod@windriver.com
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Try allowing a bit more parallelism
Date: Thu,  8 Feb 2024 15:27:07 +0000
Message-Id: <20240208152707.2849716-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 15:27:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62431

Currently the autobuilders seem to run at 25% idle at times. We see a lof
of bouncing on IO load and it appears the systems could cope with higher
values.

Increase the make load average, cpu and IO pressure limits a bit to
see if build times improve.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index e8b51cd..7539aeb 100644
--- a/config.json
+++ b/config.json
@@ -49,9 +49,9 @@
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
             "BB_NUMBER_PARSE_THREADS = '16'",
-            "PARALLEL_MAKE = '-j 16 -l 52'",
-            "BB_PRESSURE_MAX_CPU = '10000'",
-            "BB_PRESSURE_MAX_IO = '10000'",
+            "PARALLEL_MAKE = '-j 16 -l 75'",
+            "BB_PRESSURE_MAX_CPU = '20000'",
+            "BB_PRESSURE_MAX_IO = '20000'",
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "ZSTD_THREADS = '8'",
-- 
2.40.1


