Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF0C43334
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 23:44:25 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.20685.1654818256691692656
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 16:44:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pzZGLsHi;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id
 l7-20020a17090aaa8700b001dd1a5b9965so707081pjq.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 16:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IeQckGGw8QRWl8saiHyBBrLzJ79u9ZE8ocBlhLGUAXg=;
        b=pzZGLsHiAwMF4loEDb5CfQM4rJGarijmeNI8sN1Mu2kG4PFJw8aS71bd51xWTRg+ye
         zMrz5rOBGawy9Z/CBT8DUuXPvQd+sehodPCkg1xurEgKtDu4WQFt0F9+JImeRFeX+ZEl
         tDVUqJRLMdYvUD4V8AB2gGj+ZOW4FJYIRWxEl5/qGNnkqOTWTub0LKc7gBlSYJrdTVqW
         A2sis4DOYUpOSAsi74vGLMJqYl1dU1pS42ZZMEaRO+ftWpda+35xWKXLn2Vc71IANDY+
         7x+hSgNO1buQLcZxQId09lMm9VsBt2464GsMYu1Mxbf+vC/0VGzjuA5E5S1uAJtecj02
         76vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IeQckGGw8QRWl8saiHyBBrLzJ79u9ZE8ocBlhLGUAXg=;
        b=WIWENd4skZdyXXyKs+YYlAf6c2y8Y6gHs24CB6cb1+6lLyhE5SyHx3a3BjK7zfZ4TH
         OKkjE+CeI59brLDvE0EXQvALOOy7d0VQBOi7LYS3TWyryjsi8KKgNfrvk7nvklTRzXo9
         tn8SIwrDpfnoFuQOjbWjyd9Sswll2M1WS++Co3+yAQynwGDO0gJOaHEHn+tw7llCn6zt
         HjONvYtk/44R3lcvvSI2OMYWTXhC7Ez2+0Jg67wpDBzxVUWHYTtwfMvoJCgqv3lUOrCl
         mkIBGsvcRGbd8um14VS8bCQMv3UxgiSZSh8v/tZ1jWbQlYeF52FyxWKmqoe3WU93tkp1
         /rlQ==
X-Gm-Message-State: AOAM531NB24nFp3H4InfVuuzJVbNpOZZtCYvG+Y2Knh3LY5lycuXBLD3
	SOJE0/S9h4AHjMEg9W6i6xKp5BOKaA4=
X-Google-Smtp-Source: 
 ABdhPJxI8DlUNq8BVeIAtXZ8mDKynziQ6qnWprEjfDCw+ULhPuuI+mNDHm/4AMQ19G/Y6FP1s+IdFA==
X-Received: by 2002:a17:90b:3802:b0:1e3:3f3a:3621 with SMTP id
 mq2-20020a17090b380200b001e33f3a3621mr5806604pjb.65.1654818255921;
        Thu, 09 Jun 2022 16:44:15 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 l10-20020a17090b078a00b001e31f4cc977sm235135pjz.56.2022.06.09.16.44.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 16:44:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] packagegroup-core-security: drop sssd
Date: Thu,  9 Jun 2022 16:42:08 -0700
Message-Id: <20220609234209.587385-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609234209.587385-1-akuster808@gmail.com>
References: <20220609234209.587385-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 23:44:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57315

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index f381d91..636563f 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -36,7 +36,7 @@ RDEPENDS:packagegroup-security-utils = "\
     softhsm \
     sshguard \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
-    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd google-authenticator-libpam", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "pam", "google-authenticator-libpam", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
     "
 
-- 
2.25.1


