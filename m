Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E818BC7EE25
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 17:30:15 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web11.286.1686245410587096776
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 10:30:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=O8bQw5Bp;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-bb3a77abd7bso953335276.0
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 10:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686245409; x=1688837409;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=XVw8uP82+J4tWOWfF6dTWm1kaMVvvYfkbrD5D2ZD8f0=;
        b=O8bQw5Bpi8Wn+4hO4ShZRDW786H8lb8Vi2FGk6Tl2mjVA3lIanw0r16hmouL19BxSl
         7QergTWOVIuFBLObQrASNXemrwv1HpxG4C3wPC541UY7ziJe69BMZdWFfPHKRFHnxwZS
         vLtwHuTYKtXlNOW4UX/jkgKgDA089wDgTv8zR43VQxuCSj4D9+fmNHbTEqXeQX36fwc/
         0I4boh3jaHwwSKsyXll6gDD7eX/383cSTmo9oFIqdFlyG38HNUClWpEIyOI71nLTQgK9
         +weQuj5qRvIQ6O+eFzdnvHJbnluvTk/aJQmS8zsHw4snc5+zZYYkxNzq2yE2qQHqnUHz
         9d+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686245409; x=1688837409;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XVw8uP82+J4tWOWfF6dTWm1kaMVvvYfkbrD5D2ZD8f0=;
        b=UrlV473ueK3OypaQYwQ3mxwG72r6RmCF9moEbBIli1zOHCwrCXAPNVDysu1I/3CY9Q
         3znCxPek7vjPLcHUxfxkXN93FVMAPFSGPpUr+DPo/RXQUamEnUX8NcYhyU69uR1RjjCE
         Rfyw+fU00v5aQiZXQ6ERTO7xJUrj/R/CtQks1gOtzJdWtB0NkmvVDyGSr0LDiHKjUsPb
         BCU7upq5o2BhQAzZ+ak4MC2DmJDuMeLbx+YLskvJYe0bI3kOH9oE9WLvgerdKKtXWysC
         l1/NR10+A79FbMZoy3TU2KLTWqOruUwa3NFsjKkGSon/V1RD+pDjVwEUu2BME+IcmxUf
         bHCg==
X-Gm-Message-State: AC+VfDxGUx8vcLxsCQcNrxVKpyU//KxlfZzy0mNtedItlEkAVZPnHaHa
	KzV/vLkAKpY2IfpdkYuIZQULLiDxDaQ=
X-Google-Smtp-Source: ACHHUZ6oiTxz5Hg8Xc+Ii3icPokwhEipDwnNN9dhCQxVJcfvOCL1UTriproeGxXUcWDdbVrpcgzndQ==
X-Received: by 2002:a0d:d5c2:0:b0:566:c47:d06a with SMTP id x185-20020a0dd5c2000000b005660c47d06amr440081ywd.13.1686245409442;
        Thu, 08 Jun 2023 10:30:09 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:331b:e801:b87e:f25f])
        by smtp.gmail.com with ESMTPSA id l80-20020a0de253000000b00560f6704ee1sm58556ywe.26.2023.06.08.10.30.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 10:30:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: update to 0.1.67
Date: Thu,  8 Jun 2023 13:30:08 -0400
Message-Id: <20230608173008.17830-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 17:30:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60234

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...p-security-guide_0.1.44.bb => scap-security-guide_0.1.67.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-security-compliance/recipes-openscap/scap-security-guide/{scap-security-guide_0.1.44.bb => scap-security-guide_0.1.67.bb} (80%)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.44.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb
similarity index 80%
rename from meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.44.bb
rename to meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb
index ecf136d..af1ddf7 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.44.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb
@@ -1,6 +1,6 @@
 SUMARRY = "SCAP content for various platforms, upstream version"
 
-SRCREV = "8cb2d0f351faff5440742258782281164953b0a6"
+SRCREV = "ee688320c4478ccb0d4dbefbfbd2f10df6261e17"
 SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https"
 
 DEFAULT_PREFERENCE = "-1"
-- 
2.25.1


