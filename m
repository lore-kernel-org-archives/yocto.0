Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C48FC61D85
	for <webhook@archiver.kernel.org>; Wed, 22 Nov 2023 01:48:34 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.9979.1700617706518540898
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Nov 2023 17:48:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a+KYl4WM;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1efb9571b13so3767514fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 21 Nov 2023 17:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700617705; x=1701222505; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6wFRrr+pQbNGM9HS9c1s/KxEMtlvUoIG3FR++oSSjIA=;
        b=a+KYl4WMqhj8+L+4yHbibzBZHKmcq8poj4GSOJ5PLmzZlOsgPeY2QfQsQlDLudEwSM
         iIys6+trnKw6saApMqlaXc2hHgOn+VW22oBOtLni9+rH9dKxUzRJrhADg6nbS68H1eD6
         3F7xwxGxgyXv9qtUsfpAptPBOFWJSsQv3TIj4bEHH5Lc3Oo28qjldVKMxlFOtVyF+hxe
         oUgYuXOK8IBHG1Zt3JiIsWZjbr6HVXV4aspuUaHn3+a9I6qfbI6aswtQVsG0sX8NQNFF
         umGTi9MJFhLNVzbhZWGAPhX3oUQRh/CVgnXQtFI8UiBK2BmFpMxG/Kx2fBmeC5Vsv+AV
         BYEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700617705; x=1701222505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6wFRrr+pQbNGM9HS9c1s/KxEMtlvUoIG3FR++oSSjIA=;
        b=FzaMjupmUxmfDaRA9qr1ZafG3dJaywNTJC0PYbrYTEffuFxkHS/edb0cdR1lwM4OVA
         GDKcnDwCbW4Ay/Exg2Z5pJc0qNL1pCEHEuehzkQ55DN7qEFCu2RlJ2ouI6KhtAXEJ8OQ
         YbVnXljkn7/RxuEojE9GpPB7SyJyxc4zayJWdGopmhuJwz+4sVHGBWraBIa7pExfId40
         sy/r6aX94v0eUlqvb41p44aRkZrksG8laTW7Bk+KVYvHhcp5Qo4b7aNGvroMlm0cLHjn
         j+7aGA4Vgy5hnLMgb3dZ284SLW0SO8yNAtelrOCwRdgddCII12M+laxfjmPM9SYbZ2bL
         D2uQ==
X-Gm-Message-State: AOJu0YzhDaDZCDmoKoPC724dg8s595T7X2MJWOREITUJiu2lq+4wFFfA
	+p1s4wJm2YRCiiAomzaO/ihPW2E9QXiY+A==
X-Google-Smtp-Source: AGHT+IHFt0YdnrOQyu0QM+jKOLJt6+/S9jtglTOLclfzqCa/HyKIbWB2r+PTuVPuzmBn+hQ5fnDErQ==
X-Received: by 2002:a05:6870:4e0a:b0:1ef:a87f:5d52 with SMTP id pl10-20020a0568704e0a00b001efa87f5d52mr1440422oab.6.1700617705507;
        Tue, 21 Nov 2023 17:48:25 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9100:2cb0::2c3f])
        by smtp.gmail.com with ESMTPSA id k16-20020aa788d0000000b006c107a9e8f0sm8496325pff.128.2023.11.21.17.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 17:48:25 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [yocto-autobuilder-helper][PATCH] config.json: Add lib32-matchbox-terminal to multilib images
Date: Tue, 21 Nov 2023 17:48:18 -0800
Message-ID: <20231122014822.3871458-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 01:48:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61728

This avoids an issue when a package that pulls in gtk4 into
core-image-sato but not into multilib pieces results in different
gschema compiled files as reported in [1]

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=15291

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index c5fca45..e95a292 100644
--- a/config.json
+++ b/config.json
@@ -900,7 +900,7 @@
                     "MULTILIBS = 'multilib:lib32'",
                     "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'",
                     "RPM_PREFER_ELF_ARCH = '1'",
-                    "IMAGE_INSTALL:append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
+                    "IMAGE_INSTALL:append = ' lib32-connman-gnome lib32-matchbox-terminal pango-module-basic-fc lib32-pango-module-basic-fc'"
                 ]
             },
             "step4" : {
@@ -915,7 +915,7 @@
                     "MULTILIBS = 'multilib:lib32'",
                     "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'",
                     "RPM_PREFER_ELF_ARCH = '1'",
-                    "IMAGE_INSTALL:append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
+                    "IMAGE_INSTALL:append = ' lib32-connman-gnome lib32-matchbox-terminal pango-module-basic-fc lib32-pango-module-basic-fc'"
                 ]
             },
             "step5" : {
-- 
2.43.0


