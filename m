Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web09.30064.1620024086552948536
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 May 2021 23:41:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fis9UCEj;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a4so6255877ejk.1
        for <yocto@lists.yoctoproject.org>; Sun, 02 May 2021 23:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GdcTjo73O8GrWer+y1VtX8ONHMWqby50Xv8S/zllBqg=;
        b=fis9UCEjO1tXxvAiuAP7jhaXdkq+Q38uqeI5M7m3dYsupBLnlfHEiU0kx/KbYNHh+s
         RtAvdzcWRy1pp4cSh58jf7mdNN/eXma3VEhUA8frbPk0M3pqZJl7YNDg1Ka8HEu5SflG
         AaGgLiDMft7fJqNEb8lT89WC5E/ymEElb+lf3c8HtNIpoKItvhlclrrzVyPGtXrJ+vi6
         BA8uLn+Q9sZZkJU7hUEA51n8iSrlEBPf2T7Jo8znxR2FjN7c4I7O4y9geqc2ZZ1/xrQA
         01SRtrsWNOUqJF/Fdf3E5b5FJiMBilP7vz5JgjlVL2unGQ4Yq9n2yU2JUQP1HklA4AvT
         F2wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GdcTjo73O8GrWer+y1VtX8ONHMWqby50Xv8S/zllBqg=;
        b=ka/XzhnqrxxtklHr/AZ9zMvUWY+dXLqFdYepkFqtsR5IGkWP2JySdMgGRrchULZZeX
         cFjVqiCMNU5JRd4dE/93OxGjCWoCa1VR8u/X9Qmeep5fcqCn0fIn3xSKtHvhMIA06qFl
         FlGHjPgxxrwcUiD0M58bCZU1lQlGhsMHzXN2Fg7QEQFQEpqp6NZoG/KCGrRl0bGxZx2f
         Kg9T0svLQKRCzkx6/64FWOnXcC35Xl0uEvhfr5EiM5TNuk02vmHRbQF4z727aaTG2ftD
         AQ3OE672ZrJPGYSQlyZ65r+leEMr4bO6E7AfFFFgvhEdMbBJVGDuVF5LmH3LmeonHUwS
         5Nzw==
X-Gm-Message-State: AOAM530+RqhTlkWd9z6aEYJqkZ+G2ejO1z2QR4BTv9cP4cLCRIHM3kBE
	vVpy4KX8bqohdLXAHzJ2wJY3Z0HYB8U=
X-Google-Smtp-Source: ABdhPJyDyoY5XZrDWB9CHQZx5I138H+VOexekHVhhaXIYcAmT4LikBU4T6o0LiuB3eNu5Hh5f0BKgg==
X-Received: by 2002:a17:906:7d82:: with SMTP id v2mr15568999ejo.524.1620024085156;
        Sun, 02 May 2021 23:41:25 -0700 (PDT)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id p14sm11529974eds.28.2021.05.02.23.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 23:41:24 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-gplv2][PATCH] elfutils: ignore format-truncation and stringop-overflow issues to fix build with gcc-11
Date: Mon,  3 May 2021 08:41:18 +0200
Message-Id: <20210503064118.1954696-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

* works around:
  http://errors.yoctoproject.org/Errors/Details/580076/
  elfutils-0.148/src/ar.c:1088:56: error: '%-*ld' directive output may be truncated writing between 6 and 10 bytes into a region of size 7 [-Werror=format-truncation=]
   1088 |   snprintf (tmpbuf, sizeof (tmpbuf), ofmt ? "%-*lo" : "%-*ld", bufsize, val);
        |                                                        ^~~~~
  elfutils-0.148/src/ar.c:1088:55: note: directive argument in the range [0, 4294967295]
   1088 |   snprintf (tmpbuf, sizeof (tmpbuf), ofmt ? "%-*lo" : "%-*ld", bufsize, val);
        |                                                       ^~~~~~~

  http://errors.yoctoproject.org/Errors/Details/580078/
  elfutils-0.148/tests/addrcfi.c:90:16: error: 'dwarf_frame_register' accessing 96 bytes in a region of size 64 [-Werror=stringop-overflow=]
     90 |   int result = dwarf_frame_register (stuff->frame, regno, ops_mem, &ops, &nops);
        |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 recipes-devtools/elfutils/elfutils_0.148.bb | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index 1f07a28..654a715 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -61,6 +61,14 @@ inherit autotools gettext
 # but 0.175 has different license, so to be safe don't backport the fix, just ignore the issue
 CFLAGS += "-Wno-error=missing-attributes"
 
+# There is a fix in 0.171 version (commit b10d7eb74064c5906f031cd17c0f82041c6a4ca1)
+# but 0.171 has different license, so to be safe don't backport the fix, just ignore the issue
+CFLAGS += "-Wno-error=format-truncation="
+
+# There is a fix in 0.182 version (commit 5621fe5443da23112170235dd5cac161e5c75e65)
+# but 0.182 has different license, so to be safe don't backport the fix, just ignore the issue
+CFLAGS += "-Wno-error=stringop-overflow="
+
 EXTRA_OECONF = "--program-prefix=eu- --without-lzma"
 EXTRA_OECONF_append_class-native = " --without-bzlib"
 EXTRA_OECONF_append_libc-uclibc = " --enable-uclibc"
-- 
2.30.2

