Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFC7C433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 09:49:12 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web09.2239.1652348947564716495
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 02:49:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=S8aw9hzA;
 spf=pass (domain: gmail.com, ip: 209.85.128.53,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id
 i20-20020a05600c355400b0039456976dcaso3671794wmq.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 02:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zbgYnnoOJG5vcD6hyW5AlwbqKoZD/O2CZ+3gX0Qatew=;
        b=S8aw9hzAl2ZRquDi78b24U5vS8gDINSHuZgyF9jFWuKcICPvJD1nBpPwb4JbOVHUPt
         y7lPq4/2EVc7ZIEbTFTng+rB18idduHLi+BQnsxGXfTG15bTE25OQBgo1CO3OmbnrssL
         xj1zTsiunes+0Bfrkkec107YXUvyvi5zJzP71msXGvHXYRVM7EuM4dQq1wrPvnkQ5PxM
         TorpQ0QgUUGdOZIOuLn8zkhLqYmeGCTbt0BOsWpIrOwehLGKIa4lzT8pklSKJnuX8Qmu
         1OIPKKDxfI4neYXDDZAKauDUGI2M4SxZaqyoikdhXTdgBfUYNO4y7neHAZQKH9wo36Ki
         Tyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zbgYnnoOJG5vcD6hyW5AlwbqKoZD/O2CZ+3gX0Qatew=;
        b=BxnSYhXGHawFOCMmUYPqDRfwUcCQDJH11HKIqrPGBydch3VvWS6/YwzPyT7k8raic1
         uNozhY/0+ydWLK++IDRE1ZtZNtFyT2PaaXBVKk08ROJPjfgdKK5y1g9MPXYKLG3HRkZR
         9xYgYeNWXKwFCtATd4OqMlkbLACNKGvaDVu/bl0PkXXbN28V21r2M5IiYS+bXpj/E96X
         0j3uDKCv8jzcmt5SQrEiuPYfdFvT2pL3Quhqisw9H1GlUnbw8IQ2anOhyTxXy1XOvOyF
         n2Ql8PMnvAx+PjBVv3p4TBLyj+pOeEAjApkM9rot+TLO0QmqKoFDFLFXH8X80QSxjR7X
         7ldw==
X-Gm-Message-State: AOAM530X1t61URQyQlDohwFGEAiqQTzc/G/n8XiCUNLmx5xGwl8Y8mn2
	bb/rTW1zfV31IX2gZA/ggP5T8AbRoCI=
X-Google-Smtp-Source: 
 ABdhPJz0DeASV493HwTcB6lZbDf2xH3Vv8T6D03/4ikCoaYxPQIZ7cP4np4UuKBqNJ4v9guI4oHsYQ==
X-Received: by 2002:a05:600c:4f13:b0:394:8978:7707 with SMTP id
 l19-20020a05600c4f1300b0039489787707mr9331092wmq.34.1652348946012;
        Thu, 12 May 2022 02:49:06 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id
 n7-20020a1c7207000000b00394975e14f4sm2193763wmc.8.2022.05.12.02.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 02:49:05 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
Subject: [kirkstone][meta-rockchip][PATCH] wic: add e2fsprogs dependency
Date: Thu, 12 May 2022 11:48:56 +0200
Message-Id: <20220512094856.1410218-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 09:49:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57065

From: Trevor Woerner <twoerner@gmail.com>

Started seeing the following error in my builds:

	 ERROR: A native program mkfs.ext4 required to build the image was not found
	 Please make sure wic-tools have e2fsprogs-native in its DEPENDS

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rockchip-wic.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
index 30b0d57..6fa5367 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -7,6 +7,7 @@ WKS_FILE = "rockchip.wks"
 WKS_FILE_DEPENDS ?= " \
 	mtools-native \
 	dosfstools-native \
+	e2fsprogs-native \
 	virtual/bootloader \
 	virtual/kernel \
 	"
-- 
2.35.1


