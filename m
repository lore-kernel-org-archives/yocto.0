Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.12631.1621436155196007114
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 07:55:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iBrMcW4f;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id h20-20020a17090aa894b029015db8f3969eso2930882pjq.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 07:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+n9bTnZoBP69CXX7nhS9KJr1UBw/IlvtdJel+LLe5NE=;
        b=iBrMcW4f3UAmLpnL0mMve3zfnfitiH5Jjx2VPd99OtTzjV2dHCXNRLoTSZJ8L4WLY4
         KBRLzH7BiL0dao3PdLnPFHIlP1nVGsCZIyrMity2Vko4azs3EfK/IoahHH0rK+Rdo/Jo
         GNZBk5IKl4RSZQ+KEKz0wzOyQdTCqrkeuzO7dsSVEI/h1QanZDSJ4eLyPfvrnhkRwG+1
         Vg086/Bzx03IQO6fvHMi61JZCbwU7ZDjW7PDN4OYn+eWk9bBnfeliHZfmcm2uHcgBbuk
         o8iEeCJhxY6x4IaavR8DXqTsIpJuai1GwzQ9/4hZavrci0mfG6DOSsZbZJ6BAi9zcIgz
         daDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+n9bTnZoBP69CXX7nhS9KJr1UBw/IlvtdJel+LLe5NE=;
        b=YhEUn7b4pcClu8IIzxCpNAWwyIWQ4yTH593kLhLNjWllkF+HIaGn8YrMsC519H/ZsX
         7ly5pJWi0JmIChgfjNfGE+u7Cb2X/08dAp4zJfrBKm9mDertYf7nTeA6V1dL7Jq5Em1O
         XgT5oiwWuAoHoWjpSS4ViegH2RRnFjYEZT2bOmbAVsybc4ChneRlYQbsJLx0n5kerbaF
         tVu1CDQCd+oA2585JhLx5DwUPE4SxIY2dpZXgMylmFdK/2nLAHLYcUkYALtEf+ghgBrh
         sBOUSiRZSkGg5qc2fPqJqqgT0LwYDGANwEVxLA5VQYe2RI31lEpRR6B9kUB1tz0HrXJ2
         +bcg==
X-Gm-Message-State: AOAM531iT9mkWv7/eBmmw8KzYgX/CVrFht83x1mZyhm15sAtSc31WQhD
	uTikRoX5pGFUZG51y19bmIUV1PHIFHk=
X-Google-Smtp-Source: ABdhPJyRCAvDts5xPUlBG+PEQfbrD8CaDiPRaGJavHhWH8DOzVKepRXPQCCa+c6yv505JP6OqVm5ag==
X-Received: by 2002:a17:902:9001:b029:ee:f24a:7e7d with SMTP id a1-20020a1709029001b02900eef24a7e7dmr11403512plp.42.1621436154318;
        Wed, 19 May 2021 07:55:54 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id b65sm15975181pga.83.2021.05.19.07.55.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:55:54 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] sssd: update to 2.5.0
Date: Wed, 19 May 2021 14:55:50 +0000
Message-Id: <20210519145550.1312699-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.24.3
In-Reply-To: <20210519145550.1312699-1-akuster808@gmail.com>
References: <20210519145550.1312699-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add new depends
Drop obsolete patches

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...AC_CHECK_FILE-when-building-manpages.patch | 34 --------
 ...s-Collision-with-external-nss-symbol.patch | 78 -------------------
 ...defines-which-otherwise-are-availabl.patch | 32 --------
 .../sssd/files/fix-ldblibdir.patch            | 25 ------
 recipes-security/sssd/files/fix_gid.patch     | 27 +++++++
 recipes-security/sssd/files/no_gen.patch      | 19 +++++
 .../sssd/{sssd_1.16.5.bb => sssd_2.5.0.bb}    | 23 +++---
 7 files changed, 56 insertions(+), 182 deletions(-)
 delete mode 100644 recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
 delete mode 100644 recipes-security/sssd/files/0001-nss-Collision-with-external-nss-symbol.patch
 delete mode 100644 recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
 delete mode 100644 recipes-security/sssd/files/fix-ldblibdir.patch
 create mode 100644 recipes-security/sssd/files/fix_gid.patch
 create mode 100644 recipes-security/sssd/files/no_gen.patch
 rename recipes-security/sssd/{sssd_1.16.5.bb => sssd_2.5.0.bb} (86%)

