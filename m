Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web09.9770.1620227922757078925
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 08:18:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V77Ww/3K;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id t4so3529318ejo.0
        for <yocto@lists.yoctoproject.org>; Wed, 05 May 2021 08:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hallvvIKJXEfVh3dkmugs0thXEeOi5DaQjyA9DoSFqo=;
        b=V77Ww/3KIT4NEwN7wRf7yXP9S4O/6pQB8r99PvrD/WYVeN5edQF8oryxfccwMjdvBC
         Rd+uCh5x+BVHYpYaDviiEacSDN/DQTy8xG3flliNhvkHPC+v3e/JpCBEfCUuYVVwZMrz
         GJMdewLSCcvrX23Rdm9I048Pd93CsVcflXYz0M6tzy/DMy4FGSbwqA7+0W/iAEC/WaeL
         aqhqU7bI0aLWTR/H3ETepEB+QeSQFEew4Unk0TtFxJALpguHWvxgZ+2Whbf4W05yjNuI
         lQcqrLAikgF+YTO2U2g1Naooctgd+OqvEHL83F54TVOGza4nzvRFoeVTKltwrzbctsEz
         VoRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hallvvIKJXEfVh3dkmugs0thXEeOi5DaQjyA9DoSFqo=;
        b=rKsj9KtAVJxMw7j6gWenCG0O2Un0EbZ/eqGMeb4Zv38MZDvOrcYfYFga/x+Lq4fHkK
         7/G7hXynbVjZT4zlwZh5rLrIO/Glb6gwNST+MX8vQR9DdNDHZ+e6YFGgw+dQPBd68Rro
         Rv5lhMdO2TIYORyG+gwdN5PNeyGVHjHdHJzIPcq48l2vBJV3K9RGRyhcgMJR2l6kPgyL
         3grY7X3ArpqmhrbrNDPLI0QjZVLxYO3GIYAY+ydto6KajALmuExJQbIFVqNuEUoaBDg+
         WMvilK3cxYFua9S0tPzx8RxvSUqPJod7wvv+EQXnHGkIJZMhsYAVTle3ctfq+svELpg3
         4/iQ==
X-Gm-Message-State: AOAM530AmwK6PmkPUKBHF9v75CPuLtxWKG6bZMSglgbyj40CzZQu37VZ
	X8ZhOx5sXNVt2O00zPJjKSzrglSCch17PQ==
X-Google-Smtp-Source: ABdhPJz7+x+sSAT4hF9MvvJAH1EBFDtTLvwjBku+rdznGoVlkZiynUrlE773y+BiaY8y2cAFK4YicA==
X-Received: by 2002:a17:906:b10e:: with SMTP id u14mr4165138ejy.546.1620227921066;
        Wed, 05 May 2021 08:18:41 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id t1sm2980395ejs.50.2021.05.05.08.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 08:18:40 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: do not add separate gdk-pixbuf jpg/png modules to images
Date: Wed,  5 May 2021 17:18:19 +0200
Message-Id: <20210505151819.660568-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

JPG/PNG have become builtin in gdk-pixbuf 2.42.x
(other formats are still external).

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 52f39ef..3e12d3f 100644
--- a/config.json
+++ b/config.json
@@ -559,7 +559,7 @@
                     "MULTILIBS = 'multilib:lib32'",
                     "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
                     "RPM_PREFER_ELF_ARCH = '1'",
-                    "IMAGE_INSTALL_append = ' lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
+                    "IMAGE_INSTALL_append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
                 ]
             },
             "step4" : {
@@ -574,7 +574,7 @@
                     "MULTILIBS = 'multilib:lib32'",
                     "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
                     "RPM_PREFER_ELF_ARCH = '1'",
-                    "IMAGE_INSTALL_append = ' lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
+                    "IMAGE_INSTALL_append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
                 ]
             },
             "step5" : {
-- 
2.31.1

