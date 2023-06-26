Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BA97EB64D7
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 19:07:57 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web11.349.1687806469783608597
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 12:07:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=iSyLBETF;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-51d894b9b6cso2102742a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 12:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687806468; x=1690398468;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tm+aXwCxu0qC6eNrkk7XqsgbkWRGtHOv80YrafEXd/M=;
        b=iSyLBETFFC9IuTL5TmvIUtrBfA2M7pvyFgPydWmo0xolteZkhmo5ghUTS8vZCB1cSJ
         TWRODfWe5yM39cvxDpu3kpIaRXEfzlk/C5AB7bOVUiFXrdbi7iJbncD8+x/irqlc4AY7
         CXxW+ter7GNqawNBSvJ27jCwueKTs1Nq0R3Kv20Zrmw2gmS5wo/NjkvO5v2fmoCWnzlh
         qyB48r8a8dlBZJDwu7zVIeZ6ZDVxkwlCZGAhWrzkseuB14lpSTlqDCslW59gZLscUtY8
         5ga5I6SA2RW2wBlxxs2Lg1sX3onPsDKSnSf4GBVFYMjYw62gkZ2Ufx8QdUSF968+Ee1N
         SH3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687806468; x=1690398468;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tm+aXwCxu0qC6eNrkk7XqsgbkWRGtHOv80YrafEXd/M=;
        b=ZIN3QfA1z2037qetPS5sh3DEQEV+waHpc86wCuQsp6VLffTv/javGQxH6g/QPrAzs+
         4TPfH4nacidmr+DMhCzpSreQfjMd3lr7la/ippmndfzyDorbcyI5FuXhVtB97QPAI97d
         xLN/md5BrSiwuM2uqXudS3IN7rOXF0LZR8PaOC7E7cUJUlhzBm7/TVcMYYoKdUR/mqQN
         B0koI4DSBaZsFT3b867DeYPrm8Bkg2klrK07iNEQURKVhEKcNdBVIvtzxISbceMsvG35
         vOCi1ObDRCZzMlGMuycEgUtpn1a22UtoPyyet6PtJ4rRtRVjyssgmiAJGgnhHTGlDHcP
         5MIA==
X-Gm-Message-State: AC+VfDxznTeBDPJ7flUW5Ec2xhzA3ZKiSUjfEhnH9aynGlEZ8ezIi8hl
	A9BGLTasy5vhl4OO/IGFxtIMVqyu32k=
X-Google-Smtp-Source: ACHHUZ6fA4pF5SiFKJM1TqJShrZySGDsiADt0iltbwYxDDF4KaKNMsdLwbS4OgB0MTF7GQAxTcJ/lA==
X-Received: by 2002:a17:907:a0a:b0:982:9daf:9fcf with SMTP id bb10-20020a1709070a0a00b009829daf9fcfmr27030621ejc.66.1687806467879;
        Mon, 26 Jun 2023 12:07:47 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id lr26-20020a170906fb9a00b0099207b3bc49sm104070ejb.30.2023.06.26.12.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 12:07:47 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-rockchip] [PATCH] trusted-firmware-a: add Upstream-Status to .patch file
Date: Mon, 26 Jun 2023 21:07:20 +0200
Message-ID: <20230626190720.2565542-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 19:07:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60451

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../files/0001-dram-Fix-build-with-gcc-11.patch                  | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
index 14defed..94ca8e2 100644
--- a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
+++ b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
@@ -12,6 +12,7 @@ plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c:781:11: error: explicitly a
                 ~~~~~~~ ^ ~~~~~~~
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
+Upstream-Status: Pending
 ---
  plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
-- 
2.41.0


