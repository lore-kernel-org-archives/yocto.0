Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26032C46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 05:00:53 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.179129.1703912450216474707
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Dec 2023 21:00:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GYyJfybY;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6d99980b2e0so4774014b3a.2
        for <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 21:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912449; x=1704517249; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FgZoMkrOCxiY4QtNPEqasv7QeQtDHfVIoqE3B6ucRPM=;
        b=GYyJfybYbO14elob/xNNQYMJoCJM42HMt6TuaeZ8/cmh+LYf7xjmLmR27y+gnczuRG
         DeG69XDz91NqokgkIa76+Ps8CN/886egSa+PRBf0jUpDekyUE5bbaoQZ1Urn70etaVjV
         gxXDLXy/ZU4L6ZYAlaHtKgKEOXfmWwnqDIfEsfgGx2uxCfHHN3BAl43f6qkDpQ5iJHrD
         x6UNvnhKHYBZRKtDeJxa9bvFrhf0BVKaWF5mAd2VRvHgMX3SxDUeHCyD1KwtUvo/ew2G
         dhIcglYoubCSaiMm+jBocMXD8OxILX3RRC8hPOrXFUOLniTx/HU8b16O2LkeCHKnIEK+
         Vg1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912449; x=1704517249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FgZoMkrOCxiY4QtNPEqasv7QeQtDHfVIoqE3B6ucRPM=;
        b=RQnCjmmYCNl4PiQYqKD4FRSaHR4mSXYT5n7GYDn3CdMrDAiXw6iVEv1d7mgCJJGNXq
         4SGUiyuNtV5bw1NdK3OhLivI0xJQLuGfSvFjt+256/lCmBUeof3PZowD6YGn8yrWLzp5
         MJCSiBMiz6ZuwL5odUUCOusr3YrLwKpqVvoNA0gshSM+h7HULBC1SZ1hFFSmjMuMP4WW
         xvZWtO6lUrNwXZqvNrSdyCCtwl1y9BbmNiW3SmS6L1aM8ZSCrKq0SOcgm/GdE8ai7yVz
         BxbzDVQcQRzYSjKEXBUAAEX/ZOckb5QfhJJCZHwsGza9IGHlDBnOkPiLDt9U6/gJryH2
         Nwdw==
X-Gm-Message-State: AOJu0YxsaWegVwi8tPzNjO5Y6gdZ8zkrnK7fZQyP/5DZmQ/wDhsv1Fnu
	p46Cj+zgGl/n7eFvTrMgU9SOEyhjsao=
X-Google-Smtp-Source: AGHT+IHUwKKcjOUzUJsFkOckdSqYBzJHP5qf4jSynyMc+eAb0CtnmMrcllX8yzs6kkV2noZmEiXq1Q==
X-Received: by 2002:a05:6a00:1ca8:b0:6d9:af4e:804 with SMTP id y40-20020a056a001ca800b006d9af4e0804mr10362952pfw.35.1703912449289;
        Fri, 29 Dec 2023 21:00:49 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:56fb:3e3a:cb3d:4a01])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b006d9a9727a8esm12124536pfm.178.2023.12.29.21.00.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 21:00:48 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 3/7] docker/settings.py: fix RABBIT_BROKER TypeError
Date: Fri, 29 Dec 2023 20:57:13 -0800
Message-Id: <00b024cff8768852bb0f57a3b863dc615c5b2b77.1703911977.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1703911977.git.tim.orling@konsulko.com>
References: <cover.1703911977.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 05:00:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62054

Within the layersapp container, if you try to run layerindex/update.py:

  File "/opt/layerindex/settings.py", line 280, in <module>
      RABBIT_BROKER = 'amqp://' + os.getenv('RABBITMQ_DEFAULT_USER') + ':' + os.getenv('RABBITMQ_DEFAULT_PASS') + '@layersrabbit:5672/'
      TypeError: can only concatenate str (not "NoneType") to str

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker/settings.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/docker/settings.py b/docker/settings.py
index 33ab332..c202585 100644
--- a/docker/settings.py
+++ b/docker/settings.py
@@ -276,7 +276,7 @@ SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
 SEND_PUBLISH_EMAIL = True
 
 # RabbitMQ settings
-RABBIT_BROKER = 'amqp://' + os.getenv('RABBITMQ_DEFAULT_USER') + ':' + os.getenv('RABBITMQ_DEFAULT_PASS') + '@layersrabbit:5672/'
+RABBIT_BROKER = 'amqp://' + os.getenv('RABBITMQ_DEFAULT_USER', 'guest') + ':' + os.getenv('RABBITMQ_DEFAULT_PASS', 'guest') + '@layersrabbit:5672/'
 RABBIT_BACKEND = 'rpc://layersrabbit/'
 
 # Used for fetching repo
-- 
2.34.1


