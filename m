Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4D7C0032E
	for <webhook@archiver.kernel.org>; Sat, 21 Oct 2023 09:18:35 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.74567.1697879912674745168
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Oct 2023 02:18:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bxPynvrt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3296b3f03e5so1151582f8f.2
        for <yocto@lists.yoctoproject.org>; Sat, 21 Oct 2023 02:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697879911; x=1698484711; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=TDy+eKs6/u7TlMmZmQ5zvM8yRJ4m/9/WdSwkSofBA9U=;
        b=bxPynvrt0TCWvBDPJbuDyjhRZLtxbvSUk4v1hVQLPFwuH6i/9TEIkEJ4To2rRt9B/F
         eb4M98xQYKn+RgD73nglykvLhl3Pah0im960bfmEXUJfp/W07orx6TJlAkfmN5QvRyfn
         HUFzfL+wbs66MgB9pNrShKnSqjZFG3Yl3sAOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697879911; x=1698484711;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TDy+eKs6/u7TlMmZmQ5zvM8yRJ4m/9/WdSwkSofBA9U=;
        b=Hcblt4uKWHs79umJM2hi7VvwkghOIlDWDnEmZ/mhcprAsa6nDxzBmH1gZMsOVkNcaw
         RXkbbWo4djELpTFjmmHZK/ojIQkLLBwhzCsZHyLgG+5hQq9V08Nsb2WG5TP/K5k+65/f
         4lB4ZNw8eWPHFajsCkUqzbc6xQklIG6H9kNqssP/2SIZyA0hAw1IUj3gfgnJNN8qxyls
         P6o0zLNqOBXOZbeD1EvRhn08va0VnXRs7+tO3quFNjIw9fXTY0aGmcHzVT4f3yN/ebb2
         POC5qConG/APIYlzbDBLWcGgdQlJ4f4MrKaY7pA8/qXyeG0pd9UAE5hXmugmUeQwJ8rU
         RvsQ==
X-Gm-Message-State: AOJu0YwxsFglYShojnZCbSAZeIHEt1pR7+0I0f78kfJEPticmib5yrKH
	RfZLnkWZOjEXqU7LHCD+Hhz7OpI47Cs6c+Lt1X8=
X-Google-Smtp-Source: AGHT+IFqF9Ns8JkID4FcooTHFCw7H9sKjr7rC4aXlK3Lb/52x5Hn9rwXb75iIF9RCnNIqDPXn/mKCg==
X-Received: by 2002:adf:e943:0:b0:329:6bdc:5a60 with SMTP id m3-20020adfe943000000b003296bdc5a60mr2997288wrn.12.1697879910542;
        Sat, 21 Oct 2023 02:18:30 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:bd23:fdb8:bd0e:a50d])
        by smtp.gmail.com with ESMTPSA id r11-20020a5d4e4b000000b0032de6f95fb3sm2608434wrt.40.2023.10.21.02.18.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 02:18:30 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Fix check-layer for meta-poky/meta-yocto-bsp
Date: Sat, 21 Oct 2023 10:18:29 +0100
Message-Id: <20231021091829.968295-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 Oct 2023 09:18:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61444

Currently, the tests for meta-poky and meta-yocto-bsp were malfunctioning.
We need to a) set a distro other than poky and b) avoid the isolation wrapper
since it will use the default environment and reset to the poky distro and
default bblayers.conf which will disable the layer test.

With those two fixes, the layer checks work correctly.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 27e56c5..55fde54 100644
--- a/config.json
+++ b/config.json
@@ -1150,11 +1150,12 @@
         },
         "check-layer" : {
             "NEEDREPOS" : ["poky", "meta-mingw"],
+            "DISTRO" : "nodistro",
             "step1" : {
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-poky"]
+                "EXTRACMDS" : ["bitbake-layers remove-layer ../meta-poky; yocto-check-layer ../meta-poky"]
             },
             "step2" : {
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-yocto-bsp"]
+                "EXTRACMDS" : ["bitbake-layers remove-layer ../meta-yocto-bsp; yocto-check-layer ../meta-yocto-bsp"]
             },
             "step3" : {
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-mingw"]
-- 
2.39.2


