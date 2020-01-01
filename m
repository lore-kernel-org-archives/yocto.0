Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
 by mx.groups.io with SMTP id smtpd.web09.12605.1577854721004856255
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Dec 2019 20:58:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l1L++7ET;
 spf=pass (domain: gmail.com, ip: 209.85.215.196, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f196.google.com with SMTP id x8so20247256pgk.8
        for <yocto@lists.yoctoproject.org>; Tue, 31 Dec 2019 20:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=hV3Y9FL53/cLCddpkhT3PSIiFyF80UG2FL4wluVkusg=;
        b=l1L++7ET39W5F8VqQQTuMu9N+9udzL7yf7q6cnPItVx+NsWxDMQbkFR3zEZxw0DIIx
         ydtlG7kpXLe8b7qYt6n5ETJ0QRF1BxUN6ij9OXX+WwKxcYV2UnfpXovscgxXC7JhQjRe
         3t+VGiVgQFJbz1yYb9zKHj050STCPk+k2gV8Agq+g60Ys2jBatmXv+wCDEvIPA+8yEyD
         vLmSeLdCvP9uvJf37LmgGKwW6WY5tT4PLfuOTW1o40seAUz3V18DLk2b1zEU2PpkgMt3
         zOytrEPnxXeJQZrgDseazE9ZjiOzIS9a5D6ZP66Jj7c9x2NB8g7VN9L0KFYIg70Uh623
         SN/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=hV3Y9FL53/cLCddpkhT3PSIiFyF80UG2FL4wluVkusg=;
        b=dGDtVEFgcT2LuroEEsGsIMiGeqfc+9/UWXvc3jRJIA2tqiWFSu9YF1KsC43zmcxFTr
         xdPpJkWJqAPzWIPGv4nVnVRFvaLyuCqByk4TURUqJ8FkMtH463VY9giRVVcxTQtiiQsn
         mLhOE6b8i8mt6vsnJMAh0joXCtLZGYTZKbJlihgoY+eLG6Dz/wg7uz0SVWF3SXDwNuLe
         Ce8BfnCG03BvkM2wQFuJJv8NpPqeUi8gUuIfhYSWougLklloHwO1jJhRdfYaB2upuOh0
         wDvhv9eKUvWf445oF/iL9mZaQhiPcg4JkBMyR5NY7UwQIVtIwn0DWUE49h6uDL24d+0d
         A1Ng==
X-Gm-Message-State: APjAAAUbI7Q1in5ZOcRhpdk1DMue82vAmxg2Ivc0OTECdj57fQJRv93J
	iD3KfqwRmlS74IeZpaEeokCtdZQq8OA=
X-Google-Smtp-Source: APXvYqx7iNivtZhs0i+bcx77QkG0Q/IliOYR1bIL+toRVK5CApbkrazzwugbO6EiB+BprsCAG4ESVA==
X-Received: by 2002:a63:5a64:: with SMTP id k36mr84108958pgm.323.1577854720139;
        Tue, 31 Dec 2019 20:58:40 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:7152:582:136c:6dbf])
        by smtp.gmail.com with ESMTPSA id a26sm49203306pfo.27.2019.12.31.20.58.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Dec 2019 20:58:39 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] clamav: update to 0.101.5
Date: Tue, 31 Dec 2019 20:58:37 -0800
Message-Id: <20200101045837.28062-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{clamav_0.99.4.bb => clamav_0.101.5.bb}   | 63 +++++++------------
 1 file changed, 24 insertions(+), 39 deletions(-)
 rename recipes-security/clamav/{clamav_0.99.4.bb => clamav_0.101.5.bb} (76%)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.101.5.bb
similarity index 76%
rename from recipes-security/clamav/clamav_0.99.4.bb
rename to recipes-security/clamav/clamav_0.101.5.bb
index a340b48..a4c32e1 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.101.5.bb
@@ -4,14 +4,14 @@ HOMEPAGE = "http://www.clamav.net/index.html"
 SECTION = "security"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "libtool db libmspack openssl zlib llvm chrpath-replacement-native clamav-native"
-DEPENDS_class-native = "db-native openssl-native zlib-native"
+DEPENDS = "libtool db libxml2 openssl zlib curl llvm clamav-native libmspack"
+DEPENDS_class-native = "db-native openssl-native zlib-native llvm-native curl-native"
  
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
-SRCREV = "b66e5e27b48c0a07494f9df9b809ed933cede047"
+SRCREV = "482fcd413b07e9fd3ef9850e6d01a45f4e187108"
 
-SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.99 \
+SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.101 \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
@@ -23,20 +23,14 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.99 \
 S = "${WORKDIR}/git"
 
 LEAD_SONAME = "libclamav.so"
-SO_VER = "7.1.1"
+SO_VER = "9.0.2"
 
-EXTRANATIVEPATH += "chrpath-native"
+inherit autotools pkgconfig useradd systemd
 
-inherit autotools-brokensep pkgconfig useradd systemd
-
-UID = "clamav"
-GID = "clamav"
+CLAMAV_UID ?= "clamav"
+CLAMAV_GID ?= "clamav"
 INSTALL_CLAMAV_CVD ?= "1"
 
