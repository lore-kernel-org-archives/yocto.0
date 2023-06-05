Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D50BC7EE24
	for <webhook@archiver.kernel.org>; Mon,  5 Jun 2023 11:27:52 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web11.4606.1685962539217661883
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jun 2023 03:55:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@thaumatec-com.20221208.gappssmtp.com header.s=20221208 header.b=nA+V50Y6;
 spf=pass (domain: thaumatec.com, ip: 209.85.208.54, mailfrom: witold.lipieta@thaumatec.com)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-51480d3e161so6846385a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 03:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20221208.gappssmtp.com; s=20221208; t=1685962537; x=1688554537;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aoRCh8v9n/dv4c3vY0yrNkzCOBteC7NTBD3bj2v3dYs=;
        b=nA+V50Y6jfCAvX6kapq/iTS21lhILbPpyDYSLDRWuJ86WgcO7vxo1CYb3RkN0etnMr
         wIdiY1adbNDWo2DLPBSsrk2n0chajLqEqEBQkSPyEUK9OkaNBaqIJrnrHeEi6uLAVOwh
         16KuY/ZJm7O6Y3YyaF4KupO0M5O+s4stcA7s+gaggetkUi9XCtVS7WmBBoDSsrb6MvYW
         AuSTQwqjfNzYc0eyLH3nkccAdNotbZNA3JAAufPhF4Po4AQfPO++yMJ+YgHV9UOMRc0T
         NLyLp+2oJlgir8wLSAVOt+M4l+I8+JNWSGD1KA5Yj5wyuvq70orMsSkWWslyO54POnVc
         9OOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685962537; x=1688554537;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aoRCh8v9n/dv4c3vY0yrNkzCOBteC7NTBD3bj2v3dYs=;
        b=OQw43b9uTux0weHElzUgFilwYqbZtvq+A6jOi3oGljlc8XKshXFrU7wXq3Z+9yfmYb
         UWm6oE0klEu/OGBTLTzW5ISkyP8+Owdq6tYPEnpyeaCb92DmD70wDPStFhiEMj0ZKvnt
         JlgOGMARjhZEQaXdTfwnAofUmFk7U+STXqi3/73igZOmH+ClNPpKvaXGriLQKHnBEAtN
         5XbBLC0EEcYUnDBeaFKyPOwt6gksQ+65xVPCC9aDaPhlZovJkFFB+661ctTOp/9hRlOi
         83n1T00GFjfXwde6zUnyS5FvlAZRFlH/4Qrd/tJFuqBHE/KjWSIGtTytLtbaAAAAbm4G
         DK8g==
X-Gm-Message-State: AC+VfDwm84NY/bECWqxr45XyifLdLbRm5iPPZvZsUSrOIDHQJMzGLX6V
	X0VylCpIn5v8bpF8vrA3DL5rACoPyxorWPqK0lU=
X-Google-Smtp-Source: ACHHUZ5lcl7dQ+JCpVmahhDF/zp0nVJXlpLaSjtia9er0p7jr059OvHy1vCIwJQKsP7nJSAWpf3yRw==
X-Received: by 2002:a05:6402:1219:b0:514:994c:2982 with SMTP id c25-20020a056402121900b00514994c2982mr6756734edw.40.1685962537286;
        Mon, 05 Jun 2023 03:55:37 -0700 (PDT)
Received: from localhost.localdomain ([91.90.166.178])
        by smtp.gmail.com with ESMTPSA id l2-20020a056402124200b005148e981bd3sm3723140edw.12.2023.06.05.03.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 03:55:36 -0700 (PDT)
From: witold.lipieta@thaumatec.com
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Witold Lipieta <witold.lipieta@thaumatec.com>
Subject: [meta-rockchip] [PATCH] mesa: Enable Panfrost for PX30
Date: Mon,  5 Jun 2023 12:55:26 +0200
Message-Id: <20230605105526.11027-1-witold.lipieta@thaumatec.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 11:27:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60180

PX30 has Mali G31 GPU and needs Mesa Panfrost for graphic acceleration.

Signed-off-by: Witold Lipieta <witold.lipieta@thaumatec.com>
---

This patch supplements https://git.yoctoproject.org/meta-rockchip/commit/?id=f2b4e6efde0e2e8ed9a15694d716add3eb4d14dc
and should be also backported to kirkstone branch.

---
 recipes-graphics/mesa/mesa_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index 87f4bce..58c25e7 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,3 +1,4 @@
 PACKAGECONFIG:append:rk3288 = " kmsro panfrost"
 PACKAGECONFIG:append:rk3399 = " kmsro panfrost"
 PACKAGECONFIG:append:rock64 = " kmsro lima"
+PACKAGECONFIG:append:px30 = " kmsro panfrost"
-- 
2.34.1


