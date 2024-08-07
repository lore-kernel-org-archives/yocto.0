Return-Path: <vanusuri@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 712A4C3DA7F
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 04:17:16 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.25760.1723004229730213439
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Aug 2024 21:17:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=Y/Dbcj8W;
 spf=pass (domain: mvista.com, ip: 209.85.215.176, mailfrom: vanusuri@mvista.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-656d8b346d2so854677a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 06 Aug 2024 21:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1723004228; x=1723609028; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6kfb/9BMjJFzAie6Q6/2AkUMeXzcDgDoOZVAgWh/vXE=;
        b=Y/Dbcj8WVW3GjccVg8sf8MgUydcDYBRoJ+AlQgoIlarVmBr5UjF2eX36v1+Ymhq51F
         4XsD7DYam9Vmqf8axF0of8GD0+6RnZbZ7Px9xSYilyLzkDz/l9zjJ3Dqa5cJL9m9c3i3
         Enmxa+SIb2rSLCNTj1nWKF+K/bEOjMpyk8JkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723004228; x=1723609028;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6kfb/9BMjJFzAie6Q6/2AkUMeXzcDgDoOZVAgWh/vXE=;
        b=WuBUM/8IUH4MFb4TSEDsWZitCZYkbYLtsrUOAHegL8tykje/u+12t/xMQBPQCGzdAZ
         L8a+pcLTlVPkjv9zBNBq09Q5Mtos/xt2kkoT+2q97PmJk3u/DEJcVNNwIqqm0whjSUmD
         q9yJ+rcDcUepj6nT++sw7ZcVUWdz/Th4RB0ebaskbVi+MNK/AuxmIhdKZVZJTJkINfKX
         7pbwfGR3/+rDY3uRvNV/oPhXeeRZwOehV9bU1PmD7i3z6rF4mhzAX+DncFjtCyl+7DI/
         KO6HrIyNgd/NgrZgWvrkzgpf533S8i+0MbDH1z1Hj3JJzB6TttxDYpNFU8XDggwNDj/d
         c8hg==
X-Gm-Message-State: AOJu0Yz6K06dVyrlDHGhPxqH+HVbf1gNFVwX3VqcjB82s2DvICby3jN2
	cS/WemLJ8TFN7atClcb9N8kBx10PqvKT4gRSa4OVJ/6C+EDuayrLV8lZ/PcnIzAiB4RpZOY5DRq
	FKqo=
X-Google-Smtp-Source: AGHT+IGlZDKvB3hfJhhabeanfRg16Fj2+39lZTpXC/a6XFAWfevl0P7rk4C/8sKXDtGnJ/f50OexUQ==
X-Received: by 2002:a05:6a20:cd92:b0:1be:e3d8:1a85 with SMTP id adf61e73a8af0-1c6996151edmr14994462637.36.1723004228426;
        Tue, 06 Aug 2024 21:17:08 -0700 (PDT)
Received: from MVIN00020.mvista.com ([2401:4900:882d:87fe:c334:1c3f:e700:16b1])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d1b3b3f336sm341902a91.44.2024.08.06.21.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 21:17:07 -0700 (PDT)
From: vanusuri@mvista.com
To: yocto@lists.yoctoproject.org
Cc: Vijay Anusuri <vanusuri@mvista.com>
Subject: [meta-security][scarthgap][PATCH] tpm2-tools: Upgrade 5.5 -> 5.7
Date: Wed,  7 Aug 2024 09:46:57 +0530
Message-Id: <20240807041657.189718-1-vanusuri@mvista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 04:17:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63666

From: Vijay Anusuri <vanusuri@mvista.com>

Include Security fixes:
Fixed CVE-2024-29038
Fixed CVE-2024-29039

Changelog:
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.7
https://github.com/tpm2-software/tpm2-tools/releases/tag/5.6

Signed-off-by: Vijay Anusuri <vanusuri@mvista.com>
---
 .../tpm2-tools/{tpm2-tools_5.5.bb => tpm2-tools_5.7.bb}         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_5.5.bb => tpm2-tools_5.7.bb} (82%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
similarity index 82%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
index 8119bb1..859b3b4 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
@@ -8,7 +8,7 @@ DEPENDS = "tpm2-tss openssl curl"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "1fdb49c730537bfdaed088884881a61e3bfd121e957ec0bdceeec0261236c123"
+SRC_URI[sha256sum] = "3810d36b5079256f4f2f7ce552e22213d43b1031c131538df8a2dbc3c570983a"
 
 UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
 
-- 
2.25.1


