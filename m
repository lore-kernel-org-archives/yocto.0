Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 371A2C47258
	for <webhook@archiver.kernel.org>; Mon, 29 Jan 2024 01:29:33 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.4561.1706491766002070808
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Jan 2024 17:29:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MTBQjE6Z;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6860ff3951aso18466946d6.1
        for <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 17:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706491764; x=1707096564; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=PWpSiQ9pWGmb14s37zPu5IRuvEOOwnZU+D6zgkaXOEk=;
        b=MTBQjE6Zc7s6J2k3IL3U1ijC+8t1O57ryWURx6ixQFupXNt7qxToTdMKjqKZIZ2Mve
         dULgVNjUgpgTkkqlvHQH6hm60AWXes9M71qC5fW8r4i+u4IXNI8Is31nqsqoAYomK41p
         bQMK92N7P7ij4m+RzOzhVrPcSoHkpc673mJRSWX83OpEFRr3bVq6RANIvgjcdGtciL5N
         Un8ub5PHNR2jySHvyEY6O8mLMIYDPFkJoSyuaw+BkdFULSPtWZYNpTaXQ4Levyn/bhAH
         QhxCWgNV/FXW55oDb1Z8EXgdnhVc13n6eZc3gFQ6WAzsluM9/Lsevl1L39Bi6SyHbN2w
         6/aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706491764; x=1707096564;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PWpSiQ9pWGmb14s37zPu5IRuvEOOwnZU+D6zgkaXOEk=;
        b=ksusMXiPrDl90C6w/9mWM9wjxDm0sURkUCERMPuOF1PHx4hXKgOwr58JDkewiO21EK
         dPDksA/dSGV9mStN4tIYKd1gooUKgt/BbctjgQFrKUdk4FxrwStx8efKm2fYoCClYIg6
         VEueZIgqQ7qsxq2hyBjbnRJJH9JA+/Be5QbEfwl3GKhC3epS4XOkPuP7UPBPjo6pQPBt
         uK5UAEVWcQtPmS+0wNX4D0LVceJL5TZCK8n466lmrZ309AlywPU7EBJH0XXqwXYNnCwY
         7QNwJAwNiJX7k0+3AuCIkjeGiIebETbYnHtoqnPV4XLa9NGL8j0L+RKyO0WHFu4JIrsi
         r69g==
X-Gm-Message-State: AOJu0YxADkHWc66cpNzX+BO51tJ0wljvrMa3uK1sC/cnN9neP0Rd+lkR
	0BwiiPxw1fmffmX7C3OHtRNK1fqXZNVzTU3giDSPztcFPwdStfvGfiDFUGqJ
X-Google-Smtp-Source: AGHT+IGVtZh+ZDZiCFG6jSQmrFac13cS4caOBVLrZp0usiouTvdn8qmZvrzIMyBluf0Ruv3YGnvxDQ==
X-Received: by 2002:a05:6214:5093:b0:686:acc4:73f5 with SMTP id kk19-20020a056214509300b00686acc473f5mr4947083qvb.70.1706491764019;
        Sun, 28 Jan 2024 17:29:24 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id jh21-20020a0562141fd500b0068c4e3ed145sm549283qvb.135.2024.01.28.17.29.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 17:29:23 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 1/2] allow user-provided WKS_FILE
Date: Sun, 28 Jan 2024 20:29:19 -0500
Message-ID: <20240129012920.23122-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jan 2024 01:29:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62319

Allow the user to provide their own WKS_FILE in situations where they want a
different layout (e.g. to support A/B updates).

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rockchip-wic.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index b1ca27cdd0a2..67a8310f7d6a 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -3,7 +3,7 @@
 SPL_BINARY ?= "idbloader.img"
 
 IMAGE_FSTYPES += "wic wic.bmap"
-WKS_FILE = "rockchip.wks"
+WKS_FILE ?= "rockchip.wks"
 WKS_FILE_DEPENDS ?= " \
 	mtools-native \
 	dosfstools-native \
-- 
2.43.0.76.g1a87c842ece3


