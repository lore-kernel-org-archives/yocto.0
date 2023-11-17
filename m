Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8FAC072A2
	for <webhook@archiver.kernel.org>; Fri, 17 Nov 2023 19:45:36 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.4766.1700250331880876656
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Nov 2023 11:45:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VMNiopgt;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-5c2139492d9so397819a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 17 Nov 2023 11:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700250331; x=1700855131; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n3pocgoCnf6/2Mh+esnmKr4wbhWleRKDC1uMLP2ehV0=;
        b=VMNiopgtgormyomfFxB8K78LCTL4EfhLnmj8r37S6WA8H4aEo/HU8aO0yC5Rc86tlf
         lGIfJFQStV5midAjGZ6udNIT/CKHPFozr0NUYvnYVB/es5chfMXpAOM8d9Gz+g1fqe2j
         ra/wjlU4BBlYQmOwmnPJ1A+1DihLeAGhU1vhEuFSr6ym3vO4nYfP4MzW9SuKC9+fibuC
         yQg1gE0VV10js905de/JgHgccOrjxi2Qy+Km3c/nMdquQfejDyeaSSPnFV4OhWyu/W9o
         4LH12tVogWNOYVENKR/riwF3bQAVqVVY8X/Wx1Dlq9ygV554dg7w9ALb824fo+sJToSh
         qDhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700250331; x=1700855131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n3pocgoCnf6/2Mh+esnmKr4wbhWleRKDC1uMLP2ehV0=;
        b=k+Jvl3o718fwWZ+5LM1gCqldX6TD+wnVdAlw8/RXp0KPFfFjYbXd0wjwTSoIkfIdPj
         NXQFX2iozfFML3Hi+UZm2EKUDBeQ0feUbV89HgOvom/mXDAwNhSTQZ8uZYmEvbfgwdww
         YKfMmO+1zj/GydTG7VclYAgNy8o23tRfhrJwXi7ObXcLX2sXvV2WhUtMLyi2c2QPatRw
         Y4b8CKUh8fVIGuZAk0xd8D1uLnSUVaM/WHWG65cP2TQcGOQqlnS05crxrC6FLaCUaOUQ
         +jkf2W/gjy3LL0NkOjrSsx5hqNkws359+oVh0Zt/gTrzl2UKm97tNtZRwLPcILNKpoGh
         UrRg==
X-Gm-Message-State: AOJu0YwWN5GXXCROxmxQCRTPHsrboaQ/fxqtuTgtUb+lHMVQ04UM0zGg
	kxrpAxXrNZaE1opbnvi8uGhPGUElWJNITA==
X-Google-Smtp-Source: AGHT+IH2TpEefHV24UEeB89YsoArBgN0fO/NtF9sMspP38dqAAyPJE2emn5BaTk3EtBxpQFjSMULLg==
X-Received: by 2002:a05:6a21:148b:b0:189:2e8f:d378 with SMTP id od11-20020a056a21148b00b001892e8fd378mr96231pzb.61.1700250330856;
        Fri, 17 Nov 2023 11:45:30 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:8558:9692:c091:58bb])
        by smtp.gmail.com with ESMTPSA id q15-20020a62e10f000000b0068883728c16sm1825158pfh.144.2023.11.17.11.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 11:45:30 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] update.py: show branch if missing conf/layer.conf
Date: Fri, 17 Nov 2023 11:45:27 -0800
Message-Id: <20231117194527.674028-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Nov 2023 19:45:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61715

Currently, the error message is something like:
ERROR: conf/layer.conf not found for layer meta-doom - is subdirectory set correctly?

This is because in this case meta-doom has a 'langdale' branch without
a conf/layer.conf

Another example is:
ERROR: conf/layer.conf not found for layer meta-st-stm32mp - is subdirectory set correctly?

This is because meta-st-stm32mp has a master branch, but it only contains
a README.md telling you to use the stable branches (e.g. nanbield).

Make it more obvious what the source of the error is by also displaying
the branch that was being attempted.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 3da74e3..7caaca5 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -426,7 +426,7 @@ def main():
                             continue
 
                         if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
-                            logger.error("conf/layer.conf not found for layer %s - is subdirectory set correctly?" % layer.name)
+                            logger.error("conf/layer.conf not found for layer %s (branch %s) - is subdirectory set correctly?" % (layer.name, branch))
                             continue
 
                     cmd = prepare_update_layer_command(options, branchobj, layer, initial=True)
-- 
2.34.1


