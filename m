Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web10.11515.1616959360232528389
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Mar 2021 12:22:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vA0ZVImM;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id g10so3366966plt.8
        for <yocto@lists.yoctoproject.org>; Sun, 28 Mar 2021 12:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=+RD4QTxmz0ZZ2v8wqJfOWdz6fuDPnRhGUC2HwXh4XCM=;
        b=vA0ZVImMq/0sEPzVDD0phdskK6NnoKFHjSXgJeFCr3rYlgXqHuge6dkXAAjrTcDKtw
         jRfTwLgaEVl5mqhd9DHHDnqyhX2PKtDWguKqT+h/pcjxF3edGG3qsKOGuEMNgYBATW+u
         hrPN1u4pUMCMWXUNPfSsBa5GnwUXiCh1I3RI7mZUG70HUkXyHT62WgHqQr74t4n89fGL
         VYDVQ+xNN8J9LzLRnLV4SwB5+ofZoyQNTOJJCAMGyuy8TL3Zvu3DKmTlh17DfCu5U9CP
         +vgdutmtYhB6xmP9sAmwgmsXO8a79Wm17azAYykgaS/Ys4b4A+7wz3KY9yccMvI95FFs
         Sp0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=+RD4QTxmz0ZZ2v8wqJfOWdz6fuDPnRhGUC2HwXh4XCM=;
        b=A05F3U2ERmnvB83JPmdZH0y2CbQTjQapMUU/ylm/o6R4FGX20h0Lc5xzsU6C83fxNM
         iWwddeOUi/EltpZSRidCRT7AkiH1fx/ruYvPB0gn8ZJLcsPsqV+3MzCTU+3doVRE+MWn
         5xgn5Z+Ag1H84FVHTqbAmMKF0Cpkp0WSteMJ1mqwi5DELKcvZk5p4k4OGLAYNJ2cZsvA
         m2L+M4jmteidb+YdgFVGCvK+/oHPl0kpCqbc7gx//Bjr9KwQlUX7SToW97Zm7LkFCctI
         9LDtzMdncoVHeg162IQlNJMDwAR2dSYtHVl3gFoeOgZkV17MkNCO1ZFQ95HfWJg0Zuhn
         Ml9Q==
X-Gm-Message-State: AOAM531U19Sp0cwFUE9OxIeMmb+lMD2s8uXSDMwUhwO1zu4QFolSHSAe
	PvDBvuW4A3o0agn128qOSLa7ct3eT4U=
X-Google-Smtp-Source: ABdhPJx/wcvANmXgJKcqORAYuzpbGs0+dxaUFdpt8FzPXdJglOaJeu3soP8aRsP+8UaJyTURh/Tsgw==
X-Received: by 2002:a17:903:18a:b029:e6:7fc1:1c2a with SMTP id z10-20020a170903018ab02900e67fc11c2amr24849074plg.5.1616959359422;
        Sun, 28 Mar 2021 12:22:39 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:c0c2:69a9:845:6a4c])
        by smtp.gmail.com with ESMTPSA id q95sm13813032pjq.20.2021.03.28.12.22.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 12:22:39 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][V2][PATCH] clamav: upgrade 104.0
Date: Sun, 28 Mar 2021 12:22:37 -0700
Message-Id: <20210328192237.31478-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

convert to cmake and general cleanup

include on oe env patch and glibc 2.33 header fixup

if running w/in qemu, need to add qemuparams="-m 2048" to allow
freshclam not to oom

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
V2]
Bump PV to match what is being d/l
---
 .../{clamav_0.101.5.bb => clamav_0.104.0.bb}  | 101 +++++++-----------
 .../clamav/files/headers_fixup.patch          |  58 ++++++++++
 .../clamav/files/oe_cmake_fixup.patch         |  39 +++++++
 3 files changed, 134 insertions(+), 64 deletions(-)
 rename recipes-scanners/clamav/{clamav_0.101.5.bb => clamav_0.104.0.bb} (61%)
 create mode 100644 recipes-scanners/clamav/files/headers_fixup.patch
 create mode 100644 recipes-scanners/clamav/files/oe_cmake_fixup.patch

diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
similarity index 61%
rename from recipes-scanners/clamav/clamav_0.101.5.bb
rename to recipes-scanners/clamav/clamav_0.104.0.bb
index 7dad263..9e50466 100644
--- a/recipes-scanners/clamav/clamav_0.101.5.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -4,94 +4,68 @@ HOMEPAGE = "http://www.clamav.net/index.html"
 SECTION = "security"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "libtool db libxml2 openssl zlib curl llvm clamav-native libmspack bison-native"
-DEPENDS_class-native = "db-native openssl-native zlib-native llvm-native curl-native bison-native"
+DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2 json-c libcheck"
  
-LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
+LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b273d5902896f7bbe17"
 
-SRCREV = "482fcd413b07e9fd3ef9850e6d01a45f4e187108"
+SRCREV = "5553a5e206ceae5d920368baee7d403f823bcb6f"
 
-SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.101 \
+SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=dev/0.104 \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
     file://tmpfiles.clamav \
     file://${BPN}.service \
-    file://freshclam-native.conf \
-    "
-
+    file://headers_fixup.patch \
+    file://oe_cmake_fixup.patch \
+"
 S = "${WORKDIR}/git"
 
 LEAD_SONAME = "libclamav.so"
-SO_VER = "9.0.4"
+SO_VER = "9.6.0"
+
+BINCONFIG = "${bindir}/clamav-config"
 
-inherit autotools pkgconfig useradd systemd multilib_header multilib_script
+inherit cmake chrpath pkgconfig useradd systemd multilib_header multilib_script
 
 CLAMAV_UID ?= "clamav"
 CLAMAV_GID ?= "clamav"
-INSTALL_CLAMAV_CVD ?= "1"
-
-CLAMAV_USR_DIR = "${STAGING_DIR_NATIVE}/usr"
-CLAMAV_USR_DIR_class-target = "${STAGING_DIR_HOST}/usr"
-
-PACKAGECONFIG_class-target ?= "ncurses bz2"
-PACKAGECONFIG_class-target += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
-PACKAGECONFIG_class-target += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
-
-PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
-PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json-c,"
-PACKAGECONFIG[ipv6] = "--enable-ipv6, --disable-ipv6"
-PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${CLAMAV_USR_DIR}, --disable-bzip2, bzip2"
-PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${CLAMAV_USR_DIR}, --without-libncurses-prefix, ncurses, "
-PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
 
 MULTILIB_SCRIPTS = "${PN}-dev:${bindir}/clamav-config ${PN}-cvd:${localstatedir}/lib/clamav/mirrors.dat"
 
-EXTRA_OECONF_CLAMAV = "--without-libcheck-prefix --disable-unrar \
-            --disable-mempool \
-            --program-prefix="" \
-            --disable-zlib-vcheck \
-            --with-xml=${CLAMAV_USR_DIR} \
-            --with-zlib=${CLAMAV_USR_DIR} \
-            --with-openssl=${CLAMAV_USR_DIR} \
-            --with-libcurl=${CLAMAV_USR_DIR} \
-            --with-system-libmspack=${CLAMAV_USR_DIR} \
-            --with-iconv=no \
-            --enable-check=no \
-            "
-
-EXTRA_OECONF_class-native += "${EXTRA_OECONF_CLAMAV}"
-EXTRA_OECONF_class-target += "--with-user=${CLAMAV_UID}  --with-group=${CLAMAV_GID} ${EXTRA_OECONF_CLAMAV}"
-
-do_configure () {
-    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
-}
+EXTRA_OECMAKE = " -DCMAKE_BUILD_TYPE=Release -DOPTIMIZE=ON -DENABLE_JSON_SHARED=OFF \
+                  -DCLAMAV_GROUP=${CLAMAV_GID} -DCLAMAV_USER=${CLAMAV_UID} \ 
+                  -DENABLE_TESTS=OFF -DBUILD_SHARED_LIBS=ON \
+                  -DDISABLE_MPOOL=ON -DENABLE_FRESHCLAM_DNS_FIX=ON \
+                   "
 
