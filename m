Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968A2C433EF
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 23:44:25 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web09.20758.1654818258390971743
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 16:44:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Tkxo79tR;
 spf=pass (domain: gmail.com, ip: 209.85.210.178,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id x4so13825971pfj.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 16:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6vgsqZStvmjcLaNftoZaPxmEs0Gq3FkgrNz9aMPy2Co=;
        b=Tkxo79tR1UM4++WK50nbA/P0wWGbPI9g4t1aWOBqiVIlJRJYjGhu1V9HXii3QjEIVU
         IVpX43CU0HDAoYAw0CFj5lhj/ElgrNSZjwDPk/uzefnXd5OxloOCWiF/gV3wDyLKsBBN
         5Wlc1Ww+uB8ENpWssDyOlkC41GRHZCVRi8ir0LqCMBa4kefVOU/K9jLd9ebouNpNqVhf
         Ur1H0CMfWJq7Iub3c8Wu2up7CwRxgzyKJduZgEwCr5GHr8CBoVx/b50pi+mVcixE+20A
         PmbTGrG0wz4BRWTFBaFeNxM3JjVpH89b7is60bLIbk5r1aWoZ8wkfVXeCwgZeFe/5iGh
         fvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6vgsqZStvmjcLaNftoZaPxmEs0Gq3FkgrNz9aMPy2Co=;
        b=KCpSj4z9SB4LqLnS/HvpnpniibyCOqn+dLDfhQFLvI+51NmcOnLbUdV3oYFZU4AlRx
         wZlHUIkLmisBddEM2tn0m9nHnBfDZ24ifwknqfeW8VvjlhnB0HqKETB8AAf7ge9Zqqqt
         nK8610wTh0aTVUl9Go1niSw16szcb3P8mnvNGrfLuly/9lx3ZREJVBd1JUNQGoKDb8UG
         qWm5I4Us5j1mtAUqmrKWwYon8y8Mgj4FpP7DW11+zZZpId72B5f2C4rkUaVUSrXmttcT
         gk0X/GdMfwpMvN2lAlTCX3uOmK71IYWHzwYef2mckcKa4hSlMj6LmJLgKVLH8JijjXhk
         gNWQ==
X-Gm-Message-State: AOAM530mnu41JnWbQqkQZz5dttGZXLdPWh2cto7OJH9Q/rHdMdc294Xc
	bjkFLee1kVj7g6IaUXMKHIhjo3BdnYM=
X-Google-Smtp-Source: 
 ABdhPJyF3A9fIP2b3KVr5iymTovo85jvK3Ebqr842MwCDGchHx3M8cutZDOktQsfeCfxhhFoD8LvrA==
X-Received: by 2002:a65:4501:0:b0:3fc:4895:283b with SMTP id
 n1-20020a654501000000b003fc4895283bmr36795374pgq.231.1654818257629;
        Thu, 09 Jun 2022 16:44:17 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 l10-20020a17090b078a00b001e31f4cc977sm235135pjz.56.2022.06.09.16.44.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 16:44:16 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] packagegroup-core-security.bbappend: add
 sssd
Date: Thu,  9 Jun 2022 16:42:09 -0700
Message-Id: <20220609234209.587385-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609234209.587385-1-akuster808@gmail.com>
References: <20220609234209.587385-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 23:44:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57316

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bbappend          | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 dynamic-layers/networking-layer/recipes-core/packagegroup/packagegroup-core-security.bbappend

diff --git a/dynamic-layers/networking-layer/recipes-core/packagegroup/packagegroup-core-security.bbappend b/dynamic-layers/networking-layer/recipes-core/packagegroup/packagegroup-core-security.bbappend
new file mode 100644
index 0000000..6bafd9f
--- /dev/null
+++ b/dynamic-layers/networking-layer/recipes-core/packagegroup/packagegroup-core-security.bbappend
@@ -0,0 +1,4 @@
+
+RDEPENDS:packagegroup-security-utils += "\
+    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd", "",d)} \
+"
-- 
2.25.1


