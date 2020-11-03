Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
 by mx.groups.io with SMTP id smtpd.web11.2861.1604433679635744197
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 12:01:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RveXA9iW;
 spf=pass (domain: gmail.com, ip: 209.85.167.194, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f194.google.com with SMTP id j7so19608742oie.12
        for <yocto@lists.yoctoproject.org>; Tue, 03 Nov 2020 12:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=w4DQ2me2xwb+Essf21RfTPpmqXZ7bCA/FadxMX+NAkk=;
        b=RveXA9iW3PxKXVirf3L5AzqqfmxDTXh7jsW7gHzJvDfWHhTGdds9VQD3e1BkTUvMTC
         8Kj5tKQiasOzX+jECpeiLXq9pccSZcPVZKe4TaK3bMzEDHP5U8zvvQE1FzuPYtcTSJ6h
         8m6VWKsuQlKm9O5mVibUnK2OrKzgi0Og652kM/9W3yIkdvmOZvvgeRlEjZ7VnnRPZBzX
         5YKh2yv+JzZnmGXLUr7yLt9Oza4bLEtyUZenKZnBJL+pNd5vs93ZX6Yn/ej89ed1WeLd
         k8gq66S7X31ChqlJybdB3HxmLY+6wXyhdcX2Kc5MFxuYkFBpsf9Ho3Cd7qOdmd5pLha9
         7n9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=w4DQ2me2xwb+Essf21RfTPpmqXZ7bCA/FadxMX+NAkk=;
        b=uFMu+1MG8flDdpG11xWj7jfM6uHCCUSPjurQngtJpjvKRsg+rrX65egKzzUuevudmG
         LdCS79SL0jZT8cVS2Jn+yVr0FulXDIQR8tRIe72bdwUQTUUSx4Lg5x1TlzyAHn3Jwd5v
         qhsyXX/gBTBV9gECbWNT+sGsN73ujSL9bgF/366J/FLuARCV83Z/f+l+ti4fGd0d3ugd
         8u48P4XolxIk3kjZbyUV0PxaaLxUcsHaG/PFms5JOx/v5qG8C70OYytO5JJcKvO7/2eL
         fv4TQqHMdPpwvRRgDtVihY2G4b0E/SuaabcSSu5uO2QE9xZVP4SYutQ307SLW/NxfQ3l
         w5Wg==
X-Gm-Message-State: AOAM530QYU7AijV+xKcsR9xs/up3zAt87vTlOxetaexo+EcRI70GeitD
	fEx5ek4jU+kO+gsrSnckVe1CO/KJS0s=
X-Google-Smtp-Source: ABdhPJyYn7YK64jOdHSwHaplr0D9HmpxS0m/aV2KnYAIoyXHlExqPuGdM8Ne3TtkUdq0Q8IQozMFUw==
X-Received: by 2002:aca:f0c5:: with SMTP id o188mr481323oih.95.1604433678410;
        Tue, 03 Nov 2020 12:01:18 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:d529:5a35:76ab:e13b])
        by smtp.gmail.com with ESMTPSA id t65sm4351068oib.50.2020.11.03.12.01.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 12:01:17 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] samhain: update to 4.4.2
Date: Tue,  3 Nov 2020 12:01:16 -0800
Message-Id: <20201103200116.21515-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

refresh a few patches too

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...-avoid-searching-host-for-postgresql.patch | 15 ++---
 .../samhain-configure-add-option-for-ps.patch | 66 +++++++++----------
 recipes-ids/samhain/samhain.inc               | 13 ++--
 3 files changed, 42 insertions(+), 52 deletions(-)

diff --git a/recipes-ids/samhain/files/samhain-avoid-searching-host-for-postgresql.patch b/recipes-ids/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
index 6bf67e0..a84229e 100644
--- a/recipes-ids/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
+++ b/recipes-ids/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
@@ -10,11 +10,11 @@ Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
  configure.ac | 101 +++--------------------------------------------------------
  1 file changed, 5 insertions(+), 96 deletions(-)
 
