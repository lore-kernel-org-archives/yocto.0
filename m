Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.26726.1584873877866326137
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Mar 2020 03:44:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 02MAiGGQ014230
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Sun, 22 Mar 2020 03:44:26 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Sun, 22 Mar
 2020 03:44:05 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-gplv2][PATCH] gettext: fix typos in PACKAGES
Date: Sun, 22 Mar 2020 18:44:03 +0800
Message-ID: <20200322104403.17949-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Fix typos:
  ${SODEV} -> ${SOLIBS}
  ${SOLIBDEV} -> ${SOLIBSDEV}

Also fix the indentation of SRC_URI.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-core/gettext/gettext_0.16.1.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/gettext/gettext_0.16.1.bb b/recipes-core/gettext/gettext_0.16.1.bb
index dacdfd3..9287a71 100644
--- a/recipes-core/gettext/gettext_0.16.1.bb
+++ b/recipes-core/gettext/gettext_0.16.1.bb
@@ -14,7 +14,7 @@ PROVIDES_class-native = "virtual/gettext-native"
 SRC_URI = "${GNU_MIRROR}/gettext/gettext-${PV}.tar.gz \
            file://gettext-vpath.patch \
            file://linklib_from_0.17.patch \
-	   file://gettext-autoconf-lib-link-no-L.patch \
+           file://gettext-autoconf-lib-link-no-L.patch \
            file://disable_java.patch \
            file://fix_aclocal_version.patch \
            file://fix_gnu_source_circular.patch \
@@ -78,7 +78,7 @@ FILES_gettext-runtime = "${bindir}/gettext \
                          ${bindir}/ngettext \
                          ${bindir}/envsubst \
                          ${bindir}/gettext.sh \
-                         ${libdir}/libasprintf${SODEV} \
+                         ${libdir}/libasprintf${SOLIBS} \
                          ${libdir}/GNU.Gettext.dll \
                         "
 FILES_gettext-runtime_append_libc-uclibc = " ${libdir}/libintl.so.* \
@@ -86,7 +86,7 @@ FILES_gettext-runtime_append_libc-uclibc = " ${libdir}/libintl.so.* \
                                            "
 FILES_gettext-runtime-staticdev += "${libdir}/libasprintf.a"
 FILES_gettext-runtime-dev += "${includedir}/autosprintf.h \
-                              ${libdir}/libasprintf${SOLIBDEV}"
+                              ${libdir}/libasprintf${SOLIBSDEV}"
 FILES_gettext-runtime-dev_append_libc-uclibc = " ${libdir}/libintl.so \
                                                  ${includedir}/libintl.h \
                                                "
-- 
2.17.1

