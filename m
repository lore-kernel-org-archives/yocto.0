Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DEC54E60
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 19:57:38 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.5772.1710359850834910912
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 12:57:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=yCVSB4QK;
 spf=pass (domain: smile.fr, ip: 209.85.128.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41312232c7aso8540345e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 12:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1710359848; x=1710964648; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mZJoDl81/EhY6CeyX+KY+B1MCtidD4Mte1+kRY9nebA=;
        b=yCVSB4QKoMuDyOhTt9v1uF2W5gIm0/nrxRKtAF1n+JQ9vUpY6mdmJTecZCUlQMCMG4
         6SGEsxfJ3IX3z0QkNzktVhZJZTT/OQCaPgySFNMJP83T++pemj/H6BFajKmDSmociNAh
         g1hvG2rsfJUfeymttl22igB+vXIegEJ6DFWQvY+6ZbJVnSY1wj3rBH5umjN+zbmOoDrw
         qU7m6OESuut/9rpOfaFR+awky0Qlx6SZMYXKK45bV7nUUK6YhIZmsGbi4WLcJO3s90A1
         jRCWHWshWKDfQzwxfCw6kaAJBXqd9bCpmuemjMWbCWTmsJBD1y4X93GIHhBRj19SA8sH
         eA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710359848; x=1710964648;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mZJoDl81/EhY6CeyX+KY+B1MCtidD4Mte1+kRY9nebA=;
        b=Hj3IGpMEg7bGb0c+YeMfUdFb312vkIZMimWGKMQfLzq/vgqp1MqOrFJLMYU3060Ja1
         vt5pt2E3yTQoT9mCLaQ6bwVAS0FmC0x+ZgpgZRZs8yA8LZ3GMBTE4NDxvLSfX76vde+d
         b7b9JskCQUszvxqnKxryxFUEKz2i7oOP367x41b1prBBtEQfbx/QgysMs/KzqlEnftyy
         2zjz3RYKOJrBjST2ombdr55F1xkHW6DLCi6PF6aytoSho8VRWRM7RGG0Oy556+gI9ab+
         n594UIq64qLw/eDgxs7co3IiYyND/wnWLG4XHoRp/0vfEkh0M82A+LbADBXyA0b8ZPtH
         r9Gw==
X-Gm-Message-State: AOJu0YwxnqBiWIVaj8+f03Fh4/CT8Dc/K+q8beflok38bXtqU+3u9cnA
	/LU3c+paEjjB12ZQS9HM9jIF+TVyJ1SRAGTUc9MDkze0Bfpta41VIP7UOKw7HMZq7PWM0iLPloQ
	gcOc=
X-Google-Smtp-Source: AGHT+IEx26673nItKEcn+yGuC3zlAljk0lhMxnlSg80Rrr4rFPYjqkveA3Z5sYb7MzO9eiLMGu4PKA==
X-Received: by 2002:a05:6000:906:b0:33d:a626:be71 with SMTP id cw6-20020a056000090600b0033da626be71mr3363221wrb.4.1710359848520;
        Wed, 13 Mar 2024 12:57:28 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id q4-20020adf9dc4000000b0033b6e26f0f9sm10662653wre.42.2024.03.13.12.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 12:57:28 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder2][PATCH] schedulers: metrics: Start with master for the daily full download
Date: Wed, 13 Mar 2024 20:57:19 +0100
Message-Id: <20240313195719.2132088-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 19:57:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62754

Change the order of metrics branches:
* First, master at 5am which may do the full CVE download (might take
  1 hour to finish).
* Then, the other branches starting at 6am to allow them to use the
  fresh download.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 schedulers.py | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index a30383f..34e2b70 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -497,12 +497,14 @@ schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror', branch='master',
 schedulers.append(sched.Nightly(name='nightly-reproducible-meta-oe', branch='master', properties=parent_default_props('reproducible-meta-oe'),
                   builderNames=['reproducible-meta-oe'], hour=2, minute=0, dayOfWeek=5))
 
-# Run metrics at 3-7am each day
+# Run metrics at 5-7am each day
+# Starts with master which may do a full CVE database download and start other
+# branches 1 hour later to allow them to re-use the fresh download.
+schedulers.append(sched.Nightly(name='nightly-metrics', branch='master', properties=parent_default_props('metrics'), builderNames=['metrics'], hour=5, minute=0))
 schedulers.append(sched.Nightly(name='nightly-metrics-dunfell', branch='dunfell', properties=parent_default_props('metrics', 'dunfell'), builderNames=['metrics'], hour=6, minute=0, codebases = {'' : {'branch' : 'dunfell'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-kirkstone', branch='kirkstone', properties=parent_default_props('metrics', 'kirkstone'), builderNames=['metrics'], hour=6, minute=15, codebases = {'' : {'branch' : 'kirkstone'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-mickledore', branch='mickledore', properties=parent_default_props('metrics', 'mickledore'), builderNames=['metrics'], hour=6, minute=30, codebases = {'' : {'branch' : 'mickledore'}}))
 schedulers.append(sched.Nightly(name='nightly-metrics-nanbield', branch='nanbield', properties=parent_default_props('metrics', 'nanbield'), builderNames=['metrics'], hour=6, minute=45, codebases = {'' : {'branch' : 'nanbield'}}))
-schedulers.append(sched.Nightly(name='nightly-metrics', branch='master', properties=parent_default_props('metrics'), builderNames=['metrics'], hour=7, minute=0))
 
 # Run check-layer-nightly twice a week for nanbield
 schedulers.append(sched.Nightly(name='nightly-check-layer-nanbield', properties=parent_default_props('check-layer-nightly', 'nanbield'),
-- 
2.39.2


