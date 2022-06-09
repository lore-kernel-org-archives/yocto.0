Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29D4CCA473
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 23:44:15 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web12.20511.1654818255189334850
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 16:44:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ee+PXlop;
 spf=pass (domain: gmail.com, ip: 209.85.210.169,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id 15so22413077pfy.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 16:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CxMJlbHKozQ1XkC7yhVGKcWe0J0qc1r3my44ky6x8wo=;
        b=ee+PXlopC6UcHzYU8x8RGuh717I0Gnrc0ZfistF+O4xoYmoEuPVBh4xq5pxON/7D3W
         7B59A2katg2Tt1qSzZ+x6J0aknhX39YRcy+QUeroG9xf1KspS+xa4U0JIB56YKc6RVkf
         Va21dK6v3rqBGjP49v4LclKvFd0OM/Vrwq1Mma8hav0Cu+P4rbMprPJJdzbgIXHNSVbl
         iUxSSskVM2doeiXpdIo9Fe7zRJHLq6u1oNYh4AvV+z/maSiDN3Ovh6BwExhRhpF42+nK
         1TNW3+mGIi+Ikm1FWW8LoIgzsEbCEZlKJmSbEUEGE/5uLPZN01yMSda8uWvbrgKUocCv
         WS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CxMJlbHKozQ1XkC7yhVGKcWe0J0qc1r3my44ky6x8wo=;
        b=N4jCEDs2ZKr/+5iF6fAO4tGa8P7q2A+icB7+Y/1AKL8tUuVJvYZVo7GGuwI++/nrmX
         dOLq1P3eB3a2lk1BYat3Sx3/kwj4NrYq9BNjna6V+R3o9ykcOa1FETPiXwv0uWhmVJ6M
         t1VNZdvsmZQKzJgI+WGhpK5S2stwQi4asB/TD9nqJJjwxsKSPo88nxPasrNRPQp7O4x9
         9QDMoM5Zu7FLiHl5c2D8uJDpSGrIJmISf4fR+87ARY4cvPlS7V5A9R6bkxx2q4aEPCQv
         SPARG4GUYCcNr6cfEJbVn7ROWawQw+yjad8p59zIw5J5zkU8VipbdVXSNvXTg2L8a7pC
         qUFw==
X-Gm-Message-State: AOAM531j0uoAp2pC0S5anaocHaW6ytOB5J/DVc+N8CTVObxBkSfmG9wV
	knhwBEdvfLzwYZWhLtMN0LwzjJm+dJk=
X-Google-Smtp-Source: 
 ABdhPJwtYXaya8fiSirOV8Ostu/L8hhN5vM+Cu62+E4Wyh6484gI+u+B/B61LIJ4VeV+cANfMQiwHg==
X-Received: by 2002:a63:d813:0:b0:3f5:f9d8:7cce with SMTP id
 b19-20020a63d813000000b003f5f9d87ccemr37445822pgh.585.1654818254330;
        Thu, 09 Jun 2022 16:44:14 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 l10-20020a17090b078a00b001e31f4cc977sm235135pjz.56.2022.06.09.16.44.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 16:44:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] layer.conf:add meta-netorking to
 BBFILES_DYNAMIC
Date: Thu,  9 Jun 2022 16:42:07 -0700
Message-Id: <20220609234209.587385-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609234209.587385-1-akuster808@gmail.com>
References: <20220609234209.587385-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 23:44:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57314

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index fa7d79e..470c7f6 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,6 +18,8 @@ BBFILES_DYNAMIC += " \
   perl-layer:${LAYERDIR}/dynamic-layers/meta-perl/recipes-*/*/*.bbappend \
   meta-python:${LAYERDIR}/dynamic-layers/meta-python/recipes-*/*/*.bb \
   meta-python:${LAYERDIR}/dynamic-layers/meta-python/recipes-*/*/*.bbappend \
+  networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/recipes-*/*/*.bb \
+  networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/recipes-*/*/*.bbappend \
 "
 
 # Sanity check for meta-security layer.
-- 
2.25.1


