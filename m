Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC79C433EF
	for <webhook@archiver.kernel.org>; Wed, 22 Jun 2022 13:51:42 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web08.7442.1655905890952864268
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 06:51:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ny+vyQ3r;
 spf=pass (domain: gmail.com, ip: 209.85.210.176,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id s37so16163529pfg.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 06:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=MLNuJFQ6NwlJcyuEEvvD1GH+s/5raa2J5vm7IKutxlU=;
        b=Ny+vyQ3rCtZ86ZDqBTL+zQijwK2d8CZ+uoT+xB/OS4HYKztk6ihx71CvN65cQnd8YS
         J3+lAB9x/2+sYrzUIF/YFMs5SUj+D35xYEYXHy2sb1qiiu7shljZIx9d4cVSf5kezncN
         t9Guw3u0GTL136y8HU5F40LGXfZBk9YFJLvKpzDL9wzt2zPJJkT2J+r6DTG3GyywEuDr
         DrkcWLVAANOmrPqbJuhaIfZrfp4HAfERlXjdMjaycEm6lWzNQ9dZ/+TsqZw1vt0jH4RP
         fJHMSjRQ6pE7LH4BR6Dyyn9OK2iWmYMU4G+mSBLNJjE656igd0bRvMkGHhTutj/aXybV
         tomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MLNuJFQ6NwlJcyuEEvvD1GH+s/5raa2J5vm7IKutxlU=;
        b=MAy9Pbo4qLbkvL5qEFMBcejQUfGsIDq9Kz6EbLfrTaJ/31+3QhfC7tzwlFXp7yzNtU
         V3G3DdeaZVGMIW8kAULlxPGqrgGrCU5TP1wtPajt6J3ys3bXdgFdYnLhWdHwX0cslUgW
         wfpCRf5N3tH03wHMwWGc0VH79i9bZyXUKitX9f7x8/a9oUHoaAl03GDZVg5GVVV5Eah4
         TKUkiVaEE2rZMVnLuFzM094FJ6mQgJNokLjHpSN+WL4EvB/9acJr70SAzO/Enmvn7IQ5
         Iu2HhniKIQN93qmlGem+tfQZfxfitFET5kTOBXqtIVCT9YyTf0TXT0t90yEdYT1FHpDf
         KuNg==
X-Gm-Message-State: AJIora8fBVqJBRZz74zcdd/S3QvGfKSO1T/gKnmNtpND035h0oX3Lh8j
	OFYMV/zog/6kfO/FNZtNbodNKax686Q=
X-Google-Smtp-Source: 
 AGRyM1uLWYcmLECyruj7BObqX2iArWkQlUmNzdRs2ZD9B4l86w6EWpUQQJsF9U7RfYUwDH7JiG71SQ==
X-Received: by 2002:a62:6411:0:b0:50a:81df:bfa6 with SMTP id
 y17-20020a626411000000b0050a81dfbfa6mr36028911pfb.26.1655905889999;
        Wed, 22 Jun 2022 06:51:29 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:1f14:600d:1ff8:5cb6])
        by smtp.gmail.com with ESMTPSA id
 e63-20020a621e42000000b0050dc762818csm13638203pfe.102.2022.06.22.06.51.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 06:51:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] security-build-image: add lkrg-module to
 build image
Date: Wed, 22 Jun 2022 06:51:27 -0700
Message-Id: <20220622135127.19789-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220622135127.19789-1-akuster808@gmail.com>
References: <20220622135127.19789-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jun 2022 13:51:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57373

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/images/security-build-image.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/images/security-build-image.bb b/recipes-core/images/security-build-image.bb
index a8757f9..411cd20 100644
--- a/recipes-core/images/security-build-image.bb
+++ b/recipes-core/images/security-build-image.bb
@@ -3,6 +3,7 @@ DESCRIPTION = "A small image for building meta-security packages"
 IMAGE_FEATURES += "ssh-server-openssh"
 
 IMAGE_INSTALL = "\
+    ${@bb.utils.contains("DISTRO_FEATURES", "lkrg", "lkrg-module", "",d)} \
     packagegroup-base \
     packagegroup-core-boot \
     packagegroup-core-security \
-- 
2.25.1