-do_configure_class-native () {
-    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
-}
+PACKAGECONFIG ?= "  clamonacc \
+                 ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd", "", d)}"
 
-do_compile_append_class-target() {
-    if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
-        bbnote "CLAMAV creating cvd"
-        install -d ${S}/clamav_db
-        ${STAGING_BINDIR_NATIVE}/freshclam --datadir=${S}/clamav_db --config=${WORKDIR}/freshclam-native.conf
-    fi
-}
+PACKAGECONFIG[milter] = "-DENABLE_MILTER=ON ,-DENABLE_MILTER=OFF, curl, curl"
+PACKAGECONFIG[clamonacc] = "-DENABLE_CLAMONACC=ON ,-DENABLE_CLAMONACC=OFF,"
+PACKAGECONFIG[unrar] = "-DENABLE_UNRAR=ON ,-DENABLE_UNRAR=OFF,"
+PACKAGECONFIG[systemd] = "-DENABLE_SYSTEMD=ON -DSYSTEMD_UNIT_DIR=${systemd_system_unitdir}, -DENABLE_SYSTEMD=OFF, systemd"
+
+export OECMAKE_C_FLAGS += " -I${STAGING_INCDIR} -L ${RECIPE_SYSROOT}${nonarch_libdir} -L${STAGING_LIBDIR} -lpthread" 
 
