Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00D44C4332F
	for <webhook@archiver.kernel.org>; Sat, 19 Nov 2022 13:45:36 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web10.20447.1668865533419909409
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Nov 2022 05:45:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NH243X+l;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id d7so5264193qkk.3
        for <yocto@lists.yoctoproject.org>; Sat, 19 Nov 2022 05:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=plBIaXHSqWeZIFPog/dFPKDF9fjQQducqpfXL03yR3I=;
        b=NH243X+l+NfsmwB9NJgE34yL337h+ivJMXIh2gO+GEaFqLXKNKuYPrcY1aVXVnEG9F
         ReizSBeAuSlb82axCrxx96d+l2KyMsPFdwZCQykuK4tSLWcu5X3rTYPJEip0v3mmuGeA
         dpEs6UL9eUkbb3eRENN4a3pHVhWkkvuZyDlgJz0Y5WVIBNsKPBa73VIo0qRN1A9ttvyu
         qZa4VGDQ15HG7rqzXIgt6th4kwA8BDhE0oYCe1TEVCYe7bA3X3go6K26Q5gY4GzCeYqA
         uKlmPoQL8aU4X53YaVxPn/yBLqPfqyB+TV2IE2RrUOuZaor7VL7T+Q7XQtfmoLTUAfHw
         1CQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=plBIaXHSqWeZIFPog/dFPKDF9fjQQducqpfXL03yR3I=;
        b=5s56Mx4JJnKxnDWBcd1MbP/pXOy1wewoz9TSPSmDKEsfd+52AFVz90qruJdNE0cdWc
         gRDwrRAmF2YBkH3vYi6K0E1+8VrKN16yYwFvtXx6nFp3m9e5wM07Jse2H9VirG5S8d9o
         EFvsv4akEiXvu3SuyW3i64CrISA/RVWPf0SI72AbcJEXZ7H4Yaj/MW69aAlq7/6vNBIJ
         wa1IvDBfwBFBwO7AH0DZiOKzpyc0FtD40D7TB88bqitLqJ52NLcx339mdae9ucinteaD
         /0jK9ubvFSzMMvgoXkS/RmUmx3f03lMBe36zadp9hxx8OaNf+QAMcD+RkWnqo3xtRIq1
         HISw==
X-Gm-Message-State: ANoB5pk/F/ytGzUC0Aew7HG1hFQNBpMXJ1uBdyszRyHhJ1FHq0dH1+7K
	BZsr3VrWON7P0miopNkmoRSSw1FzonQ=
X-Google-Smtp-Source: AA0mqf7MOS6IycgRTD3uKgYiNrD0AwuWIoHFDtOokeMF2iBGQu8c8RtckBq4iW6fhCaedlrvY32cTw==
X-Received: by 2002:ae9:e40b:0:b0:6fa:28d5:4b36 with SMTP id q11-20020ae9e40b000000b006fa28d54b36mr9687484qkc.346.1668865532014;
        Sat, 19 Nov 2022 05:45:32 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id v9-20020ac873c9000000b003a54a19c550sm3782050qtp.57.2022.11.19.05.45.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Nov 2022 05:45:31 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rockchip-defaults: remove xf86-input-keyboard
Date: Sat, 19 Nov 2022 08:45:18 -0500
Message-Id: <20221119134518.1054-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.36.0.rc2.17.g4027e30c53
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Nov 2022 13:45:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58594

xf86-input-keyboard was removed from openembedded-core at its commit:
f1d7c33b64 (xf86-input-keyboard: remove the recipe, 2022-07-20). Therefore
remove it from the XSERVER definition.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rockchip-defaults.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index ca94249..3ce2e24 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -15,7 +15,6 @@ XSERVER = " \
 	xf86-video-modesetting \
 	xf86-input-evdev \
 	xf86-input-mouse \
-	xf86-input-keyboard \
 	"
 
 # misc
-- 
2.36.0.rc2.17.g4027e30c53


