Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8950EC3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 16:22:42 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.67831.1672762956920167245
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 08:22:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mL72nvA2;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: twoerner@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id v81so15521800vkv.5
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 08:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=bqTzB9kKMiw5Xf9EWGDOQq9hy6e8bBOJkOO64c/fbww=;
        b=mL72nvA24eJoWlm6FI6giug9NIxj1QedD7Ni21vq1mFjWfLXCJthqbaqvMMGfDHT56
         5pk+G/U+ZsiSsj13E9q8n/BskN1xr+p/uAm6ROpCiudUFiNc550xYoCGun9yoCZuWtDH
         YOw4bY6uvnZLZ4Uk3eaWyBCnRVx/HtEo5nEFRCmpDt5V+gB6moC28E1IWWpCAX0NIZ18
         He1epwPOrD0xqUuv3SRMAdAKo3n+YtzUkfGt+ZsjuauXka9XjqBx6koF7T7Bxz215Oqf
         V9SXuZTfcaSvMVGS3HtpFcODd8q4/cea0PoAvapUq+QfsZ03ZSuIZRe0UBWr8H1iLfya
         n8SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bqTzB9kKMiw5Xf9EWGDOQq9hy6e8bBOJkOO64c/fbww=;
        b=dKfTojxNM4ww6Zqw0L9B1lODHmmkJfF6WxpIHTubzZoqd8M/7YbTEUKhsbsNgNNrRI
         oDuy8exBLbZ5BoQqtHypU5a4RW2JV9FfTD9WmKam9UUw+OV16sPlcSMtx/K/+8sWLJvv
         J523qUdOeswLLV8NGOyYelCVBuk/CYcZ/06zcjdrTvb647aK+vsFfAgTNnCTgLhsYK1e
         bdDOEVI3zpeqmBWKRLget8PU50raKsLkheI6OzjQRmu3B0O4KVFT9o3v0Cs4Tt02BZbW
         RgKVqzGToXcWfIzI6MlrihAiCCeIXSObRVwNf25h9D9Z8ay1VUlxOkbSu7ZTo0jEchhD
         LXzw==
X-Gm-Message-State: AFqh2kq+m2udKl1wIOLpn+2wj9HZqKpyyeuh/I0MRFgVqPFXv8SPjfqa
	LrX1iCMaSHJM5Zxn3rk0XLFlG/4snY4=
X-Google-Smtp-Source: AMrXdXsJvV0M/LfxqDLSoZA9hlbubu2YcvDGLxmPGayzUhNYbmu/mEQYl4dEXpuzut3Os/I5MHaQ4g==
X-Received: by 2002:a05:6122:c8b:b0:3d5:91ea:4d0a with SMTP id ba11-20020a0561220c8b00b003d591ea4d0amr9988256vkb.8.1672762955673;
        Tue, 03 Jan 2023 08:22:35 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id c7-20020a05620a268700b006fca1691425sm7142471qkp.63.2023.01.03.08.22.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 08:22:35 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] layer.conf: update LAYERSERIES_COMPAT for mickledore
Date: Tue,  3 Jan 2023 11:22:26 -0500
Message-Id: <20230103162226.23393-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.36.0.rc2.17.g4027e30c53
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 16:22:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58911

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 9197c3b84ce7..e8c50f8a1f6e 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "langdale"
+LAYERSERIES_COMPAT_rockchip = "mickledore"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.36.0.rc2.17.g4027e30c53


