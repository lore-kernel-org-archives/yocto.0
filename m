Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DFBACDB465
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 14:41:41 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web10.29708.1697726494732873766
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 07:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NM+pguC/;
 spf=pass (domain: gmail.com, ip: 209.85.208.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-53d9f001b35so13591099a12.2
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 07:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697726493; x=1698331293; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m93Y6UkaCJijeRiKUy/zskVTCdazjEGdFoenObnae38=;
        b=NM+pguC/FPdG4zAqWp8REikeMaXY9GYuhbg0L+79GdCkTvFSlZlQbW527U3uZOGDMj
         sWsctOPbPtv1odhdAbDdg5urrBYTw3O4ARVa32uRBJ1fnYolF+y2meVMYG6Aqdi4iXbs
         C2DXC+QKhj0p/fFYrSyQXpVXmEAROsHyoOso0LpiR/a/Xyys8pht6S4Jsmva6lxSW4g5
         CnZMBlNQDsPBv78GdQ70t4IYFoq9wOCRT3HygqhmxV9+Ch+4Bib2df6eoMNOYZMtgnvV
         sMozBP4u+ksM1qXWjY3NsFk/ss+sMYpUYyUWgfWI1/QL+9by0F96qL8cUIi5A/TiHxyK
         SE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697726493; x=1698331293;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m93Y6UkaCJijeRiKUy/zskVTCdazjEGdFoenObnae38=;
        b=aNTvjWMN0rNK3izSyx7/SU6S1hpLdpBmSoEUjgpzTElI6LRYw51PgnsXaGf6p5aJ2T
         wjtswCrqhH9zjkXoEoLkmX7s8M3S42waCL60NZjAofO/JmllEGDwRQAcfTBOh3xzzCqS
         5Tf3ZtPOTioEeVbp4Xa2s10dRHYO1ctVy1ZlPHbjwE12nf2xh8XklRAsAV0CP3kBnaey
         fjhR4xWzbi/1kLuPE4G3fEvWHmgMLTxTWpMNfbSbgYa6PG7PznD6DzWJhHsYKj9+N8Yt
         uDnE3Tf/SYgbs/iMMbJeANCZTNCTi7HTMwqDt4aC672ikmjw+7SfRg6qjgwh2LpwuAGv
         TeYw==
X-Gm-Message-State: AOJu0YxEdXLWaYtyo6ugFnbw7VmEALyd3MFfqfslKULZvHIMbW8MHuU8
	LxAL9QY3CsCSa9LWL6VU7WPA85T1UcM=
X-Google-Smtp-Source: AGHT+IHYPuF68628M1UA5vLE1O7NEoIPnWdnWbWqf2s0wgVoiuAYkInU6GZNxOLvG2kMWCe3lCdCQQ==
X-Received: by 2002:a05:6402:5186:b0:53e:7eca:5650 with SMTP id q6-20020a056402518600b0053e7eca5650mr1817489edd.13.1697726492965;
        Thu, 19 Oct 2023 07:41:32 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:d900:f58f:7d32:a721:fcdd])
        by smtp.gmail.com with ESMTPSA id v23-20020a056402175700b0053dd8898f75sm4515466edx.81.2023.10.19.07.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 07:41:32 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: use '-S lockedsigs' to generate the locked signatures file
Date: Thu, 19 Oct 2023 16:41:29 +0200
Message-ID: <20231019144129.326806-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 14:41:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61418

This is now done with a dedicated switch, where previously the file was always written
out, creating often unneeded clutter.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 94c86e1..ea6885d 100644
--- a/config.json
+++ b/config.json
@@ -1298,7 +1298,7 @@
             },
             "step5" : {
                 "shortname" : "Prep #2 locked-sigs test",
-                "BBTARGETS" : "core-image-sato -S none",
+                "BBTARGETS" : "core-image-sato -S lockedsigs",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/../janitor/clobberdir ${BUILDDIR}/../build/tmp"]
             },
             "step6" : {
-- 
2.41.0


