Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5628FEB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 23:59:07 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web11.137.1687391943438660943
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 16:59:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=ZCu5SnxY;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6686708c986so4531613b3a.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 16:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687391943; x=1689983943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2Zlq+j/PC0RiVtMe9XsiKZw5q5DF96mvjtPLtXzZFhU=;
        b=ZCu5SnxYfJUh81W486RlXw06DR6u0HGcbMfEPoMxSny2dHTXw/7J4C6ok1V1WYeCSl
         t+Jxa2/sEkQkRSDhLm/nLQdybcvRMxPrnlkhgkpebKecfn0V55KLq0d87SVTJJLIuoYQ
         sdBGUuHnMUcHamGfMyb5mMqIS6qd1+uurwFVwCGNBg5mOmBGPHlmvC9To6p4WgQjARiB
         TfB9UQK3gWBL3gMar+SIOlMmCj885lS+sfX2CtxNcDrZop4PxErQ3J1vBuyPENhuuXN7
         07NmnpPhX0JyWl++Lg3jMmviY8KLOSCdTpuekdi5GeO+o7Vw+0C2kLU87vI7eGsSjAt3
         MqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687391943; x=1689983943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Zlq+j/PC0RiVtMe9XsiKZw5q5DF96mvjtPLtXzZFhU=;
        b=lDLRrZCe56niP11t/kEpgqjp0aovniSTFgrV0uGOhYNbO97yVzdTjPcHv+aGvuZKTJ
         dicSC06nmBVO6IHjwzpk4Ti0+S8IDrdErl1ySwWWZmw5XAfO8C94rZUkoaWocKn+euUd
         Owc+l3/DCsmgXDE+QhROnsiHxacYPbxkch72lZ7oMc7fm6DVTdg6fGLhPS4E5saKJ9DU
         GREtXtEigpSjmevLM4mjDYL3KnqoKR5hec8TT7yg46rZ975s//ElyoQ55O3P8+vm4mQl
         /U9atlXbys9S1rF/oOKUG5AbEL9TA204hy1MNBKFafJMOCDX2nxsV+0fG8EmSX0KiZ3H
         nV6Q==
X-Gm-Message-State: AC+VfDywGBBIZc521JFyVXTF6zeYK1eRElCI0/aMni3QbpeoAJkcIxUO
	jbKo4OndUE7S2eY9C5zwCWbFxz0Q6ms=
X-Google-Smtp-Source: ACHHUZ7IzX23Rfc/4slj07MEshKxz8DBzLdGVkxj5FXFeLaBDHLk+IwPtHW1tAOkGUXJQyq51KWd6A==
X-Received: by 2002:a05:6a00:1a87:b0:66a:386c:e6a6 with SMTP id e7-20020a056a001a8700b0066a386ce6a6mr5153498pfv.6.1687391942491;
        Wed, 21 Jun 2023 16:59:02 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9181:d380::eb87])
        by smtp.gmail.com with ESMTPSA id v14-20020aa7808e000000b00666b3b04758sm3413387pff.37.2023.06.21.16.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 16:59:02 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] trusted-firmware-a: Add missing Upstream-Status
Date: Wed, 21 Jun 2023 16:59:00 -0700
Message-ID: <20230621235900.3647687-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 23:59:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60391

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../files/0001-dram-Fix-build-with-gcc-11.patch                  | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
index 14defed..120ea0b 100644
--- a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
+++ b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
@@ -11,6 +11,7 @@ plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c:781:11: error: explicitly a
                 twr_tmp = twr_tmp;
                 ~~~~~~~ ^ ~~~~~~~
 
+Upstream-Status: Pending
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
 ---
  plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c | 2 +-
-- 
2.41.0


