Return-Path: <samuli.piippo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACDBC7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 07:03:57 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.3373.1686207836359859419
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 00:03:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=jo8CV4WF;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: samuli.piippo@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-4f624daccd1so366134e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 00:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686207834; x=1688799834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q9XVgkSEip+TLa5cEE7aWwwzb/1OqfkFOO3ZemMvrkc=;
        b=jo8CV4WFxnoV9MtSrf09t7wNFBeO9XD93RNNEFuTuoRTQVNfCcJ05Qn9nZiKQd/Yya
         s7GF2xOwkRb/z/UQt79CfW4xztSn2mljFZHuzuVGrNL85On19y6Qvd/KAd29rGxa1s1y
         Hhqr9cbavjpaHHNbE6CL6/2eP9e0VCeFJZZ44ZhU1t1zHB5NQpVug+P80OIQUgZCPWpC
         5IJ4Klqfl6pzqtwob1sSbi5IJ+D0DEmVVQWHe8jTBJzRSd5H5BJg/d3K1oucsjPHZSBo
         dlxN+rwjTbe6ScIzfylKfsJjQfTa/9b5eaZrHj3XVYxY0T9RDwUctsOra0KIhxw2w1ZU
         2oUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686207834; x=1688799834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9XVgkSEip+TLa5cEE7aWwwzb/1OqfkFOO3ZemMvrkc=;
        b=SKutSriF7ttGL0IJwV0Y/KD3aHZl2pQzvmJBpb6zMvgqkrsMomYf4rb3nzX+OzmsmS
         6RppuPZ5UrwyIxOLV/dD3yW4CY/1dET9BgRCJrtjA0SGjSQpveK5D4PI588CRDVSzp9C
         gB0JZA4Yn3NFVc94guzOpTh6e/MVTgIBLGToRCyosQvet6bOn0DqLOHGyIziua93nb8K
         YugwhYj+bLfoPA9TMLAoLyrb61pb3xukLJGE9hnA0ot/EbesbeaWBIQey7oaF96o282Y
         SJIIV3U905XSEESx7AUqMaeuUI6ZGGqJLhO8pwuvx3R13Q97EXJMmApTwNSqTyAn4/9x
         IxiA==
X-Gm-Message-State: AC+VfDybNq+jZ5VRmRqnyyULJZ9Ync1Z7ZIbqAM8mk9LKwUf2EXLXQtT
	HmpVI28QTCcZmRTwsVA5zqpDhkRPzas=
X-Google-Smtp-Source: ACHHUZ5Cx55jlyTEwJYZ+4DgWGZu7XXSCpF95DLHKsXUQ1cstRkQntDu9c/3DGAARYS5PlmwrDu/FQ==
X-Received: by 2002:a2e:9251:0:b0:2b1:b7bd:d1dd with SMTP id v17-20020a2e9251000000b002b1b7bdd1ddmr3055971ljg.33.1686207833894;
        Thu, 08 Jun 2023 00:03:53 -0700 (PDT)
Received: from dcbuildsrv.ci.qt.io ([192.89.120.62])
        by smtp.gmail.com with ESMTPSA id x5-20020a2e9dc5000000b002adc6c2cb3bsm119900ljj.5.2023.06.08.00.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 00:03:53 -0700 (PDT)
From: Samuli Piippo <samuli.piippo@gmail.com>
X-Google-Original-From: Samuli Piippo <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] Ignore WINDRES from hash
Date: Thu,  8 Jun 2023 07:03:08 +0000
Message-Id: <20230608070308.502205-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 07:03:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60221

Amend 6badedaa3e4df5b00b5aa992c5c174e315b09972 and add WINDRES
to be ignored from hash, otherwise it contaminates sstate cache
for every recipe.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 conf/machine-sdk/include/mingw32-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 9ec6e07..f2806d8 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -46,7 +46,7 @@ export WINDMC
 export WINDRES
 export RC
 
-BB_BASEHASH_IGNORE_VARS:append = " WINDRES RC"
+BB_BASEHASH_IGNORE_VARS:append = " WINDRES RC WINDRES"
 
 # Needed to override no-static-libs.inc
 DISABLE_STATIC:mingw32 = ""
-- 
2.25.1