-# Clamav has a built llvm version 2 but does not build with gcc 6.x,
-# disable the internal one. This is a known issue
-# If you want LLVM support, use the one in core
-
 CLAMAV_USR_DIR = "${STAGING_DIR_NATIVE}/usr"
 CLAMAV_USR_DIR_class-target = "${STAGING_DIR_HOST}/usr"
 
@@ -45,49 +39,40 @@ PACKAGECONFIG_class-target += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6",
 PACKAGECONFIG_class-target += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
 PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
-PACKAGECONFIG[xml] = "--with-xml=${CLAMAV_USR_DIR}, --disable-xml, libxml2,"
-PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json,"
-PACKAGECONFIG[curl] = "--with-libcurl=${STAGING_LIBDIR}, --without-libcurl, curl,"
+PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json-c,"
 PACKAGECONFIG[ipv6] = "--enable-ipv6, --disable-ipv6"
-PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${CLAMAV_USR_DIR}, --without-libbz2-prefix, "
+PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${CLAMAV_USR_DIR}, --disable-bzip2, bzip2"
 PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${CLAMAV_USR_DIR}, --without-libncurses-prefix, ncurses, "
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
 
 EXTRA_OECONF_CLAMAV = "--without-libcheck-prefix --disable-unrar \
-            --with-system-llvm --with-llvm-linking=dynamic --disable-llvm \
             --disable-mempool \
             --program-prefix="" \
-            --disable-yara \
-            --disable-xml \
+            --disable-zlib-vcheck \
+            --with-xml=${CLAMAV_USR_DIR} \
+            --with-zlib=${CLAMAV_USR_DIR} \
             --with-openssl=${CLAMAV_USR_DIR} \
-            --with-zlib=${CLAMAV_USR_DIR} --disable-zlib-vcheck \
+            --with-libcurl=${CLAMAV_USR_DIR} \
+            --with-system-libmspack=${CLAMAV_USR_DIR} \
+            --with-iconv=no \
+            --enable-check=no \
             "
 
 EXTRA_OECONF_class-native += "${EXTRA_OECONF_CLAMAV}"
-EXTRA_OECONF_class-target += "--with-user=${UID}  --with-group=${GID} --disable-rpath ${EXTRA_OECONF_CLAMAV}"
+EXTRA_OECONF_class-target += "--with-user=${CLAMAV_UID}  --with-group=${CLAMAV_GID} ${EXTRA_OECONF_CLAMAV}"
 
 do_configure () {
     ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
-    install -d ${S}/clamav_db
 }
 
 do_configure_class-native () {
     ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
 }
 
-
 do_compile_append_class-target() {
-    # brute force removing RPATH
-    chrpath -d  ${B}/libclamav/.libs/libclamav.so.${SO_VER}
-    chrpath -d  ${B}/sigtool/.libs/sigtool
-    chrpath -d  ${B}/clambc/.libs/clambc
-    chrpath -d  ${B}/clamscan/.libs/clamscan
-    chrpath -d  ${B}/clamconf/.libs/clamconf
-    chrpath -d  ${B}/clamd/.libs/clamd
-    chrpath -d  ${B}/freshclam/.libs/freshclam
-
     if [ "${INSTALL_CLAMAV_CVD}" = "1" ]; then
         bbnote "CLAMAV creating cvd"
+        install -d ${S}/clamav_db
         ${STAGING_BINDIR_NATIVE}/freshclam --datadir=${S}/clamav_db --config=${WORKDIR}/freshclam-native.conf
     fi
 }
@@ -117,7 +102,7 @@ pkg_postinst_ontarget_${PN} () {
         ${sysconfdir}/init.d/populate-volatile.sh update
     fi
     mkdir -p ${localstatedir}/lib/clamav
-    chown -R ${UID}:${GID} ${localstatedir}/lib/clamav
+    chown -R ${CLAMAV_UID}:${CLAMAV_GID} ${localstatedir}/lib/clamav
 }
 
 
@@ -158,7 +143,7 @@ FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
 
 FILES_${PN}-staticdev = "${libdir}/*.a"
 
-FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libmspack.so*\
+FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libclammspack.so*\
                           ${docdir}/libclamav/* "
 
 FILES_${PN}-doc = "${mandir}/man/* \
@@ -168,8 +153,8 @@ FILES_${PN}-doc = "${mandir}/man/* \
 FILES_${PN}-cvd =  "${localstatedir}/lib/clamav/*.cvd ${localstatedir}/lib/clamav/*.dat"
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "--system ${UID}"
-USERADD_PARAM_${PN} = "--system -g ${GID} --home-dir  \
+GROUPADD_PARAM_${PN} = "--system ${CLAMAV_UID}"
+USERADD_PARAM_${PN} = "--system -g ${CLAMAV_GID} --home-dir  \
     ${localstatedir}/spool/${BPN} \
     --no-create-home  --shell /bin/false ${BPN}"
 
@@ -178,7 +163,7 @@ RREPLACES_${PN} += "${PN}-systemd"
 RCONFLICTS_${PN} += "${PN}-systemd"
 SYSTEMD_SERVICE_${PN} = "${BPN}.service"
 
-RDEPENDS_${PN} = "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
+RDEPENDS_${PN} = "openssl ncurses-libncurses libxml2 libbz2 ncurses-libtinfo curl libpcre2 clamav-freshclam clamav-libclamav"
 RDEPENDS_${PN}_class-native = ""
 
 BBCLASSEXTEND = "native"
-- 
2.17.1

