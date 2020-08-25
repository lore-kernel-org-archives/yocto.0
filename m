Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.12085.1598356910862280798
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 05:01:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qUlHajbS;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: jonatan.p@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id t23so13497245ljc.3
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 05:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dekJ8nWtQw4hWUnktylSL64l89hmBZFhQdmOBJYbu68=;
        b=qUlHajbSCWenpN3tjky1kwZ2GoS/t+bWDCd/B5HU0AGrvNv6OuM0OHkcB4S5Iqvj1Y
         VpYAcxnS0P8VlUdKjUZvUvPLd4/KQbXi8u5p+f/k34u6zR4jlYe5y0QdFuxlysKiIwly
         Uah2k/GH4phtH0wxXWkejELdeYLhztndqCewZ9KHr7Tjv7Tr9b5T70tZbySs2Bwp4jId
         umc1MaP4neYSr6CukV56ulCseiNLbLDowdLi7a/IfWzVKpRp1c7CdyW1sJY7uhOvubM4
         yNQk2gbSoCbVraE6N8s22k9IUOOhvItJlMl2cTO6jdeZVgiXL47r7+7ckg09zrA7Yis1
         HW2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dekJ8nWtQw4hWUnktylSL64l89hmBZFhQdmOBJYbu68=;
        b=q/pCDxDhNKdZ8BeF/RGFI3ShOgZTZZR5hgJjkZeHwxFStzkrxdRgpzfyS/g9uswrfg
         qgBy+cNidhU5qIbhYqV1A2iPerZgDCt8zYGsBfZBVrV6Uvos/e8jAVbkiMZMpoVkQOwx
         tGtFI92pHMhae0Sa0KwdYp57OkhvJFS9fqNYklwIa2mfb3M8RZY41sLAAGc7VmJfIuor
         b7Ok/acoIlNUc8ithJfntIUxeeDcjQCGB8jTRBu2oJ4WJuqeLQiZDSaNPjkquvSD5F35
         JJi678NhQaGLz++hFYOxSlOT2GAj0ULJ6HtHOQNoPL7LK6qqSeisQ7ga7FisiBP5rQkr
         xPGw==
X-Gm-Message-State: AOAM531yh7ZzQQpnDxoaXtLaSA+WzPQG2FWzxAr+sprgz1c84FQhayZN
	XMwDxJFIC960z1UDyqkweJMDT7qytrM=
X-Google-Smtp-Source: ABdhPJzdwao5TxnS74BzgHCbOu6FXxxnYXtxtBw81cOEl3J18fQ9fSaGl5BZRO9P9u1GtKOQEDEB6g==
X-Received: by 2002:a2e:a0cd:: with SMTP id f13mr4358934ljm.393.1598356908482;
        Tue, 25 Aug 2020 05:01:48 -0700 (PDT)
Return-Path: <jonatan.p@gmail.com>
Received: from X1.lan (h-170-217-237.A357.priv.bahnhof.se. [81.170.217.237])
        by smtp.gmail.com with ESMTPSA id t19sm2790057ljc.137.2020.08.25.05.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 05:01:47 -0700 (PDT)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH] sssd: Make manpages buildable
Date: Tue, 25 Aug 2020 14:01:18 +0200
Message-Id: <20200825120118.370966-1-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Some XML related fixes are needed to make the sssd manpages buildable

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
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
2.26.1

