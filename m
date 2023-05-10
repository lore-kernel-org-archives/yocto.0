Return-Path: <leon.anavi@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591B9C7EE23
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 16:13:40 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web11.21706.1683735218866029369
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 09:13:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=WQlp5mHW;
 spf=pass (domain: konsulko.com, ip: 209.85.208.54, mailfrom: leon.anavi@konsulko.com)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so70536219a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 09:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683735217; x=1686327217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Wqwk+vThqr8d/K+1QISSB5mvOp9Qpekcnzfsh97IdQ=;
        b=WQlp5mHWzYJd1wf6G1OvO8GlaCr/C7H51rL3A6wQp0eVftNrcZHdRnzHGxAT0qOhnY
         Ja5nxFaPKQaTXPETLScqBLc31JRZ342BIBWqseGjjU9ysdIDjic90r6VmbeLCThYV0ao
         9VkWKXVhm8X36k/pLrKt5ZBnrqIyF8NjPOQZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683735217; x=1686327217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Wqwk+vThqr8d/K+1QISSB5mvOp9Qpekcnzfsh97IdQ=;
        b=cuT3XUWclGnZlh+PMFmwNy0r4Br16uUeA4PJF+tEJW3o6QpxteobQy/8nELSYhmA5t
         kkRP5JJ1dHPVq1In6c0R38qzuekSnLxIaGwyBmphBVJxZm/Ync0qsVh/W+NZr93kSqTp
         BGSu6nc1billm7NHRN+zS4NnGD5jYkqr/fbEMuDrk7+4rB8seTsqIOo6Apjy8I3UGQ8l
         AERH+XT3Qn1BImNmOMAa7frRr4Cfdbd9JIKdBdE9Urvz0QtjE/8gGVP4dD18jFlgc1Hy
         WjRCTLk+FqYv/wExg/T/HpL1GGGuBRBIf1EALAK62hsDX+CtTx1HZZav1gnDWs8zm4gX
         xg8g==
X-Gm-Message-State: AC+VfDzLIFJyTv/ux6YF18MbpTUd0FgxTkt8llP+KrBQKktgO6mphgnw
	gBWlZhcy28wmfTshvcvn8ozKjThw1r5yFugLVBY=
X-Google-Smtp-Source: ACHHUZ4R0/58MVo/5HuRT6VSXX7TFeStXlDyq7Xgi2rELlApeojGb3J8BOfNSU5y7ohdmTIp5lw/Fw==
X-Received: by 2002:a17:907:da4:b0:966:4e4c:a36d with SMTP id go36-20020a1709070da400b009664e4ca36dmr10107657ejc.20.1683735216920;
        Wed, 10 May 2023 09:13:36 -0700 (PDT)
Received: from tone.k.g (lan.nucleusys.com. [92.247.61.126])
        by smtp.gmail.com with ESMTPSA id p15-20020a17090653cf00b0094ebc041e20sm2820613ejo.46.2023.05.10.09.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 May 2023 09:13:36 -0700 (PDT)
From: Leon Anavi <leon.anavi@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Trevor Woerner <twoerner@gmail.com>,
	Leon Anavi <leon.anavi@konsulko.com>
Subject: [meta-rockchip] [PATCH] u-boot%.bbappend: pyelftools for rk3399
Date: Wed, 10 May 2023 19:13:32 +0300
Message-Id: <20230510161332.1818549-1-leon.anavi@konsulko.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 16:13:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59977

Machines from SOC_FAMILY rk3399 require pyelftools Python3 library
for parsing dtb files so it should be added to DEPENDS.

Signed-off-by: Leon Anavi <leon.anavi@konsulko.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index b7c6b49..e41f61f 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -6,6 +6,8 @@ do_compile:append:rock2-square () {
 }
 
 DEPENDS:append:rock-pi-4 = " gnutls-native"
+# SOC_FAMILY rk3399 requires pyelftools library for parsing dtb files
+DEPENDS:append:rk3399 = " python3-pyelftools-native"
 
 ATF_DEPENDS ??= ""
 
-- 
2.30.2


