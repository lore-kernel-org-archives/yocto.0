Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 773F1C433F5
	for <webhook@archiver.kernel.org>; Sat,  5 Feb 2022 18:09:01 +0000 (UTC)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 by mx.groups.io with SMTP id smtpd.web08.1251.1644084540490700604
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Feb 2022 10:09:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TM2DvePF;
 spf=pass (domain: gmail.com, ip: 209.85.166.43, mailfrom: ticotimo@gmail.com)
Received: by mail-io1-f43.google.com with SMTP id i62so11558227ioa.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 05 Feb 2022 10:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KsI0wZlxAUunRmplfzDd7sXRmlgBRTxeBykHfPSyRhs=;
        b=TM2DvePFRCElX4yqy3C5Eo8cYzJTs5YqL6XrPU6cWUYP5xmVQeTVGxFfS9LsCjjgX2
         vnDxZqKGtMd9CdUlNBfVAK4lyA2Z4xzKcpVTp6p9sXhEreFOYc5nzlY4/J3cygXF6gly
         uKvNFzbvYWeYzbnJUfrYkHsnm15iuCuSlemyEk8CxN8wBqlPWI1dBBw7a6nvNQdU+hNg
         LoLBTtVthmtenJG/9YzIwbxdWM+R6xmwWJGRCL2pFgisS6UnCPYsJ7ZGIbwkrcc0SmBb
         KoYR7/3HNv2DPPv5O65EWMl+xd9rYcw4Q8GzSXb9924rT5dRQSJMXFHXDVvvJXvl3mgi
         WH2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KsI0wZlxAUunRmplfzDd7sXRmlgBRTxeBykHfPSyRhs=;
        b=ha3c9/ZPCU/yDswauOIbQVkOUZhviliDSOQy0EaoWy1lKNfJJJ3Vnv0yyH0byiX3eY
         85KSLWs1hac4qKY/jCikHl1Ls013ZeGTj/Dw57zqlcR1xOfThBrpR1Kyl+fHBXtGyEn3
         Bii3h7tPsEzcU9Kn0QgJDjudU+RwkNaEdOdT6IlV2KRwoP7QbLj43N8O8jduS5tacQK5
         9yD/IyClVMUwSeHIu6tI5Ail4PxbaQFTLDoNKuifKi6EeFJ/ygplJRlIfAh7OmcNuztt
         91WanW/SmcWOzRVgsueXxH3HhvBOoSe37ShOgCHcTa6c8DhD4VUg9HFIE16gBfXBS39b
         Ul9A==
X-Gm-Message-State: AOAM5308d2KN92sYjftg4qGS5/D+h5aIUROsPzEet34jtpZlf0Q48Teq
	7OpAMGHnWhElOlv4EzA1QFTXxS1klTc=
X-Google-Smtp-Source: 
 ABdhPJyTVmuMup8BIW8yr0oJDoguhJcpLRE45dWoqUmP7p9XSK73g6wun/gTYPn1SmMj2m5Ttf8/Ig==
X-Received: by 2002:a02:2242:: with SMTP id o63mr2406130jao.229.1644084539484;
        Sat, 05 Feb 2022 10:08:59 -0800 (PST)
Received: from lons-builder.int.hatle.net ([76.164.132.203])
        by smtp.gmail.com with ESMTPSA id
 h3sm2745651ilj.81.2022.02.05.10.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Feb 2022 10:08:59 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: joe_macdonald@mentor.com,
	yi.zhao@windriver.com,
	Tim Orling <tim.orling@konsulko.com>
Subject: [meta-selinux][PATCH] prelink: drop bbappend
Date: Sat,  5 Feb 2022 12:08:40 -0600
Message-Id: <20220205180840.759683-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Feb 2022 18:09:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56085

prelink has been dropped from oe-core [1], so the bbappend can no longer be
applied.

[1] https://git.openembedded.org/openembedded-core/commit/?id=23c0be78106f1d1e2bb9c724174a1bb8c56c2469

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 recipes-devtools/prelink/prelink_git.bbappend | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 recipes-devtools/prelink/prelink_git.bbappend

diff --git a/recipes-devtools/prelink/prelink_git.bbappend b/recipes-devtools/prelink/prelink_git.bbappend
deleted file mode 100644
index 74e22b3..0000000
--- a/recipes-devtools/prelink/prelink_git.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
-- 
2.25.1