diff --git a/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch b/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
deleted file mode 100644
index b64670c..0000000
--- a/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From d54aa109600bcd02bf72cfe64c01935890a102a1 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
-Date: Fri, 21 Aug 2020 14:45:10 +0200
-Subject: [PATCH] build: Don't use AC_CHECK_FILE when building manpages
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-AC_CHECK_FILE does not support cross-compilation, and will only check
-the host rootfs. Replace AC_CHECK_FILE with a 'test -f <FILE>' instead,
-to allow building manpages when cross-compiling.
-
-Upstream-status: Submitted [https://github.com/SSSD/sssd/pull/5289]
-Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
----
- src/external/docbook.m4 | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/external/docbook.m4 b/src/external/docbook.m4
-index deb8632fa..acdc89a68 100644
---- a/src/external/docbook.m4
-+++ b/src/external/docbook.m4
-@@ -18,7 +18,7 @@ dnl Checks if the XML catalog given by FILE exists and
- dnl if a particular URI appears in the XML catalog
- AC_DEFUN([CHECK_STYLESHEET],
- [
--  AC_CHECK_FILE($1, [], [AC_MSG_ERROR([could not find XML catalog])])
-+  AS_IF([test -f "$1"], [], [AC_MSG_ERROR([could not find XML catalog])])
- 
-   AC_MSG_CHECKING([for ifelse([$3],,[$2],[$3]) in XML catalog])
-   if AC_RUN_LOG([$XSLTPROC --catalogs --nonet --noout "$2" >&2]); then
--- 
-2.26.1
-
diff --git a/recipes-security/sssd/files/0001-nss-Collision-with-external-nss-symbol.patch b/recipes-security/sssd/files/0001-nss-Collision-with-external-nss-symbol.patch
deleted file mode 100644
index c319269..0000000
--- a/recipes-security/sssd/files/0001-nss-Collision-with-external-nss-symbol.patch
+++ /dev/null
@@ -1,78 +0,0 @@
-From 05c315100a70d3372e891e9a0ea981a875b2ec90 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Michal=20=C5=BDidek?= <mzidek@redhat.com>
-Date: Thu, 27 Feb 2020 06:50:40 +0100
-Subject: [PATCH] nss: Collision with external nss symbol
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-One of our internal static function names started
-to collide with external nss symbol. Additional
-sss_ suffix was added to avoid the collision.
-
-This is needed to unblock Fedora Rawhide's
-SSSD build.
-
-Reviewed-by: Pavel Březina <pbrezina@redhat.com>
-
-Upstream-Status: Backport [https://github.com/SSSD/sssd.git]
-Signed-off-by: Hongxu.jia@windriver.com
-Signed-off-by: Qi.Chen@windriver.com
----
- src/responder/nss/nss_cmd.c | 18 ++++++++++--------
- 1 file changed, 10 insertions(+), 8 deletions(-)
-
-diff --git a/src/responder/nss/nss_cmd.c b/src/responder/nss/nss_cmd.c
-index 25e663ed5..a4d4cfc0b 100644
---- a/src/responder/nss/nss_cmd.c
-+++ b/src/responder/nss/nss_cmd.c
-@@ -728,11 +728,13 @@ done:
-     talloc_free(cmd_ctx);
- }
- 
--static void nss_setnetgrent_done(struct tevent_req *subreq);
-+static void sss_nss_setnetgrent_done(struct tevent_req *subreq);
- 
--static errno_t nss_setnetgrent(struct cli_ctx *cli_ctx,
--                               enum cache_req_type type,
--                               nss_protocol_fill_packet_fn fill_fn)
-+/* This function's name started to collide with external nss symbol,
-+ * so it has additional sss_* prefix unlike other functions here. */
-+static errno_t sss_nss_setnetgrent(struct cli_ctx *cli_ctx,
-+                                   enum cache_req_type type,
-+                                   nss_protocol_fill_packet_fn fill_fn)
- {
-     struct nss_ctx *nss_ctx;
-     struct nss_state_ctx *state_ctx;
-@@ -774,7 +776,7 @@ static errno_t nss_setnetgrent(struct cli_ctx *cli_ctx,
-         goto done;
-     }
- 
--    tevent_req_set_callback(subreq, nss_setnetgrent_done, cmd_ctx);
-+    tevent_req_set_callback(subreq, sss_nss_setnetgrent_done, cmd_ctx);
- 
-     ret = EOK;
- 
-@@ -787,7 +789,7 @@ done:
-     return EOK;
- }
- 
--static void nss_setnetgrent_done(struct tevent_req *subreq)
-+static void sss_nss_setnetgrent_done(struct tevent_req *subreq)
- {
-     struct nss_cmd_ctx *cmd_ctx;
-     errno_t ret;
-@@ -1037,8 +1039,8 @@ static errno_t nss_cmd_initgroups_ex(struct cli_ctx *cli_ctx)
- 
- static errno_t nss_cmd_setnetgrent(struct cli_ctx *cli_ctx)
- {
--    return nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
--                           nss_protocol_fill_setnetgrent);
-+    return sss_nss_setnetgrent(cli_ctx, CACHE_REQ_NETGROUP_BY_NAME,
-+                               nss_protocol_fill_setnetgrent);
- }
- 
- static errno_t nss_cmd_getnetgrent(struct cli_ctx *cli_ctx)
--- 
-2.21.0
-
diff --git a/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch b/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
deleted file mode 100644
index 1a22332..0000000
--- a/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From 37a0999e5a9f54e1c61a02a7fbab6fcd04738b3c Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Thu, 8 Oct 2020 05:54:13 -0700
-Subject: [PATCH] Provide missing defines which otherwise are available on
- glibc system headers
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Upsteam-Status: Pending
-
----
- src/util/util.h | 4 ++++
- 1 file changed, 4 insertions(+)
-
-diff --git a/src/util/util.h b/src/util/util.h
-index 8a754dbfd..6e55b4bdc 100644
---- a/src/util/util.h
-+++ b/src/util/util.h
-@@ -76,6 +76,10 @@
- #define MAX(a, b)  (((a) > (b)) ? (a) : (b))
- #endif
- 
-+#ifndef ALLPERMS
-+# define ALLPERMS (S_ISUID|S_ISGID|S_ISVTX|S_IRWXU|S_IRWXG|S_IRWXO)/* 07777 */
-+#endif
-+
- #define SSSD_MAIN_OPTS SSSD_DEBUG_OPTS
- 
- #define SSSD_SERVER_OPTS(uid, gid) \
--- 
-2.17.1
-
diff --git a/recipes-security/sssd/files/fix-ldblibdir.patch b/recipes-security/sssd/files/fix-ldblibdir.patch
deleted file mode 100644
index e350baf..0000000
--- a/recipes-security/sssd/files/fix-ldblibdir.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-When calculate value of ldblibdir, it checks whether the directory of
-$ldblibdir exists. If not, it assigns ldblibdir with ${libdir}/ldb. It is not
-suitable for cross compile. Fix it that only re-assign ldblibdir when its value
-is empty.
-
-Upstream-Status: Inappropriate [cross compile specific]
-
-Signed-off-by: Kai Kang <kai.kang@windriver.com>
----
- src/external/libldb.m4 | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/external/libldb.m4 b/src/external/libldb.m4
-index c400add..5e5f06d 100644
---- a/src/external/libldb.m4
-+++ b/src/external/libldb.m4
-@@ -19,7 +19,7 @@ if test x"$with_ldb_lib_dir" != x; then
-     ldblibdir=$with_ldb_lib_dir
- else
-     ldblibdir="`$PKG_CONFIG --variable=modulesdir ldb`"
--    if ! test -d $ldblibdir; then
-+    if test -z $ldblibdir; then
-         ldblibdir="${libdir}/ldb"
-     fi
- fi
diff --git a/recipes-security/sssd/files/fix_gid.patch b/recipes-security/sssd/files/fix_gid.patch
new file mode 100644
index 0000000..9b481cc
--- /dev/null
+++ b/recipes-security/sssd/files/fix_gid.patch
@@ -0,0 +1,27 @@
+from ../sssd-2.5.0/src/util/sss_pam_data.c:27:
+| ../sssd-2.5.0/src/util/debug.h:88:44: error: unknown type name 'uid_t'; did you mean 'uint_t'?
+|    88 | int chown_debug_file(const char *filename, uid_t uid, gid_t gid);
+|       |                                            ^~~~~
+|       |                                            uint_t
+| ../sssd-2.5.0/src/util/debug.h:88:55: error: unknown type name 'gid_t'
+|    88 | int chown_debug_file(const char *filename, uid_t uid, gid_t gid);
+|       |                                                       ^~~~~
+| make[2]: *** [Makefile:22529: src/util/libsss_iface_la-sss_pam_data.lo] Error 1
+| make[2]: *** Waiting for unfinished jobs....
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: sssd-2.5.0/src/util/debug.h
+===================================================================
+--- sssd-2.5.0.orig/src/util/debug.h
++++ sssd-2.5.0/src/util/debug.h
+@@ -24,6 +24,8 @@
+ #include "config.h"
+ 
+ #include <stdio.h>
++#include <unistd.h>
++#include <sys/types.h>
+ #include <stdbool.h>
+ 
+ #include "util/util_errors.h"
diff --git a/recipes-security/sssd/files/no_gen.patch b/recipes-security/sssd/files/no_gen.patch
new file mode 100644
index 0000000..5c83777
--- /dev/null
+++ b/recipes-security/sssd/files/no_gen.patch
@@ -0,0 +1,19 @@
+don't run generate-sbus-code
+
+Upstream-Status: Inappropriate [OE Specific]
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: sssd-2.5.0/Makefile.am
+===================================================================
+--- sssd-2.5.0.orig/Makefile.am
++++ sssd-2.5.0/Makefile.am
+@@ -1033,8 +1033,6 @@ generate-sbus-code:
+ 
+ .PHONY: generate-sbus-code
+ 
+-BUILT_SOURCES += generate-sbus-code
+-
+ EXTRA_DIST += \
+     sbus_generate.sh.in \
+     src/sbus/codegen/dbus.xml \
diff --git a/recipes-security/sssd/sssd_1.16.5.bb b/recipes-security/sssd/sssd_2.5.0.bb
similarity index 86%
rename from recipes-security/sssd/sssd_1.16.5.bb
rename to recipes-security/sssd/sssd_2.5.0.bb
index 9784ec7..a49f7c7 100644
--- a/recipes-security/sssd/sssd_1.16.5.bb
+++ b/recipes-security/sssd/sssd_2.5.0.bb
@@ -5,8 +5,8 @@ SECTION = "base"
 LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
-DEPENDS = "openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
-DEPENDS_append = " libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
+DEPENDS = "acl attr openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
+DEPENDS_append = " libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent bind p11-kit"
 
 DEPENDS_append_libc-musl = " musl-nscd"
 
@@ -15,16 +15,13 @@ DEPENDS_append_libc-musl = " musl-nscd"
 DEPENDS += "${@bb.utils.contains('PACKAGECONFIG', 'nss', '', \
                bb.utils.contains('PACKAGECONFIG', 'crypto', '', 'nss', d), d)}"
 
-SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz \
+SRC_URI = "https://github.com/SSSD/sssd/releases/download/2.5.0/sssd-2.5.0.tar.gz \
            file://sssd.conf \
            file://volatiles.99_sssd \
-           file://fix-ldblibdir.patch \
-           file://0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch \
-           file://0001-nss-Collision-with-external-nss-symbol.patch \
-           file://0002-Provide-missing-defines-which-otherwise-are-availabl.patch \
+           file://no_gen.patch \
+           file://fix_gid.patch \
            "
-
-SRC_URI[sha256sum] = "2e1a7bf036b583f686d35164f2d79bdf4857b98f51fe8b0d17aa0fa756e4d0c0"
+SRC_URI[sha256sum] = "afa62d7d8d23fca3aba093abe4ec0d14e7d9346c5b28ceb7c2c624bed98caa06"
 
 inherit autotools pkgconfig gettext python3-dir features_check systemd
 
@@ -34,7 +31,7 @@ SSSD_UID ?= "root"
 SSSD_GID ?= "root"
 
 CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
-    ac_cv_path_NSUPDATE=${bindir} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
+    ac_cv_path_NSUPDATE=${bindir}/nsupdate ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
     "
 
 PACKAGECONFIG ?="nss nscd autofs sudo infopipe"
@@ -42,13 +39,13 @@ PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux',
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
 PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
-PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
+PACKAGECONFIG[crypto] = ", , libcrypto"
 PACKAGECONFIG[curl] = "--with-kcm, --without-kcm, curl jansson"
 PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no, libxslt-native docbook-xml-dtd4-native docbook-xsl-stylesheets-native"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
 PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
-PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
+PACKAGECONFIG[nss] = ", ,nss,"
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
 PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
@@ -119,7 +116,7 @@ SYSTEMD_SERVICE_${PN} = " \
 "
 SYSTEMD_AUTO_ENABLE = "disable"
 
-FILES_${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss.so"
+FILES_${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so"
 FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
 
 # The package contains symlinks that trip up insane
-- 
2.24.3

