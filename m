Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.444.1580429797119870144
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 16:16:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zcdy2FRg;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id p9so1981966plk.9
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2020 16:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=3BhoNGf0WviLO6+InMbASjTKWjGMy0K80s6GhctH1Rs=;
        b=Zcdy2FRgftHtWilw50vNPwVoILNyDwjia64ftgLu1B+w+eWdVI+KF+oM5w78ASIsvL
         EfYq3o+ONuhnsVLJBzK6jKUUYUWXnqx2sPaid97G6JMB6Cc1kqZfT8gZm4Rb9qv1f0x8
         JUn2xsRmsweYuEJ3AQoNiwFYOrv+FUpi/eP5s/l4tCvwV/U5PrLZj6yMXwHbNoV2v8Tq
         H+SigLnlmrt8wDAcRc4K4ApWMwd8JWdqA4xjVGnKT1d0h6LmvQU6SN4gvsvj3mjzLhYK
         NFu01kaAxUY8Y+MmMz4XjPndTrmSXp79TmQTHlxzm51wqW4bFHAMtjRufcY3m6nhm9pV
         2jxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=3BhoNGf0WviLO6+InMbASjTKWjGMy0K80s6GhctH1Rs=;
        b=X33ErJS2h5SkKdLXfVbqPWYJSjYcm+R7ATuejCR7wHKuV4EqaIjB9A/kjRXbCkxBE2
         UFA8gIczdhFfRFxQi6jeBAfTaJU8pC67EOo/0y2YVfbc84knDymuoYvn78AsWvgglNa2
         zkBP3AJAovd39504It1p/5WKMO3LZODPCQLMDAE/OJeTpH1Rd/5cWYhewg9jSm5wE7s4
         91KyvB41kjUbaEVhzyCouDXuqzDpJcITfqHeXkr98kK1XJndz08BzrS0sFqKz2kblGmB
         5AX6HDTh6dEp4wyyXowQjguX+R+Lymwn0eIiTpcnQbjbmaTSs7MdLtT6qwQnZALHtbm0
         0Khg==
X-Gm-Message-State: APjAAAUYs2PlpJkSwvRal5yKCpMBx8tW5hRKyMw5MXvDqloyzlwn+dCA
	JVkUs5ntiebPL81HKhNjk/NZBvpW
X-Google-Smtp-Source: APXvYqyYATr8QeL7osN9h8LG9oSKeyIw7tPutJXQ/AbWEY7wDR6xKTX+4t6uMrLricT3yi8Lrt42eg==
X-Received: by 2002:a17:902:124:: with SMTP id 33mr7513680plb.128.1580429796365;
        Thu, 30 Jan 2020 16:16:36 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:9979:cdb6:7624:d076])
        by smtp.gmail.com with ESMTPSA id u1sm7993928pfn.133.2020.01.30.16.16.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2020 16:16:35 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH] yocto-autobuilder-helper: remove mpc8315 from configs
Date: Thu, 30 Jan 2020 16:16:34 -0800
Message-Id: <20200131001634.30404-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 config.json               |  8 --------
 scripts/publish-artefacts | 12 +-----------
 2 files changed, 1 insertion(+), 19 deletions(-)

diff --git a/config.json b/config.json
index cf7710a..f7e2b84 100644
--- a/config.json
+++ b/config.json
@@ -327,14 +327,6 @@
             "MACHINE" : "qemuppc",
             "TEMPLATE" : "altcfg-qemu"
         },
-        "mpc8315e-rdb" : {
-            "MACHINE" : "mpc8315e-rdb",
-            "TEMPLATE" : "arch-hw"
-        },
-        "mpc8315e-rdb-alt" : {
-            "MACHINE" : "mpc8315e-rdb",
-            "TEMPLATE" : "altcfg-hw"
-        },
         "qemux86" : {
             "MACHINE" : "qemux86",
             "TEMPLATE" : "arch-qemu",
diff --git a/scripts/publish-artefacts b/scripts/publish-artefacts
index 75ed1b5..f642fac 100755
--- a/scripts/publish-artefacts
+++ b/scripts/publish-artefacts
@@ -15,7 +15,7 @@ md5sums(){
 TMPDIR=$WORKDIR/tmp
 
 case "$target" in
-    "qemuarm"|"qemuarm64"|"qemumips64"|"qemumips"|"qemuppc"|"qemux86"|"qemux86-64"|"edgerouter"|"mpc8315e-rdb"|"genericx86"|"genericx86-64"|"beaglebone")
+    "qemuarm"|"qemuarm64"|"qemumips64"|"qemumips"|"qemuppc"|"qemux86"|"qemux86-64"|"edgerouter"|"genericx86"|"genericx86-64"|"beaglebone")
         mkdir -p $DEST/toolchain/i686
         mkdir -p $DEST/toolchain/x86_64
         md5sums $TMPDIR/deploy/sdk
@@ -107,21 +107,11 @@ case "$target" in
         md5sums $TMPDIR/deploy/images/qemuppc
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuppc/*qemuppc* $DEST/machines/qemu/qemuppc
         ;;
-    "mpc8315e-rdb")
-        mkdir -p $DEST/machines/mpc8315e-rdb
-        md5sums $TMPDIR/deploy/images/mpc8315e-rdb
-        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/mpc8315e-rdb/*mpc8315* $DEST/machines/mpc8315e-rdb
-        ;;
     "qemuppc-alt")
         mkdir -p $DEST/machines/qemu/qemuppc-alt
         md5sums $TMPDIR/deploy/images/qemuppc
         cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/qemuppc/*qemuppc* $DEST/machines/qemu/qemuppc-alt
         ;;
-    "mpc8315e-rdb-alt")
-        mkdir -p $DEST/machines/mpc8315e-rdb-alt
-        md5sums $TMPDIR/deploy/images/mpc8315e-rdb
-        cp -R --no-dereference --preserve=links $TMPDIR/deploy/images/mpc8315e-rdb/*mpc8315* $DEST/machines/mpc8315e-rdb-alt
-        ;;
     "wic")
         mkdir -p $DEST/machines/qemu/qemux86
         md5sums $TMPDIR/deploy/wic_images/qemux86
-- 
2.17.1

