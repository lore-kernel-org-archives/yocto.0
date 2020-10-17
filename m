Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web12.2950.1602957849106586701
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CW9ppRYD;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id p11so2902603pld.5
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=PlrXYNGUHe+GYMInfDl6X5J/fZneZcxmVkS216GBbok=;
        b=CW9ppRYDgQg3Lw+LFdqGa2XA7tC29LUkw81oZt1pmCktpfTiny7CK0wI0wYyFf1H0u
         biYNx4anW99+TtDohIcwTkIAwuGcMc9muJlkg6v7XadQkBaFIi5tPQJ0ct67MPn8oVEO
         ShpdIuT6w3aDz3D+Xp2hm+Z3F5Rm717aJYuUW7knbBPBF/yw01+E9J0Q6KIe43NdPY+h
         sQGWsOQ+I09rZXX5R/uQVWoYdFm/SekKlV8k+NpiQ3M1n7fnLwBNnMPd930SnzYHCRti
         5Q66ODeHtHrtMzvdgT1HBB6G1l0FdrnsbZ2azpewd/00/TOYYo5GUFqikXhiTc6IVeBp
         VvUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=PlrXYNGUHe+GYMInfDl6X5J/fZneZcxmVkS216GBbok=;
        b=SALqoKUwKVqMXoePUV6JdjRLQaGV1t1ublvFHAiFyMLkc9mzV5cn5+rmr5Oj4038Ia
         MfwzNllfo9P9QxhDZAD3Hyx7pNqAOByQ57aW+xk08kvvVB4HZKi+yGQNR3mH2glBoBIq
         BRvs3aZbE/UvXlZx82ngJDI5uVMtulIw86gFd1pCb13RUEj5kWxSpP5eKvKFYbPTXaky
         ktmcHSabyLJn2h1u/gKnWfSjC6JCACP9UJiIEvRPvQOspum/H6HJY45RRFa9JlcblQYK
         Sn/cWAbmSUF+5VEB/4wsdoJEKlr/hMvx6y79Ui5cmrPdzjwp48bUZDDihgWilqdeR8w7
         IV3Q==
X-Gm-Message-State: AOAM532YULC+Zt2NVPk0OhVe3w5u9oYuE27woe5d0zA+qfa+PuSHZZWF
	VFB9KfCYJ25ZYtMBJDPNC8Ahg+Vzm9k=
X-Google-Smtp-Source: ABdhPJxmmrDOKSfRFlmvvtU7jHh59yJSMW3U9d6O6l1SYlws0x09P6myl9D/eE8jgj5mXPEnMVWcYw==
X-Received: by 2002:a17:90b:4204:: with SMTP id iw4mr9775016pjb.175.1602957848479;
        Sat, 17 Oct 2020 11:04:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.04.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:08 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 31/32] apparmor: fix issue with older use of shell in make
Date: Sat, 17 Oct 2020 11:03:28 -0700
Message-Id: <71fb4e16b33b139b5ec1ce38e8cfc5b383efa714.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.4.bb       |  1 +
 ...-fix-failure-on-older-versions-of-Ma.patch | 40 +++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 recipes-mac/AppArmor/files/0001-tests-regression-fix-failure-on-older-versions-of-Ma.patch

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index 6ba1ea8..c1f038f 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -24,6 +24,7 @@ SRC_URI = " \
     file://0001-Makefile.am-suppress-perllocal.pod.patch \
     file://run-ptest \
     file://0001-regression-tests-Don-t-build-syscall_sysctl-if-missi.patch \
+    file://0001-tests-regression-fix-failure-on-older-versions-of-Ma.patch \
     "
 
 SRCREV = "df0ac742f7a1146181d8734d03334494f2015134"
diff --git a/recipes-mac/AppArmor/files/0001-tests-regression-fix-failure-on-older-versions-of-Ma.patch b/recipes-mac/AppArmor/files/0001-tests-regression-fix-failure-on-older-versions-of-Ma.patch
new file mode 100644
index 0000000..a23d889
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-tests-regression-fix-failure-on-older-versions-of-Ma.patch
@@ -0,0 +1,40 @@
+From bf8c4ca570c27cf58e882e03680b40357223e6e7 Mon Sep 17 00:00:00 2001
+From: John Johansen <john.johansen@canonical.com>
+Date: Wed, 30 Sep 2020 13:36:23 -0700
+Subject: [PATCH] tests regression: fix failure on older versions of Make
+
+Older versions of Make will choke on the # character in the $(shell
+expression, treating it as the beginning of a comment. Resulting in
+the following error
+
+make unterminated call to function 'shell': missing ')'.  Stop.
+
+MR: https://gitlab.com/apparmor/apparmor/-/merge_requests/639
+Signed-off-by: John Johansen <john.johansen@canonical.com>
+Acked-by: Steve Beattie <steve.beattie@canonical.com>
+(cherry picked from commit 8cf3534a5b11643c5913e5eb74e491f2f014d792)
+
+Upstream-Status: Backport
+[Minor fixup]
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+---
+ tests/regression/apparmor/Makefile | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/tests/regression/apparmor/Makefile b/tests/regression/apparmor/Makefile
+index c3d0cfb7..1d55547c 100644
+--- a/tests/regression/apparmor/Makefile
++++ b/tests/regression/apparmor/Makefile
+@@ -69,7 +69,8 @@ endif # USE_SYSTEM
+ 
+ CFLAGS += -g -O0 -Wall -Wstrict-prototypes
+ 
+-USE_SYSCTL:=$(shell echo "#include <sys/sysctl.h>" | cpp -dM >/dev/null 2>/dev/null && echo true)
++SYSCTL_INCLUDE="\#include <sys/sysctl.h>"
++USE_SYSCTL:=$(shell echo $(SYSCTL_INCLUDE) | cpp -dM >/dev/null 2>/dev/null && echo true)
+ 
+ 
+ SRC=access.c \
+-- 
+2.17.1
+
-- 
2.17.1

