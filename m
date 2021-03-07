Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web08.22547.1615131323908776257
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 07:35:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rj7RAsch;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id f2-20020a17090a4a82b02900c67bf8dc69so1624200pjh.1
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 07:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=9OBPLUz7KtAJMMpHLVJrtDDvZ9dVe2DtKJq4WuCO2CQ=;
        b=Rj7RAschcELVTQBBUKgZd9hQJzLImfLbSi7uh5Y02RmfVVJcLeOnzZ/WStR4LYYbzt
         XnBl99tPILeSRAqnPShFd3S55yTvexOE3PHp2B68YyL96sSV2O29EktppGjNksQsWCil
         iKB/fDXhwyLn1+4oRdb1504fSfvGCByUMNWQDlUwsjOw689i+AW5k7JtsNPN0LzWGHmO
         ZiSLEIPMDMbHaXbos1B8odebPZ7S6YYB6xnqayGzn6Uo2PbQg7/+tMFnTii2DsZFex6d
         R/MFl0zGX14n3yTYtpX2ZJkcoEJb/LjJgCoqxVwwKvjyHVOc48qkBEUVQa5Qlm9Of8gH
         Sugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=9OBPLUz7KtAJMMpHLVJrtDDvZ9dVe2DtKJq4WuCO2CQ=;
        b=SgOJmQS6u3dqgckcWgIn1+U3fQKmxZfxjGzD0kOdkGR6pc/umvDtgExBMmu7BQbBwA
         rep8WaYf7Iitd65XTbNeFjBcX7R9JrVi6TtO0/7RG8zVwh6o2A7g8fTkmqcRxjEk9Niq
         N1A6Buyr3TvnrQ36q1/Wrwv3jRSI8pB03DG2XgWFSRRyeqmn9LhIj5MKGTmDeHVhetMa
         JuWAJpxL+yvtoAQpJD1FGaKwGgRl+WLpojrzl7Ce3mVldUSPy5bikXAZEroRKW4yE0qM
         62+Swnpk4Acy20cfBLAeXRBGMIDi3Q7JK3vOa/JKr6vYbKjtmrUZe6rjKi5PINzNoARJ
         yqXg==
X-Gm-Message-State: AOAM531atBPJbTsRD/1lyye6uRNmo2DnRQXOlcazQa3zOR0D8Humpqdq
	Lgco31ZLaKNY51GY0Ek9xjBUqIy0+wo=
X-Google-Smtp-Source: ABdhPJxKgs92nmV7BiHya4ZvaHhScPub+ppsVwvS9f46ObaPQqPwbzwWWGUsyegiuPmke9dHFBANMw==
X-Received: by 2002:a17:90a:9303:: with SMTP id p3mr19448709pjo.201.1615131323345;
        Sun, 07 Mar 2021 07:35:23 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id w26sm4745997pfn.33.2021.03.07.07.35.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 07:35:23 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 5/8] tpm2-tss: update to 3.0.3
Date: Sun,  7 Mar 2021 07:35:14 -0800
Message-Id: <20210307153517.5761-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210307153517.5761-1-akuster808@gmail.com>
References: <20210307153517.5761-1-akuster808@gmail.com>

include automate 2.70 fix

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...fix-compatibility-with-autoconf-2.70.patch | 48 +++++++++++++++++++
 .../{tpm2-tss_2.4.3.bb => tpm2-tss_3.0.3.bb}  |  6 ++-
 2 files changed, 52 insertions(+), 2 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_2.4.3.bb => tpm2-tss_3.0.3.bb} (91%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch
new file mode 100644
index 0000000..cae2e76
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch
@@ -0,0 +1,48 @@
+From 03cca78d24d716eec792f86f5b0bc69886fad981 Mon Sep 17 00:00:00 2001
+From: Patrick McCarty <patrick.mccarty@intel.com>
+Date: Fri, 18 Dec 2020 01:54:05 +0000
+Subject: [PATCH] configure.ac: fix compatibility with autoconf 2.70
+
+With autoconf 2.70, not quoting the second argument to one of the AS_IF
+macro expansions leads to generation of invalid shell code affecting the
+first nested ERROR_IF_NO_PROG expansion.
+
+The invalid shell code leads to an error resembling:
+
+  ./configure: line 18826: syntax error near unexpected token `newline'
+  ./configure: line 18826: `    '''
+
+Fix the issue by quoting the second argument to the affected AS_IF,
+similar to the quoting found elsewhere in configure.ac.
+
+Signed-off-by: Patrick McCarty <patrick.mccarty@intel.com>
+
+Upstream-Status: Backport
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ configure.ac | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+Index: tpm2-tss-3.0.3/configure.ac
+===================================================================
+--- tpm2-tss-3.0.3.orig/configure.ac
++++ tpm2-tss-3.0.3/configure.ac
+@@ -279,7 +279,7 @@ AC_ARG_ENABLE([integration],
+         [build and execute integration tests])],,
+     [enable_integration=no])
+ AS_IF([test "x$enable_integration" = "xyes"],
+-     AS_IF([test "$HOSTOS" = "Linux"],
++     [AS_IF([test "$HOSTOS" = "Linux"],
+            [ERROR_IF_NO_PROG([ss])],
+            [ERROR_IF_NO_PROG([sockstat])])
+        ERROR_IF_NO_PROG([echo])
+@@ -328,7 +328,7 @@ AS_IF([test "x$enable_integration" = "xy
+              [AC_MSG_ERROR([No simulator executable found in PATH for testing TCTI.])])
+        AC_SUBST([INTEGRATION_TCTI], [$integration_tcti])
+        AC_SUBST([INTEGRATION_ARGS], [$integration_args])
+-       AC_SUBST([ENABLE_INTEGRATION], [$enable_integration]))
++       AC_SUBST([ENABLE_INTEGRATION], [$enable_integration])])
+ AM_CONDITIONAL([ENABLE_INTEGRATION],[test "x$enable_integration" = "xyes"])
+ #
+ # sanitizer compiler flags
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.3.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
similarity index 91%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.3.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
index 78be513..b2486e5 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
@@ -6,8 +6,10 @@ SECTION = "tpm"
 
 DEPENDS = "autoconf-archive-native libgcrypt openssl"
 
-SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
-SRC_URI[sha256sum] = "e294677f8993234d0adfa191a5cbf9c5b83cc60c724c233e3d631c26712abea0"
+SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz \
+           file://0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch \
+          "
+SRC_URI[sha256sum] = "78392be7309baf47f51b122f566ac915fd4d1760ea78571cba2e1484f9b5be17"
 
 inherit autotools pkgconfig systemd extrausers
 
-- 
2.17.1

