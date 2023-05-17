Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6D5C77B75
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 06:16:47 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.43410.1684304201156816571
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 May 2023 23:16:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@snap.com header.s=google header.b=bRH++ikk;
 spf=pass (domain: snapchat.com, ip: 209.85.221.53, mailfrom: ecordonnier@snapchat.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-305f0491e62so299616f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 16 May 2023 23:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1684304199; x=1686896199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7pQujXCl4lgy1hHg+XA5jclB648HkIdD2VwPdmtZ7xc=;
        b=bRH++ikkwKH7by8/RcYC+CctBuRHT4v55H0ybkkZTHttJB3kGXtslXB2O74hVd23Ul
         YJJAsAu+XkZTR/SooZ4KVHss14WrFN5eS0pLJP908mcL/+bQoefnrgCQUnVpB3t3YUcD
         4z51Mc4od5I5mRKn80BtdQbPZSkKlDBXpMO4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684304199; x=1686896199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7pQujXCl4lgy1hHg+XA5jclB648HkIdD2VwPdmtZ7xc=;
        b=k+8J8dJkOMxaeXACJpHWUOF6TphxsA8kbDfLWKkuBLZVNaoUTDM0L3WYkyTC3XcF75
         mCT53PPF63yKfMVlb9LPUJkVQiFUXS8FHP0a/SG0HZiESfXbVb/+mb7usD3kfhprd1I4
         QA551pdFJhVRnbWyeZ7uzPsy+ZNPHSVmgpZwUSsiNtIH3NZyoAxyPpvyV8fBOtGfl5my
         IrzkRrMGQiG4DHZ9zCWNjnQVX1cyTTCuCZP523sZq/RUTd0DZp5RUhnQgMTsPSffX+Ex
         3eDijFO4ml+f90hdOGErhT+gEalxnUYZnZwrR2kHFO6J28hBi6HKmHrmFBBuq07ZPZL8
         yreg==
X-Gm-Message-State: AC+VfDwDlM3ROq1w4QXpQDq/+ZUlskuJUpNJHQTY6NJ9J5hn7sI895/2
	zyEDFi21nLzso/MugissuUWYnvNcdndnfnOpJaA=
X-Google-Smtp-Source: ACHHUZ5Qt5Yg9CiRK82QVcfwEMVlNwC7DL3wMkHq9/q/RBxHgV4uN1G0ErwJrz/TQ8T91qAw2etvVg==
X-Received: by 2002:a5d:5946:0:b0:2f5:d3d7:7af4 with SMTP id e6-20020a5d5946000000b002f5d3d77af4mr26781637wri.63.1684304199277;
        Tue, 16 May 2023 23:16:39 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([85.237.126.22])
        by smtp.gmail.com with ESMTPSA id o14-20020a5d58ce000000b0030629536e64sm1573736wrf.30.2023.05.16.23.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 23:16:39 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH 2/2] Improve README
Date: Wed, 17 May 2023 08:15:26 +0200
Message-Id: <20230517061526.3383173-2-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
In-Reply-To: <20230517061526.3383173-1-ecordonnier@snap.com>
References: <20230517061526.3383173-1-ecordonnier@snap.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 06:16:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60039

From: Etienne Cordonnier <ecordonnier@snap.com>

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 README | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/README b/README
index e4ac9bc..59ae032 100644
--- a/README
+++ b/README
@@ -5,7 +5,7 @@ OpenEmbedded meta layer for darwin based SDKs
 
 Note: For now, only macOS SDK version 10.15 is supported.
 
-You also need a OS-X sysroot tarball/zip file generated (copied) from a target OS-X
+You also need a OS-X sysroot tarball/zip file generated (copied) from a target macOS
 system. This is placed in the osx-runtime files directory and is used to compile the SDK
 against it. It needs to contain the system libraries (/usr/lib) and include files 
 (/usr/include). This tarball is not part of this meta-darwin layer and must be
@@ -52,6 +52,10 @@ Layer Maintainers: Richard Purdie <richard.purdie@linuxfoundation.org>
                    Dominik Schnitzer <dominik@snap.com>
                    Etienne Cordonnier <ecordonnier@snap.com>
 
+Please send changes to the yocto mailing list (yocto@lists.yoctoproject.org) with [meta-darwin]
+in the subject line, cc'ing the maintainers. You need to subscribe to the mailing list at
+https://lists.yoctoproject.org/g/yocto before being able to post.
+
+When sending single patches, please use something like:
+'git send-email -M -1 --to yocto@lists.yoctoproject.org --subject-prefix="meta-darwin][PATCH"'
 
-Please send changes to the yocto mailing list with [meta-darwin] in the subject line,
-cc'ing the maintainer.
-- 
2.36.1.vfs.0.0


