Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.7104.1621092252357505875
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 May 2021 08:24:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rE+2AmH6;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id t30so1432997pgl.8
        for <yocto@lists.yoctoproject.org>; Sat, 15 May 2021 08:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=91gIok96rRjmqUBk1zjiZYKiZa46EpaQiANPFEPbiIg=;
        b=rE+2AmH6czpTIWZICCoULNCXxDEU8c18G4QIzkCQBN/xnluRgyEpwBfuX+PAPHAOn9
         YvbxEzIvLmjz35s61Fx21LSXiiVsDFfn7G2tCwIeBMsIoIoKAPXJi2BVogV6DlInzXmW
         aOkuYunnJXbdF+k3o8d7U6DGXE9wHfIAt0aq7tCkWF6fdhsyx+yjLjh3b8DsG11PIBsp
         ZmXxpsYhqzXX23MUf+kJZmmIktQxGhJTPKEuHQZg9fdl30gIPBLaa6XoOjAbySUlY/oM
         QPYSCeTMRJqK1ed8sWG5YRXvhp64b36Ng67oKSzuuRNunTAJjXeX2Z3x3/izuddri/li
         GE6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=91gIok96rRjmqUBk1zjiZYKiZa46EpaQiANPFEPbiIg=;
        b=CezYloaSrw3rKSC7i7zsUX9KRwCSwftgexevEw4n+liHMwc1jx0RU+ivg2JnOuCzQh
         E6T3vGsH/IT4i3Ec5fiRinhl+ab2h66P9IvYAnFqcri9go+pK+Wq6eOHLPoUM9H0GoSi
         8Zg6plvPJe2ShVTMEOWLib1gW8vSO1p0FkhTjyB8RHZOu+Mlt0j7A4iYVuDoCX6mBE1l
         z8MfunNImTwhlxGsbBXjk9wWIEfec+AMUE8q0rctaLEt44BGJXOXQWcKqXs/ErL7aZdT
         xqltgnT13pgsjiM0sh8bUrUFx6TLKH78uecmb5Jk8/wJtcKnnQmy6c+fW2R29Oqfk6XN
         L0aw==
X-Gm-Message-State: AOAM532OuFbO6C7fa2Y/7OdWg2cRSKTWmCsQyvJDc3vltytRGQz9Q8hS
	NHBSZ/CeyyjJ+l7F7hFd+kH2k6bxPms=
X-Google-Smtp-Source: ABdhPJzNUPOlvStqOJvcKAvuJf3idZ1YDFvGqCV5ViNKYpGHioORQifwFgBacfXU4PEfKoYQKh/WuA==
X-Received: by 2002:a05:6a00:6:b029:2d1:fc78:e253 with SMTP id h6-20020a056a000006b02902d1fc78e253mr13068902pfk.48.1621092251165;
        Sat, 15 May 2021 08:24:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 128sm6263793pfy.194.2021.05.15.08.24.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 08:24:10 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] clamav: fix systemd startup
Date: Sat, 15 May 2021 15:24:07 +0000
Message-Id: <20210515152408.3610990-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

cleanup recipe

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/clamav/clamav_0.104.0.bb     | 44 ++++++++++---------
 .../clamav/files/fix_systemd_socket.patch     | 25 +++++++++++
 2 files changed, 48 insertions(+), 21 deletions(-)
 create mode 100644 recipes-scanners/clamav/files/fix_systemd_socket.patch

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index 6892bb0..ce5b0ea 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -16,9 +16,9 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=dev/0.104 \
     file://freshclam.conf \
     file://volatiles.03_clamav \
     file://tmpfiles.clamav \
-    file://${BPN}.service \
     file://headers_fixup.patch \
     file://oe_cmake_fixup.patch \
+    file://fix_systemd_socket.patch \
 "
 S = "${WORKDIR}/git"
 
@@ -70,31 +70,29 @@ do_install_append () {
     rm ${D}/${libdir}/libmspack.so
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
-        install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
         install -d ${D}${sysconfdir}/tmpfiles.d
         install -m 0644 ${WORKDIR}/tmpfiles.clamav ${D}${sysconfdir}/tmpfiles.d/clamav.conf
     fi
     oe_multilib_header clamav-types.h
 }
 
