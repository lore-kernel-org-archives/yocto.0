Return-Path: <leon.anavi@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB04C48BF6
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 09:35:58 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.17029.1708940156938709710
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 01:35:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=IAMADong;
 spf=pass (domain: konsulko.com, ip: 209.85.208.41, mailfrom: leon.anavi@konsulko.com)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-564a53b8133so2000737a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 01:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1708940155; x=1709544955; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SFNizXR6dMyXJmFHAp8e+iYZHPEM3rKX5KRf17Dp8nU=;
        b=IAMADongMjmkYjLzJUaMEbWZ0RNLzzelECrpdsg1H4/Qa0iUbOrv95uEUbI910ZgdT
         pjAlkfWR48HTNsvlnUjxNwQRFQBNEg70wKRU9KG4nXrL0NbRkXD04y42bR4JeIrkoPid
         mcrmfFQbHqX9rpKQ8JsHfndIR/46JMKkqOUFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708940155; x=1709544955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SFNizXR6dMyXJmFHAp8e+iYZHPEM3rKX5KRf17Dp8nU=;
        b=XOk39KsXu358x6XBjWF4qC7AwK7t7s50azsyueOhGFLt4PV/eyI+5aDRa4Eeieh7gZ
         qBZrqqNsgxFZI2wXMejLZCYPGjnKQveIA/zRjrhum8/GI0HkTmGUUA9Qm+ZFnHqbZhBb
         wJhjcAhiVClncJC3hpoPvhhgREFH0xUvxqGIr7m+d0LzUHzRt/3ScqG4gTI55ymY+Z86
         mD7tUuIASNxKXLZDamsSdqG8A7sexWHRo49M6Hgsv0Fyc09S7DfHB+HrbtmuhnYvktLP
         9izkfihsg61uLwbG4VadZek7fFh/IYK+i9+uRl0BsDj4uH0H4g+TTb5gmQO8A1m2XttR
         RIFw==
X-Gm-Message-State: AOJu0YxioKGcQvBDa/X4txvtSfRVsr2W+dzosJNa0bPRhHnaDGTEyAcA
	Hyli/SW+PVP7OqNjUzEIRMiX4H2Gbk9EWtJsJ3BLQtNAPMSlMr+HZCzoEQilTfLX+cjgiKHdWbQ
	V
X-Google-Smtp-Source: AGHT+IHNOCWf3qC8ji4pQRn0alVXQOExB/OclYdVg+z2VK4WyV4UMJzey4zayMl0aIjmgLKBnHf4GA==
X-Received: by 2002:aa7:da98:0:b0:565:6c50:823d with SMTP id q24-20020aa7da98000000b005656c50823dmr4481222eds.39.1708940155091;
        Mon, 26 Feb 2024 01:35:55 -0800 (PST)
Received: from tone.k.g (lan.nucleusys.com. [92.247.61.126])
        by smtp.gmail.com with ESMTPSA id fi7-20020a056402550700b005648d0eebdbsm2142560edb.96.2024.02.26.01.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 01:35:54 -0800 (PST)
From: Leon Anavi <leon.anavi@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Leon Anavi <leon.anavi@konsulko.com>
Subject: [meta-security][PATCH] integrity-image-minimal: Fix a typo
Date: Mon, 26 Feb 2024 11:35:51 +0200
Message-Id: <20240226093551.933378-1-leon.anavi@konsulko.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 09:35:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62601

Fix a typo and improve the description of the image.

Signed-off-by: Leon Anavi <leon.anavi@konsulko.com>
---
 meta-integrity/recipes-core/images/integrity-image-minimal.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
index 856249f..125516a 100644
--- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "An image as an exmaple for Ima support"
+DESCRIPTION = "An image as an example for IMA support"
 
 IMAGE_FEATURES += "ssh-server-openssh"
 
-- 
2.39.2


