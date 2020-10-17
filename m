Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.2305.1602955881447392809
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 10:31:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8lV5Hfu;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id a200so3378823pfa.10
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 10:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=PlrXYNGUHe+GYMInfDl6X5J/fZneZcxmVkS216GBbok=;
        b=l8lV5Hfu72HSVFCUW4NTe6zBK883orRxYEJhHPYf0O03r72gd/l9X6kN77QtLdHdaY
         y8ijFPXC1Y4z3u0swcGnjlnwZGNcTb6OG5fq3teCSDbLsS1pfvbC8FCPRWtMXCy9ylln
         IsnPh90o1Ka8bqyTBoMQ3NcZF8CDW0dAEDSflQe0b2mOkauA/EuS7eOrEz/bWeOvB47X
         EQNc4vlDTKxVFL2ccazEulEwDyOjIrMy41cdRdWqqvev/p5KRxHyU09o6hHHn1cToGbe
         rPXTIr9bFrJ2C2UATDQVgKVIucwRzGgoj2KVhHyW33mP6uCcnqe98ZOr2RHlHt3UHSqb
         Qpnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=PlrXYNGUHe+GYMInfDl6X5J/fZneZcxmVkS216GBbok=;
        b=flqTXeCgQbETX6HfJlcNlVAoozzcSmykDvU8+hAetq5Cuq7n/tnZbIIHFr46YJk81Q
         9eETLiDtqcOLCV+BxxBkUW0BEQlgnsyJzhPkKHbjiPRsqKbZptQAUEs7+cs9nn1ftGZ3
         gxIP2DJWsYzEUyOIU45tWiKSdIocdns8JtdK4x6yB35uIx/cER4XL9TOBL8AsN8/NDhv
         TTGs1Duj7n1dXE4fvOTNQq5mQ9+hGyrciBdMblfcz1BNnXWxCC/STTFM1i2Zw6pF7FHO
         n5prtH1kqJiYN2/AD8Q0VwsUKRtkI2MLIeV5f/wvLtSpsACrKE1AOSmLYS/sOabn21T4
         bWaQ==
X-Gm-Message-State: AOAM5338N7+L2MHB720QZznWVuRvGD38mO+Lo1+rkG3uGYoz57D+Y+W2
	ei3hY5n5EUrPOLxkr0lmqTHMiXgmIfo=
X-Google-Smtp-Source: ABdhPJylkL0zJET4eXI/UGrLim9gQS8KP1GhQYMI0TYzR4wgCyfSLuuIf6vI6otrQ7rb9thmJpUWNw==
X-Received: by 2002:a63:454f:: with SMTP id u15mr7795058pgk.198.1602955880491;
        Sat, 17 Oct 2020 10:31:20 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id q2sm1176849pfb.106.2020.10.17.10.31.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 10:31:20 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH 1/2] apparmor: fix issue with older use of shell in make
Date: Sat, 17 Oct 2020 10:31:17 -0700
Message-Id: <20201017173118.21919-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

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

