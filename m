Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28CBEC54E67
	for <webhook@archiver.kernel.org>; Fri, 15 Mar 2024 23:29:30 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.7396.1710545366261222155
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Mar 2024 16:29:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=Ic8J1/4h;
 spf=pass (domain: smile.fr, ip: 209.85.128.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-413ef770149so16987175e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 16:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1710545364; x=1711150164; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Fu1drM2YZaPX7DK9sOsYIQKKjzMYfx0t2D/jSgGvqLc=;
        b=Ic8J1/4higQ7zngwoFgD4i8cZUCa3GzacJbZ/vRDQL45W/v/CIEJrr4L1bNGugY3Yp
         +jGMa0+MjuLDbkBcZQkis78aCeMAmNfZCrxsXPMAxn30vqNT2Av0g6hXTHNDc3DX/gUE
         xLc277aVkcZ98SXxlXRCSTJPgKq/1iQwE1qf+I71SLzPFTqQ4zTWo8eWhmjMvL9yiLmk
         CQ1cwWaanXQ8VAD4nEVHu4miy9+7CojZHPFKmU6suaYAA8XWZjsln7rhK/REPJZnsIr7
         h2j1blULyRL5OJqMarrkL5yD5aA1co9j4yn5UQeBvgMyaqvtY6Ap46ytasm5IeIQFxFg
         bRhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710545364; x=1711150164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fu1drM2YZaPX7DK9sOsYIQKKjzMYfx0t2D/jSgGvqLc=;
        b=GrQenW69pRd+GSpIbl8U9EQMgTw8lXFyYHlZoP6JHKqkZAN25wrzb4EMvo+Pq0bZ6b
         h0RkarFsu3XGL8XHY5R2q2Gb/3oFnysrhqpnVjn73Q6iPqa7K2TMx89G8KK4o2ETUog9
         NkUdjoJdHAV0KQKP3uXo1bkrvurHjJ3nl8DDnWP0zPPynTmxQC6s0aWhKeww7nND0WuO
         wvIuX5uat/eIC4scZev3qifu9kDyCxSRY588KPXE0QrjpbpjMtmPZltIYcH0ysphL6p7
         O/xjb5O7BLus28lUql21G9+j2jQ501/ee1rCau0BO8kjmw31oNKN1g4bR4T4/X8bhlIE
         Wg/Q==
X-Gm-Message-State: AOJu0Yw4oiTKZmt3PGwsgKtwJUrTcXv2H3+nBeppNdlSHiRhbpGKcR/f
	wGNOajYgdBeeMN/oGNT8yaf+4L/c5Dgx38IgbYk2m2SugjqnLZdBxWotnSnzpicaeXSV9OUQJVV
	xHr4=
X-Google-Smtp-Source: AGHT+IHBy0xlZTmA7PduzqpNbcMN7ApkzWsOrHo5Htj1sr8OUbXB6ID97HuwafIduqKDANFxaZZCRw==
X-Received: by 2002:a05:600c:4745:b0:413:f290:c747 with SMTP id w5-20020a05600c474500b00413f290c747mr3208214wmo.33.1710545363979;
        Fri, 15 Mar 2024 16:29:23 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id k18-20020a05600c1c9200b00413011933e6sm7169589wms.39.2024.03.15.16.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 16:29:23 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder2][PATCH] schedulers: metrics: Start again with master for the daily full download
Date: Sat, 16 Mar 2024 00:29:21 +0100
Message-Id: <20240315232921.2251458-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 23:29:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62771

Change the order of metrics branches:
* First, master at 5am which may do the full CVE download (might take
  1 hour to finish).
* Then, the other branches starting at 6am to allow them to use the
  fresh download.
* And, finally, generate global charts data from individual branch
  metrics (at 8am)

Compared with commit 839c3cedbf6f ("schedulers: metrics: Start with master for the daily full download"),
the last part is new.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 schedulers.py | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index a30383f..67cc739 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -497,12 +497,17 @@ schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror', branch='master',
 schedulers.append(sched.Nightly(name='nightly-reproducible-meta-oe', branch='master', properties=parent_default_props('reproducible-meta-oe'),
                   builderNames=['reproducible-meta-oe'], hour=2, minute=0, dayOfWeek=5))
 
-# Run metrics at 3-7am each day
+# Run metrics at 5-8am each day
+# Starts with master which may do a full CVE database download and start other
+# branches 1 hour later to allow them to re-use the fresh download.
+schedulers.append(sched.Nightly(name='nightly-metrics', branch='master', properties=parent_default_props('metrics'), builderNames=['metrics'], hour=5, minute=0))
 schedulers.append(sched.Nightly(name='nightly-metrics-dunfell', branch='dunfell', properties=parent_default_props('metrics', 'dunfell'), builderNames=['metrics'], hour=6, minute=0, codebases = {'' : {'branch' : 'dunfell'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-kirkstone', branch='kirkstone', properties=parent_default_props('metrics', 'kirkstone'), builderNames=['metrics'], hour=6, minute=15, codebases = {'' : {'branch' : 'kirkstone'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-mickledore', branch='mickledore', properties=parent_default_props('metrics', 'mickledore'), builderNames=['metrics'], hour=6, minute=30, codebases = {'' : {'branch' : 'mickledore'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-nanbield', branch='nanbield', properties=parent_default_props('metrics', 'nanbield'), builderNames=['metrics'], hour=6, minute=45, codebases = {'' : {'branch' : 'nanbield'}}))
-schedulers.append(sched.Nightly(name='nightly-metrics', branch='master', properties=parent_default_props('metrics'), builderNames=['metrics'], hour=7, minute=0))
+# Generate charts after every branch had its metrics computed
+schedulers.append(sched.Nightly(name='nightly-metrics-charts', branch='master', properties=parent_default_props('metrics'), builderNames=['metrics-charts'], hour=8, minute=0))
+
 
 # Run check-layer-nightly twice a week for nanbield
 schedulers.append(sched.Nightly(name='nightly-check-layer-nanbield', properties=parent_default_props('check-layer-nightly', 'nanbield'),
-- 
2.39.2


