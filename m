Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web10.6336.1614777351501925868
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 05:15:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=b6JesWkQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id b13so20692522edx.1
        for <yocto@lists.yoctoproject.org>; Wed, 03 Mar 2021 05:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=psdAcYA4yMsqtksgayTV3Gw9xYF3lsJ41cjdsbzpfh0=;
        b=b6JesWkQObD7E5UTJBrXIMNyb72I86qhO9BR6UHmUVvaHsWWsCCdSVALWAxptPw0CN
         TS5CnEiXJv7ftQdT5Yx7XO1alVBv+K7RLz9CdgCVilOrbiyxGMOZcioe72q7nxC5cNFK
         TpuUJj/MLCBFvPVfL3aUK//rj774MKAdF+vXE3pM/HOh8H7CAw5+D5OeBBCmK3jhZcd2
         wNEJvrIURwdKYmk4ltjoDd3zXl8NfRQP8ovcgouI9RuX9jWFHp9hqLabpgI30QhTx1/1
         q/LhLPb/JkGJYkonvAnJGkmdHigUOjOJlix1z78uH9XhUDFYfhiQPBPDRArMD9SHaATo
         F8hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=psdAcYA4yMsqtksgayTV3Gw9xYF3lsJ41cjdsbzpfh0=;
        b=qeZ6/MGeAy805v2R1ZejG39PI1qBXYWXZFmTcMy/AHmcPJvDA9bhUNJDWJpsoL70kh
         3bOC7krlFvKzDkeBGo1X/ixxBfe21L0N9pNllO1HhkD1udmYw/cqP808FyF5XGtQe8D8
         peuf/SNZ/p6Inm8vTiz1EU6Yur1LLKTyHLzz3wQk6Isw98Gzg9/3FPLj7ZnyIhqXmZm9
         90/u5dlMIqVFRPG10u0DNAg2hJX4Q6xdmsWhp0s/kUjto9k+Ui1+6Z8V9TspvB+uc4Cn
         MGOjyiHqWaRugHfuxGIhK35nVwf7rKdq4YFQzd6/6d1jxmTuSlzv2A8w3sKORm/prHM1
         uxDw==
X-Gm-Message-State: AOAM530FbhIt7lWLp25EvHU7WY88F3WAfJ4Rf+4fqmnUmF6tO5zWjQOr
	+BySucbTQhBk2LjdYeVjuUhDpNtat5Cw2Q==
X-Google-Smtp-Source: ABdhPJwagx6ZXiygIhOJaQDaI8XMLseVLlQH3KFi0b/zz2iVarDYHD846U2RlYlNgT2cHxzbMxbCHw==
X-Received: by 2002:a05:6402:1691:: with SMTP id a17mr24684813edv.336.1614777350005;
        Wed, 03 Mar 2021 05:15:50 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([5.28.91.120])
        by smtp.gmail.com with ESMTPSA id h10sm10007769edk.17.2021.03.03.05.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 05:15:49 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: add a systemd no-x11 build
Date: Wed,  3 Mar 2021 14:11:45 +0100
Message-Id: <20210303131145.604924-1-alex.kanavin@gmail.com>
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

