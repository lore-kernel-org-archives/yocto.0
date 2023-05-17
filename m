Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8D61C77B75
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 06:16:17 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.43338.1684304171146462425
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 May 2023 23:16:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@snap.com header.s=google header.b=Hj0KIDRq;
 spf=pass (domain: snapchat.com, ip: 209.85.221.53, mailfrom: ecordonnier@snapchat.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3093a6311dcso291823f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 16 May 2023 23:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1684304169; x=1686896169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7lPjWf5UMZ7+D0c6jIoWTyPgdAv/l3w8Z5wQactHEvg=;
        b=Hj0KIDRqSdwYBUb0lz1xv2zQmDiDGkuQaVuucgMHmcG2AqBSezCbUUCKDQRUJaYUEL
         g2/QDSf7k1THmicZKJPMpz/ucRSqSnoyfBwgXirNLgGsEQpyDsZijkg5lx61hwK4oDf7
         kMK1HzjhgXGjisiwLLpHmvD/fVf7cAFhxV8pE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684304169; x=1686896169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7lPjWf5UMZ7+D0c6jIoWTyPgdAv/l3w8Z5wQactHEvg=;
        b=UM8EejZ/vmkrEiUoqq8XKf0GHuCGjbgJzDkh0UpuouDuW5DD+XuMI5kqcQZJ/N7U3n
         nnMGefYq0bn205EMbCFd6WWLJHvZ1zVlyvbhwLWCOZyS5yoCkvqs6v9aX+4Jhzj6qgYC
         snMs5cBKW543fXBn1Wd1dzgdd3CDJiyiCLovi0GSw2mNFTZRAih/Vw/BEm4/qSzXSSv8
         QYtI3w21sijT738FdXhpYevYsLrwdyp7+vWTORuwTEHDw6GQq1ilPa0bgKiYzi9AQhEg
         mOYMUWTXXBgs/eQ3L7tKodl4aF3P6t5ql7H+FQ5zT6g9/6BkagvQY9S9UMEE09iYkU4Q
         n6bw==
X-Gm-Message-State: AC+VfDw7/WVGDuawvmLGtiv3EA3+BIl2hwnsQuVJEbROmmp9na+Q7fc/
	ikEwAGtmnS3UX+aho7Wy7En3c3ZpVHM4l0ZOKCE=
X-Google-Smtp-Source: ACHHUZ4gtxRP0HjdCeDOmK0SXrIxGCsE+50RGSrW8sVkn+it94MaiedssVdnVHdsLovovYU+fwdqoA==
X-Received: by 2002:a5d:52cd:0:b0:309:4111:d82c with SMTP id r13-20020a5d52cd000000b003094111d82cmr468036wrv.49.1684304169101;
        Tue, 16 May 2023 23:16:09 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([85.237.126.22])
        by smtp.gmail.com with ESMTPSA id o14-20020a5d58ce000000b0030629536e64sm1573736wrf.30.2023.05.16.23.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 23:16:08 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH 1/2] Add new maintainers
Date: Wed, 17 May 2023 08:15:25 +0200
Message-Id: <20230517061526.3383173-1-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 06:16:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60038

From: Etienne Cordonnier <ecordonnier@snap.com>

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 README | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/README b/README
index a58ab39..e4ac9bc 100644
--- a/README
+++ b/README
@@ -48,7 +48,10 @@ This layer depends on:
  layers: meta-clang
  branch: kirkstone
 
-Layer Maintainer: Richard Purdie <richard.purdie@linuxfoundation.org>
+Layer Maintainers: Richard Purdie <richard.purdie@linuxfoundation.org>
+                   Dominik Schnitzer <dominik@snap.com>
+                   Etienne Cordonnier <ecordonnier@snap.com>
+
 
 Please send changes to the yocto mailing list with [meta-darwin] in the subject line,
 cc'ing the maintainer.
-- 
2.36.1.vfs.0.0