-diff --git a/configure.ac b/configure.ac
-index a224c68..f658d53 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -1278,90 +1278,11 @@ AC_ARG_WITH(database,
+Index: samhain-4.4.2/configure.ac
+===================================================================
+--- samhain-4.4.2.orig/configure.ac
++++ samhain-4.4.2/configure.ac
+@@ -1290,90 +1290,11 @@ AC_ARG_WITH(database,
            AC_DEFINE(WITH_POSTGRES)
            AC_DEFINE(WITH_DATABASE)
  	  #
@@ -110,7 +110,7 @@ index a224c68..f658d53 100644
  	    LIBS="$LIBS -L${PGSQL_LIB_DIR} -lpq -lm"
  	    if test x"$enable_static" = xyes; then
  	      LIBS="$LIBS -L${PGSQL_LIB_DIR} -lpq -lcrypt -lm"
-@@ -1370,18 +1291,6 @@ AC_ARG_WITH(database,
+@@ -1382,18 +1303,6 @@ AC_ARG_WITH(database,
  	    fi
  	    # CFLAGS="$CFLAGS -I${PGSQL_INC_DIR}"
  	    CPPFLAGS="$CPPFLAGS -I${PGSQL_INC_DIR}"
@@ -129,6 +129,3 @@ index a224c68..f658d53 100644
  	  fi
  	elif test "x${withval}" = "xodbc"; then
  	  AC_MSG_CHECKING(for odbc in /usr /usr/local ODBC_HOME)
--- 
-2.11.0
-
diff --git a/recipes-ids/samhain/files/samhain-configure-add-option-for-ps.patch b/recipes-ids/samhain/files/samhain-configure-add-option-for-ps.patch
index 8de0735..7e7f86e 100644
--- a/recipes-ids/samhain/files/samhain-configure-add-option-for-ps.patch
+++ b/recipes-ids/samhain/files/samhain-configure-add-option-for-ps.patch
@@ -14,29 +14,14 @@ to avoid host contamination.
 Upstream-Status: Inappropriate [cross compile specific]
 
 Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
----
- aclocal.m4   |  2 +-
- configure.ac | 60 ++++++++++--------------------------------------------------
- 2 files changed, 11 insertions(+), 51 deletions(-)
+[AK: refactored for 4.4.3]
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
-diff --git a/aclocal.m4 b/aclocal.m4
-index a2e59a6..cd20a2f 100644
---- a/aclocal.m4
-+++ b/aclocal.m4
-@@ -409,7 +409,7 @@ x_includes=NONE
- x_libraries=NONE
- DESTDIR=
- SH_ENABLE_OPTS="selinux posix-acl asm ssp db-reload xml-log message-queue login-watch process-check port-check mounts-check logfile-monitor userfiles debug ptrace static network udp nocl stealth micro-stealth install-name identity khide suidcheck base largefile mail external-scripts encrypt srp dnmalloc ipv6 shellexpand suid"
--SH_WITH_OPTS="prelude libprelude-prefix database libwrap cflags libs console altconsole timeserver alttimeserver rnd egd-socket port logserver altlogserver kcheck gpg keyid checksum fp recipient sender trusted tmp-dir config-file log-file pid-file state-dir data-file html-file"
-+SH_WITH_OPTS="prelude libprelude-prefix database libwrap cflags libs console altconsole timeserver alttimeserver rnd egd-socket port logserver altlogserver kcheck gpg keyid checksum fp recipient sender trusted tmp-dir config-file log-file pid-file state-dir data-file html-file ps-path"
- 
- # Installation directory options.
- # These are left unexpanded so users can "make install exec_prefix=/foo"
-diff --git a/configure.ac b/configure.ac
-index 5910b1f..8c3e087 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -730,56 +730,16 @@ then
+Index: samhain-4.4.2/configure.ac
+===================================================================
+--- samhain-4.4.2.orig/configure.ac
++++ samhain-4.4.2/configure.ac
+@@ -743,56 +743,16 @@ then
  fi
  AC_CHECK_HEADERS(gmp.h)
  
@@ -55,7 +40,16 @@ index 5910b1f..8c3e087 100644
 -	AC_MSG_ERROR([Cannot find ps in any of /usr/ucb /bin /usr/bin])
 -fi
 -AC_DEFINE_UNQUOTED([PSPATH], _("$PS"), [Path to ps])
--
++AC_ARG_WITH(ps-path,
++   [  --with-ps-path=PATH         set path to ps command ],
++   [
++   if test "x${withval}" != xno; then
++       pspath="${withval}"
++       AC_DEFINE_UNQUOTED([PSPATH], _("${pspath}"), [Path to ps])
++       AC_DEFINE_UNQUOTED([PSARG], _("ax"), [Argument for ps])
++   fi
++   ])
+ 
 -AC_MSG_CHECKING([how to use ps])
 -$PS ax >/dev/null 2>&1
 -if test $? -eq 0; then
@@ -90,19 +84,19 @@ index 5910b1f..8c3e087 100644
 -	PSARG="-e"
 -fi
 -AC_DEFINE_UNQUOTED([PSARG], _("$PSARG"), [Argument for ps])
-+AC_ARG_WITH(ps-path,
-+	[  --with-ps-path=PATH         set path to ps command ],
-+	[
-+	if test "x${withval}" != xno; then
-+		pspath="${withval}"
-+		AC_DEFINE_UNQUOTED([PSPATH], _("${pspath}"), [Path to ps])
-+		AC_DEFINE_UNQUOTED([PSARG], _("ax"), [Argument for ps])
-+	fi
-+	])
-+
  AC_MSG_RESULT([$PS $PSARG])
  
  dnl *****************************************
--- 
-1.9.1
-
+Index: samhain-4.4.2/aclocal.m4
+===================================================================
+--- samhain-4.4.2.orig/aclocal.m4
++++ samhain-4.4.2/aclocal.m4
+@@ -409,7 +409,7 @@ x_includes=NONE
+ x_libraries=NONE
+ DESTDIR=
+ SH_ENABLE_OPTS="selinux posix-acl asm ssp db-reload xml-log message-queue login-watch process-check port-check mounts-check logfile-monitor userfiles debug ptrace static network udp nocl stealth micro-stealth install-name identity khide suidcheck base largefile mail external-scripts encrypt srp dnmalloc ipv6 shellexpand suid"
+-SH_WITH_OPTS="prelude libprelude-prefix database libwrap cflags libs console altconsole timeserver alttimeserver rnd egd-socket port logserver altlogserver signify pubkey-checksum gpg keyid checksum fp recipient sender trusted tmp-dir config-file log-file pid-file state-dir data-file html-file"
++SH_WITH_OPTS="prelude libprelude-prefix database libwrap cflags libs console altconsole timeserver alttimeserver rnd egd-socket port logserver altlogserver kcheck gpg keyid checksum fp recipient sender trusted tmp-dir config-file log-file pid-file state-dir data-file html-file ps-path"
+ 
+ # Installation directory options.
+ # These are left unexpanded so users can "make install exec_prefix=/foo"
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index b867bbc..3b4aab9 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -3,9 +3,12 @@ HOMEPAGE    = "http://www.la-samhna.de/samhain/"
 LICENSE     = "GPLv2"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
-PV = "4.3.3"
+PV = "4.4.2"
 
-SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
+SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
+           file://${INITSCRIPT_NAME}.init \
+           file://${INITSCRIPT_NAME}.default \
+           file://samhain.service \
            file://samhain-mips64-aarch64-dnmalloc-hash-fix.patch \
            file://samhain-samhainrc.patch \
            file://samhain-samhainrc-fix-files-dirs-path.patch \
@@ -15,13 +18,9 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-avoid-searching-host-for-postgresql.patch \
            file://samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch \
            file://fix-build-with-new-version-attr.patch \
-           file://${INITSCRIPT_NAME}.init \
-           file://${INITSCRIPT_NAME}.default \
-           file://samhain.service \
            "
 
-SRC_URI[md5sum] = "7be46ae7d03f53ba21afafd41cff8926"
-SRC_URI[sha256sum] = "33ad4bc3dad4699694553bd9635a6b5827939f965d1f0f05fce0b4e9cdadf21b"
+SRC_URI[sha256sum] = "2bb2750b32646be32517d0b2259402559c72b96979800f6c33774fcdea327fff"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.17.1

