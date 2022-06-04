Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B3BC43334
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 19:04:42 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web09.13190.1654369479388934927
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DCUrg3ia;
 spf=pass (domain: gmail.com, ip: 209.85.214.181,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id q18so9138537pln.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 12:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=YYPJH9XZSGlZXpbO6gECqjE99O2z8DVO9hVBNuhxkig=;
        b=DCUrg3iaDBp3hEs9XgsI/5ZC0MSw4nCFWt9iOqwiKHq9yLn/p1ySEqTbhPg+ZIaM3S
         znPuSmD5/mDcirQ85eh8RK+aCmxPwsWQOUx+7ggbGVAN3ru31VYj9gvgARX6DzmN1EWm
         Oft1i20gOTdjOUPpVk3K1r6NNEWx/wZvSLcN9Ljo6ECYYPwFJ+nQazIqHgmNUfdogGvG
         0o4VSXylbNyIBLSBFnSgfNkmSMtnJ0ZQ1JIH56RiZEOzAuJNcnwK0DdGqc1dAsE+Cn2Y
         HGI/jFyAR9rqDBkPNAe+3WsI+UBl3vuelbejXTih2uzRjTsT+qVGX3etyIczFZO0Gwqj
         CtGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YYPJH9XZSGlZXpbO6gECqjE99O2z8DVO9hVBNuhxkig=;
        b=PtRfaDHY8h7DEr+mpNv6MXw+3Iw8u78kF9pTMa3j/njKZbMl2LyQGZsd0QtYtUHmIE
         ocgY/E+eKGLZdDyV6nODJbx/NP7R5whu5FJ4SHviCrP5C4/yRDhGc0VT/AeCg144nlt5
         brq9JU64JFDqF50gikXTMzDHD54oahBwXvPZ6KL/nM6R73h+b0YuRj9ZV+BlAlz3HxUB
         7NOxuyHQsOd6tdcKwwu05RT0CQEkDSLOy2DgHQKhifTbTZIRLROuCTlJlarU6bzvD8Dm
         iKdTufC/JeUTMK44bq1sjiNs3QYkj2W/7z7HhJw7FDUlqAuNSXY5pk1W/Tesu6SazwQp
         hx0g==
X-Gm-Message-State: AOAM532RLWskuHx+2tLJiA5RlyXcG2W3lMC6dAQQinAtBzaDDhw1CTl3
	D6HgqmhUVQkNadzIpKxpDrH4OLGi6QY=
X-Google-Smtp-Source: 
 ABdhPJxJJNbYmUjCS3JRIATtHmXk2stqjwL+WbOYs1JLx7tRyzZJ6K+yfQ6CzYYQ2d95HgvBis+8Jw==
X-Received: by 2002:a17:90b:4b4b:b0:1dc:8724:3f75 with SMTP id
 mi11-20020a17090b4b4b00b001dc87243f75mr51632826pjb.178.1654369478472;
        Sat, 04 Jun 2022 12:04:38 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 u1-20020a1709026e0100b0015e8d4eb231sm7633298plk.123.2022.06.04.12.04.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jun 2022 12:04:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/5] chkrootkit: Fix missing includes for musl
Date: Sat,  4 Jun 2022 12:02:28 -0700
Message-Id: <20220604190230.3700475-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220604190230.3700475-1-akuster808@gmail.com>
References: <20220604190230.3700475-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 19:04:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57261

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/rootkits/chkrootkit_0.55.bb  |  3 +-
 .../rootkits/files/musl_fix.patch             | 58 +++++++++++++++++++
 2 files changed, 60 insertions(+), 1 deletion(-)
 create mode 100644 recipes-scanners/rootkits/files/musl_fix.patch

diff --git a/recipes-scanners/rootkits/chkrootkit_0.55.bb b/recipes-scanners/rootkits/chkrootkit_0.55.bb
index 4293aec..fe0e989 100644
--- a/recipes-scanners/rootkits/chkrootkit_0.55.bb
+++ b/recipes-scanners/rootkits/chkrootkit_0.55.bb
@@ -5,7 +5,8 @@ SECTION = "security"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=fdbe53788f7081c63387d8087273f5ff"
 
-SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/c/${BPN}/${BPN}_${PV}.orig.tar.gz"
+SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/c/${BPN}/${BPN}_${PV}.orig.tar.gz \
+           file://musl_fix.patch"
 SRC_URI[sha256sum] = "a81c0286ec449313f953701202a00e81b204fc2cf43e278585a11c12a5e0258b"
 
 inherit autotools-brokensep
diff --git a/recipes-scanners/rootkits/files/musl_fix.patch b/recipes-scanners/rootkits/files/musl_fix.patch
new file mode 100644
index 0000000..a33523b
--- /dev/null
+++ b/recipes-scanners/rootkits/files/musl_fix.patch
@@ -0,0 +1,58 @@
+chkrootkit: Fix missing includes for musl
+
+
+Upstream-Status: Backport
+https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=07737b95af2452c0055e1ed0660590c1487befdb
+https://bugs.gentoo.org/715552
+
+Signed-off-by: Armin Kuster <akuster808@gamil.com>
+
+Index: chkrootkit-0.55/chkdirs.c
+===================================================================
+--- chkrootkit-0.55.orig/chkdirs.c
++++ chkrootkit-0.55/chkdirs.c
+@@ -33,7 +33,7 @@
+ #elif defined(__APPLE__) && defined(__MACH__)
+ #include <sys/syslimits.h>
+ #endif
+-
++#include <limits.h>
+ #include <stdio.h>
+ #include <stdlib.h>
+ #include <sys/types.h>
+Index: chkrootkit-0.55/chklastlog.c
+===================================================================
+--- chkrootkit-0.55.orig/chklastlog.c
++++ chkrootkit-0.55/chklastlog.c
+@@ -41,6 +41,7 @@ int main () { return 0; }
+ #include <stdlib.h>
+ #endif
+ #include <sys/stat.h>
++#include <fcntl.h>
+ #include <unistd.h>
+ #include <string.h>
+ #include <signal.h>
+Index: chkrootkit-0.55/chkproc.c
+===================================================================
+--- chkrootkit-0.55.orig/chkproc.c
++++ chkrootkit-0.55/chkproc.c
+@@ -65,6 +65,7 @@ int main (){ return 0; }
+ #include <string.h>
+ #include <errno.h>
+ #include <sys/types.h>
++#include <fcntl.h>
+ #include <dirent.h>
+ #include <ctype.h>
+ #include <stdlib.h>
+Index: chkrootkit-0.55/chkwtmp.c
+===================================================================
+--- chkrootkit-0.55.orig/chkwtmp.c
++++ chkrootkit-0.55/chkwtmp.c
+@@ -25,6 +25,7 @@ int main () { return 0; }
+ #include <stdio.h>
+ #include <stdlib.h>
+ #include <unistd.h>
++#include <fcntl.h>
+ #include <string.h>
+ #include <utmp.h>
+ #include <time.h>
-- 
2.25.1


