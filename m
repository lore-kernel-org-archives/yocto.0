Return-Path: <hyyoxhk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643C3C433EF
	for <webhook@archiver.kernel.org>; Sat, 25 Dec 2021 13:59:51 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.7392.1640440790802256379
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Dec 2021 05:59:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PAw54Ctu;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: hyyoxhk@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id v19so8289335plo.7
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Dec 2021 05:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jNKZSire4/pC68E4p9cMUDrIKnmjl9avQ+F7T/JrGyY=;
        b=PAw54CtuKw8ANeIFURTBP1tVsZ/xat1godAQMtDGg4VXNAoJFrjFxoizytfHlPZGwZ
         PPmEFTNOy1kTs9m/TI4bbv9O4u47IK2Pn4LTBcmFmXVpGu2YSGctuz2a9/TmXZ0ZviS/
         L1allwEcYZyGEi6189bDpLM/UkTQg9Dr6y7Gz1s2QPQcmSwiq+NwhuycU47kUHTx0QS5
         rEVwlBhYupWWPoJATlU9vNbeso1A09nV4vnaRjdhPjJzA1sD2asSjHC2GDKFZk6HPAkF
         UQ99uEehzuSvk8RHO/rIc/GocxYW5CmUNNBNrvne1XTn/kgvQNajOtbbQ+arPJHfrxSd
         a14A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jNKZSire4/pC68E4p9cMUDrIKnmjl9avQ+F7T/JrGyY=;
        b=EBDzAz+ISYtUjfbybEdwTy5ZByqoe+bbGfFPNfcsljoph/enlyl8STAfQYg7/I7QJW
         ypaExb8oDwVZ1aoHu+OftR3prQAVcV5Y2fKWzyRi/13Hx+qOpDenQlomqAySieLyTubB
         01/g1u7+Y13YzKCfF8JYCipQ6kJ+uL/QG0+4g4WHqHYqK9u8ztldIrW8xtVAZQOQsF9F
         L9D81T3lnBDDVlBaGpe3uF4mMtmbn6miD1YmypjrFQbxD3E6x0jZ6CY1uY8NrB9Aikmm
         B0n+cZTirhWT+c7OuJptdhVP1KCFMmAPYlPP5GgXD33/r39/bexgns6YPVj7uD8y7Dt7
         Qk9g==
X-Gm-Message-State: AOAM530+gJZvcLncaXrphIoFdkMhNsLzNin2iqGPdleEeDsvwK7kziCE
	ya+f97Fb7xOOsAL8ndsyVaNjnZ1EiI3nbZ3eVOmcRFjI
X-Google-Smtp-Source: 
 ABdhPJzegJwWqKWanIx2AibuX91YRv8pajKHFbdGgyPSfgz3uPVg2MpkyROtvh0LcqiEOM8QSVgtfw==
X-Received: by 2002:a17:90a:868b:: with SMTP id
 p11mr12395277pjn.223.1640440790213;
        Sat, 25 Dec 2021 05:59:50 -0800 (PST)
Received: from localhost.localdomain ([183.220.91.38])
        by smtp.gmail.com with ESMTPSA id
 g1sm11833903pfu.73.2021.12.25.05.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Dec 2021 05:59:49 -0800 (PST)
From: "LM.H" <hyyoxhk@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: "LM.H" <hyyoxhk@gmail.com>
Subject: [PATCH 2/2] Add CMakeLists.txt to build project with cmake
Date: Sat, 25 Dec 2021 21:59:22 +0800
Message-Id: <20211225135922.21527-2-hyyoxhk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211225135922.21527-1-hyyoxhk@gmail.com>
References: <20211225135922.21527-1-hyyoxhk@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Dec 2021 13:59:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55659

Example:
  mkdir build && cd build
  cmake ../ -DHAVE_SYSTEMD=ON
  make

Signed-off-by: LM.H <hyyoxhk@gmail.com>
---
 CMakeLists.txt | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 CMakeLists.txt

diff --git a/CMakeLists.txt b/CMakeLists.txt
new file mode 100644
index 0000000..1a7e6f1
--- /dev/null
+++ b/CMakeLists.txt
@@ -0,0 +1,41 @@
+cmake_minimum_required(VERSION 3.1.0)
+
+project(psplash LANGUAGES C)
+
+option(HAVE_SYSTEMD "Build with systemd support" OFF)
+option(DISABLE_STARTUP_MSG "Disable text banner output on startup" OFF)
+option(DISABLE_PROGRESS_BAR "Disable progress bar" OFF)
+option(IMG_FULLSCREEN "Enable the logo image in fullscreen mode" OFF)
+
+set(PSPLASH_SRCS psplash-console.c
+                 psplash-fb.c
+                 psplash.c)
+
+add_executable(psplash ${PSPLASH_SRCS})
+add_executable(psplash-write psplash-write.c)
+
+if (HAVE_SYSTEMD)
+    find_package(PkgConfig REQUIRED)
+    pkg_check_modules(SYSTEMD REQUIRED libsystemd>=221)
+    add_executable(psplash-systemd psplash-systemd.c)
+    target_link_libraries(psplash-systemd systemd)
+endif()
+
+if (NOT FONT_NAME)
+    set(FONT_NAME radeon)
+endif()
+
+add_definitions(-DFONT_HEADER=\"${FONT_NAME}-font.h\")
+add_definitions(-DFONT_DEF=${FONT_NAME}_font)
+
+if(DISABLE_STARTUP_MSG)
+    add_definitions(-DPSPLASH_DISABLE_STARTUP_MSG)
+endif()
+
+if(DISABLE_PROGRESS_BAR)
+    add_definitions(-DPSPLASH_DISABLE_PROGRESS_BAR)
+endif()
+
+if(IMG_FULLSCREEN)
+    add_definitions(-DPSPLASH_IMG_FULLSCREEN=1)
+endif()
-- 
2.17.1


