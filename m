Return-Path: <jatedev@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B11C43334
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 00:48:02 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web09.2806.1658450873040193236
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 17:47:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qDFThJnV;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: jatedev@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id ku18so3073906pjb.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 17:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T7+Uzl9S5VM09AhBv53+VQvYZBH2Zjj+AJ/NoQ3c1Hc=;
        b=qDFThJnVJzcAGoJztIcABPRLpgY21bk2WynsvGXV+a0eNaXu6DqeS9lZE1vfWoWNbU
         08mty3YMtKNXYyiufxI0NO/U4aXMHyrfrhxL+qf3LXiGftb5C5DgXvl3ndbsvWkO3WdY
         i+Z5hoGHIGXo0dmhSgNQrLxlx52tYx+6rZ96TcVxrefTComuFrq0jjTCz/BnPfNoN32v
         znBcRLwhVUP+vv10aBXl8mWx8Sjn0ZAMHF/XRKIZxa2+7WhqYyqj9eTyc/KJyTA7EBAP
         Wh2zCvMN3gkhhy/r+FmDXnU52r91T0VRKJevgrSQojb0P74/QYjYOgdH5mttz/3SUwNb
         Ed6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T7+Uzl9S5VM09AhBv53+VQvYZBH2Zjj+AJ/NoQ3c1Hc=;
        b=aIvqxRKwAEYlMY+b6LAE1m8AfO99nIi3HA1dkud1AZJOQfs540Hx/i5xqdMFizCNRp
         64+o7FnW3O/GHBL+qJIeHPZK8yj5mDYPUiiZXdCUayABlBRlRd1fFRMbq94zsDUpec7z
         m34FVMNxp+g4f+6+Zgtf/TG64Vq6f6hgF+eHyHdlt6DI9wsGUeExMmDIuHbUYsC4VZLJ
         CLBnjh6yNzZpSGCGAXu9fIFJlCjECaDVG3B08sbNY8a8n6x/91sl11nH//OVDreMkDoq
         YRj8KpDn00Bgr2byTuFwF2gJG9zm7gZycYGVZ4SNCbEwSxqMeOy+s7JSLXlkU/Ci+ssa
         RWBA==
X-Gm-Message-State: AJIora/abQscM3MMXV4E27gZwbH44rBjIg3MGssciLgfe2eNAIpAJtK+
	Bpte3ohfbXYVBRF40ifrneeWCqlN620=
X-Google-Smtp-Source: 
 AGRyM1s91/wOSJ1wnQHg/eGOTkmnEE4DScNtiWqlPU0vPzUoZro4oDn5GvsCs7xUn8uD2cEqzHl0ag==
X-Received: by 2002:a17:903:1209:b0:16b:81f6:e952 with SMTP id
 l9-20020a170903120900b0016b81f6e952mr1135478plh.48.1658450872269;
        Thu, 21 Jul 2022 17:47:52 -0700 (PDT)
Received: from localhost.localdomain (71-209-69-44.chyn.qwest.net.
 [71.209.69.44])
        by smtp.gmail.com with ESMTPSA id
 b14-20020a17090a6ace00b001f061359023sm2059154pjm.21.2022.07.21.17.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 17:47:51 -0700 (PDT)
From: Jate Sujjavanich <jatedev@gmail.com>
To: yocto@lists.yoctoproject.org,
	mark.hatle@kernel.crashing.org,
	jason.wessel@windriver.com
Subject: [meta-openssl102-fips][PATCH] MAINTAINERS: Fix mailing list email
 address
Date: Fri, 22 Jul 2022 00:47:49 +0000
Message-Id: <20220722004749.79574-1-jatedev@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 00:48:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57616

Signed-off-by: Jate Sujjavanich <jatedev@gmail.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 66a924c..e248803 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1,7 +1,7 @@
 This file contains a list of maintainers for the meta-openssl102-fips layer.
 
 Please submit any patches against meta-openssl102 to the Yocto Project mailing
-list (yocto@yoctoproject.org).  Please prefix emails with 
+list (yocto@lists.yoctoproject.org).  Please prefix emails with 
 [meta-openssl102-fips].
 
 You may also contact the maintainers directly.
-- 
2.25.1


