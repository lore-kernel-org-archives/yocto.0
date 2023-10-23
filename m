Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 760ECC004C0
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 15:44:02 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.124403.1698075839547107792
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 08:43:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HU4nOYel;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40839652b97so26814355e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 08:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698075838; x=1698680638; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=7IipQmhl/lANcCOpifbVrQ/DJZOahGjuZ/dx2XgcBLg=;
        b=HU4nOYel/I+n/nH/PsB3XbVM7rmTzfQ0jSae5RCNr691g23bOYGcImMBt/iYmk8aCe
         /jXY6bSbAURMAy8fdC2vhkK9BWRAuHHv2WSeEfejpEp9jrdUHmUzWZwY5diP5+9e6RJJ
         6dPmpULWEkMggHQtWIdVy1YIeq2dNaKpCFOMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698075838; x=1698680638;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7IipQmhl/lANcCOpifbVrQ/DJZOahGjuZ/dx2XgcBLg=;
        b=W2mxCohvVkDB/1SINGfeIC4JlaAaInz+ileyvU1LYH4n3+bUfRTVdUMJkL/J6MSCyq
         dAWbaQ4kCD2Bz3HZY5tcdt83rqDwcpT5grgi5cZZlpVYwYn0PQyNiYdkNH7CijX84tgI
         O0VhEu7gHpfiHydJlkWyqmBDbIyummia0G8A8d5w0+IjlfQ1IfZuhbnsKvejdCV9v7me
         idOLoguxk+ve+RY8R6f563JTnyH7fEuc8X2rrkZWmUF/JWX124QeQvXTf6o4G5and3Ag
         7ogHIa79PfLXmk607w2K8d3+DPH6pIMnHazGnmN9YAe76J1rA9uZgetF2JyJVeJNpKEF
         LUXQ==
X-Gm-Message-State: AOJu0YyVrQLyh3Y3TdzYkTja9X5Q40d77ZQjv/jdKIkedCT2H72tEVJ3
	F4vZAjn5kXanCXkdtYOh0ahAaJKmClQ+/w3/mwY=
X-Google-Smtp-Source: AGHT+IHnx8IOiRkJe69qVW1g5o0Bi+7RHJiA+0JAZrXmaZS3eiM4TACUt8SZ4yarAuAKrHP/+RvM+A==
X-Received: by 2002:a05:600c:4ece:b0:408:3ab3:a05e with SMTP id g14-20020a05600c4ece00b004083ab3a05emr7596175wmq.38.1698075837522;
        Mon, 23 Oct 2023 08:43:57 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:3e73:a41c:6787:e5d4])
        by smtp.gmail.com with ESMTPSA id ay20-20020a05600c1e1400b00407460234f9sm9745346wmb.21.2023.10.23.08.43.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 08:43:57 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 1/5] scripts/run-patchmetrics: Only clone metrics if it isn't present
Date: Mon, 23 Oct 2023 16:43:52 +0100
Message-Id: <20231023154356.1145934-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 15:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61454

To prepare for splitting things up, only clone the metrics repo if it isn't present.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-patchmetrics | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
index fc3f214..abe58c7 100755
--- a/scripts/run-patchmetrics
+++ b/scripts/run-patchmetrics
@@ -13,7 +13,9 @@ TIMESTAMP=`date +"%s"`
 #
 # Patch Metrics
 #
-git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/yocto-metrics
+if [ ! -e $PARENTDIR/yocto-metrics ]; then
+    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/yocto-metrics
+fi
 $OURDIR/patchmetrics-update --repo $PARENTDIR --patchscript $PARENTDIR/scripts/contrib/patchreview.py --metadata $TARGETDIR --json $PARENTDIR/yocto-metrics/patch-status.json
 git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new patch stats"
 git -C $PARENTDIR/yocto-metrics push
-- 
2.39.2