-pkg_postinst_ontarget_${PN} () {
-    if command -v systemd-tmpfiles >/dev/null; then
-        systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/clamav.conf
-    elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
-        ${sysconfdir}/init.d/populate-volatile.sh update
+pkg_postinst_${PN} () {
+    if [ -z "$D" ]; then
+        if command -v systemd-tmpfiles >/dev/null; then
+            systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/clamav.conf
+        elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
+            ${sysconfdir}/init.d/populate-volatile.sh update
+        fi
+        chown -R ${CLAMAV_UID}:${CLAMAV_GID} ${localstatedir}/lib/clamav
     fi
-    mkdir -p ${localstatedir}/lib/clamav
-    chown -R ${CLAMAV_UID}:${CLAMAV_GID} ${localstatedir}/lib/clamav
 }
 
-
-PACKAGES = "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc \
-            ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav ${PN}-staticdev"
+PACKAGES += "${PN}-daemon ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav"
 
 FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit ${sbindir}/clamonacc \
                 ${bindir}/*sigtool ${mandir}/man1/clambc* ${mandir}/man1/clamscan* \
                 ${mandir}/man1/sigtool* ${mandir}/man1/clambsubmit*  \
-                ${docdir}/clamav/* ${libdir}/libmspack* "
+                ${docdir}/clamav/*"
 
 FILES_${PN}-clamdscan = " ${bindir}/clamdscan \
                         ${docdir}/clamdscan/* \
@@ -106,11 +104,11 @@ FILES_${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
                         ${mandir}/man5/clamd*  ${mandir}/man8/clamd* \
                         ${sysconfdir}/clamd.conf* \
                         /usr/etc/clamd.conf* \
-                        ${systemd_unitdir}/system/clamav-daemon/* \
+                        ${systemd_system_unitdir}/clamav-daemon/* \
                         ${docdir}/clamav-daemon/*  ${sysconfdir}/clamav-daemon \
                         ${sysconfdir}/logcheck/ignore.d.server/clamav-daemon \
-                        ${systemd_unitdir}/system/clamav-daemon.service \
-                        ${systemd_unitdir}/system/clamav-clamonacc.service \
+                        ${systemd_system_unitdir}/clamav-daemon.service \
+                        ${systemd_system_unitdir}/clamav-clamonacc.service \
                         "
 
 FILES_${PN}-freshclam = "${bindir}/freshclam \
@@ -121,7 +119,7 @@ FILES_${PN}-freshclam = "${bindir}/freshclam \
                         ${localstatedir}/lib/clamav \
                         ${docdir}/${PN}-freshclam ${mandir}/man1/freshclam.* \
                         ${mandir}/man5/freshclam.conf.* \
-                        ${systemd_unitdir}/system/clamav-freshclam.service"
+                        ${systemd_system_unitdir}/clamav-freshclam.service"
 
 FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
                     ${libdir}/pkgconfig/*.pc \
@@ -131,7 +129,8 @@ FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
 FILES_${PN}-staticdev = "${libdir}/*.a"
 
 FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libclammspack.so* \
-                         ${libdir}/libfreshclam.so* ${docdir}/libclamav/* "
+                         ${libdir}/libfreshclam.so* ${docdir}/libclamav/* \
+                         ${libdir}/libmspack* "
 
 FILES_${PN}-doc = "${mandir}/man/* \
                    ${datadir}/man/* \
@@ -140,12 +139,15 @@ FILES_${PN}-doc = "${mandir}/man/* \
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "--system ${CLAMAV_UID}"
 USERADD_PARAM_${PN} = "--system -g ${CLAMAV_GID} --home-dir  \
-    ${localstatedir}/spool/${BPN} \
-    --no-create-home  --shell /bin/false ${BPN}"
+    ${localstatedir}/lib/${BPN} \
+    --no-create-home  --shell /sbin/nologin ${BPN}"
 
 RPROVIDES_${PN} += "${PN}-systemd"
 RREPLACES_${PN} += "${PN}-systemd"
 RCONFLICTS_${PN} += "${PN}-systemd"
-SYSTEMD_SERVICE_${PN} = "${BPN}.service"
+SYSTEMD_PACKAGES  = "${PN}-daemon ${PN}-freshclam"
+SYSTEMD_SERVICE_${PN}-daemon = "clamav-daemon.service"
+SYSTEMD_SERVICE_${PN}-freshclam = "clamav-freshclam.service"
 
 RDEPENDS_${PN} = "openssl ncurses-libncurses libxml2 libbz2 ncurses-libtinfo curl libpcre2 clamav-freshclam clamav-libclamav"
+RDEPENDS_${PN}-daemon = "clamav"
diff --git a/recipes-scanners/clamav/files/fix_systemd_socket.patch b/recipes-scanners/clamav/files/fix_systemd_socket.patch
new file mode 100644
index 0000000..3e9abe2
--- /dev/null
+++ b/recipes-scanners/clamav/files/fix_systemd_socket.patch
@@ -0,0 +1,25 @@
+clamd not installing clamav-daemon.socket
+
+Fixes:
+__main__.SystemdUnitNotFoundError: (PosixPath('../security-build-image/1.0-r0/rootfs'), 'clamav-daemon.socket')
+%post(clamav-daemon-0.104.0-r0.core2_64): waitpid(3587571) rc 3587571 status 100
+warning: %post(clamav-daemon-0.104.0-r0.core2_64) scriptlet failed, exit status 1
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/clamd/CMakeLists.txt
+===================================================================
+--- git.orig/clamd/CMakeLists.txt
++++ git/clamd/CMakeLists.txt
+@@ -54,4 +54,10 @@ if(SYSTEMD_FOUND)
+     install(
+         FILES ${CMAKE_CURRENT_BINARY_DIR}/clamav-daemon.service
+         DESTINATION ${SYSTEMD_UNIT_DIR})
++    configure_file(
++        ${CMAKE_CURRENT_SOURCE_DIR}/clamav-daemon.socket.in
++        ${CMAKE_CURRENT_BINARY_DIR}/clamav-daemon.socket @ONLY)
++    install(
++        FILES ${CMAKE_CURRENT_BINARY_DIR}/clamav-daemon.socket
++        DESTINATION ${SYSTEMD_UNIT_DIR})
+ endif()
-- 
2.25.1

