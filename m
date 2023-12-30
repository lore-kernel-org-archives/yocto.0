Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A202C46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 05:00:23 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web10.179018.1703912421722678293
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Dec 2023 21:00:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZDi4KoJ4;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6d9a795cffbso3172695b3a.0
        for <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 21:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912421; x=1704517221; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TELVvLV9C7tOcH3T4VaCQf40173Dd0YRYSar01PbQbY=;
        b=ZDi4KoJ4s5CocPbPPoeuLFDu66g9NcBFvcROJ+Po5ZVC9jLYgCF4q6IRSMJq10eTRW
         o/1obSdRupXEwApd/7+CGPkdwSXMW2bD9BtfRkc2X9arMa9INU1Czblbz2r7Kzg93C16
         6hiOF3oRLsZLNc8MAjym2rtRiZzkyA2JcBjy/7UfMpOy1avFVN5OULuc4Mj+ryXObJMq
         bjrCmPQ/UEzf8OXk2MoV2qU+3hISth9TdXopxA5BWfBfdfZXTETS5yNzO2BQiNNqpTk8
         +dRLVGTQPKHa5JGQ8G8Yl7XBd0IWxPucLYOT/Eh2q0hQ9rWPxajcn2hhPIszOzMfIn8A
         yDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912421; x=1704517221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TELVvLV9C7tOcH3T4VaCQf40173Dd0YRYSar01PbQbY=;
        b=AGwho2qltlN1xSIvbUaepbWJMBptsMDJMKPtfqDXF3/iqcPq48TcmkQczyvHviR/Ak
         M6Co2aeAUUoM1+yNUB3/a7rwLVqYTCZH3URE5bjpGQwViEbjNQiTJcJTrAWTVV/YT+cQ
         c2VJj6gdDSh+E1SoJzy6ZeJ3uN/JORPTQ9nke0G6ic+zWMxrET9hx07fkoUMZ89k9bWf
         OZySpGZvkD3wlyW9hfe1ZpnT6JqQRZBNUkixyPUgr20hDauIk90jO7iIUplK5KQz+f+V
         5guPNVwjtcGNDSFS7xpeBPmXLE/46ttkUWCqTKpTc3Y6E6QuzLMWLzBqwPFIU9+/xKvX
         JveQ==
X-Gm-Message-State: AOJu0Yzvgzd6nLfLzq816wNGTDcMpdhV83f0KUvsmHkFV77ru6bUzEQN
	r6c5Fq+2EtVZ7Ay3zfk8rP/Y5QMDQOE=
X-Google-Smtp-Source: AGHT+IFwfT6gzTgps0WX+qJipk8n6U6a6ogEheTlNE7frN5laD+LLrSXFnmrd5YKQXrfn1VfIQUIlA==
X-Received: by 2002:a05:6a00:1d81:b0:6d9:b42a:a6f with SMTP id z1-20020a056a001d8100b006d9b42a0a6fmr11430173pfw.29.1703912420710;
        Fri, 29 Dec 2023 21:00:20 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:56fb:3e3a:cb3d:4a01])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b006d9a9727a8esm12124536pfm.178.2023.12.29.21.00.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 21:00:20 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 2/7] layerindex/views.py: fix parse_view typo
Date: Fri, 29 Dec 2023 20:57:11 -0800
Message-Id: <01094d0e2a2c4f8df9feea877b2159677c642ab8.1703911977.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1703911977.git.tim.orling@konsulko.com>
References: <cover.1703911977.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 05:00:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62053

The Branch Comparison view would throw an error because of a parser_view instead of parse_view typo.

[YOCTO #15332]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/views.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index e660578..2e87181 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -1791,7 +1791,7 @@ class BranchCompareView(FormView):
         for _, recipe in sorted(recipes.items(), key=lambda item: item[0]):
             recipe.from_versions = sorted(recipe.from_versions, key=lambda item: parse_version(item.pv))
             from_version_exprs = [x.version_expr() for x in recipe.from_versions]
-            recipe.to_versions = sorted(recipe.to_versions, key=lambda item: parser_version(item.pv))
+            recipe.to_versions = sorted(recipe.to_versions, key=lambda item: parse_version(item.pv))
             to_version_exprs = [x.version_expr() for x in recipe.to_versions]
             if not from_version_exprs:
                 added.append(recipe)
-- 
2.34.1


