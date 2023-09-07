Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCC96EC874D
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 16:48:53 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.18205.1694105331537690727
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 09:48:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gCW2hs9Q;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-401da71b7c5so13210235e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 09:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694105330; x=1694710130; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TSu4NDdwKjIbayhIwnl8zrCDzMFpAq4D/dcQ7aP6ULk=;
        b=gCW2hs9QDiMcRTy7p2pBFWDQz7Q7vjIu5/FPvUYQVvuTRCD5ujYHUbQJ96hGVE8wFx
         XiblOkYzNdBDVQdtdu/wCBOiwLmYU7Sg6ZTlRxiIUaXyZHXM7GvpS7afM00J8fQBcIfA
         klfsNmzCqy4dpn034MZzktrNBezSDMGvd5TLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694105330; x=1694710130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSu4NDdwKjIbayhIwnl8zrCDzMFpAq4D/dcQ7aP6ULk=;
        b=aioZ6ysqB4WgDp1xzketmLhkQUEWuljEbOncWf+hH6gltanZlIZRot4e9zYyhr8OnL
         SgTDMTVjhVphZN/o/NsC8Z059cllfDflDgQrQammBtz1XfG6SPJQlcUejRb5MiW87tgz
         3qMM7VIzFY0j9gTMfHie+3VxFk1w/FcM7La4p8BT+P96bxoXnrMQhi0GDue4dPA7iUa0
         hS2Yws61xXMDf/AyuxEGwwKl/hgcJYbIX/ANe9jOO/KMmRqT2/RsCo1oC3OaUHX5ccuv
         9G8o8CdP0vlK2rs65kJ9o34Vbm/Bh0GME6GCDPVRUn77J7yo3AJYZ+yuzuZAKCQ7Oz6M
         cYQw==
X-Gm-Message-State: AOJu0YzJMElypUuV7iBzt9Rb+NQImy2Gf7toc2Ju0HxVITSZ6rBzOkKX
	v8bR6xeRPxp/tB4o6VisRAOpKNUiI0yR4JjwXPU=
X-Google-Smtp-Source: AGHT+IEJeQQEGUNSgIZ0Lc/oC4+5NIYO+lAO30DEqdSdp3i+Tx117RA2P8e0LqacUJEhCNPGtsolrQ==
X-Received: by 2002:a7b:c456:0:b0:402:ee67:45d1 with SMTP id l22-20020a7bc456000000b00402ee6745d1mr163172wmi.36.1694105329904;
        Thu, 07 Sep 2023 09:48:49 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5f38:2f43:a165:5f10])
        by smtp.gmail.com with ESMTPSA id l21-20020a1c7915000000b003fef6881350sm3026493wme.25.2023.09.07.09.48.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 09:48:49 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 4/5] config.json: Consolodate oecore test steps
Date: Thu,  7 Sep 2023 17:48:45 +0100
Message-Id: <20230907164846.3186078-4-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
References: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 16:48:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60938

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index bc73e93..685e957 100644
--- a/config.json
+++ b/config.json
@@ -319,17 +319,13 @@
                 "BB_SIGNATURE_HANDLER = 'OEEquivHash'"
             ],
             "step1" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage"
+                "BBTARGETS" : "core-image-sato core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext",
+                "SANITYTARGETS" : "core-image-sato:do_testimage core-image-sato:do_testsdk"
             },
             "step2" : {
                 "SDKMACHINE" : "i686",
                 "BBTARGETS" : "core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
-            },
-            "step3" : {
-                "BBTARGETS" : "core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
         "qemuarm" : {
-- 
2.39.2


