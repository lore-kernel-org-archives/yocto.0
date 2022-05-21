Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0CBC433EF
	for <webhook@archiver.kernel.org>; Sat, 21 May 2022 18:56:52 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web09.8796.1653159404657145317
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 May 2022 11:56:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=avvC+igR;
 spf=pass (domain: gmail.com, ip: 209.85.215.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id h9so2178783pgl.4
        for <yocto@lists.yoctoproject.org>;
 Sat, 21 May 2022 11:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JLvsDUh12ePBP3ymWNxfV2tf/CaKkre/zb5ceMW9yTk=;
        b=avvC+igRjAKmE9w1Aabmf7Yo29W66ceJ+uoAY7Qcp1zKPUcdlEjOnLlRbmZH7Ee546
         u5Xn4jCr8P7koU7Ib01PevJcHP6fw2yCMhcA0bgfjcrOFTxC/wrb7urIluNNiWxShwle
         IOS/Anilo0BXSlRHqcX0wmWOtQikifDzCHK7lCradcqlguO5ohND7kmP1BudC74Kj2d2
         r+7zSHvNVotAsf3syoSaQAU4GuOgIbZKktLI1un3WqMPe7Jkb1zAjK8FVpnYR/pKO/1C
         0VkPTRVlQL9hkqfGoa3KB9slzvnG7BtuectvIsThkW3ODjBFLYXJprEWL2uukREH8lz2
         LzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JLvsDUh12ePBP3ymWNxfV2tf/CaKkre/zb5ceMW9yTk=;
        b=eBZgho4ogj05S0DPvH0FS0EcCi2nNy8+jBDnQIfSkgtWE0zS9ZmfjxAzzIxHtcCs2a
         qMoPNf573RVomgC7WIyYKeGiOjOP+XZ5gpeFJd/i6eAui4pd21M8A46sytH0mgvtjHZi
         oN+/LmAEhI9fvTRWB64s+9qZSYLR0jWQ9Jaoqigx1nwsP0cSXwSGJZbeKql5D/oCIYpn
         DkRfZ85g3qV9UCFN9pw15UibokKYR61JKq5ejOWarC8q3y/psAPCyVrYBXhMGg3dsahC
         ceXh6CXI+RKmki7oofYDnUOEDQTPmPcUyFx7utea9CCsZAiGzqWjNutI46QwJ126y2D7
         V8sw==
X-Gm-Message-State: AOAM532IKQc2T9nXiH9d0vWAQ0bPKa9wnC2Cu+thXI7yd161LT5sNzgX
	m+O6IyvtokUtTGmzFfYOGvtbhYVuzYs=
X-Google-Smtp-Source: 
 ABdhPJweOz44N3/zIr0EIAvHAoNsL2jfpr5/1g5vFY9kDNQhZ6A/6uieqD7+Kgvap9dgOZ2GAbcVAQ==
X-Received: by 2002:a05:6a00:23ca:b0:50e:827:9253 with SMTP id
 g10-20020a056a0023ca00b0050e08279253mr15985738pfc.20.1653159403885;
        Sat, 21 May 2022 11:56:43 -0700 (PDT)
Received: from keaua.T-mobile.com (c-98-207-193-87.hsd1.ca.comcast.net.
 [98.207.193.87])
        by smtp.gmail.com with ESMTPSA id
 s1-20020a170902ea0100b0015e8d4eb1c1sm1931300plg.11.2022.05.21.11.56.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 11:56:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][PATCH 2/3] meta-parsec: add build image.
Date: Sat, 21 May 2022 11:56:39 -0700
Message-Id: <20220521185640.143194-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220521185640.143194-1-akuster808@gmail.com>
References: <20220521185640.143194-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 May 2022 18:56:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57151

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/images/security-parsec-image.bb  | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 meta-parsec/recipes-core/images/security-parsec-image.bb

diff --git a/meta-parsec/recipes-core/images/security-parsec-image.bb b/meta-parsec/recipes-core/images/security-parsec-image.bb
new file mode 100644
index 0000000..547b687
--- /dev/null
+++ b/meta-parsec/recipes-core/images/security-parsec-image.bb
@@ -0,0 +1,15 @@
+DESCRIPTION = "A small image for building meta-parsec packages"
+
+inherit core-image
+
+IMAGE_FEATURES += "ssh-server-openssh"
+
+IMAGE_INSTALL = "\
+    packagegroup-base \
+    packagegroup-core-boot \
+    packagegroup-security-parsec \
+    os-release" 
+
+export IMAGE_BASENAME = "security-parsec-image"
+
+IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
-- 
2.25.1


