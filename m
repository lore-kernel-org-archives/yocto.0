Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E5FC47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 17:10:39 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.18707.1706029835423471524
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 09:10:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=zrtsXidA;
 spf=pass (domain: smile.fr, ip: 209.85.221.49, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-33921b8988fso4038965f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 09:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1706029833; x=1706634633; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Od4zG6x+vFQ1/sC1LERel5wjL9gBv7LyW6+Bqa5V7ZI=;
        b=zrtsXidAJIYhcn6Cd+O22Pu09Cxmyd4K4ajGEgsLgFWXZTzUOfuS8lH3s/rNwzOyNd
         Y5hGM6h+PxKdw768awXdlwbWlTK72FfHfAgu2JCeb7wdBqHZfAVaaexdiHVBOyJaq9TQ
         /H53MTBAKaV4GY/yNBhJewDsOMVUjBhE95PAUD3E11StKAG+htT2V5oECsz//pbOJxt7
         zt9SASElW8n/SMjTzzxF3rxotydionmEXjKh7Fs4Vx/YbmWpbmOTNgQM7x68A1D4jUkG
         bgxM2Y+HkNKhLLhXiJ4+eRbhLezYAQ9xpqTB4rRjafSj/KqzaD2Zv4SAIKcXSqTdrEXX
         bc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706029833; x=1706634633;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Od4zG6x+vFQ1/sC1LERel5wjL9gBv7LyW6+Bqa5V7ZI=;
        b=jUaDhb9TB6AOLeBKsTeWx7HH0z8YLBsYCZ/LkgiHwTMHBBGo/jMPj6450TSdE88GGs
         W7NMuivPKbf/aGGs2LmcJJNGTNsEm1zwwR9vdMmwqFQsxIr50rw8u4Oi6ccsWjPPP9So
         Gdw9BzUNyqjES3C9C4Rbtb0IncOqocu03ik+jgr+JPSgYzYC9gOt+OhpbKGUiur9jyEW
         7suVykiaf2dMnAIpplFM5dvKB83mEcEgyDlmaYO1DiPb9/iPo6Y89/eG9doPVyWASk51
         GWfipBaLUKd7jnXB9T3jQMlZsbiPdl8N/44vTQrQDnEe+rFYH/KEjYyfW5H3OZ5D74u/
         geQA==
X-Gm-Message-State: AOJu0Yxn3HU91hvAVjjgo3iXeLfZx4/Al/Su7Bk71D2XkgOggK9q2QjA
	MMVhH5sS7HfDyrGsQVeSvJIotRuMGY3f1Y40T9USmqRpNX5u2L+O7u+0f3REEH69Kl5KSjia7ui
	qLoQ=
X-Google-Smtp-Source: AGHT+IGNSh19FDEwNmNayH0XFyZsFSDvEe1A4AAR4avmrnLq0u2W+pn2Kl3/+/msSeGzge7VJT/ziw==
X-Received: by 2002:adf:e501:0:b0:336:c010:bff4 with SMTP id j1-20020adfe501000000b00336c010bff4mr3360261wrm.11.1706029833651;
        Tue, 23 Jan 2024 09:10:33 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id df10-20020a5d5b8a000000b0033947d7651asm1538258wrb.5.2024.01.23.09.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 09:10:33 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder2][PATCH] schedulers: Run reproducible-meta-oe for master once a week on weekends
Date: Tue, 23 Jan 2024 18:10:04 +0100
Message-Id: <20240123171004.1355265-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 17:10:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62246

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 schedulers.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/schedulers.py b/schedulers.py
index 561f2b4..edd77b5 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -476,6 +476,10 @@ schedulers.append(sched.Nightly(name='nightly-check-layer', branch='master', pro
 schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror', branch='master', properties=parent_default_props('meta-oe-mirror'),
                   builderNames=['meta-oe-mirror'], hour=0, minute=0))
 
+# Run reproducible-meta-oe for master once a week on weekends (2am on Saturday)
+schedulers.append(sched.Nightly(name='nightly-reproducible-meta-oe', branch='master', properties=parent_default_props('reproducible-meta-oe'),
+                  builderNames=['reproducible-meta-oe'], hour=2, minute=0, dayOfWeek=5))
+
 # Run metrics at 3-7am each day
 schedulers.append(sched.Nightly(name='nightly-metrics-dunfell', branch='dunfell', properties=parent_default_props('metrics', 'dunfell'), builderNames=['metrics'], hour=6, minute=0, codebases = {'' : {'branch' : 'dunfell'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-kirkstone', branch='kirkstone', properties=parent_default_props('metrics', 'kirkstone'), builderNames=['metrics'], hour=6, minute=15, codebases = {'' : {'branch' : 'kirkstone'}}))
-- 
2.39.2


