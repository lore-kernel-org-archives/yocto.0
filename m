Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69886C6FD1C
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 15:11:47 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web11.103841.1679670698043522851
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 08:11:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kmQK5tEQ;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id x8so1758991qvr.9
        for <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 08:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679670697;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BjhF3Iqam0z2nPdwdAqlwAeLj81qmzHaZ75KBgrAlbE=;
        b=kmQK5tEQDI0vkNt0lMmytLBJYCdbbNl+xPijStUhuStjU6tc0+UI6HQXcQ68hgIrEG
         nrO4cqYsDBkGe+RNGiszKx9V3bfJkTj57s8HgZ7WN6l9lA1mH8z0TPXEOMzXdjxxNmA6
         vk99I1I82ZocAl/Sru99yTEWtZzwROZg7WR/JFhS+xI0xgKUKCBI8fyDJE2cDFUwQzXa
         QBlsrBARK7Zu2d+3bcSPp1PbifSOWc6MWm51nBEy0zwq1tB8q1vzeZjj+iPsHjabVXoU
         eVUPfrtcyMc5u+4dka6FIHalX9c9udrflrTyozeu8iaZa4CJEIMfqwB8R6bSDZ8HHeYQ
         FaLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679670697;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BjhF3Iqam0z2nPdwdAqlwAeLj81qmzHaZ75KBgrAlbE=;
        b=blKVtGRrEym2hcpnkV76LwK00lSGR53wMtsuNHx9A/JcFRjuPJUcl+c16+qKnhYfhr
         T6fM/uyWIZaBO9/xp8Z4gyR1xpr5hK6ibPlPwVqvoa6J8V3ZHefFsozChtAC+jFjDsdx
         rhcui4EAeFG0c58EBsuWaLtCk3VH5Eve2PVgE2UyUnd7pt8GEh98/XpdEHnJ2MO+BYQo
         8vW4oWkjAClKx/N/+j59R8sxWtLTj7tnGm2Ez/Tt5fNcKGOGvJoS5VtLBpT4C+t4m8r6
         WW58Icv0f+phtxOCwCah4yy3ZRFSnRs1bUJQKpI6qwTvYLp5Tl8hzRv1UxwqCp5L8X4n
         8piQ==
X-Gm-Message-State: AO0yUKX1hWbHlFcHeWyJjGdM1sXapuCADqukFcqKz8ze6QeQl2e3uNl0
	LMboaLhJ/8j9Km+Z0gFbqfs=
X-Google-Smtp-Source: AKy350Y/3GF1aOHxhkoY/dwb5oaxcnU41sZg5cEmx/6noZM0r27RsUVyVrvUEzJnOuSkYRGKq2Y+EQ==
X-Received: by 2002:a05:6214:2aa5:b0:5dd:b12c:7536 with SMTP id js5-20020a0562142aa500b005ddb12c7536mr3550430qvb.15.1679670697060;
        Fri, 24 Mar 2023 08:11:37 -0700 (PDT)
Received: from build.lan (cpe7c9a54441c1f-cm7c9a54441c1d.cpe.net.cable.rogers.com. [173.34.238.88])
        by smtp.gmail.com with ESMTPSA id f13-20020ad442cd000000b005dd8b9345b8sm748794qvr.80.2023.03.24.08.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 08:11:36 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] yocto-bsp/6.1: update reference boards to v6.1.20
Date: Fri, 24 Mar 2023 11:11:34 -0400
Message-Id: <20230324151135.1348952-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 15:11:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59520

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating the hardware reference BSPs to match to core qemu machine
versions.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_6.1.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
index e693cb32e4..dc58f988eb 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "872afe79c5e568acf5f971952e78caada8424df7"
-SRCREV_machine:genericx86-64 ?= "872afe79c5e568acf5f971952e78caada8424df7"
-SRCREV_machine:edgerouter ?= "872afe79c5e568acf5f971952e78caada8424df7"
-SRCREV_machine:beaglebone-yocto ?= "872afe79c5e568acf5f971952e78caada8424df7"
+SRCREV_machine:genericx86 ?= "423e1996694b61fbfc8ec3bf062fc6461d64fde1"
+SRCREV_machine:genericx86-64 ?= "423e1996694b61fbfc8ec3bf062fc6461d64fde1"
+SRCREV_machine:edgerouter ?= "423e1996694b61fbfc8ec3bf062fc6461d64fde1"
+SRCREV_machine:beaglebone-yocto ?= "423e1996694b61fbfc8ec3bf062fc6461d64fde1"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "6.1.3"
-LINUX_VERSION:genericx86-64 = "6.1.3"
-LINUX_VERSION:edgerouter = "6.1.3"
-LINUX_VERSION:beaglebone-yocto = "6.1.3"
+LINUX_VERSION:genericx86 = "6.1.20"
+LINUX_VERSION:genericx86-64 = "6.1.20"
+LINUX_VERSION:edgerouter = "6.1.20"
+LINUX_VERSION:beaglebone-yocto = "6.1.20"
-- 
2.34.1


