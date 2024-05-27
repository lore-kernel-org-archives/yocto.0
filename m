Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED0A9C25B74
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 17:54:35 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.3348.1716832470116996032
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 May 2024 10:54:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=MdxtQGv5;
 spf=pass (domain: baylibre.com, ip: 209.85.219.49, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6ad7a2f8715so377446d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 10:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716832469; x=1717437269; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=9jd9Gf/Mh/hWeMEEPAGA32FqWfxuw2IjitJqEOEiYMk=;
        b=MdxtQGv5n3/iJrFMq8P3wyYAZS5oaGbgmc/3VDTz3GGfnFOOpKcfUzDgOPtdwpIRQM
         woOMS4kovT+wuvNk8c6agWIpp9j4U9GhMuEZQmOXUOrKNOAccKuw0KCiHf5upnU3NhWH
         St2HRVWtuylGVVc4PoLmNeNu+VYiS8WNb31PYCCcBink10vSUq5todHCX6p4eonGDo4P
         U9hZl1K8Ryg2UGwYLxMcOGzBU61P5EDoa37NIj02B7zNuGpXzULv2O0gSAWM4Mzu3ezd
         aDIWKQnBnI9iHX4CLYf33EGm5YYayPsqVjnAVOrpGz77esRSmGO0nIDeUjmG/IGH0gyq
         wktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716832469; x=1717437269;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9jd9Gf/Mh/hWeMEEPAGA32FqWfxuw2IjitJqEOEiYMk=;
        b=o1xtFyNgCdQcyy1cFrc+LK5VT6dMvcKqbJ9P1ItwhVfllOMwDT5IKHOjGOLf6HS3ix
         5IDuo4V6Dq8jQG6YBhsdraGkqB/VG55Kvy6kSoYGA42AvmDYFybIG1ahts4By3ExHU77
         iAwKBwGvI3607f726ALx0FGGfu/FJ0j/pOkteq0/wQ2o0jnnE4l2hElH/AEHxWsGFRMC
         5FRpXE1dgLUiASF/xA+XjCxIsuNiRHf0ueDQ8zcEn7Kc6pjY8iou9RP0KNa+AcKlUF2f
         kwEkDC/HgDSOnkzku4+NnZo609z3jrMsSMfW8UIf5fmXkoohpum3ZMVPqRYFw4YqdGgi
         qQKg==
X-Gm-Message-State: AOJu0Yx1p4POYbmDy2QE7Wm28zICcc+q6nOViFzkMB/Pnu7XoLqe8ThR
	JKH8SXyGgAY7x6w2ZsTH+meIMpWQad2Hc++O7UlkRoTS8nIzN6oQN6DXv8XKdNxntYHG8RUieRg
	Z
X-Google-Smtp-Source: AGHT+IGoQHtiYop7zDB2NCc7UpOsqhjkHsjOHPMkiog7JMUrKZ33kwGohgXxGDZUjsTzsNjjz6V4MA==
X-Received: by 2002:a05:6214:250f:b0:6ad:752d:1530 with SMTP id 6a1803df08f44-6ad752d15c4mr103819416d6.27.1716832468980;
        Mon, 27 May 2024 10:54:28 -0700 (PDT)
Received: from megalith.oryx-coho.ts.net (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ac070c2edfsm36047696d6.23.2024.05.27.10.54.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 10:54:28 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [auto-upgrade-helper][PATCH] upgrade-helper: fix testimage check
Date: Mon, 27 May 2024 13:54:27 -0400
Message-ID: <20240527175427.1256100-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 17:54:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63208

AUH's testimage logic is still checking for BB_ENV_EXTRAWHITE instead of
BB_ENV_PASSTHROUGH_ADDITIONS, and INHERIT += "testimage" instead of
IMAGE_CLASSES += "testimage". Update it so that checks for the correct
variable names.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 modules/testimage.py | 2 +-
 upgrade-helper.py    | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/modules/testimage.py b/modules/testimage.py
index 0fc1adb..fb2e467 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -53,7 +53,7 @@ class TestImage():
         self.logdir = os.path.join(uh_work_dir, "testimage-logs")
         os.mkdir(self.logdir)
 
-        os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
+        os.environ['BB_ENV_PASSTHROUGH_ADDITIONS'] = os.environ['BB_ENV_PASSTHROUGH_ADDITIONS'] + \
             " CORE_IMAGE_EXTRA_INSTALL TEST_LOG_DIR TESTIMAGE_UPDATE_VARS"
 
     def _get_pkgs_to_install(self, pkgs):
diff --git a/upgrade-helper.py b/upgrade-helper.py
index 869dc3f..e307d60 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -262,7 +262,7 @@ class Updater(object):
         enabled = False
 
         if settings.get("testimage", "no") == "yes":
-            if 'testimage' in self.base_env['INHERIT']:
+            if 'testimage' in self.base_env['IMAGE_CLASSES']:
                 if not "ptest" in self.base_env["DISTRO_FEATURES"]:
                     E(" testimage requires ptest in DISTRO_FEATURES please add to"\
                       " conf/local.conf.")
@@ -271,8 +271,8 @@ class Updater(object):
                 enabled = True
             else:
                 E(" testimage was enabled in upgrade-helper.conf"\
-                  " but isn't INHERIT in conf/local.conf, if you want"\
-                  " to enable please set.")
+                  " but isn't added to IMAGE_CLASSES in conf/local.conf, \
+                    if you want to enable please set.")
                 exit(1)
 
         return enabled
-- 
2.45.1


