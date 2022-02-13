Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C9EC433F5
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 21:39:39 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web08.26711.1644788378122260678
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 13:39:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=A4QKGDGC;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id
 d9-20020a17090a498900b001b8bb1d00e7so13932837pjh.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 13:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yDlb90bGM633bhWTqabHQmFl5xEfqIFzYQ0cVaObMmg=;
        b=A4QKGDGC1VnD/OYckZWZF10SXqkOORhZCygWLEDi4VylKZyE7G5SIMOlHhJfzRq/PE
         HoIShXe0I/kQg2slRA4kGzg5UPDs2qP1lXUo5y+245NR6/72PiEsfxSSXr2pbsCDguvI
         OZ5U6aIC6QePx6Ozkz+SeTnNAcnHh24bPQ1HTnKwVkYn4tLv402yxNuqT6GN5AqRyMSL
         UXuONTvdUYJxvNSPE6wdy0qNG4RNPqN4eUlz53k9aLcrApqeGleXND6vju5OyFj0oycB
         NRrN3JAd+P4lqfa6MAzel5rH6SOH8oWHgrJHUvYWHhHZO7yMQZpyFHp4m0I3bNjTrS+X
         i5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yDlb90bGM633bhWTqabHQmFl5xEfqIFzYQ0cVaObMmg=;
        b=Bz0+haQkGDjnK6bDjGU+sB6Uw5GpJb2VH0ZeQr5pPLmDT2Divh+h1Af26fVZt/tZiv
         mfGqqYIHeSpgWx4P/sFjfhBHy5MP7hxy++rva0SAKhgPWys/UG4LdHYh70r+iPmGjLGg
         832VMrZGylgg1Nzmps0lCbEsPLP2Y/ebYQo3kxkB/JQ8af1Ogw1N6I7S/IYdYnfRW7oj
         OUdON+YXPk9d10HUCToJnirgU5xQNBMB8zZRA8T/uQUDwopX9s5eXVzvrDntjq9q0VL3
         PZ3qPnma5zcmiFPayGE1jKjIYssO8R+O33ssan0b2oH0uuiqLPn+Fs1ecjEckEiZWxXX
         66oA==
X-Gm-Message-State: AOAM531u6lU7wEWXWFJ/AE9+v33X9SGGpIpRcGqn5gKRDA6nDOyw3PrT
	cEGbxu8t6gvZ1xaZH/tw56Ijshmk9hc=
X-Google-Smtp-Source: 
 ABdhPJzrF92tlHcAt8vKf/Y3AlEO0uJx0IX11iJcH4nQww8xztdYihN3R5Ry0Ov20j7w3FdK1Q/+zA==
X-Received: by 2002:a17:902:b190:: with SMTP id
 s16mr11474654plr.119.1644788377078;
        Sun, 13 Feb 2022 13:39:37 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:27b9:2010:60db:8094])
        by smtp.gmail.com with ESMTPSA id
 x14sm5701995pgc.60.2022.02.13.13.39.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 13:39:36 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] tpm2-tss: update to 3.1.0
Date: Sun, 13 Feb 2022 13:39:34 -0800
Message-Id: <20220213213935.4026528-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 21:39:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56176

