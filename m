Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web12.4779.1578399588400218126
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2020 04:19:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
IronPort-SDR: 3hVqJ5lfmMcan8Wi3/c0oovNhTOPtoeXVEi+Egt6gpWEvgIWR2QlVkivXbyxVUxWVtxURBls3d
 YTBPe3G9ZRxp8k372ULokcGFK3A0iKQLylf06T0QmPqjE2aNJmk39D2sGAqeEgJyuJlUEOkaQz
 hwOYpG6GVIOZtuadoj7Fjsm52VhylotsMGbrGIVz1HJRdIZppdewYrACC+FMyvXTrqcohds989
 5krWFJqwuk+0ffojE4uyjFxfRWlW0+8sNLlhYXLNMh2wZU6uIjo7erTCdplNogmrfs57vpwHZJ
 yUI=
X-IronPort-AV: E=Sophos;i="5.69,406,1571695200"; 
   d="scan'208";a="4127274"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2][PATCH] gnupg: Make it build with gettext 0.20
Date: Tue,  7 Jan 2020 13:19:32 +0100
Message-Id: <20200107121932.6721-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Content-Transfer-Encoding: 8bit

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 ...0001-Make-it-build-with-gettext-0.20.patch | 80 +++++++++++++++++++
 recipes-support/gnupg/gnupg_1.4.7.bb          |  3 +-
 2 files changed, 82 insertions(+), 1 deletion(-)
 create mode 100644 recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-gettext-0.20.patch

diff --git a/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-gettext-0.20.patch b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-gettext-0.20.patch
new file mode 100644
index 0000000..a8eddbe
--- /dev/null
+++ b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-gettext-0.20.patch
@@ -0,0 +1,80 @@
+From 26076b28b79f6a2f2989a301ad7474cfa1153ebd Mon Sep 17 00:00:00 2001
+From: Peter Kjellerstedt <pkj@axis.com>
+Date: Tue, 7 Jan 2020 11:08:39 +0100
+Subject: [PATCH] Make it build with gettext 0.20
+
+Upstream-Status: Inappropriate [legacy version]
+Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
+---
+ Makefile.am           | 2 +-
+ configure.ac          | 2 +-
+ g10/Makefile.am       | 2 +-
+ keyserver/Makefile.am | 2 +-
+ tools/Makefile.am     | 2 +-
+ 5 files changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 3423e70..1eebbc2 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -28,7 +28,7 @@ else
+ checks = checks
+ endif
+ 
+-SUBDIRS = m4 intl zlib util mpi cipher tools g10 keyserver po doc ${checks}
++SUBDIRS = m4 zlib util mpi cipher tools g10 keyserver po doc ${checks}
+ EXTRA_DIST = scripts/config.rpath  PROJECTS BUGS config.h.in autogen.sh
+ DISTCLEANFILES = 
+ 
+diff --git a/configure.ac b/configure.ac
+index 9f64b75..d9e5f69 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -813,7 +813,7 @@ dnl Checks for libraries.
+ 
+ AM_GNU_GETTEXT_VERSION(0.14.1)
+ if test "$try_gettext" = yes; then
+-  AM_GNU_GETTEXT(,[need-ngettext])
++  AM_GNU_GETTEXT([external],[need-ngettext])
+ 
+   # gettext requires some extra checks.  These really should be part of
+   # the basic AM_GNU_GETTEXT macro.  TODO: move other gettext-specific
+diff --git a/g10/Makefile.am b/g10/Makefile.am
+index 74a8db1..ff51b7f 100644
+--- a/g10/Makefile.am
++++ b/g10/Makefile.am
+@@ -32,7 +32,7 @@ AM_CPPFLAGS += -DGNUPG_LIBDIR="\"$(libdir)/@PACKAGE@\""
+ endif
+ 
+ needed_libs = ../cipher/libcipher.a ../mpi/libmpi.a ../util/libutil.a
+-other_libs = $(LIBICONV) $(DNSLIBS) $(LIBINTL) $(CAPLIBS)
++other_libs = $(DNSLIBS) $(LIBINTL) $(CAPLIBS)
+ 
+ bin_PROGRAMS = gpg gpgv
+ dist_pkgdata_DATA = options.skel
+diff --git a/keyserver/Makefile.am b/keyserver/Makefile.am
+index 3379910..3527c60 100644
+--- a/keyserver/Makefile.am
++++ b/keyserver/Makefile.am
+@@ -33,7 +33,7 @@ gpgkeys_hkp_SOURCES = gpgkeys_hkp.c ksutil.c ksutil.h
+ gpgkeys_finger_SOURCES = gpgkeys_finger.c ksutil.c ksutil.h
+ gpgkeys_curl_SOURCES = gpgkeys_curl.c ksutil.c ksutil.h
+ 
+-other_libs = $(LIBICONV) $(LIBINTL) $(CAPLIBS)
++other_libs = $(LIBINTL) $(CAPLIBS)
+ 
+ gpgkeys_ldap_CPPFLAGS = @LDAP_CPPFLAGS@
+ gpgkeys_ldap_LDADD = ../util/libcompat.a @LDAPLIBS@ @NETLIBS@ $(other_libs) @GETOPT@ @W32LIBS@
+diff --git a/tools/Makefile.am b/tools/Makefile.am
+index 8a9c035..22cdb1e 100644
+--- a/tools/Makefile.am
++++ b/tools/Makefile.am
+@@ -28,7 +28,7 @@ AM_CPPFLAGS += -DLOCALEDIR="\"$(localedir)\""
+ endif
+ 
+ needed_libs = ../cipher/libcipher.a ../mpi/libmpi.a ../util/libutil.a 
+-other_libs = $(LIBICONV) $(LIBINTL) $(CAPLIBS)
++other_libs = $(LIBINTL) $(CAPLIBS)
+ 
+ 
+ bin_PROGRAMS    = gpgsplit
diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
index a7fbd11..6a950fd 100644
--- a/recipes-support/gnupg/gnupg_1.4.7.bb
+++ b/recipes-support/gnupg/gnupg_1.4.7.bb
@@ -19,7 +19,8 @@ SRC_URI = "${GNUPG_MIRROR}/gnupg/gnupg-${PV}.tar.bz2 \
            file://CVE-2013-4576.patch \
            file://CVE-2013-4242.patch \
            file://fix-ustar-check-issue.patch \
-	  "
+           file://0001-Make-it-build-with-gettext-0.20.patch \
+          "
 
 SRC_URI[md5sum] = "b06a141cca5cd1a55bbdd25ab833303c"
 SRC_URI[sha256sum] = "69d18b7d193f62ca27ed4febcb4c9044aa0c95305d3258fe902e2fae5fc6468d"
-- 
2.21.1

