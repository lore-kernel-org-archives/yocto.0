Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C49BC76195
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 19:59:57 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web11.3806.1679169596417067608
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Yhk26U6g;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id o44so2609200qvo.4
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EVh1IkIV6qz3T6UaLE4e8ZoQ+rdtG6Q6Ol+iuL5Er00=;
        b=Yhk26U6gelKUUdpvmt0MwwEjlV55lmIDSMrp4s5pysO1IDtFSjJuBpeydgJtIoVi5z
         6DuL67y0KZi8gXLAJ3KO5pfzajZmD3iob8gINW8R7OLuJLqKL0f9GxKv8nDVsDhV4R+F
         0LctD6OVoaURqQuDEn8NE+e0P3kGzgmGWWmV/O5wqVN1iej56n16aotU8zoPw2D3eovI
         WzH5ligbCvdDE1B8x6cqSsUUir5h7bGLlcYyVweejotoD6/YxMKa3WdDEIzntU4BPstY
         nFeNqhAI+CHBPM1Gc1+lhSx4ezrXqLWUMjm9u6qNBxx+07yEbs5NeGLQAFys2R6XrcHf
         0IxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EVh1IkIV6qz3T6UaLE4e8ZoQ+rdtG6Q6Ol+iuL5Er00=;
        b=ajplfZJzrtKFPZSKpOLCSjggxlGFitsuWh+fFVpTw/ng86lcYvHUQLsuPWnL1Uf/+I
         Wp/rl4uPnB6rxvpp4h6ju3VVBBwsXnhW6fu2vvXc6Ak7ukdKMo1xlLRhZElxif2M8osA
         HXq1SQ46eQT2sRlH9t9QcCxuOHnKLJzOq2od0a0EjweBhp4/TucfdBrD65XW5CSKtYDR
         Q+ECqVAub6AZuUNU7bxbcylnvQs+V4Dz3G2yjoYRbYAaEMJ+xc/tCSwZvVxK5+XSqGwy
         ITqvchpbowNv5YBGWgdD/MNWdbvVJr3Od1UVSSKuXbhOCeEfzVseVT1lixf17zMTJvbr
         QBCw==
X-Gm-Message-State: AO0yUKXdomAB2lnGhXgo6m7tHjhT3vVWsO6OpXptPugqmlq1AGKjX03f
	Dz2/zWmCnMf6F52C956fHXGU+wS7fVI=
X-Google-Smtp-Source: AK7set8hoQF3TZM+HQnDa0Xe0M4C1HZPRQUa4XN99C93g+41HepjTGDaJ3lSz2Ndz1FrNStBzofyDg==
X-Received: by 2002:ad4:5ae3:0:b0:56f:fb19:1650 with SMTP id c3-20020ad45ae3000000b0056ffb191650mr50504325qvh.2.1679169595479;
        Sat, 18 Mar 2023 12:59:55 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:55 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/9] lkrg-modules: update to 0.9.6
Date: Sat, 18 Mar 2023 15:59:47 -0400
Message-Id: <20230318195952.538375-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230318195952.538375-1-akuster808@gmail.com>
References: <20230318195952.538375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 19:59:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59456

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../lkrg/{lkrg-module_0.9.5.bb => lkrg-module_0.9.6.bb}         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-kernel/lkrg/{lkrg-module_0.9.5.bb => lkrg-module_0.9.6.bb} (95%)

diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.5.bb b/recipes-kernel/lkrg/lkrg-module_0.9.6.bb
similarity index 95%
rename from recipes-kernel/lkrg/lkrg-module_0.9.5.bb
rename to recipes-kernel/lkrg/lkrg-module_0.9.6.bb
index fa46cb6..421d924 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.5.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.6.bb
@@ -11,7 +11,7 @@ DEPENDS = "virtual/kernel elfutils"
 
 SRC_URI = "git://github.com/lkrg-org/lkrg.git;protocol=https;branch=main"
 
-SRCREV = "c58cb52145b8e8ccc6bd19079f5c835933281cdc"
+SRCREV = "2481b3e2dd04eac945c31f99058b0aeee73c3a71"
 
 S = "${WORKDIR}/git"
 
-- 
2.25.1


