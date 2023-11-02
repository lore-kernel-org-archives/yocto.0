Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17093C4708E
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 15:21:19 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.34012.1698938470817956042
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 08:21:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=noOux4Ij;
 spf=pass (domain: smile.fr, ip: 209.85.128.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40850b244beso7924215e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 08:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698938468; x=1699543268; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kv2WRIawlKprzE53T1MmESAy+UjtWtfXZbdauIARsJ8=;
        b=noOux4Ij/74YtNL1iHuqk/JneE8vTUgY7opQWKB5P9feuvCFIVy5lo1RuBzN3Zis6N
         OVjaoE9k8YIPvVbYBznIeKLbWBrmS4jbTSv68HXotHLRDtFo8Brwa9IwplEGO1IqmbDi
         NPhub+E2dzxI4Y1F/4kew+5Mppv9d2ZU8CJovov4bSTcb8RojU+AZuA6NfLG6SQKcTxF
         VKBKpj9al07uRS8TSHLPs5e1gnMt1hCQIS8xIxI3dFoBnEGBQM00WHu6Sk9mNIfzCdCH
         bj/B+6C3Xa762F8LByuVhUjar6I7k90ry07Cz4ePktgeWr0rZuNWwey9LHAZ1Hs89R1p
         cxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698938468; x=1699543268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kv2WRIawlKprzE53T1MmESAy+UjtWtfXZbdauIARsJ8=;
        b=e+sbAOvDWLlzmJrFOtC7sk0eYBBebna4gZw1+UimInF05dSR5uXeiZKcLhXkGl9+ej
         II2t2xoeTgbSZD+U+bU03womLQIbZyrvQgvnaNZEGbkBE7/gWdNIq7KBaM9EZcN2ZpDs
         8W8PggjLcK37HEfNuyCmggmVfS9XTt2tmvQAYMQYduW1R1G5ZXJ4bmMpFvhaIs0d8QQy
         HP2/beFbRyrVskKuK2in600TNrVGjWybN8hslRTA/dpQ31Oz4VyfS3rIQ4JMzibuDU7L
         kbzP9+18eEMYMwqfFtAXuKdbAqsX4qJVbQ+veJy/i1bEAF8u2xBH/R/Yay2Qmk/OE3Qp
         AT1g==
X-Gm-Message-State: AOJu0Yx2kErOcXdSVyCTzD5K3DVCdjVWi8CF+MjHb/hPUSZMtbQY6j8x
	7yvt9ng4gNwu1bhYkueO3R7oj45Q6syEO3d+Fdw=
X-Google-Smtp-Source: AGHT+IEiAn7IsSvuq1LF9SJ6YSY4YXLA/RHsG0hcpxOHsmgr4OBCJE3L5LqzSpdW77Dw81prvvVItg==
X-Received: by 2002:a5d:47a8:0:b0:32f:9a76:ea0f with SMTP id 8-20020a5d47a8000000b0032f9a76ea0fmr6128174wrb.46.1698938468098;
        Thu, 02 Nov 2023 08:21:08 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d400a000000b003247d3e5d99sm2723108wrp.55.2023.11.02.08.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 08:21:07 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v4 0/2] Extend auto-upgrade helper to meta-openembedded
Date: Thu,  2 Nov 2023 16:20:42 +0100
Message-Id: <20231102152044.3433589-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 15:21:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61579

In order to extend AUH runs to meta-oe layers, we first need to refactor AUH
runs on oe-core a bit.

Then create a new builder dedicated to AUH runs on meta-oe layers.

v3->v4:
* Split patch between poky AUH refactoring and AUH extension to meta-oe
* Refactor/simplify AUH a bit more (helper script setup/run-auh inlined)

Yoann Congal (2):
  config.json: Move AUH from custom scripts to config.json
  config.json: Extend AUH to meta-openembedded layers

 config.json                          | 152 ++++++++++++++++++++++++++-
 scripts/auh-config/local.conf.append |   5 -
 scripts/run-auh                      |  34 ------
 scripts/setup-auh                    |  29 -----
 4 files changed, 149 insertions(+), 71 deletions(-)
 delete mode 100644 scripts/auh-config/local.conf.append
 delete mode 100755 scripts/run-auh
 delete mode 100755 scripts/setup-auh

-- 
2.30.2


