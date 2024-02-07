Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D8ACC4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 23:16:02 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.5178.1707347758993627758
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 15:15:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=ApUbS1bE;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41001c6e19aso1899195e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 15:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707347756; x=1707952556; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CNIwnHYAuYAHVrwJhsBNKvqqsl/yGhky9LwILCJipv0=;
        b=ApUbS1bECJth769ZEfgHZYGv5/bsOMsco3+uzqvPieb3ItLxiA44UDaivtraqA4g4b
         Ym2v8EihFfa4X6Y3n+3mkNJhYKnsbvh0PJe9+sEbxKwxUdjzo/2wxgovSWt2iypmzN88
         UNtb6hhOI6CDp6BadwhQIADwiwnNjWGoh0XT+vLTAcrSNxTqybYyDE/eF3PKgQGkj2/3
         YjjLuxbXu66AMUA8csMbDVmGEnj9DnT4W5ED0f/k1DJipYYC3zchbMgp2s13xoHxiwPX
         NLQWx/ftJUdwpJO6jKU83tjIDWyb6nhBsA8NRzkwJGhq2rXBLB6Io5WSS6zJ8YRl/kL8
         tixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707347756; x=1707952556;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CNIwnHYAuYAHVrwJhsBNKvqqsl/yGhky9LwILCJipv0=;
        b=hak3Vr4J8g2T5f8jxrccdCaigx4tHM/y//6KJl9ntv/QIkZhfM6i0/YSUsUAE1z1Ke
         vESF9y521pKHPl8FC/XnWA/VO1XqyMP4wxd9Q5Ks4E4YWxL8KHjmLqbja1QAUM6DNoLx
         Q5JRA/oPQ/STKCnOZLxZXff7o+DCYBWjbDPk3cSDtcrUI74/8C6nTzs7riDF4X5m23jp
         yh2MfQQ088V23D5Rlh/ip0L6U8LHccO+RXPvVt9VzhwHsmNO/qHjE5Upw4Aj2YJx0Kiy
         U/xBn8kU/6M0yna71WfOLIdYWbvHTzmmOTUxHn8nN6ezIwra5eaVIHmp7Drk8Qo2WtUk
         ruLA==
X-Gm-Message-State: AOJu0YyOi9InlZ4nLOnjupiBw6DNgCVXKwSAd2A/gh9il91P263aVe9r
	+gE/qpq//rtQRTulRM13LJ7N7DjMXVGSi5VoHRSLBPCt/rg+Knok0BUSfMFocfHDMzNOvbqk1FB
	HHSyz8g==
X-Google-Smtp-Source: AGHT+IGl0qI6kA++7t9u0Pgj3Tk0N+XdBVuPEIHMQbivODqw/LTBnZ39i//OrJC10AYgdzMkrWynuw==
X-Received: by 2002:a05:600c:3b1e:b0:40e:45c0:ad64 with SMTP id m30-20020a05600c3b1e00b0040e45c0ad64mr609824wms.14.1707347756768;
        Wed, 07 Feb 2024 15:15:56 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.local ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b004101bdae3a0sm2231834wmr.38.2024.02.07.15.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 15:15:56 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH 1/2] README: Fix "subjectprefix" git config
Date: Thu,  8 Feb 2024 00:15:53 +0100
Message-Id: <20240207231554.149413-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 23:16:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62424

The fixed config does match what all other lists do:
  [yocto-autobuilder-helper][PATCH vX] XXX

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 249feb2..35b928e 100644
--- a/README
+++ b/README
@@ -32,5 +32,5 @@ Patches for this code should be sent to the yocto@lists.yoctoproject.org mailing
 with [yocto-autobuilder-helper] in the subject.  This can be configured automatically
 with the following commands:
 
-  git config  --local --add format.subjectprefix 'PATCH yocto-autobuilder-helper'
+  git config  --local --add format.subjectprefix 'yocto-autobuilder-helper][PATCH'
   git config  --local --add sendemail.to yocto@lists.yoctoproject.org
-- 
2.39.2


