Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web09.1849.1625424766044939350
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 11:52:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmolGay9;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id d12so14703977pfj.2
        for <yocto@lists.yoctoproject.org>; Sun, 04 Jul 2021 11:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1xydbPQH0BHMJRX7HzESfTCip5SltjlVRQWtlLQNshc=;
        b=nmolGay9rikGg78UAzfPzf0kB6ZYqiLbXUrOzgE0khVtbm0KFVR9TE/mBSl9/LuuQX
         4KskzxrDBPRNVeMN0pycmiYph5Q4PXx5uq98Jmd7ucvLuwPBPtvJ2eEVw2qGpoDNXfdl
         v/OgDoPilQAqyhn0g2Gi3nVrfN1paQ2QPi2E4NqQAWCW8ZUzOrK3LY3imxb0M0LH4W9w
         aO4NB7Ps6/p5yatazk3jE6jDo+sKJVaHc+g97MPh00oA/z3ewhOVJ7mrQprVXWHjf5kI
         EFZWO6K4t+9Ku/87y/m9t8yAsWdzER2lzAm+QwV1N2QAW1wlE8HOTndJjqKfL4mM74cf
         RKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1xydbPQH0BHMJRX7HzESfTCip5SltjlVRQWtlLQNshc=;
        b=pjyggN5wGKkuINQjw5/TWu2NoNuGQ4hZR0jQzkozqir0a6PXBIkDW4TCZ3RE5QctWA
         PTDCQg82+pU0dSZ0UJHEqJ6J5x0d3s34bsrebeB6N4ch2GQ83rxqPTC/IocOWNas2ALg
         0LpvQ/UgoXL5sDM5MD/2kOuPflxXDnqhtZFA1vGOPlWStDjP4LYxOZWS490KsnIEgT0S
         UyB3cRHt533rfQdZzH/xdebELJlVx2kpKN9HM/EfP/EiEGmvM3VTH57MYoj3mXQ0H/Fb
         QVZt9WwHNomJVWy0qwcR32+/Hg3LeRLihXhiNfcAkNqSKabfj8qDXBdq7UH0f7+BmaKe
         DgUA==
X-Gm-Message-State: AOAM533C+gnNcNrBeJ4xU2fKEkom5hPdEr5xUJH5tWLXM71/3ZuDCb9X
	X5EJqDYO2HlfeMC9iRBm1MJ8ZD5+RdquRg==
X-Google-Smtp-Source: ABdhPJx98q+RAJ0ui3Z/IaRgblFlPeQMg3nuj8sr3o5UEk0EjIqt1LN9nUwtXIobUfGNVn/agILbHw==
X-Received: by 2002:a62:7e8a:0:b029:2f8:183:8aa2 with SMTP id z132-20020a627e8a0000b02902f801838aa2mr10933954pfc.58.1625424765490;
        Sun, 04 Jul 2021 11:52:45 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::1c2d])
        by smtp.gmail.com with ESMTPSA id y13sm10617913pgp.16.2021.07.04.11.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 11:52:45 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [meta-gplv2] [PATCH v2] coreutils_6.9.bb: Fix build with glibc 2.34
Date: Sun,  4 Jul 2021 11:52:43 -0700
Message-Id: <20210704185243.404621-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
v2: Rebase the patch to respect other patches

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
