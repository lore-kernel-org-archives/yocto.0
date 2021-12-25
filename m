Return-Path: <hyyoxhk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E28BC433EF
	for <webhook@archiver.kernel.org>; Sat, 25 Dec 2021 14:07:12 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web10.7420.1640441231716505526
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Dec 2021 06:07:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WSwYCoLL;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: hyyoxhk@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 n15-20020a17090a160f00b001a75089daa3so14044661pja.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Dec 2021 06:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jNKZSire4/pC68E4p9cMUDrIKnmjl9avQ+F7T/JrGyY=;
        b=WSwYCoLLmyEcZxj6384ZhgQ4CTIlCtPubt4GuU2ElGBb6A/lu5pdZsHy/GC9IulU8H
         hGKyIX7/QhBSttjACRrt6pZrcsS0OL5zIW/HMOwye3mleHOvJnRtsdqGZ7Mw3gG3kQ5W
         pjJPdvFFgSXahSua65E4rTwr0zVN1GtlisQ3L19ohRqqTZFOPNpXmIg6d0QZf5uy799S
         Zes/Ef5gkwtBQ5XYlIeHjgqnl7Vzniwurg/qej+upSj3RtDtMoV9TqspW1wLvVU4+7iM
         kvzYfZcnexlbjcja2piQ6+WZrwdE9StX3qAbwMC1eENYcULr25zbrBHQT3mh37k+DzGK
         5yGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jNKZSire4/pC68E4p9cMUDrIKnmjl9avQ+F7T/JrGyY=;
        b=Of/Qry93gAT38X+RFFxm9OrjskPMnleAvsl8SsUvAbxn6qov/lFAZBGX6fz7siD7wM
         hvMGlsa62ZScUjK5BnQ6jvu9yf3qaoGYted1SBDrLw77wwuGzo6Wxon5M8g7OD0xPlQe
         6EO6CkuEVpW7ilH2+3Ssa+A7UmxcsxWs+/dh7p4m+x6M6sAca/5dnZ7j1HxhTijzHs34
         5OT+cy3XxJP1giCbsE1dBuR/gle1+tDmvcM2V2b038LNADB1DAooZSy7dRQ93rul1LEp
         lpYu9/LLF1O0Fe9dINPJtU6s18i3AKBbnt7J3H39IBF0KSvoC4XzghTlRNESVnvI0lvU
         sIaQ==
X-Gm-Message-State: AOAM532XUEg5GWk6mhk194e6hRoxiqy6hxM+YAjAtrbk4MtEEH0RhGn7
	pi44+jyu/bYCkIT3bC64nokOdtcw4/7UaAcPP5HOhurf
X-Google-Smtp-Source: 
 ABdhPJxH5qKnoRuC7VYrw0FJn5NSPsGIrai6B3KrqHVy8kPZhz2c/WypsWOZ6p/KCJdw/eVIVO5o2w==
X-Received: by 2002:a17:90a:8006:: with SMTP id
 b6mr721424pjn.214.1640441231016;
        Sat, 25 Dec 2021 06:07:11 -0800 (PST)
Received: from localhost.localdomain ([183.220.91.38])
        by smtp.gmail.com with ESMTPSA id
 14sm11273762pjm.6.2021.12.25.06.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Dec 2021 06:07:10 -0800 (PST)
From: "LM.H" <hyyoxhk@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: "LM.H" <hyyoxhk@gmail.com>
Subject: [psplash][PATCH 2/2] Add CMakeLists.txt to build project with cmake
Date: Sat, 25 Dec 2021 22:06:18 +0800
Message-Id: <20211225140618.21844-2-hyyoxhk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211225140618.21844-1-hyyoxhk@gmail.com>
References: <20211225140618.21844-1-hyyoxhk@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Dec 2021 14:07:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55661

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


