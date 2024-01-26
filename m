Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEA4CC47422
	for <webhook@archiver.kernel.org>; Fri, 26 Jan 2024 16:21:07 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.2090.1706286066433644140
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jan 2024 08:21:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=CgYnsOns;
 spf=pass (domain: smile.fr, ip: 209.85.128.46, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40ee8cea674so3468675e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 08:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1706286064; x=1706890864; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gNtdJTTNUdygFeymeUyjn6aypdo9HfZkFo4vq8iqzfw=;
        b=CgYnsOnsblGK/7esTF2LQbOIQMnrGwXQhpb0OKYr8S3y7CnjLoNx53SWsiEr903xdN
         nFaeDYcyeScHAWVN8/QVEMhodfAFDw3DawpgEVK6D79jihBK2XkbmjIWJn1MB6tGWDsc
         76NyrIgmYW1RaSSSn8GRjbv3u116eEyORa7L4tLVIIRmIaCDLeeWq1Jj6N5BohisOLq3
         8Tdiyrr37FFtXZJrADxhAyIp993nLzPzSHIZ4hJ2RU16Dxsaz9lqDGRbvOggv+0HsiWm
         SgOGTkkgFNwdty0S2xyiGxhalJON1duwleAjytb833Rblq1Lqf7d4fmOKvlMuhCavGF3
         d5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706286064; x=1706890864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gNtdJTTNUdygFeymeUyjn6aypdo9HfZkFo4vq8iqzfw=;
        b=E12nDlF3rWMzO24ihf04fs6ACVcYJjT3qMppmSRtbgQn83vaOdlVukmJ7vXZYnBgsB
         MRez5gYb0OiJzK6XZ4UdIFlnJrvJOH/yQH/TqDSVfJrXutahOCc1xVywkUfrcJijv020
         ueQdwqjk6puXrjoH9xwLHCZ5HU/bYLLve9qPad/tvzDmuKwyeplsFegNOp5WQkG5CX/o
         mkzjhvj47g2b12dlgohMThtj5UXFHU4waBebjs21bstwSZNg9DJ/XOMa1vPDM4mDqywA
         movX/Eg2Ms6mXMJu0yC8GPySfFG018lhTVI9kVeBuVr4zL3Xd5gRO/pAFZSFSFttnOpa
         7+hg==
X-Gm-Message-State: AOJu0Yzd/eAvr3SbhZH+E+gr4sS+1bwD7NAiy/AoZO8YUhi9eRCP7ong
	qKAe+O+lLqaswVbAIWFIytJ1yhGqKmSZaQdPZK6XyHWgF9g8qcaTtsG28dJ0UOG1ON7Wx7A0DOc
	5ezM=
X-Google-Smtp-Source: AGHT+IELul3PG4QEgxh8US6LW587EyeUZcvqg3xr8/mzFlPk6HAH41zfYoyXYdAUxzVX5Gs56qg1lA==
X-Received: by 2002:a05:600c:4a21:b0:40e:ce7c:5e68 with SMTP id c33-20020a05600c4a2100b0040ece7c5e68mr22134wmp.187.1706286064221;
        Fri, 26 Jan 2024 08:21:04 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id c11-20020a05600c0a4b00b0040ebf603a89sm6060895wmq.11.2024.01.26.08.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 08:21:04 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder2][PATCH] schedulers: decrease frequency of meta-oe-mirror on stable branches
Date: Fri, 26 Jan 2024 17:20:42 +0100
Message-Id: <20240126162042.1612997-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 16:21:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62303

Since the stable meta-oe branches tend to be updated once a month. Run
meta-oe-mirror twice a month to be sure to catch every update.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 schedulers.py | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 5ddcc7a..b9f3a09 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -489,23 +489,26 @@ schedulers.append(sched.Nightly(name='nightly-metrics-mickledore', branch='mickl
 schedulers.append(sched.Nightly(name='nightly-metrics-nanbield', branch='nanbield', properties=parent_default_props('metrics', 'nanbield'), builderNames=['metrics'], hour=6, minute=45, codebases = {'' : {'branch' : 'nanbield'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics', branch='master', properties=parent_default_props('metrics'), builderNames=['metrics'], hour=7, minute=0))
 
-# Run check-layer-nightly amd meta-oe-mirror twice a week for nanbield
+# Run check-layer-nightly twice a week for nanbield
 schedulers.append(sched.Nightly(name='nightly-check-layer-nanbield', properties=parent_default_props('check-layer-nightly', 'nanbield'),
                   builderNames=['check-layer-nightly'], dayOfWeek=[3, 7], hour=2, minute=0, codebases = {'' : {'branch' : 'nanbield'}}))
+# Run meta-oe-mirror twice a month for nanbield
 schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror-nanbield', properties=parent_default_props('meta-oe-mirror', 'nanbield'),
-                  builderNames=['meta-oe-mirror'], dayOfWeek=[3, 7], hour=2, minute=0, codebases = {'' : {'branch' : 'nanbield'}}))
+                  builderNames=['meta-oe-mirror'], dayOfMonth=[1, 15], hour=2, minute=0, codebases = {'' : {'branch' : 'nanbield'}}))
 
-# Run check-layer-nightly and meta-oe-mirror twice a week for kirkstone
+# Run check-layer-nightly twice a week for kirkstone
 schedulers.append(sched.Nightly(name='nightly-check-layer-kirkstone', properties=parent_default_props('check-layer-nightly', 'kirkstone'),
                   builderNames=['check-layer-nightly'], dayOfWeek=[0, 3], hour=2, minute=0, codebases = {'' : {'branch' : 'kirkstone'}}))
+# Run meta-oe-mirror twice a month for kirkstone
 schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror-kirkstone', properties=parent_default_props('meta-oe-mirror', 'kirkstone'),
-                  builderNames=['meta-oe-mirror'], dayOfWeek=[0, 3], hour=2, minute=0, codebases = {'' : {'branch' : 'kirkstone'}}))
+                  builderNames=['meta-oe-mirror'], dayOfMonth=[2, 16], hour=2, minute=0, codebases = {'' : {'branch' : 'kirkstone'}}))
 
-# Run check-layer-nightly and meta-oe-mirror twice a week for dunfell
+# Run check-layer-nightly twice a week for dunfell
 schedulers.append(sched.Nightly(name='nightly-check-layer-dunfell', properties=parent_default_props('check-layer-nightly', 'dunfell'),
                   builderNames=['check-layer-nightly'], dayOfWeek=[1, 4], hour=2, minute=0, codebases = {'' : {'branch' : 'dunfell'}}))
+# Run meta-oe-mirror twice a month for dunfell
 schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror-dunfell', properties=parent_default_props('meta-oe-mirror', 'dunfell'),
-                  builderNames=['meta-oe-mirror'], dayOfWeek=[1, 4], hour=2, minute=0, codebases = {'' : {'branch' : 'dunfell'}}))
+                  builderNames=['meta-oe-mirror'], dayOfMonth=[3, 17], hour=2, minute=0, codebases = {'' : {'branch' : 'dunfell'}}))
 
 # Run the build performance tests at 3am, 9am, 3pm and 9pm
 schedulers.append(sched.Nightly(name='nightly-buildperf', branch='master', properties=parent_default_props('buildperf-debian11'),
-- 
2.39.2


