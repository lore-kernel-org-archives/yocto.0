Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E72CC4332F
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 14:55:01 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.37676.1653922497461806482
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:54:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iey1iZcB;
 spf=pass (domain: gmail.com, ip: 209.85.214.176,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id f18so10557390plg.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=u/SeS5iZc/gJRvCc8uoyByA4LLdvHc9Yu0KcSDQnvUw=;
        b=iey1iZcB2dSsjdQznL/34pa75MlVEuBn0fxmS+RJAuhA1Kf2UfZBx1EbczWF0sB9lb
         N/ZUyZVeZqX6YDw3dMRs8ufTgQMPakJXKn26pwY/ajQO+Ys331OQWlARRMiRR25bTtSE
         w4fnEotXYbGAyl7OoxPf+x4S46WcXz7+GqTTluODc4MY2A1EjOxXg0ORFhZRRFFJaX8T
         aNngnVxPQznSgWvlK7KVG9roPulBWVeWoB+HZ/A96JP9EXQoioVTAT06whQyy989fHSQ
         iZIVUgkAe7rfPvUTYMwXuxW6ayxMLDpRHE+4nmpDUnh9BeNUqahP7BNs/DWGStqFmvQW
         KSfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u/SeS5iZc/gJRvCc8uoyByA4LLdvHc9Yu0KcSDQnvUw=;
        b=1m3nY3PapsCy9/24A8kOvhxPjtmvBdH5ssQXSouUdgyzh6qnAtCTfO3JYILUKhDUC9
         0BneC11HyORj5FqHtKkPk1i00sp7VzEk+355SKvtL7GJd+kXGabXmFlY1ofnw/wUGVvW
         NOPdfK/TJYPWI5bTn7f1tk7jz81H5yOPfR5rPzhsKlkgYvqejYOyrV7FtBmOHqEkeREf
         sX8JW+CfnwZe37SLYFalquux9/aKD7p4v8nKoNXtDwGR9L/Mzgd4eWJHNPzwczyQwSaz
         Qhwt/yo5bK/yQQx3ByjDhfNzvyfgLUAbNg5wfxZoChqlfHDhq31wVT4lF7xb+ZcPK8pK
         R2gQ==
X-Gm-Message-State: AOAM5339qwVQCj6MU+Vi41K/+dsq1/cwkx5nerEDZYr094+GrQ34KdeX
	GiRi6ZQXRSlyVLm5D06BXL0uvPrWLns=
X-Google-Smtp-Source: 
 ABdhPJxFp1wIqKTi9Y2K9W+LmskgNFkSWQqrlhup9xbVR9mlIIedGCv85HP6AG1Zv+XABe4lra8+Qw==
X-Received: by 2002:a17:902:a70d:b0:15e:da68:b1b1 with SMTP id
 w13-20020a170902a70d00b0015eda68b1b1mr56938619plq.53.1653922496507;
        Mon, 30 May 2022 07:54:56 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 q13-20020a170902b10d00b00163c9ad14efsm3480339plr.143.2022.05.30.07.54.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 07:54:55 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-tpm][PATCH 2/5] security-tpm2-image: add swtpm
Date: Mon, 30 May 2022 07:52:49 -0700
Message-Id: <20220530145252.4059103-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220530145252.4059103-1-akuster808@gmail.com>
References: <20220530145252.4059103-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 14:55:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57220

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/images/security-tpm2-image.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/recipes-core/images/security-tpm2-image.bb b/meta-tpm/recipes-core/images/security-tpm2-image.bb
index 7e047d1..941a661 100644
--- a/meta-tpm/recipes-core/images/security-tpm2-image.bb
+++ b/meta-tpm/recipes-core/images/security-tpm2-image.bb
@@ -7,6 +7,7 @@ IMAGE_INSTALL = "\
     packagegroup-core-boot \
     packagegroup-security-tpm2 \
     os-release \
+    swtpm \
 "
 
 IMAGE_LINGUAS ?= " "
-- 
2.25.1


