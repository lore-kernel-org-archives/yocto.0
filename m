Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web09.5956.1615541582145486067
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 01:33:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hoWj6ro/;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id ox4so36454317ejb.11
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 01:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=psdAcYA4yMsqtksgayTV3Gw9xYF3lsJ41cjdsbzpfh0=;
        b=hoWj6ro/lq+Q6QnZrMCpiBndpxlU9a5LQ0mLGHvvZRakpsfIxmZi9NLKuJZqNOqHJp
         teORi0SV+ZJ8a4gjj+iRlhX9nVBDP9jfWx6Er2d/e8K7IqhTSAE/RdffmWMG/lgzgOXu
         tdY2iMXGVX+/0TiNQw5mQoJaoPLcwhj5+/NtOzPqD710OZs9Ae37jQ19gZeIIqfK6cFw
         tnKDMWZ+94/ligDA0jWa/xG500cjjFrV1DBz90ELWY2K+7GL1pIKGUzl/wQO/3NPGFno
         7uWM8k1PD0BuUHWeanGUsIv0/2BOAETOjrjy2z89C9F6RrquZsACbJ1rH4/ogZ784EXL
         qimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=psdAcYA4yMsqtksgayTV3Gw9xYF3lsJ41cjdsbzpfh0=;
        b=Qfrqt6GpSDL1yLtwpNaWSekhrjuq9UHYQvGbFWGJtELPiMAaxYFKahKPwOxjsBTfJ0
         syIO4hj2QGU5C1Jo8kBSDW8YQEmNFoH5LOo1zoPURA3uTTXvf54Oh35LZOazzkxtq02J
         BoVXHX7+bgC/Vru5O+WJl8dnorcGjuWb4MkejUOlKaUvAdrBHWcX30vtBua2zkxpX587
         cTw+BUJzoeXTuBcbkdpCM3tnKPw5m3L66jItRH4c4M7i7hn7Te0zJX6+61I3sTTcBIls
         0eej7yVTJm7XmKRDxl7FNkUiMrZV59ApHfQNA+CR5lqqs1CwqFNafv6lVisi0H2hcLNC
         G8NA==
X-Gm-Message-State: AOAM533OhnWW4hmP8EEvw+7Flu3PmbMKdGGvuS9Ivj+juU262uCxy9Hz
	r7p0olmCGDdJZ0hEUHJXLiOFi1EgXVf7xg==
X-Google-Smtp-Source: ABdhPJxF/Enb2xVEzo3524WWjVlf5UDeLrigqA+UjvXXOQjotKukB7mHliIOoFBwwMO/0Sq7wWcHXg==
X-Received: by 2002:a17:906:3488:: with SMTP id g8mr7377841ejb.282.1615541580579;
        Fri, 12 Mar 2021 01:33:00 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id h2sm2532708ejk.32.2021.03.12.01.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 01:33:00 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 1/6] config.json: add a systemd no-x11 build
Date: Fri, 12 Mar 2021 10:32:35 +0100
Message-Id: <20210312093240.319125-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Particularly the weston image has now regressed twice under systemd,
so I think there should be a quality gate for it.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 8025166..d6e7df8 100644
--- a/config.json
+++ b/config.json
@@ -715,8 +715,19 @@
             "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-weston:do_testimage",
             "extravars" : [
                 "DISTRO_FEATURES_remove = 'x11'"
-            ]
-
+            ],
+            "step1" : {
+                "shortname" : "Sysvinit weston"
+            },
+            "step2" : {
+                "shortname" : "Systemd weston",
+                "extravars" : [
+                     "TEST_SUITES_append = ' systemd'",
+                     "DISTRO_FEATURES_append = ' pam systemd'",
+                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
+                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
+                ]
+            }
         },
         "musl-qemux86" : {
             "MACHINE" : "qemux86",
-- 
2.29.2

