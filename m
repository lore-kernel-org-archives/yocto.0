Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB773C77B62
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:39 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.59632.1680279679850150270
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=nWnWphuZ;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id p34so13225565wms.3
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279691; x=1682871691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HOvMsir4zLmOKkOe2AJjiE6tiEzU9GbJ3TIHgKdas7s=;
        b=nWnWphuZn7t2mZFz4cpUcX6Hmzz6YO80S7VJmX+NuvgGraaZDm+LUAi60U3HPbkpcx
         yPMw4XxQ3+BTBibXsdbombmIENJNdgnjhqvRtjcQELcioAhiF446ccmLgmPEDxJceU86
         Gk5tVItnJ2eIUNz/jK3ZgLLJHnT7kkrBNEvfmpiUPI+I3l0Yl59LUt6xpnunnt8Ua/CQ
         FSQKKmrnXVMh24PfC4mNWZTD2EBRCJCC/PeXRP0EXdrxTH0LTCa2efYJUULaF8Fq1TVz
         aBlAxCwDYV9G/fGUPHjEicaKfNviSTLnULdKy1gKQ/SifSXadS6aMS+b14ObOjlcXvwM
         L3Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279691; x=1682871691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HOvMsir4zLmOKkOe2AJjiE6tiEzU9GbJ3TIHgKdas7s=;
        b=I8L6JD++/g2r6EMhUBOS2O2pAv6MY17SEZlla525j4l71zkTTWyYXLkr1X8G1AoIeq
         mF49VnYuXeF1E23jU1v1FfUAE3VOzr25uk0eAQkvU5JcKrsC8kwaixk7P/VZMoUfYiUP
         2VV+42rEwoBCky49I+WUhHUJhZg6BIif1AXpMoqPTa/OVnWw64b8PJF1Is6Y3tx1U/Ty
         oce5A6tZdj0nFEEG5tOdpz/6qmHB/JSHTI9owTTvnIN53rmjITCBhg39PRPlHDNpHbUN
         LpcdBBxoEdFm6dxq5Cwz/6Zz0oprGf2EHMdDT73F3wW2lJzuXxzkDAmjJ2Rzpkm6pww1
         nQCQ==
X-Gm-Message-State: AAQBX9f5vVKXK93XFTs3Tk4Gkyg5puXjO29N8yiwiqzl5SOHJCoanoLC
	iJizhmSw0EHVM6JXh43Xym+pcnvy4xANlokV
X-Google-Smtp-Source: AKy350bMr7g5nOeWTNNMWgqy8OoyLUls+63UXCZ6CD5wPQBUISQ8Ri3M2bhIehtJzy5XmBvVWfUFYw==
X-Received: by 2002:a05:600c:244:b0:3ef:76dc:4b92 with SMTP id 4-20020a05600c024400b003ef76dc4b92mr10492330wmj.28.1680279691235;
        Fri, 31 Mar 2023 09:21:31 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:30 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 15/16] README: add note about backporting
Date: Fri, 31 Mar 2023 16:20:41 +0000
Message-Id: <20230331162042.1801766-15-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59583

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 README | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/README b/README
index b2fa46b..d33c576 100644
--- a/README
+++ b/README
@@ -13,5 +13,10 @@ or local.conf:
 
 GOVERSION = "1.20%"
 
+The patches can be backport from openembedded-core with:
+
+ git -C openembedded-core format-patch -1 -o $PWD origin/master -- meta/recipes-devtools/go
+ git am --signoff -3 -p4 --directory=recipes-devtools/go-1.20 $PWD/*.patch && rm $PWD/*.patch
+
 Maintainers:
 Alexander Kanavin <alex@linutronix.de>
-- 
2.34.1


