Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web08.1829.1625425009848233444
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 11:56:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SxPDvl2C;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id t9so16091739pgn.4
        for <yocto@lists.yoctoproject.org>; Sun, 04 Jul 2021 11:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F5YUT7b9coDqosyc9fveUSJj9EpRUTMs9DvfqN8v0zE=;
        b=SxPDvl2CpdXOsi/xX1daBP/EUHTMrcs7Waz0R+P1K4xLjT9AVVHvPSXPRG59DRdrI7
         rXjiwUdUv2Aca2YrvkyCJ3mYtWQF2baD71SLm5XDJoZUQBFEByoqDZXbDl4mCyZmym4h
         XTQiMWPq7jwD8DsVKO9t7fb6ly4Aumbwxap7rg5J8vINNhT3EL8NQMw27W3LOtkoX3b3
         csekq5ghQtSdtMiTDi9EgvpBZOF65pZw0sEDIHridAyH4nEhxZuHYJyN2cOtfR4sSu1y
         yiqCXWcKUfPiKE97NaVjmVR8wMcqVhxb3ATp+3yznQKx8SUbTs96SxXyM5CO986oHZly
         33qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F5YUT7b9coDqosyc9fveUSJj9EpRUTMs9DvfqN8v0zE=;
        b=grqDYVdkOvlz9IhJrTywxBYAirPGWrRSKl5bBNYP+bVMSL6TpagytlKciwh42z/MQ+
         O2dhSCDu3zXBBO6/+mtRDO/AebWE+ZQiRAby8q+tz+BXhnN2Lx9kwDZ19paVS8Eczys1
         kdarGegTNFd7MUk4l784yxtYmwvZiAMSoDWg0jhkHtj5RTVy+opn4SzrQESk0gg2BFgC
         Ht/SmySkqFLksSXheit2ru6mxlRkYQFOMxqaXZQ0K0jpzNI6fVbD2bA/gSzGZYoa+e+l
         dO5gDmOOREme3rNAlnGlauUqroyn6lavz2ZFLu6UeWIzTDt1KeY9qTxZtKwp4+TTEjjE
         0QDw==
X-Gm-Message-State: AOAM530jwYIclEo3rMYAxuKqvlJZurEt+jmGR9JzZZMQ/hCQ7CnWARcA
	uIaOadU1+HRscHb3B8/iZrls8S8/FS3fKg==
X-Google-Smtp-Source: ABdhPJxkNd05ioe4xWek3fQly6bi5dkJQs8Cl/wRpnrZYkzEF5ZIKVqGRtiSqUaoi9IDbxs34akZQg==
X-Received: by 2002:a63:ef44:: with SMTP id c4mr11414661pgk.162.1625425009247;
        Sun, 04 Jul 2021 11:56:49 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::1c2d])
        by smtp.gmail.com with ESMTPSA id i3sm11640673pgc.92.2021.07.04.11.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 11:56:48 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [meta-gplv2] [PATCH] coreutils: Rebase glibc 2.34 patch on top of series
Date: Sun,  4 Jul 2021 11:56:46 -0700
Message-Id: <20210704185646.406736-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This should fix the patch errors due to order of patching last time.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 ...Reorder-includes-for-glibc-2.34-portability.patch | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
index 0d9b5e2..f37cb47 100644
--- a/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
+++ b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
@@ -16,11 +16,9 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  src/sort.c | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)
 
-diff --git a/src/sort.c b/src/sort.c
-index 58ca66a..48b22c8 100644
 --- a/src/sort.c
 +++ b/src/sort.c
-@@ -21,11 +21,11 @@
+@@ -21,12 +21,12 @@
  
     Ørn E. Hansen added NLS support in 1997.  */
  
@@ -28,12 +26,10 @@ index 58ca66a..48b22c8 100644
 +#include <sys/wait.h>
  #include <config.h>
  
+ #include <assert.h>
  #include <getopt.h>
 -#include <sys/types.h>
 -#include <sys/wait.h>
  #include <signal.h>
- #include "system.h"
- #include "argmatch.h"
--- 
-2.32.0
-
+ #if HAVE_WCHAR_H
+ # include <wchar.h>
-- 
2.32.0

