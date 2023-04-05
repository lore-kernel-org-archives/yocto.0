Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C784DC76188
	for <webhook@archiver.kernel.org>; Wed,  5 Apr 2023 20:42:10 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.142148.1680727329073544513
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Apr 2023 13:42:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=HKhEihfh;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-54bfa5e698eso34129947b3.13
        for <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 13:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680727328; x=1683319328;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ux9h5emj+6vvomK63liawqAPKbjcXdWtYkfAqAPpRIw=;
        b=HKhEihfhzkEJGT3xRWKE3BMp3wAXur4yVc2tAwdBinqwHH15899fW++cmRwI3nL+8/
         j30n2OAtP1FrfrSq5GteHW8+UI4aG0+qu5mSjPhyyf5k5Mc9PzJDqqBlbBRASfo89g5e
         9GjhCdQ9kPgwzoUAHr8W2mHTw2pN2Z3ns+R53uUQ3OXA1uDbq7uA04DUlBRROhWuCpm+
         av9lb+Me6mmLfqK+mF2ga32W8RysNZE2r6lH/j2ZCKz3Ee0kg4EDOKx/tjfadU9m+0zD
         /zuysBaB7PTGcXPXmIbbYRJ5Ih5n9K9K8pEywzX4M5fHUzrs3mHRMLKfHuJcstVIcGAv
         M2OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680727328; x=1683319328;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ux9h5emj+6vvomK63liawqAPKbjcXdWtYkfAqAPpRIw=;
        b=gclcu7mYtcUCawDR4bM4RRsaR+gpvlO6R/5fUQPXulG+RggwbbdQuDHIIiK7ba3e2y
         rS8ozTW4w0bqC/ljxMMFZFyw06n3npTbxhIZqdlfEK6YqSOnhNbcsbWXL0DpnHu5XbFL
         6sPElLZtR968EEdLe7aHAedi7bcdyC6vnPswbgn0E2UbC43wAVtKWA+2tF7PqHvwewld
         TuErxksO49DGAmxag/xrfIVTjmK4IJymWZWj+S6pNEC0ogoKp1P7erDgG28lJf3y6Iq9
         6iTEE5ZuVMZ8I7o1IBGO1snASUy4S3RdEdTYe//yvZ+Cs+cUlsHGVJKB/8LS0Jb+I20n
         mzdQ==
X-Gm-Message-State: AAQBX9d5fv4iKqgXWBcBb+1XhFwj1OL0v1qVPOBN8Xf04CF8IohnOHYD
	u2YEq9vScB7/yb09F7/AgvcVIhabUVeCSQ==
X-Google-Smtp-Source: AKy350aHGNDSSG3Ew+7qJxu164WLNrOwIq0GvFVJhavnFHqEiharuXcn4PNPj9cPXgIk8wPbEP1Faw==
X-Received: by 2002:a81:85c6:0:b0:54c:657:1f19 with SMTP id v189-20020a8185c6000000b0054c06571f19mr851254ywf.9.1680727327818;
        Wed, 05 Apr 2023 13:42:07 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:3249:c5b2:756:1575])
        by smtp.gmail.com with ESMTPSA id 85-20020a810658000000b005460412e2fcsm4155908ywg.70.2023.04.05.13.42.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 13:42:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] suricata: Missed on crate depends
Date: Wed,  5 Apr 2023 16:42:07 -0400
Message-Id: <20230405204207.2279291-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 20:42:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59622

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata-crates.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-ids/suricata/suricata-crates.inc b/recipes-ids/suricata/suricata-crates.inc
index 0265aa8..535f53c 100644
--- a/recipes-ids/suricata/suricata-crates.inc
+++ b/recipes-ids/suricata/suricata-crates.inc
@@ -26,6 +26,7 @@ SRC_URI += " \
     crate://crates.io/rusticata-macros/2.1.0;name=rusticata-macros-2.1.0 \
     crate://crates.io/miniz_oxide/0.4.4;name=miniz_oxide-0.4.4 \
     crate://crates.io/num-bigint/0.2.6;name=num-bigint-0.2.6 \
+    crate://crates.io/num-bigint/0.3.1;name=num-bigint-0.3.1 \
     crate://crates.io/num-complex/0.2.4;name=num-complex-0.2.4 \
     crate://crates.io/num-integer/0.1.44;name=num-integer-0.1.44 \
     crate://crates.io/num-iter/0.1.42;name=num-iter-0.1.42 \
@@ -719,4 +720,5 @@ SRC_URI[time-0.1.44.sha256sum] = "6db9e6914ab8b1ae1c260a4ae7a49b6c5611b40328a735
 SRC_URI[num-traits-0.1.43.sha256sum] = "92e5113e9fd4cc14ded8e499429f396a20f98c772a47cc8622a736e1ec843c31"
 SRC_URI[wasi-0.10.0+wasi-snapshot-preview1.sha256sum] = "1a143597ca7c7793eff794def352d41792a93c481eb1042423ff7ff72ba2c31f"
 SRC_URI[lexical-core-0.6.8.sha256sum] = "233853dfa6b87c7c00eb46a205802069263ab27e16b6bdd1b08ddf91a855e30c"
+SRC_URI[num-bigint-0.3.1.sha256sum] = "5e9a41747ae4633fce5adffb4d2e81ffc5e89593cb19917f8fb2cc5ff76507bf"
 
-- 
2.25.1


