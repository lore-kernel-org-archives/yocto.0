Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5475ECD3445
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:23 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4127.1778203580529925290
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=M84AWhDa;
 spf=pass (domain: konsulko.com, ip: 209.85.216.41, mailfrom: tim.orling@konsulko.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3654ebfd57cso997054a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203580; x=1778808380; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ebl3YGTub9MrTIEoegIDvC3JC2jHUfps/hvTT6lZxpw=;
        b=M84AWhDar3FN7dg2sWeyQK4In1RlC5K0y2dhxGI6oQOpGjLeJk2miEXXwnEcZwqf/X
         BS7wiqGtsBiauDMGXWV8G/Ak5azVExKxPhvR12imzq6zka9+TGGpojSuBmElVqiQbBFQ
         Hh8Z13Ykq+/Y6kNz0hjVWz4cgFAj0qEveprm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203580; x=1778808380;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ebl3YGTub9MrTIEoegIDvC3JC2jHUfps/hvTT6lZxpw=;
        b=S9YItEf2shmhptmTUSepyeEzuYc1H7uZMkxP92yyPUShqy0WCu0UnagJ+UBWUQS6Xg
         S4uvOfZdY+QnLWSzunJlRTy5M2m12qQrzi6xugRei4OrJd9I1fhL7CnEKD85uHc7CAyx
         zOunXm4y4+VCJPl0M8Dzf8SxdbEUYTeLybuQA0pSJD1h7Q0OsrHDG0FmvrSDuC0U35xO
         YIbyWCtWjhEfojX6mPKzfa7ITCMm1ORYnleIHQCcrnfLvMyQA5RtfxVCLcEDBBlBcbTV
         xZOez61dyGkfqReIgIoWF8120hq/qaEvqOTNVVcoZOierbCMLq2GyOvaG4Z9XBCOckus
         7XGw==
X-Forwarded-Encrypted: i=1; AFNElJ8fTm1RZSRFEoIPrN0sAIPvr4S1Zq/MKHqdz8Vyhik0nuHyAJpKnnQshkP6ClRBnYZ0Ewq3jA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzVsdDAUCUx+NEJiiVi801A9Dp5gZXBSak7SOoflTYvMSrHifqh
	61pKMdxY0bqfTvVTpm++9Pe+42nDglG5/H5YjWjZ9BqYiBA+FScmNZkTMWFHvNYsQw1ZmFTyQRJ
	uGdjj
X-Gm-Gg: Acq92OFe6hMvWq0AFzewGmxDZBt3sVcfd0Gyc1Cx6lhy16TBhpUsur2tVXecc+EEl0q
	aIba/zeW8rESQYr4Ws3KTEn7+Rd800N/HVpvr4GZKuwQW6VkWfx4oDWVxD70AgRwc6BiC+8/MaA
	+PD/XLj43/lXD5MNbNyK5zyYRDrrwsxgIyirkm+R1Y6oXM1jOGvIjYfJssNxFsBzCmV1mKJYBVm
	4+dEpR6Vn132GoJRogfXh1xLlawssOm4BygDXgHQFPzc+VFfADJ5H8zxDoUA1RzYuJGcr8UY5Ak
	4XUttpuNtTVoVhVNoxe9ojXkU9Uu4GIXMLTxLgvUNUil48CPvGfm3GDrF5DqX/uHKoXd2XdtIDa
	TPONpLqsYPPfF6YNdj5dCksgUfiISvpzKRZtR9BVm+SHbFsDIV+mCtqWXPTu2xkisya4jSF/KKx
	W/InEqbzjSHDymMMlwts+i5rRIJc6/iOZ4zWEmj95dpfBCq2TEW6kx7XMfbFkFBsBJ3NdV4gsHU
	g==
X-Received: by 2002:a17:90a:d004:b0:35b:e4f8:7cc5 with SMTP id 98e67ed59e1d1-365acb88347mr10394947a91.25.1778203579936;
        Thu, 07 May 2026 18:26:19 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3664da73b90sm165285a91.7.2026.05.07.18.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:19 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 11/11] config.json: containers-library: add mosquitto and valkey demos
Date: Thu,  7 May 2026 18:25:40 -0700
Message-ID: <601c281165450b2be14de46bb9601e82229ca5f6.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66512

From: Tim Orling <tim.orling@konsulko.com>

Extend containers-library with two additional demo images sourced
from meta-yocto-containers-demo:

  * app-container-mosquitto: the Eclipse Mosquitto MQTT broker.
  * app-container-valkey: Valkey (Redis-compatible) key/value datastore.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.json | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/config.json b/config.json
index 7cdf91a..a9a2e9c 100644
--- a/config.json
+++ b/config.json
@@ -1950,6 +1950,18 @@
                 "BBTARGETS" : "app-container-python",
                 "CONTAINER_IMAGES" : {"app-container-python": "python"},
                 "CONTAINER_VERSION_RECIPE" : "python3"
+            },
+            "step2" : {
+                "shortname" : "Build 'mosquitto' container",
+                "BBTARGETS" : "app-container-mosquitto",
+                "CONTAINER_IMAGES" : {"app-container-mosquitto": "mosquitto"},
+                "CONTAINER_VERSION_RECIPE" : "mosquitto"
+            },
+            "step3" : {
+                "shortname" : "Build 'valkey' container",
+                "BBTARGETS" : "app-container-valkey",
+                "CONTAINER_IMAGES" : {"app-container-valkey": "valkey"},
+                "CONTAINER_VERSION_RECIPE" : "valkey"
             }
         },
         "vcontainer-tests": {
-- 
2.43.0


