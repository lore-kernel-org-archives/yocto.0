Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web12.2921.1602957823232336128
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LYUICeOP;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id o7so3400381pgv.6
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=K4ZS1dXHLXQXx8P72s4zM3X8KPrqYSr3rieN438Gf5g=;
        b=LYUICeOPAZC7aM5u1YHzmh66sb+jeMiAKGiH+mzxLslXZL//06QbUqeF1M1bId/Y5i
         KZYvcoZ+KePUz0mDB2O64Eo6/HEVA+N/2TPzYohybKkRepTFIj97PMxY553WEtwkpkUx
         BUKUiQpasA6hXF7zTMg/FvGPfIKwN0JaeO0ndZP8DdpgkG/Bi/BuPdyOG6hy9MW6Rz2b
         tBRya4igHXjzSYYpjh4YG6h6uWInKKjFojbgagwWF9Y0EHur0fOPxRXj2gFGrnt8G5Xa
         q/86A/SAmV1NPKtG6I+E1j4NKypR0p9jJJjsKcOchJUf9RSacn+7hruhGCNeRaCYeqat
         WNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K4ZS1dXHLXQXx8P72s4zM3X8KPrqYSr3rieN438Gf5g=;
        b=hl0VZJt22UC2BcJ55cIz2JxDHoGK9tfrRTMWgLhBhxPlsus62c5u1IRKmPRvH6uhTG
         x6lkWxGH59olQzj6anGEXczjxxlOKU79h4g80DHmNBiTQ6TExqQHOzEMgVKNCVya2rjd
         J/PHHJAisbEO2QKOzwrKmX4/jKPln6ZX33Jl1J/bXSm52TuGoHdrY66CkKfRmq8p73zx
         TH1nqdcMV0sTdpYLd8S7/OVS2gtcbelamp9E5vTP4I43tDwRSfzEpYnuZ8c3JcjM/5k+
         emjw6nYE0YRf93zuv2GIeHQ0nxO+bqJGO2TqQ7Jz9aRod6lSQw0+hGDF02vNflMvCc8X
         PVmQ==
X-Gm-Message-State: AOAM532DakkJN+JmTBLAFMjWr+uZsymAEpy5DQBw8aLKr5eTl+k7In0i
	pt3qvSE1w7W1z+s7pWsXCcfsnJbHltE=
X-Google-Smtp-Source: ABdhPJzHLH37RWs8hLSeGNhYOuP2wfkgGbohJ0GqsyqffoGykQV2cTRGrFBu1kceOroq9Kj9zgoM0Q==
X-Received: by 2002:a63:a546:: with SMTP id r6mr7940243pgu.160.1602957822549;
        Sat, 17 Oct 2020 11:03:42 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:42 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 07/32] sssd: Make manpages buildable
Date: Sat, 17 Oct 2020 11:03:04 -0700
Message-Id: <369a7bd1292a1483dae0db42902d9a2d8c598fe8.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jonatan Pålsson <jonatan.p@gmail.com>

Some XML related fixes are needed to make the sssd manpages buildable

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 5efa53b2b2bab6f2d8589624c1700d1e66f29683)
---
 ...AC_CHECK_FILE-when-building-manpages.patch | 34 +++++++++++++++++++
 recipes-security/sssd/sssd_1.16.4.bb          |  4 ++-
 2 files changed, 37 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch

diff --git a/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch b/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
new file mode 100644
index 0000000..b64670c
--- /dev/null
+++ b/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
@@ -0,0 +1,34 @@
+From d54aa109600bcd02bf72cfe64c01935890a102a1 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
+Date: Fri, 21 Aug 2020 14:45:10 +0200
+Subject: [PATCH] build: Don't use AC_CHECK_FILE when building manpages
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+AC_CHECK_FILE does not support cross-compilation, and will only check
+the host rootfs. Replace AC_CHECK_FILE with a 'test -f <FILE>' instead,
+to allow building manpages when cross-compiling.
+
+Upstream-status: Submitted [https://github.com/SSSD/sssd/pull/5289]
+Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
+---
+ src/external/docbook.m4 | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/external/docbook.m4 b/src/external/docbook.m4
+index deb8632fa..acdc89a68 100644
+--- a/src/external/docbook.m4
++++ b/src/external/docbook.m4
+@@ -18,7 +18,7 @@ dnl Checks if the XML catalog given by FILE exists and
+ dnl if a particular URI appears in the XML catalog
+ AC_DEFUN([CHECK_STYLESHEET],
+ [
+-  AC_CHECK_FILE($1, [], [AC_MSG_ERROR([could not find XML catalog])])
++  AS_IF([test -f "$1"], [], [AC_MSG_ERROR([could not find XML catalog])])
+ 
+   AC_MSG_CHECKING([for ifelse([$3],,[$2],[$3]) in XML catalog])
+   if AC_RUN_LOG([$XSLTPROC --catalogs --nonet --noout "$2" >&2]); then
+-- 
+2.26.1
+
diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 2c3c803..916f1ac 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -17,6 +17,7 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz \
            file://sssd.conf \
            file://volatiles.99_sssd \
            file://fix-ldblibdir.patch \
+           file://0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch \
            "
 
 SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
@@ -41,7 +42,7 @@ PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
 PACKAGECONFIG[curl] = "--with-kcm, --without-kcm, curl jansson"
 PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
-PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
+PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no, libxslt-native docbook-xml-dtd4-native docbook-xsl-stylesheets-native"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
 PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
 PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
@@ -60,6 +61,7 @@ EXTRA_OECONF += " \
     --enable-pammoddir=${base_libdir}/security \
     --without-python2-bindings \
     --without-secrets \
+    --with-xml-catalog-path=${STAGING_ETCDIR_NATIVE}/xml/catalog \
 "
 
 do_configure_prepend() {
-- 
2.17.1

