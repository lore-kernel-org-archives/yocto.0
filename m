Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1667BC25B08
	for <webhook@archiver.kernel.org>; Sat,  6 Aug 2022 01:50:17 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web08.1111.1659750616258486868
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Aug 2022 18:50:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CY65JC5J;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id b4so4201848pji.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Aug 2022 18:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/pn2ijWSMo+ZfBQJ8mtZ/MczRRZXczLQdmlHCQUSo8c=;
        b=CY65JC5JPFyZtqxtTlTmkVHqNC2m7TKNF2NU6Sdq/3hbxpuLB8dTSA/ujfoLqGowPB
         bxlifMgumlk1HbWmD4gzJ91y7p+udb4teBRIlpNLgaAux/XjuZjQnfnc42ABAZ8oa5kt
         QLhnJFD8k/NkQqQspG6eETaTjU0Utu7o/VBhSyRy9/1xcvz2xHwic1JKcUlXIKmKwU65
         k1GMfrwxuTDLYAs6hNlwD61xrtHYkxVCMsD3jDYGClKAlZeNG6cXmfKhdjpx46I55ekA
         RZglP19kIoaJzKCRqbuBK0+EuXhMN2Uz5ft0FCDDocTy1dn6V5a7mNW3ThUtZBwDycQh
         BmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/pn2ijWSMo+ZfBQJ8mtZ/MczRRZXczLQdmlHCQUSo8c=;
        b=i7WKS+UsMALpeyBgT8sVQUJ8Zw1Ssy5JSzR8LxuzuiGuWWIheV2vF3FTaiNE67bsSv
         Vv43px/CyDf8FMuY2pKfNjvS+oZEYeixTkXePRBL0APHdPm5C2MKwoQCrqjxH+GYZQpN
         l0TfvrCTjhyF79hNEKjKHMc0WNHpdvs4mNHnamwmCFXr/jBok2a1k1RNzrahZ/LPqD46
         Ir0VF8UNSsO74EHJVBqP8xqGT21rzvTvcn4heLFAVVKzBt5rEkOt+I93YY7U7Zi0gv91
         VjqxygqhBHHuHv9SntwLYwdvHGzHqyUs99n6JvkkLgzC71lS7HFoOMIHMrePgx2SM52a
         CKFg==
X-Gm-Message-State: ACgBeo2kA7NoxBd5uaCeoCpKKDb4lf6PfMrc7sxcfAhgee/TiMlumrRi
	WnLwYReD2We+4bkgAPAurjZkMnzsFW0=
X-Google-Smtp-Source: 
 AA6agR5U4jH50EOVxD7TT4JLsXuOBXN8ik+hzJ0xJLTMQhEeifssYOrcXdZUW0U/s7KpmUvJRp3f5g==
X-Received: by 2002:a17:902:da8f:b0:16f:6b6:eed7 with SMTP id
 j15-20020a170902da8f00b0016f06b6eed7mr9147134plx.85.1659750615152;
        Fri, 05 Aug 2022 18:50:15 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 w13-20020aa7954d000000b0052d96fb3366sm3631295pfq.207.2022.08.05.18.50.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Aug 2022 18:50:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security: add pkg to grp
Date: Fri,  5 Aug 2022 18:48:11 -0700
Message-Id: <20220806014811.2728875-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220806014811.2728875-1-akuster808@gmail.com>
References: <20220806014811.2728875-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 Aug 2022 01:50:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57788

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 85f6916..ec603aa 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -28,6 +28,7 @@ SUMMARY:packagegroup-security-utils = "Security utilities"
 RDEPENDS:packagegroup-security-utils = "\
     bubblewrap \
     checksec \
+    cryptmount \
     ding-libs \
     ecryptfs-utils \
     fscryptctl \
-- 
2.25.1


