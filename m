Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web11.15551.1598457314626662122
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 08:55:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uTo62oKx;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id d11so3509719ejt.13
        for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 08:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gMcOA+Q2tS2ZRTez3OcSUaiRk+ImmNLY0cneyTIfsC4=;
        b=uTo62oKxfJHUBr8WcmSJD2SBTxI7xxkZeSBaF35QrOHQkMGWGrYlkeR6B4QRlTzA1o
         yFIJbog/9HIFhh4nZ/ZX5u9UDPWKYT20gwJ4d2ZRa+IEundgJxpX9lsfDKWHYIWoTQ+2
         0QQO4Rob3NZwOMRUDIUY6Ii6oY6wVD/ZVt3bWFzHovIo2PCM0PodcEmBefOMyk+n0xO/
         dBWybNirtywSO+vFYahQNmI+hHAApWKczy31TDZ00nURqoEmOV8b5mY+l65AjkBi/ya5
         a+dQdLEyq0G0b4biNyIIp7OKDfT6h/aPiAvSk0BJQwvDbp8FKaKyh4lmWC1XxdC2vyV0
         8GTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gMcOA+Q2tS2ZRTez3OcSUaiRk+ImmNLY0cneyTIfsC4=;
        b=ZsxmukVwMZFPyKOSACNpwbTwhhZDAwzMOSEaAtSBWnc6IWGr4d+pShBNJHl7x/skWz
         ydthfInGiHcm/yKtao14r+2zPFi2xcNUpjYDY1v5LXg8dVi9MJ+7KYNcD1ULsd81tQAL
         w/kgdgQj5wTKP6MdXdARQAAsEdIKNE6RXsDW+VEDe2t0DfyLAhXztIQHP/U3dZuYDcz3
         ZkoX8wdZ0eSGhuERJJPLo0r97QR/go+II/y5f6xosd+Ls8aS2pzmXtE38+1G1UwL0uLG
         BgHcbyFty113uscuKnBeMjND93RvPbiuAkvmDCA0kBjS72qLD53TIRwtScbYuJQICNvh
         T/xQ==
X-Gm-Message-State: AOAM533OR4up5rXLO/sZO+5TUeL1sZ+S2q4kKXTkJ7wDlncROUVXG07+
	Qm2lDf2eCQkUuwiw/JuFYHjMVKuR+Vg=
X-Google-Smtp-Source: ABdhPJxwyvZua6AoXt73Jca5uktmX9FZr+iCvYOXaZEcvC7P62YcljQGUDYcR3NEUF5yGgmNIc0e0Q==
X-Received: by 2002:a17:906:38c7:: with SMTP id r7mr16858155ejd.118.1598457312820;
        Wed, 26 Aug 2020 08:55:12 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.site ([2a02:2450:1011:56f:b652:c378:b428:fdf])
        by smtp.gmail.com with ESMTPSA id lx15sm2626958ejb.66.2020.08.26.08.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 08:55:12 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: add binutils to images where it's required by tests
Date: Wed, 26 Aug 2020 17:54:33 +0200
Message-Id: <20200826155433.16346-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Previously it was pulled in implicitly via poky default config.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index b78cba7..25be864 100644
--- a/config.json
+++ b/config.json
@@ -452,6 +452,7 @@
             "step2" : {
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
+                    "IMAGE_INSTALL_append = ' binutils'",
                     "TEST_SUITES_append = ' x32lib'"
                 ]
             }
@@ -501,7 +502,7 @@
                     "MULTILIBS = 'multilib:lib32'",
                     "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
                     "RPM_PREFER_ELF_ARCH = '1'",
-                    "IMAGE_INSTALL_append = ' lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
+                    "IMAGE_INSTALL_append = ' binutils lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
                 ]
             },
             "step4" : {
@@ -514,7 +515,7 @@
                     "MULTILIBS = 'multilib:lib32'",
                     "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
                     "RPM_PREFER_ELF_ARCH = '1'",
-                    "IMAGE_INSTALL_append = ' lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
+                    "IMAGE_INSTALL_append = ' binutils lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
                 ]
             },
             "step5" : {
-- 
2.28.0

