Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47192C77B73
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 19:44:14 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web11.3675.1684957447355872473
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 12:44:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=jvh0D1pd;
 spf=pass (domain: baylibre.com, ip: 209.85.166.41, mailfrom: tgamblin@baylibre.com)
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7748eb719abso114062139f.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 12:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684957446; x=1687549446;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=bHpmrJSe9vRGIYKOs3rFeMkFZeS3mfJslwejvm4pC1s=;
        b=jvh0D1pdU2nIlGf2kT5h33JRHP/gyNOB8EF88IWZCHOZ9gyVH615Y83PHL15bvyArX
         p2okz3dcLuQtKeYcSPNslAeMiistgsUJrO+g/VtcGzsY3EnLycvGV5ecdY5PguX5fjoE
         eFDcb2hBigmrHoItwTPy+d/3Cb3GorGbEsJe7ljrEiNt/OIsLjbAY+FeNyF36JDTbOBi
         1rgggn1WKLc8yNayEP0rAxhnx3zh0XXojmIg/q1FQk2UHt6tQsgzXTV434gErId/RHEv
         xUVj7dNl2iNd5qCXYfkugy7X893EY8uBwcmTMamfAA6KPKYvVv+k4HKMsbdwYijZ3JRA
         GCmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684957446; x=1687549446;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bHpmrJSe9vRGIYKOs3rFeMkFZeS3mfJslwejvm4pC1s=;
        b=X7UauwsPMQZlsEVZ0bj6KPyyMOWPBVtKQ6I8a8LZCjgISYP9IQKwHr37bZsM6XuNld
         toYHYs6qBkPe3cwo8fgnpdmxEU2AHlmdojFwWN3zne2Ek6SW3YdETmqxdXTxVbLm4tXK
         yyY3f18aIBxVjNhtXKMh9zUVrLtV+DxjNmRHCmfIJ+KC6g+bjxXKuAesT8oPTtn/Gwz0
         XPSPuFvkp7ZFwXu1dIXbwCp3UIgPMunv7mQj1ra907hiIBtEK0UKBtKb5iaenmyc/wkJ
         jE2PQ9sGavR3yYVqIT8E3AugxZdiWVKe83ZfEDUB+wpkj0mdZhD7/MVGPxpZ/g4ssH/0
         XDmg==
X-Gm-Message-State: AC+VfDxmQyBcDfQyEHIrzIR+WizjRaqMn+s086JgR0+8BOKpLttTlXIR
	Jyv5Me9gK+atvR5yWzJ+BSHaUpLi1TssBXKpIto=
X-Google-Smtp-Source: ACHHUZ5/DAIw17FT0wwT6wRiGieLr/jDwQsiaIfe8kmbv3h83qhnO1KEgTntEPkR0NtOBwYsxBUzdA==
X-Received: by 2002:a6b:6504:0:b0:774:7cf6:d350 with SMTP id z4-20020a6b6504000000b007747cf6d350mr5700624iob.7.1684957446389;
        Wed, 24 May 2023 12:44:06 -0700 (PDT)
Received: from megalith.cgocable.net ([2001:1970:5b1f:ab00:4839:d997:f6ce:5f02])
        by smtp.gmail.com with ESMTPSA id q22-20020a5d8516000000b0076c750dc780sm504099ion.29.2023.05.24.12.44.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 12:44:06 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH] core-image-patchtest: Add safe git directories
Date: Wed, 24 May 2023 15:44:05 -0400
Message-Id: <20230524194405.3345812-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 19:44:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60113

patchtest's method of mounting a shared directory into the guest image
means that the associated content may not be owned by the image's user.
Add /home/patchtest/openembedded-core and
/home/patchtest/openembedded-core/bitbake to the patchtest user's
.gitconfig so that it can still run tests if the provided repo is owned
by someone else.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 meta-patchtest/recipes-core/images/core-image-patchtest.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-patchtest/recipes-core/images/core-image-patchtest.bb b/meta-patchtest/recipes-core/images/core-image-patchtest.bb
index 47e4041..4aa768c 100644
--- a/meta-patchtest/recipes-core/images/core-image-patchtest.bb
+++ b/meta-patchtest/recipes-core/images/core-image-patchtest.bb
@@ -43,6 +43,9 @@ EOF
 [user]
     name = patchtest
     email = patchtest@patchtest.com
+[safe]
+    directory = /home/patchtest/openembedded-core
+    directory = /home/patchtest/openembedded-core/bitbake
 EOF
 
 }
-- 
2.40.1


