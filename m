Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web11.6005.1602739601262525490
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Oct 2020 22:26:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ki4chfWB;
 spf=pass (domain: gmail.com, ip: 209.85.210.54, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f54.google.com with SMTP id s66so1864458otb.2
        for <yocto@lists.yoctoproject.org>; Wed, 14 Oct 2020 22:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=p8GU6ZeaR/ix/ZJdqefGvBp36ZUaIXjL56hHx6cXaNc=;
        b=ki4chfWBdQKmXFtdR/mZngg4SA9tGBKsS7FdRx4ni49kigiZUGkN1Xj3J7JTu5DCFj
         uJYyHLImB2wPg5rgtMH3O/5gkKUM5mzCMDCUvC3wv4FhbHoFdejxYMpdaWKbvDUYzS1B
         GTHenHXII2XgQHAx8Op1c3PFy9YijJZGnJpYVO0VJ7qCk5+O6S8QXuPsZxj7LuPduK7W
         sciowYL2o3SMvlUdg0CPhin6Hmd2Op9tcKoLyh3PxH2kqyUM5DoQD3z/mR/ynIgTwzYG
         kap5dOAwvlozUhlAuFAIu6Pj/BPHuc7sZ01ItcAjBpRk6lubhTW1GcjSP/SXocg5kcrO
         4dfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=p8GU6ZeaR/ix/ZJdqefGvBp36ZUaIXjL56hHx6cXaNc=;
        b=RenhUYQHatg1AfmZrXhPMARpHbCgkPacW+c+O9q86hxCpnp+WcvepMvHjttbz5QPmA
         TrcxQRw5Q3+nK1uNITaAsYLkV8ttGDJS6khRU/77VcGXYLW3hn0n4sB/+LMuQLjv4cvJ
         IHCzM8Ma/pkualLmUNx2liBS2JyImSe30Zyqeax/zFOX+0aFwSQM2bEpQOJJDdLdGlxL
         z/6JELrtGYNf0PK7QSObymDYOqtH7XTqYsLjqpzOcl9fyUu45WJ6eHayYuNVB7pJdO4E
         tqrASCwYwE0swuVdduyR325viiED5RflqZ+iLouTZDC2ZZ5kEv1Gk0lJCODnZjpZjwkN
         52iw==
X-Gm-Message-State: AOAM532RpAOtnhHk3x478DUfS4GNhkcv4tCr5QWxTS4+57D/COsBb6I0
	jHF70tePp4KBOKRFcZYqkAX6oTuuOkA=
X-Google-Smtp-Source: ABdhPJzcpHTDFUG7OtbqBjMOfhRvM7X4GXtlF4gg9B2bSKhVhjSIe3ddi7BTApqJxPrMqmCJ8hU/Wg==
X-Received: by 2002:a9d:6f9a:: with SMTP id h26mr1532684otq.79.1602739600313;
        Wed, 14 Oct 2020 22:26:40 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20b4:de17:4e9:6126])
        by smtp.gmail.com with ESMTPSA id l3sm679049oth.36.2020.10.14.22.26.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 22:26:39 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/5] tpm2-pkcs11: update to 1.4.0
Date: Wed, 14 Oct 2020 22:26:34 -0700
Message-Id: <20201015052634.23810-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201015052634.23810-1-akuster808@gmail.com>
References: <20201015052634.23810-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../0001-remove-local-binary-checkes.patch    | 77 +++++++++++++++++++
 ...2-pkcs11_1.3.0.bb => tpm2-pkcs11_1.4.0.bb} |  7 +-
 2 files changed, 82 insertions(+), 2 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-pkcs11/files/0001-remove-local-binary-checkes.patch
 rename meta-tpm/recipes-tpm2/tpm2-pkcs11/{tpm2-pkcs11_1.3.0.bb => tpm2-pkcs11_1.4.0.bb} (80%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/0001-remove-local-binary-checkes.patch b/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/0001-remove-local-binary-checkes.patch
new file mode 100644
index 0000000..9d3f073
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/0001-remove-local-binary-checkes.patch
@@ -0,0 +1,77 @@
+From 9e3ef6f253f9427596baf3e7d748a79854cadfa9 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Wed, 14 Oct 2020 08:55:33 -0700
+Subject: [PATCH] remove local binary checkes
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Upsteam-Status: Inappropriate
+These are only needed to run on the tartget so we add an RDPENDS.
+Not needed for building.
+
+---
+ configure.ac | 48 ------------------------------------------------
+ 1 file changed, 48 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 50e7d4b..2b9abcf 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -219,54 +219,6 @@ AX_PROG_JAVAC()
+ AX_PROG_JAVA()
+ m4_popdef([AC_MSG_ERROR])
+ 
+-AC_CHECK_PROG([tpm2_createprimary], [tpm2_createprimary], [yes], [no])
+-  AS_IF([test "x$tpm2_createprimary" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_createprimary, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_create], [tpm2_create], [yes], [no])
+-  AS_IF([test "x$tpm2_create" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_create, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_evictcontrol], [tpm2_evictcontrol], [yes], [no])
+-  AS_IF([test "x$tpm2_evictcontrol" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_evictcontrol, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_readpublic], [tpm2_readpublic], [yes], [no])
+-  AS_IF([test "x$tpm2_readpublic" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_readpublic, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_load], [tpm2_load], [yes], [no])
+-  AS_IF([test "x$tpm2_load" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_load, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_loadexternal], [tpm2_loadexternal], [yes], [no])
+-  AS_IF([test "x$tpm2_loadexternal" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_loadexternal, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_unseal], [tpm2_unseal], [yes], [no])
+-  AS_IF([test "x$tpm2_unseal" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_unseal, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_encryptdecrypt], [tpm2_encryptdecrypt], [yes], [no])
+-  AS_IF([test "x$tpm2_encryptdecrypt" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_encryptdecrypt, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_sign], [tpm2_sign], [yes], [no])
+-  AS_IF([test "x$tpm2_sign" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_sign, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_getcap], [tpm2_getcap], [yes], [no])
+-  AS_IF([test "x$tpm2_getcap" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_getcap, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_import], [tpm2_import], [yes], [no])
+-  AS_IF([test "x$tpm2_import" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_import, but executable not found.])])
+-
+-AC_CHECK_PROG([tpm2_changeauth], [tpm2_changeauth], [yes], [no])
+-  AS_IF([test "x$tpm2_changeauth" != "xyes"],
+-    [AC_MSG_ERROR([tpm2_ptool requires tpm2_changeauth, but executable not found.])])
+-
+ AC_DEFUN([integration_test_checks], [
+ 
+   PKG_CHECK_MODULES([OPENSC_PKCS11],[opensc-pkcs11],,
+-- 
+2.17.1
+
diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.3.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb
similarity index 80%
rename from meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.3.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb
index ce2dac0..4865733 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.3.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb
@@ -7,9 +7,10 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=0fc19f620a102768d6dbd1e7166e78ab"
 DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2-tools libyaml"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git;branch=1.X \
-           file://bootstrap_fixup.patch "
+           file://bootstrap_fixup.patch \
+           file://0001-remove-local-binary-checkes.patch"
 
-SRCREV = "8d8f137f65f1d61d66cc191947b59c378f23e97d"
+SRCREV = "78bbf6a0237351830d0c3923b25ba0b57ae0b7e9"
 
 S = "${WORKDIR}/git"
 
@@ -18,3 +19,5 @@ inherit autotools-brokensep pkgconfig
 do_configure_prepend () {
     ${S}/bootstrap
 }
+
+RDEPNDS_${PN} = "tpm2-tools"
-- 
2.17.1

