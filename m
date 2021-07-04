Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web12.1760.1625424635778481470
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 11:50:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SS77LE00;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id d12so14701236pfj.2
        for <yocto@lists.yoctoproject.org>; Sun, 04 Jul 2021 11:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NKAPznOIviyCjznR9/wju7dzHhFY6EkSn/AJIzzbUX4=;
        b=SS77LE00czY0FHp5BDeHnj/pn2gmDBt8S9bB+x3QGeh6OK7ia2NR+MtlEi0uMxAKmD
         FutYlS3YQwE3UL6UWw+mlbH8kZF1687BiTOEdSKL8cUakm9s6K6fh01LlNepBF2gj0fi
         nbV8AU2VpKmbXWcUImiHuH6Tp3h/emqxFApAcq8SC4Q/0JEHSjBQn9aWRciqNslbpQtN
         Dz8Btl9mePnuGzZW3HRkddAp9bAvEvBWPvzOaTpduxr2zXYkEP3bVyLZlZCLZdcVI+9T
         dLjxbi/Gu/9We8d66D0eMMajQn6b+fsMmyU+fqqh93Znvv2sm01HtQEGEGIQsJlugXaN
         6hpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NKAPznOIviyCjznR9/wju7dzHhFY6EkSn/AJIzzbUX4=;
        b=m8vjzhRLqYSpXyYY8FeT26w4/lpdlnNfI86zE9+du0HhTrt6KRdsqNTSYsCU+mVoId
         BJVbLiBXl6euFdkG30+kCZgOX/ByWcpiNrdzTCjNBoFJY9WyQ2XuYbMNqTR26D75oZXP
         A0Bc55mzTQ9SS+dCmd7EglkWlk9wS0GE7mXzq7jXWrBClPg7UH+2iHhDPWqeM2RNsNg/
         MwInUgg0Ba1jpEw9bZPii1erZHvk8pNpqe2vPRFY9AONU91RuvYIxSgYztKZIBYkKWzr
         bB4bR+HSECdz9CLZmVewBNlOtwa7tJ+iq8iDI/IWfevVWYnmFg+j9R1JXmRJJXM9Fpfv
         agqg==
X-Gm-Message-State: AOAM531DRW26vltWqt9FczzYd3HIf7Uofj5z8tHJxXNLWUaOPqg0bvd0
	tQ7EgMus5aimqGshu6EhhHyoBR2QTPngqA==
X-Google-Smtp-Source: ABdhPJzD3lEp3cHYNCp3rjd3jj8Xqq7A6Gbmt2PqeKDiX27NHz/iiMUkwMDZSV7gFWFEUtYWXzjHzw==
X-Received: by 2002:aa7:8c41:0:b029:319:f69c:93b4 with SMTP id e1-20020aa78c410000b0290319f69c93b4mr8426304pfd.11.1625424635066;
        Sun, 04 Jul 2021 11:50:35 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::1c2d])
        by smtp.gmail.com with ESMTPSA id a15sm10155181pff.128.2021.07.04.11.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 11:50:34 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [meta-gplv2] [PATCH] coreutils_6.9.bb: Fix build with glibc 2.34
Date: Sun,  4 Jul 2021 11:50:31 -0700
Message-Id: <20210704185031.404499-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-includes-for-glibc-2.34-portability.patch | 35 +++++++++++++++++++
 recipes-core/coreutils/coreutils_6.9.bb       |  1 +
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch

diff --git a/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
new file mode 100644
index 0000000..f37cb47
--- /dev/null
+++ b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
@@ -0,0 +1,35 @@
+From e241a55767c4eaac7d14c412d880037cb6d2ee33 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 29 Jun 2021 22:43:16 -0700
+Subject: [PATCH] sort.c: Reorder includes for glibc 2.34 portability
+
+With glibc 2.34 config.h will include stdlib.h and that would disable
+sys/wait.h to include needed definitions from bits/waitflags.h since
+_STDLIB_H would have been defined already and sys/wait.h would think
+these paths are included already, this is fixed with newer gnulib and
+configure so this is to get this old version to compile with latest
+glibc headers
+
+Upstream-Status: Inappropriate [OE-Specific]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ src/sort.c | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+--- a/src/sort.c
++++ b/src/sort.c
+@@ -21,12 +21,12 @@
+ 
+    Ørn E. Hansen added NLS support in 1997.  */
+ 
++#include <sys/types.h>
++#include <sys/wait.h>
+ #include <config.h>
+ 
+ #include <assert.h>
+ #include <getopt.h>
+-#include <sys/types.h>
+-#include <sys/wait.h>
+ #include <signal.h>
+ #if HAVE_WCHAR_H
+ # include <wchar.h>
diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
index 42b4f3c..69e5489 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -27,6 +27,7 @@ SRC_URI = "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
            file://no-man.patch \
            file://build-don-t-need-charset.alias-when-building-for-mus.patch \
            file://no-su.patch \
+           file://0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch \
            "
 
 SRC_URI[md5sum] = "c9607d8495f16e98906e7ed2d9751a06"
-- 
2.32.0

