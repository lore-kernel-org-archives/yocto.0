Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2D9C3F6B0
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 19:40:46 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.6309.1659210037906387133
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 12:40:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SHLzFJMD;
 spf=pass (domain: gmail.com, ip: 209.85.214.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id iw1so7258090plb.6
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 12:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oIQUB2iRtMQEosyfDQjlVtwI5Exf3egXDbgkAqvN4hs=;
        b=SHLzFJMDYIQA5cm+XrBDNEr/Eg96xwT9oJrGJqsGld9e5r+MzbrtkSYLuXjFx+DN+4
         Gwe9fGQPMqEDDOTaRyqXZWOMuQEtMXk2Nhw7XIIfoYuTociLuwmFJ/YxzoBbzRnBaLtS
         y/iGGQXpi5KRk/hUxs6j0KGxjip91iuRUUJ5rHPO3A36x7zy7AfIC5xHRygk3LPkvwhG
         rgxNii7FOeqDIoQdBE3CvtfnlddScOVZFOQgiS5W/wVsMeg0x86NM+qpokgYZDmMyhgM
         nzoHTWCZIOosGsdeFdXXBSQFfb/NK5VQxxOAb0b9TdCAZkkMwUtoJxZjLd7sRAGi4zO6
         kK+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oIQUB2iRtMQEosyfDQjlVtwI5Exf3egXDbgkAqvN4hs=;
        b=VAn9UjpGAg5GCimPH3YoEsULGywnGZWO5gGa2dPyoz7i5ae+5PIBEcND61wxAVgyCr
         sPaTL9G+uJg3KlqkooWV0sn9ty1A/Qpgyojq9jvgW63D8LHm9m/R1UPp8UZWtOMI/T2t
         PriNr+9HfQ21oaba3w1XtLsGL4i85ICOOdOvHf4Z2khT4fCUxUGDUMw3y+rxlZs940co
         odbMPypgy/HmYTO/QqQ24BEoYqxURKvjnK/JrYGKDyBP208NdaTI7a57Ytn0OwzZVR3/
         tGQuUvj3M963H4OhAV06jCBScQeP0CLZSyk1NSMVNZpoMH9WTmFF3Kfp3c3azkuO9tHJ
         NMCg==
X-Gm-Message-State: ACgBeo00piBXttmaeSnNjQrxvVTeDSiNWf4GFsbiOYPHw+huug9T840x
	6db4BcfilpIjYGm4fjP/XBJlvQUM5gc=
X-Google-Smtp-Source: 
 AA6agR5ksHm1YrAoGuAAMFoEStzeWCFdvioXADPIMDIgwW3RUWJHAvlmd4mPA7xeUbzyGALHp6h58g==
X-Received: by 2002:a17:902:ca05:b0:16d:cf59:2aff with SMTP id
 w5-20020a170902ca0500b0016dcf592affmr9821513pld.105.1659210036580;
        Sat, 30 Jul 2022 12:40:36 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 p2-20020a170902a40200b0016a0bf0ce32sm6115665plq.70.2022.07.30.12.40.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 12:40:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] aide: add UPSTREAM_CHECK_URI
Date: Sat, 30 Jul 2022 12:38:31 -0700
Message-Id: <20220730193834.1084392-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 19:40:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57694

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/aide/aide_0.17.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-ids/aide/aide_0.17.4.bb b/recipes-ids/aide/aide_0.17.4.bb
index 7ce0729..52ddc43 100644
--- a/recipes-ids/aide/aide_0.17.4.bb
+++ b/recipes-ids/aide/aide_0.17.4.bb
@@ -10,6 +10,8 @@ SRC_URI = "https://github.com/aide/aide/releases/download/v${PV}/${BPN}-${PV}.ta
 
 SRC_URI[sha256sum] = "c81505246f3ffc2e76036d43a77212ae82895b5881d9b9e25c1361b1a9b7a846"
 
+UPSTREAM_CHECK_URI = "https://github.com/${BPN}/${BPN}/releases"
+
 inherit autotools pkgconfig aide-base
 
 PACKAGECONFIG ??=" mhash zlib e2fsattrs posix capabilities curl \
-- 
2.25.1


