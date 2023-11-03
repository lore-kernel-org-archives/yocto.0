Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E608AC4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 10:48:34 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.49116.1699008514254402821
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 03:48:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DQMctJQo;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4081ccf69dcso17688735e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 03:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699008512; x=1699613312; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=JVDUeiP6U+vM0KQcZUrT6sBCCG5mTEXgJ83CE9PPKz0=;
        b=DQMctJQoVus7QyciG4fVmqXPcEt5h77CZct2Ay4aWZ3MWNNusX6TKWqsFE4zozOOC+
         FMcspJAKz/u3dx950uP333vWcaWsA7ilb2xkUJ5R94R0CaIk/XBK0VWdN/7ClZAgiY27
         BXn24UuaXEtbIdajoJ1nU9qx5yfbvNN8qZ4WQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699008512; x=1699613312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JVDUeiP6U+vM0KQcZUrT6sBCCG5mTEXgJ83CE9PPKz0=;
        b=S7TAg1PEiWwUIAl7jms0mlsAOMsdnF7s+Ww1gHYxzWGu9KDvLUbIdO9TDLn8vyeh5J
         fvVJPwbMCsjtLm/M/I+BvSUXhNyVRlbyHHUb9PFbL2vIITgir5Mk4ECOmobftJrS+5HW
         LcyMdLMLlrqeJF9RQwc6a+4rGeeuEPMnINuBRjT4whJo53dWtlIZJJGUGeI/mjVx2dkM
         Pa3nPCBmZmNA3vUYA8r+TXid3KetAYrN2hyjS4PSNO4dlNZufcUWBVSlX3K/xVcI9cFe
         AwfNi4Eud13WST7eZ5T1efCWdGjGDvHJE2E2wRA8QH2jiJNC7BeERemeoXQMLePYvaJ0
         t0bA==
X-Gm-Message-State: AOJu0Yyn8kJS5fwUB5992pJlafmqoLUr+wlF/xfPal2XkDKD5nvahACF
	MFN/wfyNS72SivrAgX5hOo7GKVof3KDaS+7rwVc=
X-Google-Smtp-Source: AGHT+IHPum7FnQDoexQDV+RiFykVu7o0R8MrheIBE4sNfYaFF8WM/bZTqEDi584gme/z4a8J7giOGw==
X-Received: by 2002:a05:600c:3b24:b0:403:c70b:b688 with SMTP id m36-20020a05600c3b2400b00403c70bb688mr2860195wms.6.1699008512492;
        Fri, 03 Nov 2023 03:48:32 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:e0d8:6688:b1fe:2c10])
        by smtp.gmail.com with ESMTPSA id ha7-20020a05600c860700b004080f0376a0sm1968678wmb.42.2023.11.03.03.48.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 03:48:32 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Add auto-upgrade-helper repo definition
Date: Fri,  3 Nov 2023 10:48:31 +0000
Message-Id: <20231103104831.2637627-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 10:48:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61591

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/config.json b/config.json
index 1b3c2b0..b2d6fb8 100644
--- a/config.json
+++ b/config.json
@@ -1631,6 +1631,12 @@
             "branch" : "master",
             "revision" : "HEAD",
             "no-layer-add" : true
+        },
+        "auto-upgrade-helper" : {
+            "url" : "git://git.yoctoproject.org/auto-upgrade-helper",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
         }
     },
     "buildtools" : {
-- 
2.39.2


