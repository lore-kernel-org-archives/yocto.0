Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 313F1C3DA41
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 17:07:09 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.287.1720631225299882864
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 10:07:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bRyRPh29;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42561c16ffeso45345105e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 10:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1720631223; x=1721236023; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=xgQNmJJ96LFy4+IzKS8HnczuV7RF+oOe0auDZaEHI7U=;
        b=bRyRPh29sobo08oOjgqIFG8uluZS9v8+pYdRcILZ1WsZcjcB/NYBJcetRLPtmZnfYE
         oVYUSqFn3PgOqKFuULHB25v1FGz1xS7mheqfvlByrIbuU6zy3GNn3ULWXCRLNw7JogH0
         Sc4j/gB5MibgJdwbPsYrIT6zv21Ok2KhNhyu0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720631223; x=1721236023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xgQNmJJ96LFy4+IzKS8HnczuV7RF+oOe0auDZaEHI7U=;
        b=Mf04ysyFaWbb8YySIZ21dE9CpAD1ElUcrbJBgK0mJHuhwnSe5TSiTAoiypZnj7dkTW
         SNxg1jNsX+m72uxa8CZk/znWLtC5OtxjaaDfhdGOA9LYYm3dQWynVGbm652Mzi0xL/M4
         RaClVOuxy0Kzn351ozBxEI2lBiQGUrUfm+IkibfDb1IlgaXzCzUlDz+ijapn9ooR9bkX
         J8VgI0tbqzhON0QWw9nyazx++lW+XKTPfvJHoXtXscaGe3R5KuCjjB8hJwp0EOPORblD
         julJIEavDhFcbcaefEWFnA+QnAprlGcq2Pr6zGhgHSKBAVnQu6vr9d2Gg6rkBukVe5m4
         E0Ng==
X-Gm-Message-State: AOJu0YzfJfoc36aD7pFAda7sEKJqF9jLg5R0maW6T9jzhlQ586xB42nU
	wY5MCb4s599lHvfVJtqcAcnsM4l6ZYg63olwDnCl75jdJo0iejgQ9stUdwCUo2wbnqVfH6C83pZ
	c
X-Google-Smtp-Source: AGHT+IG/TVce0ZHcvklaXQdRbrtFrnX0/iI/xPqQ4YtofEP60rHxZ8Y4r6fQZK2fvkRLgvvsqwXWug==
X-Received: by 2002:a5d:5552:0:b0:367:4354:52c2 with SMTP id ffacd0b85a97d-367cea6b825mr4065510f8f.22.1720631223250;
        Wed, 10 Jul 2024 10:07:03 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:40c6:a25f:553:e199])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde89128sm5776100f8f.57.2024.07.10.10.07.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 10:07:02 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: OpenSUSE 15.5 and 15.6 have old python
Date: Wed, 10 Jul 2024 18:07:01 +0100
Message-ID: <20240710170702.954211-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 17:07:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63463

We need buildtools on these distros as the python version is still 3.6.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/config.json b/config.json
index 1acdbc9..07ac95b 100644
--- a/config.json
+++ b/config.json
@@ -1938,6 +1938,8 @@
         "alma8*"       : "${BUILDTOOLS_URL}",
         "stream8*"     : "${BUILDTOOLS_URL}",
         "opensuse154*" : "${BUILDTOOLS_URL}",
+        "opensuse155*" : "${BUILDTOOLS_URL}",
+        "opensuse156*" : "${BUILDTOOLS_URL}",
         "perf-alma8*"  : "${BUILDTOOLS_URL}",
         "perf-ubuntu1804-ty-*" : "${BUILDTOOLS_URL}"
     }

