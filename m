Return-Path: <a.abfattah@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95BBC7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 04:36:56 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.1911.1686199011000264796
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 21:36:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=gX2L7dgJ;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: a.abfattah@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-9788faaca2dso39049666b.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 21:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686199009; x=1688791009;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S2UPMpWIUaouUKqTEXMmd+2LyjvG9EwOWwNc2zysEuo=;
        b=gX2L7dgJ+J81nhiIh4v8ouF+ngfZVjGaVefNdoT+rR6t7SV2s1+XiWIxxB8eFoMIHk
         /KmF+lKtfQRwqvwJ3bb4RMXkPTWOjwU60x9Blhae5IN1LQw3A2rx+TZk/J9HFRfndRYO
         ZE8/fV1RltiQlWrroSnfg5yrvwUq3+TBNq9EdXjquGeO1NBYoFSkIC/68YcKGbpUU822
         8wt8tf71l2ZhNOe59om8U9uFLQBVA0guWrTqjBr4YNJAOH62rt3bLm+mUHVsQEWuuDBp
         JU9OD8Uv4hdeSlJMdX0i6+neu/GTJIkaNvXJrW4t7pNovPnge/7KFlp57dwvKMWgGlis
         k8eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686199009; x=1688791009;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S2UPMpWIUaouUKqTEXMmd+2LyjvG9EwOWwNc2zysEuo=;
        b=lu2KorN+hDvUbp2xf2DEC8YHU6km9cZSjE/gZHClQH3sA6JCjgNHadaDQAcUIy/x51
         ReMgQvQi3nP6R9YPkBpWrCBRqTzEAl6ZZEWZiUVU5luGmdUeF7Y7liYrYcn5E+yYGy81
         c7S1hEnJVMTVoMCKtrcQzO81wp/3RWRKKcMJakUvRwhOzgasiohVyuUxlXvU8hb0Hvxn
         dU6+4sLDxYmVDJAgaC5bt1p4ljPavePoJ6FkG7osA9wO3PquTOj+dOeqNJdNF60dRI5x
         3CkFGVj1Urdm5kHkR9kWqPT/GVp3P9kg1z69vItcMFAMk/51cJRXnn3dCTFS8hMF2bjA
         YY0g==
X-Gm-Message-State: AC+VfDwK64vOkHb5WNwb/GxJSIHe6sFNC663LRxWxhC5aSsoWBnbTYZy
	gFRbzJvMUzbuzdUYvK/dWrU+bpYDqB/JBH6Z
X-Google-Smtp-Source: ACHHUZ5jUB4sJy8DGuEMqqcOIdLM9j0sCQ02zDyRa0y9M3tYNPLfbPFoky4fAgqRntILFwfyLwpTmw==
X-Received: by 2002:a17:907:7282:b0:974:31:ed74 with SMTP id dt2-20020a170907728200b009740031ed74mr7237277ejc.65.1686199009020;
        Wed, 07 Jun 2023 21:36:49 -0700 (PDT)
Received: from abdelah-VirtualBox.fritz.box (dslb-002-205-047-156.002.205.pools.vodafone-ip.de. [2.205.47.156])
        by smtp.gmail.com with ESMTPSA id re18-20020a170906d8d200b00977d6723bd6sm152119ejb.195.2023.06.07.21.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 21:36:48 -0700 (PDT)
From: Ahmed Abdelfattah <a.abfattah@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: p.lobacz@welotec.com,
	Ahmed Abdelfattah <a.abfattah@gmail.com>
Subject: [meta-security][PATCH] swtpm: fix parser error when using USERADDEXTENSION="useradd-staticids"
Date: Thu,  8 Jun 2023 07:36:47 +0300
Message-Id: <20230608043647.2894293-1-a.abfattah@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 04:36:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60219

pass the required argument to --home-dir
fixes: Bugzilla-15034

Signed-off-by: Ahmed Abdelfattah <a.abfattah@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb
index 614b07f..da86c47 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb
@@ -36,7 +36,7 @@ EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM:${PN} = "--system ${TSS_USER}"
-USERADD_PARAM:${PN} = "--system -g ${TSS_GROUP} --home-dir  \
+USERADD_PARAM:${PN} = "--system -g ${TSS_GROUP} --home-dir / \
     --no-create-home  --shell /bin/false ${BPN}"
 
 
-- 
2.34.1


