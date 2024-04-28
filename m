Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0802FC4345F
	for <webhook@archiver.kernel.org>; Sun, 28 Apr 2024 13:28:05 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.9812.1714310876284650686
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Apr 2024 06:27:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=0qym2aTz;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.172, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1e3e84a302eso27656205ad.0
        for <yocto@lists.yoctoproject.org>; Sun, 28 Apr 2024 06:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1714310875; x=1714915675; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YaQI/ZM3GvmLHvZh3OtEBl4oJE9OHDBHJCVdtNZxB/o=;
        b=0qym2aTz2+TfLUoJ1ZrJGP6Ybj/YUZBiu+w8XfdR5YJQXOLOS5CNblGP4Bz/pT1SEV
         ROvNkGdBmENjq1Zcb3G/YCigvyPC5T5gsZ67uFs1fLMkbzN4O0Huir5EHpt+3qT8yJjr
         tgQN9B3z3828T4xZAgQMP4oyhfZ3eBBtZpT8F6hqOrx4O9iqbDzy9BdVFtU1LluEPbG+
         cRx+X9FdJsV3lCTP0pM/9i68IZNkZd0c+RF5QtIcZbfNvFktWK/xCcAdAW8BOxhg9inw
         N89LQzFFU9B79QbR7774OPkFH6zptZ/F9Ucwe1MVh1u0/IsKDiykT9U/RWmQx0tX0QVq
         JB/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714310875; x=1714915675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaQI/ZM3GvmLHvZh3OtEBl4oJE9OHDBHJCVdtNZxB/o=;
        b=HU2W+bh0yyMNQfVW+eZmENCqTOuLxGQKoIWb1uGduUN2UA3jKJAVeTubXu8CXSLKLQ
         32ZwIsz3ShPY02KEDmNPDoC+0y4jge351Jp+EtYtFC8cKWzz2XSdrbJAVyn02f8pY2ko
         roSjboC1ETHqIAfclKIT1v0mXnVOeskhRZ4N8oNdBTy6Iogb7LrQHCeDDxOCL7bciQyl
         e32cuEqweibHs7tXSxufzBCByCoaTxMfP30nHpcb92nk0ZRQv0hoVHTBjJHt1+OBB35k
         o7pWsyufKEWW/V3vK555KamwsnQtP/y2U6jMP1xGKPfnYYN686zxqQ2mXhpVeAuAPFID
         I/Dw==
X-Gm-Message-State: AOJu0YxloOGNelk+Fym2poowAFxUYSYY/PwC/Ph+ITzQ6X0KyOBOIu3H
	+k77nHgSU9GLAfEG0l7lR/8vW2h4ZvzVQxk3KtY2xAmDpCCMNgxFyVHt33Llmxm36wHJv6i+xB8
	beUTROg==
X-Google-Smtp-Source: AGHT+IEkS2GG+pLUMwfs/EJhvG4qd1ZbvvlK5+NYDCJAsGEXWqK7Gd5hlNppCBPQG4st+y+xRPsoiA==
X-Received: by 2002:a17:902:6843:b0:1eb:1474:5ef5 with SMTP id f3-20020a170902684300b001eb14745ef5mr4979629pln.33.1714310875395;
        Sun, 28 Apr 2024 06:27:55 -0700 (PDT)
Received: from xps13.. ([209.237.67.158])
        by smtp.gmail.com with ESMTPSA id u2-20020a17090341c200b001eb50fc9f83sm2650547ple.6.2024.04.28.06.27.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Apr 2024 06:27:55 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] config-json: use quillback branch for meta-agl
Date: Sun, 28 Apr 2024 06:27:45 -0700
Message-Id: <a8ea3204bb6ca48d50b68e0488cce083dfb18d0b.1714310808.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1714310808.git.steve@sakoman.com>
References: <cover.1714310808.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Apr 2024 13:28:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63007

kirkstone is no longer supported on master branch

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 60fe6a4..cc6d45c 100644
--- a/config.json
+++ b/config.json
@@ -1284,7 +1284,7 @@
         },
         "meta-agl": {
             "url" : "https://git.automotivelinux.org/AGL/meta-agl",
-            "branch" : "master",
+            "branch" : "quillback",
             "revision" : "HEAD",
             "no-layer-add" : true
         },
-- 
2.34.1


