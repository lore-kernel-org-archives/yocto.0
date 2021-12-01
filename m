Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E04D3C433F5
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 02:27:58 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web11.86248.1638325677897301026
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Nov 2021 18:27:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZxzRTy/p;
 spf=pass (domain: gmail.com, ip: 209.85.210.169,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id p13so15038125pfw.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 30 Nov 2021 18:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xHWrPoIhBBd3HnmYR9aBvcNNx4blt4UvtwZ28xabFL4=;
        b=ZxzRTy/pSxiQYYouvcPFG7v1qwmUq7KBi1o2NmZ6Kzyo2VgQqmhhumMKDuyFDgUpXw
         BKqpdyKD/SW6/ftQan9ma8eccMY0CulBAnBTCnivO3NheEHL2UW71smQSHEPyZwRimZ1
         BrC9XgqH7IYJA1J0sMhgPd2q5Wb0fa51WbKdpx38DwgjbxbTF7TUwvnab6I1JoxoWWhw
         ASf2e5jHlkMvPYYQpnuy7rRH7eNNPcKTC+rmrbnnRCVkWXKXn78SWa1Q2nUtkO0N+3Po
         2OnuFKUzzQxGzMXBgRIvTPR3ZlmWgZC6r7R3tJ35bLp8OC4/UEW4+tnQJDsVOLUi0vqV
         ZAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xHWrPoIhBBd3HnmYR9aBvcNNx4blt4UvtwZ28xabFL4=;
        b=mKqOhsKGB/QnWH0cQOPKYCjThFvkV1drWXshkAIiV+u0odSLQsvRI/FuLGXE7M4ecT
         cGNDQ1BrN5cIojgCh9LOArThU5fyjdtClg0M+IEEo03oCD1zSLtHxhLAoWoj257o1b4P
         M4QscE/QxS5TyP2YGUGpiujDwl/LKphUy7/2Gnbfv2tgNxtaesHHR+BX5/xOOep2h4sY
         cEX+piShrHDIkQ9yWKFuCXm74kgCaU/O5mCZB9Ufw5gE08zXK6LVam1uB7hia36+EtKJ
         uaTYrULfkOAQUSw6ZAGBGh9dgVhjZMdKQgQMSHrNGrCenvbWMZj9fT5/KQQwYOZV7tIo
         uNmA==
X-Gm-Message-State: AOAM530rImkOOVG2lQcPIY96yQ4HwDC0wgMypadfmVqE6YI00p+aoqbS
	RcyoKBb/kR0JG1HOOx0nBEKLEKWP3nHs1A==
X-Google-Smtp-Source: 
 ABdhPJzQKAMVGaFFWIUXH+MyPhLU0AAunlJlmFwXOVE2Q0cI9yss01dbiw3EhyDCDZdMogJx7Mx5SQ==
X-Received: by 2002:a62:e309:0:b0:4a2:e288:6203 with SMTP id
 g9-20020a62e309000000b004a2e2886203mr3338438pfh.13.1638325677168;
        Tue, 30 Nov 2021 18:27:57 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::ce68])
        by smtp.gmail.com with ESMTPSA id
 x9sm3623547pjq.50.2021.11.30.18.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 18:27:56 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] README: Add intstructions to add patch
 template
Date: Tue, 30 Nov 2021 18:27:53 -0800
Message-Id: <20211201022753.1091843-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 02:27:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55452

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 README | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/README b/README
index cec1b53..cc63d0a 100644
--- a/README
+++ b/README
@@ -45,10 +45,20 @@ Maintenance:
 		https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
 		https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
 
-	For example, to send your most recent commit (i.e. just one patch),
+        Please send changes to the yocto mailing list with [meta-rockchip] in the subject line,
+        cc'ing the maintainer.
+
+        This can be configured within the repository with following commands:
+
+        	git config sendemail.to yocto@lists.yoctoproject.org
+        	git config sendemail.cc twoerner@gmail.com
+        	git config format.subjectprefix "meta-rockchip] [PATCH"
+
+	Then, to send your most recent commit (i.e. just one patch),
 	please use something like:
-		git format-patch -M --subject-prefix="meta-rockchip][PATCH" HEAD^
-		git send-email --to yocto@lists.yoctoproject.org --cc twoerner@gmail.com <your patch file>
+
+		git format-patch -M -1
+		git send-email <your patch file>
 
 Maintainer:
 ----------
-- 
2.34.1


