Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6542AC433EF
	for <webhook@archiver.kernel.org>; Mon,  7 Mar 2022 17:04:35 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web12.410.1646672673091982646
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 09:04:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112
 header.b=CDzYV5Fc;
 spf=pass (domain: baylibre.com, ip: 209.85.221.45,
 mailfrom: jstephan@baylibre.com)
Received: by mail-wr1-f45.google.com with SMTP id j26so14007143wrb.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 09:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aC9IuAywGo0gmGMe2UuLCKMlQxj9aGvDp6EN4DraDtA=;
        b=CDzYV5FcCAwdP7z6xEfAt8uLy0JPbKtwnSl9MGFl6x1/9XmBK5qg7BLcDEimWsbEOr
         GK4cyPxfbxJlodk0IEEDHugChHTH1fClQBc9R4zreXmvMDtlDEppnprCQhzynnLxY4We
         RRDLoEQEHRqvp1/RL9U0nSf3AMKRo7ps7eVUuhxJbqFZuUKBJs6giOZuTIiewtk0qWrq
         WAKkoTaWU/KJjKbi/X4RdAspfrodOcjAX+HbwvWFjaOWy36wu8+PSLOkfh1iNljdOO8/
         du1p7SI73n6YB6mDw1UMvifTTNLo289S/oYjgvds68dSFixK8EeM919akYNY7yUO7REk
         GAOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aC9IuAywGo0gmGMe2UuLCKMlQxj9aGvDp6EN4DraDtA=;
        b=b5YVt7NAOduxtIyGWV4ATU1/Cc2RW/cw6jgzJUxAC9R3BdV3zksR/+A2DH/W+c3BmO
         C/rrdM/26I9DdO5iPkosuzMdyvMHDSe6ULHs5zhFr1Fv8ZOw6HMIFSjtusCwNqInDbYO
         PV3D8y7DNsy2hZAUjp0bksJmSTkipcR4mS//yslsFLwkeUCMwMWtmJ2kvFiAX8meFbTg
         xRWnlcJd6QPxX+3zelGiBQlT6Y4uSN/IQQbaWDfPT95UskcB+wL7lhyV3OLeP9qTX8Vx
         TbapOX6wydX3JCn8R6iFDBJi4LN1JyKrsr7u8TUJPhF44gVBAPFkTX58SY5PqGpVC4xV
         CFeg==
X-Gm-Message-State: AOAM532wzqZnq1Lj90bQ4EEwn20k57306T4ikrQ0nV4fzlzJnefatfuB
	6k1a3mTEm1t6TrEpcqOFIFFS/0dU++uLGw==
X-Google-Smtp-Source: 
 ABdhPJxEmIxdRXZSnxWUza+OK5XYeuV4eA1233tJIlpEaecBM20uRubIz+QLNgpdyA22nKub1fwyUA==
X-Received: by 2002:a05:6000:1a86:b0:1f0:3437:86af with SMTP id
 f6-20020a0560001a8600b001f0343786afmr8983169wry.700.1646672671330;
        Mon, 07 Mar 2022 09:04:31 -0800 (PST)
Received: from localhost.localdomain (179.160.117.78.rev.sfr.net.
 [78.117.160.179])
        by smtp.gmail.com with ESMTPSA id
 e2-20020adfe7c2000000b001f04d622e7fsm11850593wrn.39.2022.03.07.09.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 09:04:30 -0800 (PST)
From: Julien STEPHAN <jstephan@baylibre.com>
To: yocto@lists.yoctoproject.org,
	Hongxu.Jia@windriver.com
Cc: Julien STEPHAN <jstephan@baylibre.com>
Subject: [meta-tensorflow][PATCH] tensorflow-lite: remove unnecessary line
Date: Mon,  7 Mar 2022 18:03:03 +0100
Message-Id: <20220307170303.2566877-1-jstephan@baylibre.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Mar 2022 17:04:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56382

remove line

	FILES:${PN} += "${libdir} /home/root/*"

since libdir is already part of FILES:${PN} and nothing is installed inside
/home/root/

Signed-off-by: Julien STEPHAN <jstephan@baylibre.com>
---
 recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
index 9b3322b..3bc1efc 100644
--- a/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
+++ b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb
@@ -145,8 +145,6 @@ SOLIBS = ".so"
 FILES_SOLIBSDEV = ""
 ALLOW_EMPTY:${PN} = "1"
 
-FILES:${PN} += "${libdir} /home/root/*"
-
 inherit siteinfo unsupportarch
 python __anonymous() {
     if d.getVar("SITEINFO_ENDIANNESS") == 'be':
-- 
2.35.1


