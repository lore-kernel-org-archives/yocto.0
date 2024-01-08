Return-Path: <antonio.oliveira@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10370C47258
	for <webhook@archiver.kernel.org>; Mon,  8 Jan 2024 15:58:48 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.349.1704729526391245151
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jan 2024 07:58:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=EwAvf9YJ;
 spf=pass (domain: konsulko.com, ip: 209.85.221.51, mailfrom: antonio.oliveira@konsulko.com)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3368b9bbeb4so2167387f8f.2
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 07:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1704729524; x=1705334324; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vqtd0eBxED6qV11zJLVVpCU08xGYwatZ0VJcxHzEfU8=;
        b=EwAvf9YJo8yrbiy3Vit9hFUgDrVhsOB2OngIEE/94gWQaXdyH0O3i0V8VKVE+ZwDxf
         rR0qGGs3YDXrblpr6pxDGvvl2d24G5pk8A8hRvxG1CSley6338q6U73T8AOjmqT9MqZf
         QONXERYYESlqleXvETMIYFQTjP/s54tiStgb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704729524; x=1705334324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vqtd0eBxED6qV11zJLVVpCU08xGYwatZ0VJcxHzEfU8=;
        b=FCzlMj2ZD1r4ZRDJ02WJhEX1BKCC8j8IChslV9AesErR+WIBcpuqT9p+WSe5l1VgU3
         qppACOT9pJgVL6h7YcBOMFrfWdj8caKLmUJFUE9Ix3h8llt8Ujyh1OLKOGM3mJGaOK5/
         y0WPZpLRLLlwQ1clwdyvLkl4wj/0P40N8XeAgrS9gmCvVVJMlZ7xTbBJg9Y35F18syMa
         Q5fKmf2GfwzRsfuzHJ5BoSbI+2jKongSs2l552DPa0xLxZuHTLRvqLeJrLoRMCXkcPrU
         ASZFIoUPiOUnnNp+nMUmAuUFaOi4nmE/63mCZAiXY5u8cv7a3Yl156Gks67f3WO5NS3Z
         htaw==
X-Gm-Message-State: AOJu0Yw1MqFzmCRtbNc2ASP9hFD7ZjDB3iJJ9EimhWLY/1zYvjxPV/DO
	G8tSCjL9aaj5hE52rN3lsmsPHXrYVhpNZqnqaW2lPomDJCA=
X-Google-Smtp-Source: AGHT+IGf9inmn0/ZQ4rv83Hs1mslaMp/MfBDuZUvwvZg7JsP9JvBDHD/494UsgToYFsYAPCnZYm/1w==
X-Received: by 2002:a5d:4485:0:b0:337:5d51:8b0e with SMTP id j5-20020a5d4485000000b003375d518b0emr1114672wrq.255.1704729524398;
        Mon, 08 Jan 2024 07:58:44 -0800 (PST)
Received: from acme-iron-carrot.home ([2a01:14:112:2860:d63:ebd1:2caf:4862])
        by smtp.gmail.com with ESMTPSA id u3-20020a5d4343000000b003376d4248a9sm1930710wrr.71.2024.01.08.07.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 07:58:43 -0800 (PST)
From: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio.oliveira@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Ant=C3=B3nio=20Oliveira?= <antonio.oliveira@konsulko.com>
Subject: [RFC PATCH v2 3/3] add layer configuration for default node
Date: Mon,  8 Jan 2024 15:58:38 +0000
Message-Id: <58100b7c02d73fa442e5c650d78e8f7a5acf8aca.1704728801.git.antonio.oliveira@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1704728801.git.antonio.oliveira@konsulko.com>
References: <cover.1704728801.git.antonio.oliveira@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 15:58:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62105

* declared dependency on meta-openembedded to meet depends of nodejs
  when built with default settings.
* added selector for default version of nodejs.

Signed-off-by: António Oliveira <antonio.oliveira@konsulko.com>
---
 conf/layer.conf | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 19a19b2..7e198c8 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,4 +12,10 @@ LAYERSERIES_COMPAT_lts-nodejs-mixin = "kirkstone"
 
 LAYERDEPENDS_lts-nodejs-mixin = " \
     core \
+    openembedded-layer \
 "
+
+NODE_VERSION ?= "18%"
+
+PREFERRED_VERSION_nodejs ?= "${NODE_VERSION}"
+PREVERRED_VERSION_nodejs-oe-cache-native ?= "${NODE_VERSION}"
-- 
2.34.1


