Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03DB7C433EF
	for <webhook@archiver.kernel.org>; Tue,  8 Mar 2022 17:04:28 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web09.10772.1646759067328739140
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 09:04:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AYU/BOZ8;
 spf=pass (domain: gmail.com, ip: 209.85.160.175,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id bt3so16723000qtb.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 09:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JllUV3ewpu0qR30wElHdiHI5jdHPbRxA+cDUEpa2V7M=;
        b=AYU/BOZ8sGSNFZt2GfDeQHCAaNRVaTW68Mvit7DEPzhEl7Q9nkc6Czaplo5RqaK8jX
         RuWHx4Nwfm1/5CEvQ4wveHMos6FqQBnEZEhD3JvoUXUI+fsvr2Ly1wjiTetA7sdxW1AG
         8ZKwLfN3uq26DmvTyeJO+gqCvbkNY177j5GHcR2zsl7i4XAIPeecJIZmrG80bFhg6EBn
         liP7z9CvAlViIW7DmZQTlD1Uav5PhtIfVrEBP1rB0q+Kq6b1YB5JclrrGdbP1DJ1HoFL
         OYKa3Hvlup7c9oHo4qDtHkOjZm2qJMIgsAmbVo/1nqY0E58pVBxvUA3gkarEA8W7hqRt
         0JTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JllUV3ewpu0qR30wElHdiHI5jdHPbRxA+cDUEpa2V7M=;
        b=Uxv9SSPDHZoys89UL55dm+00FQmffIY9jOR0ov7hYtr+0vNOIvWq66YO05hbHKIZRn
         sEU7wGh+RgDPN4qqZBoGzJEW6fQYo2k0sf65oLYXHzzT3kWnKAgJHMarkhJarXE3X5io
         PFqMgkg3Qw2mBrMTgQ6+Hcib5ZA+2wD15Ha+EGUm3vI2GqcuhGytghAuNVhB2KIgq3p5
         NfWgPzz1zprtsVnZchN2Pp5y7M7phD41+g3THcGJOYIv5uYzRmTpbpPWwFa0tBpykuZ3
         9Q0ZYEYvIV5YoKNmh7l8V48A2gna/DZanzI5W/cQSwMGKylDLAwtszLkZH65bHT0sFDL
         Z0AQ==
X-Gm-Message-State: AOAM532eIM/j+Tr+4CEQTcff5NzQRqrl0kgxSxG95zlXnfrS6aD4fHSb
	YiAOzGim4/9mO0of8aKUb8VBMjfFPag=
X-Google-Smtp-Source: 
 ABdhPJwE4AzPzS9ilPFGktRh+dxiuXmg3+b8BOaPnT3+NnfoF93ycYW3hP6uo+x/u31h2J6lRhi4fg==
X-Received: by 2002:a05:622a:1787:b0:2cf:9441:19e8 with SMTP id
 s7-20020a05622a178700b002cf944119e8mr14644718qtk.499.1646759065947;
        Tue, 08 Mar 2022 09:04:25 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 19-20020a05620a079300b0067d1537f35bsm1416608qka.83.2022.03.08.09.04.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 09:04:25 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] wic: add e2fsprogs dependency
Date: Tue,  8 Mar 2022 12:04:15 -0500
Message-Id: <20220308170415.29489-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.34.1.75.gabe6bb3905
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Mar 2022 17:04:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56395

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
2.34.1.75.gabe6bb3905


