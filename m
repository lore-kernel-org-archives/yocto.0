Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC145C77B6F
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:29 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.59633.1680279682061541637
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=L9vpSGP5;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id s13so13215526wmr.4
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279680; x=1682871680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t90UAoMdtRYVkGkTEYpMAIVTX9jy5KjoeVNdMbcJkwc=;
        b=L9vpSGP5DeneElJKd2VPTs+tb4FgYkBbd1Bl4cEiUPmGjNk+iegcDltYT/6MIjUE67
         HNdSOMh4OVjfQoGApYrgOBCArQEYGGjcjqaGnvAW2DYbnjAYREg/8sCpFONQ7aXL6Oo0
         TBJmDXdlp1ipidUfXtm0Bp8URLIM7230fe9Pnvn2Ny9x6rcSOZd5bk0QYzXaQVW/YB7r
         rFtOZIbV4gKvFspNsMW4vN+N7Szj4VdDvv3F1tdlgPURp2vVZNE0Z5xqCXK1LQj8n5Qb
         HDtvjYkErbwrpGWIB2wYloPijgbEpSUW5TSbfITRT/hfhk6URtV3RTUCPteWhB1iKRIh
         49BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279680; x=1682871680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t90UAoMdtRYVkGkTEYpMAIVTX9jy5KjoeVNdMbcJkwc=;
        b=zbkqSHmfa9t3Nwt9Wi/KRSawY1Ng4dS0GgfrWwuCtG/EuOx9A61KOHR2a+fctvAuQf
         jNBJGoJOUlKv8TF+bOwXMMinM0MYCHG8HMs24DZChT00Z2PL77OLJkAzkmunRRlNKwdE
         qvIUmnm0qw6YKUjNFBb6kpNjip4pRYXmIzjUlsG7gg58fw62eJSiiXu3cIYQ6MXtPYRu
         8I1Aqa8sZcttus3KkZsgTJfgFKctMJnHdsex0mhkABmHMMu2z092kluLPDEH8WxDDPPR
         kAenjjcC3cW00J9KkLfmbLmFWyOquo1574FAVd2wKxemcV2OfZ6A/m7BnA7m//S7Fd9k
         0Y7w==
X-Gm-Message-State: AO0yUKVl55DLw8OZsBjNF5fsLQ4ifNTjDszAuLW6Kvrn/t+tlyNzzQi4
	z01KAdTegSGBDCw2LNFmMuI2sdIWN2X+3i3d
X-Google-Smtp-Source: AK7set/kTUYhOPbFzuAfy6U4IAG08LSFzovcsnnBRlDsOe3OUKLnYMbikyt40Tu2UgCCdKxU2dR7xQ==
X-Received: by 2002:a05:600c:22d5:b0:3ee:3d2d:841a with SMTP id 21-20020a05600c22d500b003ee3d2d841amr21902724wmg.24.1680279680363;
        Fri, 31 Mar 2023 09:21:20 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:19 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io,
	Alexander Kanavin <alex.kanavin@gmail.com>,
	Alexander Kanavin <alex@linutronix.de>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 05/16] go-helloworld: update to latest revision
Date: Fri, 31 Mar 2023 16:20:31 +0000
Message-Id: <20230331162042.1801766-5-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59574

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-extended/go-examples/go-helloworld_0.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/go-examples/go-helloworld_0.1.bb b/recipes-extended/go-examples/go-helloworld_0.1.bb
index b3a8631..1e2434f 100644
--- a/recipes-extended/go-examples/go-helloworld_0.1.bb
+++ b/recipes-extended/go-examples/go-helloworld_0.1.bb
@@ -6,7 +6,7 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
 
 SRC_URI = "git://go.googlesource.com/example;branch=master;protocol=https"
-SRCREV = "787a929d5a0dfb8bbfcdd2c4a62e0fd89466113f"
+SRCREV = "ad95e7f791d8e1e7e7ec7f7cedfc2f6b29f6c9e2"
 UPSTREAM_CHECK_COMMITS = "1"
 
 GO_IMPORT = "golang.org/x/example"
-- 
2.34.1


