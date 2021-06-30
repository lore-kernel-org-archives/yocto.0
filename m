Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web09.2135.1625032229765942149
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jun 2021 22:50:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h3xEjN+H;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id 17so1178783pfz.4
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jun 2021 22:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dGf6efZ0MAGRrgRRN6N+pBVbr9vdY28D3nprueXOtjM=;
        b=h3xEjN+HqV9MPLzJGzENHWZW4uQsRvoBM1OUHIumrffF84JUeFuPcz19treUGZ3buM
         pPGlRR8Hc8S+qK59XUgGayLj54mMR8FevOde/h4df4yAE1ddyZohIeEYG4yYtZvfmw8y
         HXc8VSidoKvLWR5BQdurdsWMv4om75hTB0EZjz961KwEhcgkxM0M1KJ7ilLWim1a+/Fs
         xQdXKEcGQLVOzfKRcxLO+aqdVs0vZoUYms03PaOgk6eq3WWFutYLJbR8EkzNJbOOBBv3
         VY3bs4m2MqLU9GefPXq3g+7hKaWm0418r3zGAErd+/5Pz8DsUo3zHOc7YoYPfVMFajiz
         l1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dGf6efZ0MAGRrgRRN6N+pBVbr9vdY28D3nprueXOtjM=;
        b=CHaZ4C8qQCJ63Z5MIoI/f7UtZA+jN9DhfRnVsvD7OiLKiYl3uHnQguz3W0Xt+8cu9U
         ILiAA20udjySCj+9OYYXm3MS0wrBQUJ3MNosmnvaSdaT/oSjVIi7DIBb2rU6qQru2yC9
         tkiQerYyuBQEvC+TO1o8Cm+zot7t8YZmHxkafJd6EgDc3JYHL1zEdj9vUd8dp3XTqZU9
         MQkAzVluaj2Kf+LtzRgFZsMY1XkM/ka5bhqg4nI7Bx9bPz1SkttR3aClj+F1T1IFlIFk
         5XqEt9fowadsEfpG6N3lUPxWYLHGn94xBIyxWX+w0czQfq9H8qbfke+KhHtCLtNyBoUx
         eWPQ==
X-Gm-Message-State: AOAM532RmUV80w5LhT79I1A2GUAyImnUTz1uxO2/7JAmEpVh3iy5Zuos
	4KLLMPqM8Cv4RLY2FozHg0EaLBCChbWBaQ==
X-Google-Smtp-Source: ABdhPJxPpQn6Jy2C7do+oh/k8fC6wm5sBa6tdNuHNco0axK+vxVWbuxRACNmHpIMMEAC6mSyVfKC1Q==
X-Received: by 2002:a63:25c5:: with SMTP id l188mr32335367pgl.283.1625032228992;
        Tue, 29 Jun 2021 22:50:28 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::b522])
        by smtp.gmail.com with ESMTPSA id z9sm20358923pfc.101.2021.06.29.22.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 22:50:28 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [meta-gplv2] [PATCH] coreutils_6.9.bb: Fix build with glibc 2.34
Date: Tue, 29 Jun 2021 22:50:25 -0700
Message-Id: <20210630055025.465215-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-includes-for-glibc-2.34-portability.patch | 39 +++++++++++++++++++
 recipes-core/coreutils/coreutils_6.9.bb       |  1 +
 2 files changed, 40 insertions(+)
 create mode 100644 recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch

diff --git a/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
new file mode 100644
index 0000000..0d9b5e2
--- /dev/null
+++ b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
@@ -0,0 +1,39 @@
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
+diff --git a/src/sort.c b/src/sort.c
+index 58ca66a..48b22c8 100644
+--- a/src/sort.c
++++ b/src/sort.c
+@@ -21,11 +21,11 @@
+ 
+    Ørn E. Hansen added NLS support in 1997.  */
+ 
++#include <sys/types.h>
++#include <sys/wait.h>
+ #include <config.h>
+ 
+ #include <getopt.h>
+-#include <sys/types.h>
+-#include <sys/wait.h>
+ #include <signal.h>
+ #include "system.h"
+ #include "argmatch.h"
+-- 
+2.32.0
+
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