-do_install_append_class-target () {
+do_install_append () {
     install -d ${D}/${sysconfdir}
     install -d ${D}/${localstatedir}/lib/clamav
     install -d ${D}${sysconfdir}/clamav ${D}${sysconfdir}/default/volatiles
 
-    install -m 644 ${WORKDIR}/clamd.conf ${D}/${sysconfdir}
-    install -m 644 ${WORKDIR}/freshclam.conf ${D}/${sysconfdir}
+    install -m 644 ${WORKDIR}/clamd.conf ${D}/${prefix}/${sysconfdir}
+    install -m 644 ${WORKDIR}/freshclam.conf ${D}/${prefix}/${sysconfdir}
     install -m 0644 ${WORKDIR}/volatiles.03_clamav  ${D}${sysconfdir}/default/volatiles/03_clamav
     sed -i -e 's#${STAGING_DIR_HOST}##g' ${D}${libdir}/pkgconfig/libclamav.pc
     rm ${D}/${libdir}/libclamav.so
     if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
         install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
     fi
+
+    rm ${D}/${libdir}/libfreshclam.so
+    rm ${D}/${libdir}/libmspack.so
+
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
         install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
         install -d ${D}${sysconfdir}/tmpfiles.d
@@ -114,10 +88,10 @@ pkg_postinst_ontarget_${PN} () {
 PACKAGES = "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc ${PN}-cvd \
             ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav ${PN}-staticdev"
 
-FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit \
+FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit ${sbindir}/clamonacc \
                 ${bindir}/*sigtool ${mandir}/man1/clambc* ${mandir}/man1/clamscan* \
                 ${mandir}/man1/sigtool* ${mandir}/man1/clambsubmit*  \
-                ${docdir}/clamav/* "
+                ${docdir}/clamav/* ${libdir}/libmspack* "
 
 FILES_${PN}-clamdscan = " ${bindir}/clamdscan \
                         ${docdir}/clamdscan/* \
@@ -128,12 +102,14 @@ FILES_${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
                         ${mandir}/man1/clamconf* ${mandir}/man1/clamdtop* \
                         ${mandir}/man5/clamd*  ${mandir}/man8/clamd* \
                         ${sysconfdir}/clamd.conf* \
+                        /usr/etc/clamd.conf* \
                         ${systemd_unitdir}/system/clamav-daemon/* \
                         ${docdir}/clamav-daemon/*  ${sysconfdir}/clamav-daemon \
                         ${sysconfdir}/logcheck/ignore.d.server/clamav-daemon "
 
 FILES_${PN}-freshclam = "${bindir}/freshclam \
                         ${sysconfdir}/freshclam.conf*  \
+                        /usr/etc/freshclam.conf*  \
                         ${sysconfdir}/clamav ${sysconfdir}/default/volatiles \
                         ${sysconfdir}/tmpfiles.d/*.conf \
                         ${localstatedir}/lib/clamav \
@@ -148,8 +124,8 @@ FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
 
 FILES_${PN}-staticdev = "${libdir}/*.a"
 
-FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libclammspack.so*\
-                          ${docdir}/libclamav/* "
+FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libclammspack.so* \
+                         ${libdir}/libfreshclam.so* ${docdir}/libclamav/* "
 
 FILES_${PN}-doc = "${mandir}/man/* \
                    ${datadir}/man/* \
@@ -169,6 +145,3 @@ RCONFLICTS_${PN} += "${PN}-systemd"
 SYSTEMD_SERVICE_${PN} = "${BPN}.service"
 
 RDEPENDS_${PN} = "openssl ncurses-libncurses libxml2 libbz2 ncurses-libtinfo curl libpcre2 clamav-freshclam clamav-libclamav"
-RDEPENDS_${PN}_class-native = ""
-
-BBCLASSEXTEND = "native"
diff --git a/recipes-scanners/clamav/files/headers_fixup.patch b/recipes-scanners/clamav/files/headers_fixup.patch
new file mode 100644
index 0000000..9de0a26
--- /dev/null
+++ b/recipes-scanners/clamav/files/headers_fixup.patch
@@ -0,0 +1,58 @@
+Fixes checks not needed do to glibc 2.33
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/CMakeLists.txt
+===================================================================
+--- git.orig/CMakeLists.txt
++++ git/CMakeLists.txt
+@@ -374,8 +373,6 @@ check_include_file("stdlib.h"
+ check_include_file("string.h"           HAVE_STRING_H)
+ check_include_file("strings.h"          HAVE_STRINGS_H)
+ check_include_file("sys/cdefs.h"        HAVE_SYS_CDEFS_H)
+-check_include_file("sys/dl.h"           HAVE_SYS_DL_H)
+-check_include_file("sys/fileio.h"       HAVE_SYS_FILIO_H)
+ check_include_file("sys/mman.h"         HAVE_SYS_MMAN_H)
+ check_include_file("sys/param.h"        HAVE_SYS_PARAM_H)
+ check_include_file("sys/queue.h"        HAVE_SYS_QUEUE_H)
+@@ -410,8 +407,6 @@ endif()
+ 
+ # int-types variants
+ check_include_file("inttypes.h"         HAVE_INTTYPES_H)
+-check_include_file("sys/inttypes.h"     HAVE_SYS_INTTYPES_H)
+-check_include_file("sys/int_types.h"    HAVE_SYS_INT_TYPES_H)
+ check_include_file("stdint.h"           HAVE_STDINT_H)
+ 
+ # this hack required to silence warnings on systems with inttypes.h
+@@ -539,17 +528,11 @@ check_type_size("time_t"  SIZEOF_TIME_T)
+ # Checks for library functions.
+ include(CheckSymbolExists)
+ check_symbol_exists(_Exit           "stdlib.h"      HAVE__EXIT)
+-check_symbol_exists(accept4         "sys/types.h"   HAVE_ACCEPT4)
+ check_symbol_exists(snprintf        "stdio.h"       HAVE_SNPRINTF)
+-check_symbol_exists(stat64          "sys/stat.h"    HAVE_STAT64)
+-check_symbol_exists(strcasestr      "string.h"      HAVE_STRCASESTR)
+ check_symbol_exists(strerror_r      "string.h"      HAVE_STRERROR_R)
+-check_symbol_exists(strlcat         "string.h"      HAVE_STRLCAT)
+-check_symbol_exists(strlcpy         "string.h"      HAVE_STRLCPY)
+ check_symbol_exists(strndup         "string.h"      HAVE_STRNDUP)
+ check_symbol_exists(strnlen         "string.h"      HAVE_STRNLEN)
+-check_symbol_exists(strnstr         "string.h"      HAVE_STRNSTR)
+-check_symbol_exists(sysctlbyname    "sysctl.h"      HAVE_SYSCTLBYNAME)
++check_symbol_exists(strcasecmp      "string.h"      HAVE_STRNCMP)
+ check_symbol_exists(timegm          "time.h"        HAVE_TIMEGM)
+ check_symbol_exists(vsnprintf       "stdio.h"       HAVE_VSNPRINTF)
+ 
+@@ -563,10 +546,9 @@ else()
+     check_symbol_exists(fseeko          "stdio.h"       HAVE_FSEEKO)
+     check_symbol_exists(getaddrinfo     "netdb.h"       HAVE_GETADDRINFO)
+     check_symbol_exists(getpagesize     "unistd.h"      HAVE_GETPAGESIZE)
+-    check_symbol_exists(mkstemp         "unistd.h"      HAVE_MKSTEMP)
+     check_symbol_exists(poll            "poll.h"        HAVE_POLL)
+-    check_symbol_exists(setgroups       "unistd.h"      HAVE_SETGROUPS)
+     check_symbol_exists(setsid          "unistd.h"      HAVE_SETSID)
++    set(HAVE_SYSCONF_SC_PAGESIZE 1)
+ endif()
+ 
+ include(CheckSymbolExists)
diff --git a/recipes-scanners/clamav/files/oe_cmake_fixup.patch b/recipes-scanners/clamav/files/oe_cmake_fixup.patch
new file mode 100644
index 0000000..b284915
--- /dev/null
+++ b/recipes-scanners/clamav/files/oe_cmake_fixup.patch
@@ -0,0 +1,39 @@
+Issue with rpath including /usr/lib and crosscompile checkes causing oe configure to fail
+
+Use oe's cmake rpath framework and exclude some of the cmake checks that fail in our env
+
+Upstream-Status: Inappropriate [configuration]
+Singed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/CMakeLists.txt
+===================================================================
+--- git.orig/CMakeLists.txt
++++ git/CMakeLists.txt
+@@ -162,12 +162,6 @@ endif()
+ 
+ include(GNUInstallDirs)
+ 
+-if(CMAKE_INSTALL_FULL_LIBDIR)
+-    set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_FULL_LIBDIR}")
+-else()
+-    set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
+-endif()
+-
+ if(C_LINUX)
+     if(CMAKE_COMPILER_IS_GNUCXX)
+         # Set _GNU_SOURCE for O_LARGEFILE, O_CLOEXEC, O_DIRECTORY, O_NOFOLLOW, etc flags on older systems
+@@ -512,14 +506,8 @@ include(TestInline)
+ include(CheckFileOffsetBits)
+ # Determine how to pack structs on this platform.
+ include(CheckStructPacking)
+-# Check for signed right shift implementation.
+-include(CheckSignedRightShift)
+ # Check if systtem fts implementation available
+ include(CheckFTS)
+-# Check if uname(2) follows POSIX standard.
+-include(CheckUnamePosix)
+-# Check support for file descriptor passing
+-include(CheckFDPassing)
+ 
+ # Check if big-endian
+ include(TestBigEndian)
-- 
2.17.1

