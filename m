Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web11.1784.1574963266367814319
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 09:47:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z68wBUzw;
 spf=pass (domain: gmail.com, ip: 209.85.128.67, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f67.google.com with SMTP id l17so11804366wmh.0
        for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2019 09:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2m6TlX6pL6OzGhuE0UAPPHnifJcu5WBV1y5G+vaZx6s=;
        b=Z68wBUzwWz2ATohgp7VfNYM4ebSIVazaxIbMp5NJxsYEIoSYgm+zOQZfRlnQQFDRJL
         hEWEJ6qUcfzsiLcx1i28qOlhpyl/wydkqQtjWDXQDyvGupwFzzMcpOG/WSLknYbLa4us
         IvqpaW0syFYCUGky6/nMHBy2a+ZkXRAsDejJH3ROL04eX53m8ePMZO5QZV3HhYsdo3zw
         //7jMsV9X7Lgj+91JUMW6yoNNQy56S1Bjk/DlzXUfxbL4Eg5cxCOiSMDs+kOpOSYaicD
         of9rjI9XDPFsKERwpizTuv6l/hROFor1LbqIvFoE1rnR/g2guCaZHCx//Pk8TKsyETIk
         Z+mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2m6TlX6pL6OzGhuE0UAPPHnifJcu5WBV1y5G+vaZx6s=;
        b=KNIGEYn+EYilQfuvVsOLTT5YdfUJA8dvtgI1WSFsfdQ3qAy7DktsgOlMZZyyKrtSOi
         B2ZDpfx+ghe8r7zxPC2apj2qmj5oL2HNZg3Gn6k1XGCnqP0FKdhqHYXvcLWPo/HaFoLQ
         sTYGDecVAPBtH/fx+mv9MFqJAEwqA9WqE+PS3nsOPZQhyILDDmFBSFr1LEryOFQHPq8Z
         00gxf5e3WL5q60OErCjYB0zeyi+SjDltE8EB9eUbEuHdOlFyS952YPsXYXWyCqVlOfwA
         FDyXGsrYHYpt51VfOp2ppEUp5qt8pgwJ/kyuUiNr8osxB03opxNxNitPSffoH01U7mTf
         5cHg==
X-Gm-Message-State: APjAAAXu2LikUTVIYsefb+tAd6dciwseUEXvuLdS3lnZntSPZc2a3DrL
	EUqcEcpJxdtobFwwOhE/Zqxtd7hz
X-Google-Smtp-Source: APXvYqyUc1SdXdG2sxoRPGlHjSEphRMtKSCs7dA7xEHWjeT0jUWeKV0x1YwgBLU4YPHUa7Kq0ApdwQ==
X-Received: by 2002:a1c:750f:: with SMTP id o15mr10230185wmc.161.1574963264476;
        Thu, 28 Nov 2019 09:47:44 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from alexander-box.rd.corpintra.net ([141.113.66.202])
        by smtp.gmail.com with ESMTPSA id u14sm24506727wrm.51.2019.11.28.09.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2019 09:47:44 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [meta-mingw][PATCH] gettext: adapt for version 0.20
Date: Thu, 28 Nov 2019 18:47:39 +0100
Message-Id: <20191128174739.101631-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1

Drop backported patch (new gettext includes the updates).

Drop version from the .bbappend (hopefully no version-specific
tweaks will be needed going forward).

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 .../fix-gl_cv_prog_as_underscore-test.patch   | 67 -------------------
 ...ext_0.19.%.bbappend => gettext_%.bbappend} |  1 -
 2 files changed, 68 deletions(-)
 delete mode 100644 recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
 rename recipes-core/gettext/{gettext_0.19.%.bbappend => gettext_%.bbappend} (87%)

diff --git a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch b/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
deleted file mode 100644
index 636789f..0000000
--- a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
+++ /dev/null
@@ -1,67 +0,0 @@
-Backport gnulib fix for mingw into gettext's included version of gnulib
-
-http://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=68b6adebef05670a312fb92b05e7bd089d2ed43a
-
-Upstream-Status: Backport
-Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
-
---- a/gettext-runtime/gnulib-m4/asm-underscore.m4
-+++ b/gettext-runtime/gnulib-m4/asm-underscore.m4
-@@ -27,11 +27,11 @@
- #endif
- int foo(void) { return 0; }
- EOF
-      # Look for the assembly language name in the .s file.
-      AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt conftest.c) >/dev/null 2>&1
--     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
-+     if LC_ALL=C grep -E '(^|[[^a-zA-Z0-9_]])_foo([[^a-zA-Z0-9_]]|$)' conftest.$gl_asmext >/dev/null; then
-        gl_cv_prog_as_underscore=yes
-      else
-        gl_cv_prog_as_underscore=no
-      fi
-      rm -f conftest*
---- a/gettext-runtime/configure
-+++ b/gettext-runtime/configure
-@@ -24601,11 +24601,11 @@
-   { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
-   (eval $ac_try) 2>&5
-   ac_status=$?
-   $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
-   test $ac_status = 0; }; } >/dev/null 2>&1
--     if LC_ALL=C grep -E '(^|^a-zA-Z0-9_)_foo(^a-zA-Z0-9_|$)' conftest.$gl_asmext >/dev/null; then
-+     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
-        gl_cv_prog_as_underscore=yes
-      else
-        gl_cv_prog_as_underscore=no
-      fi
-      rm -f conftest*
---- a/gettext-tools/gnulib-m4/asm-underscore.m4
-+++ b/gettext-tools/gnulib-m4/asm-underscore.m4
-@@ -27,11 +27,11 @@
- #endif
- int foo(void) { return 0; }
- EOF
-      # Look for the assembly language name in the .s file.
-      AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt conftest.c) >/dev/null 2>&1
--     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
-+     if LC_ALL=C grep -E '(^|[[^a-zA-Z0-9_]])_foo([[^a-zA-Z0-9_]]|$)' conftest.$gl_asmext >/dev/null; then
-        gl_cv_prog_as_underscore=yes
-      else
-        gl_cv_prog_as_underscore=no
-      fi
-      rm -f conftest*
---- a/gettext-tools/configure
-+++ b/gettext-tools/configure
-@@ -32284,11 +32284,11 @@
-   { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
-   (eval $ac_try) 2>&5
-   ac_status=$?
-   $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
-   test $ac_status = 0; }; } >/dev/null 2>&1
--     if LC_ALL=C grep -E '(^|^a-zA-Z0-9_)_foo(^a-zA-Z0-9_|$)' conftest.$gl_asmext >/dev/null; then
-+     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
-        gl_cv_prog_as_underscore=yes
-      else
-        gl_cv_prog_as_underscore=no
-      fi
-      rm -f conftest*
diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_%.bbappend
similarity index 87%
rename from recipes-core/gettext/gettext_0.19.%.bbappend
rename to recipes-core/gettext/gettext_%.bbappend
index 21749f3..d518698 100644
--- a/recipes-core/gettext/gettext_0.19.%.bbappend
+++ b/recipes-core/gettext/gettext_%.bbappend
@@ -2,7 +2,6 @@ EXTRA_OECONF_append_mingw32 = " --enable-static"
 
 FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
 SRC_URI_append_mingw32 = " \
-		file://fix-gl_cv_prog_as_underscore-test.patch \
 		"
 
 FILES_libgettextlib_mingw32 = "${bindir}/libgettextlib-*.dll"
-- 
2.17.1