Drop 001-configure.ac-fix-compatibility-with-autoconf-2.70.patch which is included in update.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...fix-compatibility-with-autoconf-2.70.patch | 48 -------------------
 .../tpm2-tss/tpm2-tss/fixup_hosttools.patch   | 26 ++++++++++
 .../{tpm2-tss_3.0.3.bb => tpm2-tss_3.1.0.bb}  | 16 +++++--
 3 files changed, 38 insertions(+), 52 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_3.0.3.bb => tpm2-tss_3.1.0.bb} (88%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch
deleted file mode 100644
index cae2e76..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From 03cca78d24d716eec792f86f5b0bc69886fad981 Mon Sep 17 00:00:00 2001
-From: Patrick McCarty <patrick.mccarty@intel.com>
-Date: Fri, 18 Dec 2020 01:54:05 +0000
-Subject: [PATCH] configure.ac: fix compatibility with autoconf 2.70
-
-With autoconf 2.70, not quoting the second argument to one of the AS_IF
-macro expansions leads to generation of invalid shell code affecting the
-first nested ERROR_IF_NO_PROG expansion.
-
-The invalid shell code leads to an error resembling:
-
-  ./configure: line 18826: syntax error near unexpected token `newline'
-  ./configure: line 18826: `    '''
-
-Fix the issue by quoting the second argument to the affected AS_IF,
-similar to the quoting found elsewhere in configure.ac.
-
-Signed-off-by: Patrick McCarty <patrick.mccarty@intel.com>
-
-Upstream-Status: Backport
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- configure.ac | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-Index: tpm2-tss-3.0.3/configure.ac
-===================================================================
---- tpm2-tss-3.0.3.orig/configure.ac
-+++ tpm2-tss-3.0.3/configure.ac
-@@ -279,7 +279,7 @@ AC_ARG_ENABLE([integration],
-         [build and execute integration tests])],,
-     [enable_integration=no])
- AS_IF([test "x$enable_integration" = "xyes"],
--     AS_IF([test "$HOSTOS" = "Linux"],
-+     [AS_IF([test "$HOSTOS" = "Linux"],
-            [ERROR_IF_NO_PROG([ss])],
-            [ERROR_IF_NO_PROG([sockstat])])
-        ERROR_IF_NO_PROG([echo])
-@@ -328,7 +328,7 @@ AS_IF([test "x$enable_integration" = "xy
-              [AC_MSG_ERROR([No simulator executable found in PATH for testing TCTI.])])
-        AC_SUBST([INTEGRATION_TCTI], [$integration_tcti])
-        AC_SUBST([INTEGRATION_ARGS], [$integration_args])
--       AC_SUBST([ENABLE_INTEGRATION], [$enable_integration]))
-+       AC_SUBST([ENABLE_INTEGRATION], [$enable_integration])])
- AM_CONDITIONAL([ENABLE_INTEGRATION],[test "x$enable_integration" = "xyes"])
- #
- # sanitizer compiler flags
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
new file mode 100644
index 0000000..b5579e1
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fixup_hosttools.patch
@@ -0,0 +1,26 @@
+revert configure: add checks for all tools used by make install
+
+Not appropriate for cross build env.
+
+Upstream-Status: OE [inappropriate]
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: tpm2-tss-3.1.0/configure.ac
+===================================================================
+--- tpm2-tss-3.1.0.orig/configure.ac
++++ tpm2-tss-3.1.0/configure.ac
+@@ -471,14 +471,6 @@ AM_CONDITIONAL(SYSD_SYSUSERS, test "x$sy
+ AC_CHECK_PROG(systemd_tmpfiles, systemd-tmpfiles, yes)
+ AM_CONDITIONAL(SYSD_TMPFILES, test "x$systemd_tmpfiles" = "xyes")
+ # Check all tools used by make install
+-AS_IF([test "$HOSTOS" = "Linux"],
+-      [ERROR_IF_NO_PROG([groupadd])
+-       ERROR_IF_NO_PROG([useradd])
+-       ERROR_IF_NO_PROG([id])
+-       ERROR_IF_NO_PROG([chown])
+-       ERROR_IF_NO_PROG([chmod])
+-       ERROR_IF_NO_PROG([mkdir])
+-       ERROR_IF_NO_PROG([setfacl])])
+ 
+ AC_SUBST([PATH])
+ 
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.1.0.bb
similarity index 88%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.1.0.bb
index 1a36a5b..e0f2d09 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.1.0.bb
@@ -7,9 +7,10 @@ SECTION = "tpm"
 DEPENDS = "autoconf-archive-native libgcrypt openssl"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz \
-           file://0001-configure.ac-fix-compatibility-with-autoconf-2.70.patch \
-          "
-SRC_URI[sha256sum] = "78392be7309baf47f51b122f566ac915fd4d1760ea78571cba2e1484f9b5be17"
+           file://fixup_hosttools.patch \
+           "
+
+SRC_URI[sha256sum] = "8900a6603f74310b749b65f23c3461cde6e2a23a5f61058b21004c25f9cf19e8"
 
 inherit autotools pkgconfig systemd extrausers
 
@@ -18,14 +19,19 @@ PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
 PACKAGECONFIG[fapi] = "--enable-fapi,--disable-fapi,curl json-c "
 
 EXTRA_OECONF += "--enable-static --with-udevrulesdir=${nonarch_base_libdir}/udev/rules.d/"
+EXTRA_OECONF += "--runstatedir=/run"
 EXTRA_OECONF:remove = " --disable-static"
 
-
 EXTRA_USERS_PARAMS = "\
 	useradd -p '' tss; \
 	groupadd tss; \
 	"
 
+do_install:append() {
+    # Remove /run as it is created on startup
+    rm -rf ${D}/run
+}
+
 PROVIDES = "${PACKAGES}"
 PACKAGES = " \
     ${PN} \
@@ -75,6 +81,8 @@ FILES:libtss2-staticdev = "${libdir}/libtss*a"
 
 FILES:${PN} = "\
     ${libdir}/udev \
+    /var/lib/tpm2-tss \
+    /var/run \
     ${nonarch_base_libdir}/udev \
     ${sysconfdir}/tmpfiles.d \
     ${sysconfdir}/tpm2-tss \
-- 
2.25.1


