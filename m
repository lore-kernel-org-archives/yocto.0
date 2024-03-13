Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BD7C54791
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 19:54:48 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.5690.1710359685806018477
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 12:54:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=AMkHxMPU;
 spf=pass (domain: smile.fr, ip: 209.85.128.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41324a16c9eso1467715e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 12:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1710359683; x=1710964483; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yDITUTaAMUuGbK84P1j2qTU96Z0M8xh6qf+cmNY0NhA=;
        b=AMkHxMPUWCO1yA8Z637DvSkZQ2Y1nP17t9m1RTSK1Z+IcZZ4p1LhJqnI3n+CIOQ+G3
         E1w48MyOd/tK6q14OuF4LQzqQHyiEsbxOdkho/jKs7G1mcFRnGgHLfS2mM2Pz5gkaDIY
         T3yvqUMpxjcmcBULjQ2/2vSdljwuw/Feyyuel+6v64kpQVJxedgbDJsUqnMmxmW3kWqS
         IknhBnFp0gWuwcoIsgyzSQc4gtpAR3y4iNha9sKdO/kKXpkw5DrDDNi9wmcJXpeSDjsa
         EZeZSuTG54wCI9wnpPiEAxnGOoTYDugucKBSE9K0vWWIQm5LCMH4nZsAItPIS56AlH1+
         4AAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710359683; x=1710964483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yDITUTaAMUuGbK84P1j2qTU96Z0M8xh6qf+cmNY0NhA=;
        b=PLIWWbf99Kffx5MIBys6sxRYZycTzPSWgx6JwWvsDluAMdUjas2AQOAFevMib3Tdkv
         V52p2cqqFOe9NNzz127aVHrWdXrIcwzHG2gee78SBMX/CZ18i5o07kYKga+bkeeb50oL
         3zO4Ow/o7eKCXAI9UPFHxpF52NvszWrRrZNV/d7xmr8H/PecO1cGyKUDQEYUIkqYeBpg
         sgrZ8WszF+4/OInYp7dwbXwKH9TwWMLbGds95jCPen/wXGYeWVyfA62UsF0DRgwGc3KG
         PcNHE2sR/eA3CrPNL6/ABO4ToEI+xp+UmC8lS13T2h5k0KtSur33RRtdrt+dnEjJalPc
         jcJw==
X-Gm-Message-State: AOJu0YzN7Mg3FGV8CaBrQicrND+zGZ6EfojOOa3zKEzddZSZ7YWe7mAD
	cogeK5x3CGj1NvFJBuOi82OYT/dHByGh+zpuIW/ucB37n9nRQmu61WkQML9bbG6wSjGBLGSYm72
	T8g0=
X-Google-Smtp-Source: AGHT+IFdconIu8bA4pq5q4xtqnQjfNJ020igSIo80sG7ETavchBNvJif7Vzi2lltNEwf/c79Fc22Jg==
X-Received: by 2002:a05:600c:1c9b:b0:413:2308:7d94 with SMTP id k27-20020a05600c1c9b00b0041323087d94mr767310wms.20.1710359683554;
        Wed, 13 Mar 2024 12:54:43 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id p18-20020adf9d92000000b0033e17341ebesm12480855wre.117.2024.03.13.12.54.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 12:54:43 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json: metrics: Switch to daily CVE DB full-download
Date: Wed, 13 Mar 2024 20:54:24 +0100
Message-Id: <20240313195424.2131952-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 19:54:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62753

By using CVE_DB_INCR_UPDATE_AGE_THRES = CVE_DB_INCR_UPDATE_AGE_THRES = 6h,
cve-check will do a NVD database full download if the database is older
than 6h or reuse it un-updated if its younger than 6h. Since the metrics
builder is scheduled every day, that will result in a daily
full-download.

That will workaround NVD API limitations were some updates may be missed
and the incrementaly updated database is not equivalent to a freshly
downloaded database.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>

---
This patch depends on [PATCH 2/2] cve-update-nvd2-native: Add an age threshold for incremental update
https://lists.openembedded.org/g/openembedded-core/message/197046
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index fdf4052..763121a 100644
--- a/config.json
+++ b/config.json
@@ -1290,6 +1290,7 @@
                 "CVE_CHECK_FORMAT_JSON = '1'",
                 "CVE_CHECK_SHOW_WARNINGS = '0'",
                 "CVE_DB_UPDATE_INTERVAL = '21600'",
+                "CVE_DB_INCR_UPDATE_AGE_THRES = '21600'",
                 "BB_SERVER_TIMEOUT = '0'"
             ],
             "step1" : {
-- 
2.39.2


