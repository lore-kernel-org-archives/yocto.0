Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCBB9C761A6
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:39 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.59664.1680279677738163944
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=alzF754Z;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id l37so13226497wms.2
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279692; x=1682871692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYNEbjgzzKUxII7AG3tZmgev3ZU76YysYRcHvyFSnNQ=;
        b=alzF754ZYAYdxrhIyMXrmbjmO8R5u4RMspqtrczn7VayW8j6i7sVpB9MjOIqYlCGvO
         qhBeGaNuOqeY+PABeU2tHxgqFOm2qDBj+hVuBHDy9RL0ytpx162VbCAk5YvDPpyclZ9+
         C1BDXZT7CpEheOrjFRl5AmNO5VGPGLtsMulWX54kbyBCdEHrN1VCoI79IeqkQ6rLe9mk
         4bf6ZOyN3D1wJvmYYusJO8HLgXORkmiTBpTq1xrD/fciI2wU15YSbTbl8tQa/G6jxVyy
         FiTctjqOI4aDwfwnl3hVNpp/b3G25SwrNUrEeAtfOypVQ5rZljIfR2Qyxs/nAye+9IGF
         i/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279692; x=1682871692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xYNEbjgzzKUxII7AG3tZmgev3ZU76YysYRcHvyFSnNQ=;
        b=bgXWBMHYCDI2jAb0IvOqRqKm+rlxpHigkMbCePP6ucMx336KdkLoZa4jeCUC1m6Io9
         Ihj3h4n9FOxxb3RaCFCjVVzMkjjONOl6Etzy1LvpL6Ovyek71h4K0XdpumL1FFVIkJhR
         eP1NNI8quP3jxPBMuh7QsbY9gUfIF2Cqsn4mPcb5IO2X9pI80VQsTHEJLy/wWT1o10sb
         8H3pYmbDybu5gcBOPcSprVxfdZhqUCfBtGibm/J8FQztxZBBM+t8OwbRAONfgqsR7Dcz
         VwjGsE3k9MGETyR+RJMHm9Vh143+2pT6/dlh2A70B0mImDOpK2LgGLLyg+/dHwiBy7pi
         w1SQ==
X-Gm-Message-State: AO0yUKUPxeViHGM1O3NFCsyJ4JlJ5+GS2u65bBV7mRHD6cnYU/i6bYFs
	Yf/K1BZMvfz8JjHkjd4KXE57P8RU7W1JEsWz
X-Google-Smtp-Source: AK7set8JCNIItL0Bc1cuNHe2Wpxmvdj6VnSs63fwIu5cyQT5bV7W2+54agmvDZwrZHhqUCEiNkHTIg==
X-Received: by 2002:a05:600c:20f:b0:3eb:5ab3:b6d0 with SMTP id 15-20020a05600c020f00b003eb5ab3b6d0mr20024882wmi.6.1680279692551;
        Fri, 31 Mar 2023 09:21:32 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:31 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 16/16] README: add my self as maintainer
Date: Fri, 31 Mar 2023 16:20:42 +0000
Message-Id: <20230331162042.1801766-16-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59585

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 README | 1 +
 1 file changed, 1 insertion(+)

diff --git a/README b/README
index d33c576..5a24ec2 100644
--- a/README
+++ b/README
@@ -20,3 +20,4 @@ The patches can be backport from openembedded-core with:
 
 Maintainers:
 Alexander Kanavin <alex@linutronix.de>
+Jose Quaresma <jose.quaresma@foundries.io>
-- 
2.34.1


