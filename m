Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85E4CC88CB2
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 17:31:04 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web11.65928.1686591055458840971
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 10:30:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=LsXgR5yv;
 spf=pass (domain: baylibre.com, ip: 209.85.160.182, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-3f9dc03029eso963191cf.3
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 10:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686591054; x=1689183054;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=5GIXGblXDM/l5/ub/MvCyJwAqd4XARFjmCMsVvXA5rc=;
        b=LsXgR5yvRc6LsWJ4Y4t51x9BfuLqlB4hyVR3QIWugzvc/zv1OW2G30Iv9PQ6lAiifn
         4QrMCGWkrkfdms6S/JbGx+23u52qlZ0P7PMN0T56w4fxk8NzLQh3/12KDZtqr7kRkCSo
         Kai3PjAxEzfFPJnT50Uw6VqZ4g7hByX3Ea6QRAiILrkGz2ass/QrLweeqDHVPc+kDL4U
         MQOHoRGM/DheVXDjKXUWw1mVdEhal7hlRY3s7+/jLBwxFAYV30a+7EVRtLsuwwj8x7ST
         35CHOQtkQPp1vPvHOh2SiaAevMlUsyedmWWxC6B07qUiTwdmCivDXX5RxxOpvTbG9MW8
         Ookg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686591054; x=1689183054;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5GIXGblXDM/l5/ub/MvCyJwAqd4XARFjmCMsVvXA5rc=;
        b=WdvbHHTVKpQ5nvZo0TdbbH9s9tQCflB9aVzbMZRQH4joweCsV+eCHD2u9zwMIHS01F
         R2xHo6UNeRkmwBTm5mhkJ3ysa0XTbb7l3P3SAQUJuaFfR9ZzXApOcTqfTxeCm44/rkwf
         DSiHeIXD3mMo25iC8rsE/gwGsivOv5zctdpVEM7qLLwkbd6y5uyjycDVJ8NkXVPGtkKS
         8R9U93uHij+d+9re9nyooZuexOMEAWalUIPxBCMjA19J2qYZipEGuaHYAqrDhYiCiQ2i
         5RROAcy8ht7Kgd9EVzgaclaLzAkhccP6aclba7KP0AFBeyCzlMLGWPaMRvTpgLWUn9hY
         NeXQ==
X-Gm-Message-State: AC+VfDyrSNUfIGf+bDFS64B5Z17yUIoths8ipxm9CJyGL6e9Zn7wBXnx
	wBnn0p9WNx/EjIqBCq+rNxu9kJ6qH/KLs6Uq2Bs=
X-Google-Smtp-Source: ACHHUZ7U1nKsvIGhXClOCpDLAnFVsyWBZZeosDrRpoY0WxAwGPtkeoA2lIG+fFqLwkKECeZ0cQiBCA==
X-Received: by 2002:a05:622a:24c:b0:3ef:5733:29f5 with SMTP id c12-20020a05622a024c00b003ef573329f5mr11751233qtx.15.1686591054037;
        Mon, 12 Jun 2023 10:30:54 -0700 (PDT)
Received: from megalith.cgocable.net ([2001:1970:5b1f:ab00:fc4e:ec42:7e5d:48dd])
        by smtp.gmail.com with ESMTPSA id bt15-20020ac8690f000000b003f3937c16c4sm3604888qtb.5.2023.06.12.10.30.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 10:30:53 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH] requirements.txt: Add pylint, pyparsing, unidiff
Date: Mon, 12 Jun 2023 13:30:52 -0400
Message-Id: <20230612173052.994391-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 17:31:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60262

Add some dependencies that patchtest now relies on to requirements.txt.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 requirements.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/requirements.txt b/requirements.txt
index 7f7afbf..47f2157 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1 +1,4 @@
 jinja2
+pylint
+pyparsing
+unidiff
-- 
2.40.1


