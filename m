Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E12F2C77B7D
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 06:11:37 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.43296.1684303893935220829
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 May 2023 23:11:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@snap.com header.s=google header.b=ELNKN7Z7;
 spf=pass (domain: snapchat.com, ip: 209.85.128.45, mailfrom: ecordonnier@snapchat.com)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-3f427118644so3582025e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 May 2023 23:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1684303892; x=1686895892;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PjEiAMQHL2vN/lcnduESR5xt0brLwPz+RRf5Mnmj8UI=;
        b=ELNKN7Z7XdlWIW/K9r+ZmbA/2VDlC1ErQyVXaq55vAyrwfVf7cSWGlnO/yBntRl6tH
         7NF5UWKqY7kOGaMjPO1IJJGj5aDbSXyDT0Qm9+d9Wbml5CT4Ffvu2Mte1VKXOK1KBDHq
         MKtVbfcYXUcnJqJLJa+q1H4CqJGfnqSLChhhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684303892; x=1686895892;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PjEiAMQHL2vN/lcnduESR5xt0brLwPz+RRf5Mnmj8UI=;
        b=D6deMDpLV/nWf00e8jSiWW1B462vavQp2tMjdBzEW5C7mILxSnpfS3z84NPWRKeaEr
         oDCNPpF+Y5SSj2Vps9gwcL6r+q14bsmF3Q7jUIJ8t2WOQWqlS2vr4/UXq5eAFpwa75XS
         ZEqVGamBtYmDaX6L0EFKfj729sau1TU43Fl7jy4GyfZJMy8PJfnCaBlFQSrG5EKbtjFt
         m8s8fgq/2SlKHPUbijnuP3l58lfT7VHKZDubRtWNzgR4aKYwjs6CZuUUUZ5vUyKnk320
         8kwzeHdLeKWfsWE43h/HSklN1HUzi+yv68cOMyvg8CvN9HhaW7mAZHIuslHDz9LWLs+3
         X2WQ==
X-Gm-Message-State: AC+VfDwwnwAYDByijMS1KQFBNyHhNW0ub26i4WLHy3oFJU5l6tAIffoA
	i15Gl9S7F0xBHnY3XTlHUICNE1+84i2/jGYyunY=
X-Google-Smtp-Source: ACHHUZ7DInaR+9RJ7NeFoCzfkL+AV70VDm2hE/305RRwIVadMRQwlVPIgSAuzw+3O6X1U7n6nU1LeA==
X-Received: by 2002:a1c:7702:0:b0:3f1:72ec:4009 with SMTP id t2-20020a1c7702000000b003f172ec4009mr31095650wmi.9.1684303891936;
        Tue, 16 May 2023 23:11:31 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([85.237.126.22])
        by smtp.gmail.com with ESMTPSA id s20-20020a7bc394000000b003f50e29bce3sm974809wmj.48.2023.05.16.23.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 23:11:31 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH 1/2] zlib: fix whitespace issues
Date: Wed, 17 May 2023 08:10:27 +0200
Message-Id: <20230517061028.3380331-1-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 06:11:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60036

From: Etienne Cordonnier <ecordonnier@snap.com>

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 recipes-core/zlib/zlib_1.2.%.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/zlib/zlib_1.2.%.bbappend b/recipes-core/zlib/zlib_1.2.%.bbappend
index c3aa14c..d662a29 100644
--- a/recipes-core/zlib/zlib_1.2.%.bbappend
+++ b/recipes-core/zlib/zlib_1.2.%.bbappend
@@ -3,6 +3,6 @@ FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 SRC_URI += "\
     file://zlib-darwin.patch \
 "
-do_configure:darwin19 (){
-	uname=darwin ./configure --prefix=${prefix} --shared --libdir=${libdir}
+do_configure:darwin19 () {
+    uname=darwin ./configure --prefix=${prefix} --shared --libdir=${libdir}
 }
-- 
2.36.1.vfs.0.0


