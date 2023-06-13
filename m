Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 803CAEB64D8
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 19:13:01 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.36.1686683572174649089
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 12:12:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ZFTPHmGX;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-56d304ef801so29473827b3.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686683571; x=1689275571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N46Y3AAuqPR1HYy4Qzovj6yi82ID/U35f2IiLwyEh20=;
        b=ZFTPHmGXXnoUeZSCT/qfzT6sRQw3EJn2/TVh2x+TzdQ7mq4yxCLjdjAdj1I9XKvNBL
         eH89ENeYu3EjH4pm/stV2Jdig4xUV4J3r8y5LyO11eAQXgo8WPpQWI4bBdx/vWooyFFR
         cTeWNOTStejvdAHakT+BYmY3lsLSa0BCu4+m72E40KnNSSjQijmG6heV4JfJd8/L9VHM
         +X4iQNu3pCNS/UDlQOmU7nBPJhQDJfWXPnszgv1ORDrgKNCAO9lCVs+p9fuVHMIA3q41
         NqewUDT0n65BoPtLMbHyfzpxmYoZPJXRqnpuVQX/m9pX0cD/yPyBZQZHyhPZSkirh9tS
         eArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683571; x=1689275571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N46Y3AAuqPR1HYy4Qzovj6yi82ID/U35f2IiLwyEh20=;
        b=gidJdHF88siWc2WJdoqcTypm5kkS+PBVfdU0n3dFzR/2DCunh3R7021U5uaZCuzDd+
         aqJiXyoPxP+H9qyvPVU6Y24yXzJCXzli6T1OmCdwoVocVKyeSCPK6mObIFpKLFvJexGE
         +7OLXSn4nCLRsj9rJ/YOQt1lh7e0tva25wQOpt9id75N8zgcrkutwGK6sDxalAnXZGmi
         ZCFiS/n8VF067G468ygWj9fBDJ+NjFj39U8rTV3ab2yFvCJhGvePYVDnJKKDUvmo3WRP
         C3bRx3jMcYO1g7uSDDTyEq+ZLuamu+JcB63e5s+HnDAF8sga6Ldj7SdhzFSfJMwve41l
         rZSQ==
X-Gm-Message-State: AC+VfDyQuVqu8hLxRwu6Q6nPPuJMEe0gM0ReikqoyoxIXOQRw215+KbF
	/Ku0iyEqrvXh5UJ82D5+wmMyIWzyrl8=
X-Google-Smtp-Source: ACHHUZ6ym1BrHCpXvhjI+U/4ohN51UqT/M/5jqpPNuvOSTDOFZngRCtItNrH+2XYWWxlISoXSRN/EQ==
X-Received: by 2002:a81:6505:0:b0:565:a0c8:7e66 with SMTP id z5-20020a816505000000b00565a0c87e66mr2993546ywb.0.1686683570988;
        Tue, 13 Jun 2023 12:12:50 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:be62:56a:860e:4129])
        by smtp.gmail.com with ESMTPSA id q133-20020a815c8b000000b005569567aac1sm1971786ywb.106.2023.06.13.12.12.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 12:12:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/7] lynis: move to main meta-security layer
Date: Tue, 13 Jun 2023 15:12:45 -0400
Message-Id: <20230613191247.18732-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613191247.18732-1-akuster808@gmail.com>
References: <20230613191247.18732-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 19:13:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60278

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch  | 0
 .../recipes-auditors => recipes-compliance}/lynis/lynis_3.0.8.bb  | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename {meta-security-compliance/recipes-auditors => recipes-compliance}/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch (100%)
 rename {meta-security-compliance/recipes-auditors => recipes-compliance}/lynis/lynis_3.0.8.bb (100%)

diff --git a/meta-security-compliance/recipes-auditors/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch b/recipes-compliance/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch
similarity index 100%
rename from meta-security-compliance/recipes-auditors/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch
rename to recipes-compliance/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch
diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb b/recipes-compliance/lynis/lynis_3.0.8.bb
similarity index 100%
rename from meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb
rename to recipes-compliance/lynis/lynis_3.0.8.bb
-- 
2.34.1


